#!/bin/bash

# Export NameplateSCT Reforged as a distributable zip file, for a manual upload
# when the release workflow can't upload it.
# Usage: ./export.sh <version> [destination]
# Example: ./export.sh 1 ~/Desktop

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ADDON_NAME="NameplateSCT_Reforged"
TOC="$SCRIPT_DIR/$ADDON_NAME.toc"

# Releases are plain numbers that go up by one each time (1, 2, 3).
VERSION="$1"
if ! [[ "$VERSION" =~ ^[1-9][0-9]*$ ]]; then
    echo "Usage: ./export.sh <version> [destination]"
    echo "Error: the version must be a whole number, like 1"
    exit 1
fi

# Get destination from argument or use current directory
DEST="${2:-.}"
DEST="$(cd "$DEST" 2>/dev/null && pwd)" || { echo "Error: Invalid destination '$2'"; exit 1; }

# The libraries are .pkgmeta externals, which the packager fetches itself.
if [ ! -d "$SCRIPT_DIR/Libs" ]; then
    echo "Error: Libs/ is missing. Run ./fetch-libs.sh first."
    exit 1
fi

ZIP_NAME="$ADDON_NAME.$VERSION.zip"
TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT

mkdir -p "$TEMP_DIR/$ADDON_NAME"

# The packager fills the version token from the tag. Do the same here.
sed "s/@project-version@/$VERSION/" "$TOC" > "$TEMP_DIR/$ADDON_NAME/$ADDON_NAME.toc"
cp "$SCRIPT_DIR/LICENSE" "$TEMP_DIR/$ADDON_NAME/"

# Copy a file the game loads. An XML file loads more files through its
# file="..." attributes, relative to its own folder, so follow those too.
# Comments go first, since a lib can comment out an include.
add_file() {
    local FILE="$1"
    if [ -f "$TEMP_DIR/$ADDON_NAME/$FILE" ]; then
        return
    fi
    if [ ! -f "$SCRIPT_DIR/$FILE" ]; then
        echo "Error: '$FILE' is loaded but does not exist"
        exit 1
    fi
    mkdir -p "$TEMP_DIR/$ADDON_NAME/$(dirname "$FILE")"
    cp "$SCRIPT_DIR/$FILE" "$TEMP_DIR/$ADDON_NAME/$FILE"

    if [[ "$FILE" == *.xml ]]; then
        local DIR INCLUDE
        DIR="$(dirname "$FILE")"
        perl -0pe 's/<!--.*?-->//gs' "$SCRIPT_DIR/$FILE" \
            | grep -o 'file="[^"]*"' | sed 's/^file="//; s/"$//' | tr '\\' '/' \
            | while read -r INCLUDE; do
                if [ "$DIR" = "." ]; then
                    add_file "$INCLUDE"
                else
                    add_file "$DIR/$INCLUDE"
                fi
            done
    fi
}

# Ship exactly the files the TOC loads, so a new file can't be left out.
grep -v -E '^(#|[[:space:]]*$)' "$TOC" | tr -d '\r' | tr '\\' '/' | while read -r FILE; do
    add_file "$FILE"
done

# Keep each library's license next to its code.
for LICENSE in "$SCRIPT_DIR"/Libs/*/LICENSE*; do
    if [ -f "$LICENSE" ]; then
        cp "$LICENSE" "$TEMP_DIR/$ADDON_NAME/Libs/$(basename "$(dirname "$LICENSE")")/"
    fi
done

# Create zip file
rm -f "$DEST/$ZIP_NAME"
cd "$TEMP_DIR"
zip -r -q "$DEST/$ZIP_NAME" "$ADDON_NAME"

echo "Created: $DEST/$ZIP_NAME"
