# FurnitureShoppingList (patched)

Originally written by noobiandus, patched by manavortex. Maintained to keep compatibility with Furniture Catalogue / LFC

- **This AddOn:** https://www.esoui.com/downloads/info1865-FurnitureShoppingListpatched.html
- **Original AddOn:** https://esoui.com/downloads/info1638-FurnitureShoppingList.html

AddOn src files are in [./FurnitureShoppingList](./FurnitureShoppingList)


## Release

- packaged from `./FurnitureShoppingList`, which is the AddOn as it ships
- everything else here is tool or webinterface related stuff that stays out of the zip

Releases are done through workflows with automatic version bumps, manual packaging only for plan B:

1. **PrepareRelease** (`prepare_release.yml`), started manually from the Actions tab
2. **FinalizeRelease** (`finalize_release.yml`), triggered by the generated PR being merged
3. **PublishToESOUI** (`publish_to_esoui.yml`), triggered by FinalizeRelease

Both PublishToESOUI and `build.sh --publish` support an optional `dry_run` flag, which uses ESOUI test endpoint and does not publish the AddOn.


## Tools

- `scripts/build.sh`: local equivalent of the GitHub pipeline, zips land in `.package/`
- `scripts/stylua.sh`: formatting with the exact StyLua version CI uses
- `scripts/furc_utils.py`: version, manifest and changelog helpers used by the workflows
- `scripts/package.py`, `scripts/publish.py`, `scripts/esoui_utils.py`: packaging and the ESOUI upload


## Tests

- WIP


## Local setup

`lua` and `luac` (or symlinks) go in `bin/`, which is gitignored. `../bin` next to the repo also works. Override with `LUAC` and `LUA`, in the environment or in `.env` at the repo root. `.env` also takes `ESOUI_API_TOKEN` and `PYTHON3_BIN` for `scripts/build.sh`.
