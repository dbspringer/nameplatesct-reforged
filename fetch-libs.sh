#!/bin/bash

# Fetch the .pkgmeta externals into Libs/, so a checkout loads in game the way
# a packaged release does. Libs/ is gitignored; the packager fetches its own.
# Usage: ./fetch-libs.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Read "    <path>: <url>" lines from the externals block, which ends at the
# next top-level key.
EXTERNALS=$(awk '
    /^externals:/ { inside = 1; next }
    /^[^[:space:]]/ { inside = 0 }
    inside && NF { print }
' .pkgmeta)

rm -rf Libs

while read -r LINE; do
    DEST="${LINE%%:*}"
    URL="${LINE#*: }"
    if [ "$DEST" = "$LINE" ] || [[ "$URL" != http* ]]; then
        echo "Error: can't read the external '$LINE'"
        exit 1
    fi

    echo "Fetching $DEST"
    mkdir -p "$(dirname "$DEST")"
    if [[ "$URL" == *.git ]]; then
        git clone -q --depth 1 "$URL" "$DEST"
        rm -rf "$DEST/.git"
    else
        svn export -q "$URL" "$DEST"
    fi
done <<< "$EXTERNALS"

echo "Fetched the externals into Libs/"
