# nameplatesct-reforged

A WoW addon that draws NameplateSCT's combat text above enemy nameplates on the Forever client (`_classic_beta_`, 1.60.x, Interface 16001). It is seeded from Justw8/NameplateSCT (MIT, remote `upstream`; read only, push to `origin`). Forever closes the combat log to addons and can make amounts secret, so the upstream data path is replaced; the renderer, animations, and Ace3 options stay. Client-specific code stays in one module, so a Retail TOC remains a small later step.

## Agent skills

### Issue tracker

Issues are GitHub Issues on dbspringer/nameplatesct-reforged, driven with the `gh` CLI. See `docs/agents/issue-tracker.md`. Issues are for problems that users find. Planned work and TODOs go in the vault (see Plans and research), never in an issue. This overrides any skill that says to publish work to the issue tracker.

### Triage labels

Default vocabulary: needs-triage, needs-info, ready-for-agent, ready-for-human, wontfix. See `docs/agents/triage-labels.md`.

### Domain docs

Single-context: `CONTEXT.md` and `docs/adr/` at the repo root. See `docs/agents/domain.md`.

## Plans and research

Plans, research, and other working notes live in the Obsidian vault, under `NameplateSCT Reforged/`, not in this repo. This overrides any skill that says to write such a file in the repo (for example `/research`). `CONTEXT.md` and `docs/adr/` stay in the repo.

- Use the `obsidian` CLI; the app must be open. `obsidian create path="NameplateSCT Reforged/<Topic> Research.md" content="..."`, and also `read`, `append`, `search`.
- Name notes `<Topic> Research.md` or `<Topic> Plan.md`, and link each new note from the index note `NameplateSCT Reforged/NameplateSCT Reforged.md`.
- Track TODOs and planned work in the Backlog section of the index note, with a link to the plan note when one exists.
- Read the index note before you plan work, and `Port Plan.md` for the design decisions. The vault is at `~/Documents/Obsidian Vault`.

## Forever gotchas

- An amount, and anything derived from it, can be a Secret Amount. Pass it only to display calls (`SetText`, `SetFormattedText`) and to `AbbreviateNumbers` or `BreakUpLargeNumbers`; compare or calculate with it only after `issecretvalue` says it is public.
- A Lua field that addon code writes on a Blizzard frame or table taints the Blizzard code that reads it. Test any technique that touches Blizzard frames in combat, with a small `/run` first, before building on it.
- Settle a client fact with an in-game test or the installed addons in `_classic_beta_/Interface/AddOns/`, and label any fact you have not tested as unverified.

## Conventions

- Display text goes through the AceLocale table `L` or a Blizzard global string, never a literal. enUS (`Locales/enUS.lua`) is the key, so a missing translation shows English.
- Text that people read (PR titles and descriptions, commit messages, issue comments, the README) goes through the `/writing-style` skill first. Code comments and the docs under `docs/` keep a neutral, technical voice.
- A release version is a plain integer that goes up by 1 for each publish (`1`, `2`, `3`), with no `v` prefix and no semver. The tag is that number, and a pushed tag starts the release workflow. Find the next number with `git tag --sort=-v:refname | head -1`. Derek decides when to tag.
- Every release gets an entry in `CHANGELOG.md`, under a `## <number>` heading, newest first. Write it for players: what changed for them, not how. A change that players can see adds its line in the same PR, under the next number. The packager uses this file for the release notes.
- Keep upstream's MIT notice in `LICENSE`.
