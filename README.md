# Auto Line Namer (ALN)

Auto Line Namer automatically generates consistent, human-friendly names for transport lines in Transport Fever 2 using customizable naming conventions. It inspects line properties, vehicles and connected towns, then builds a name using a user-defined convention.

This README covers installation, a quick GUI walkthrough, how conventions work, troubleshooting, and developer notes for contributors.

## Quick start

1. Install from Steam Workshop or deploy locally (see "Local deploy").
2. Start Transport Fever 2 and load a save.
3. Click the ALN button in the game info bar to open settings.
4. Configure the naming convention and options. A live preview shows the result.
5. Create or edit a line. ALN will rename lines according to settings. You can also force a rename manually by setting the line name to `r` or `reload` and then toggling the "Add station" button in the line editor (toggle off then on) — this triggers a rename without repeatedly calling the renamer.

## Mod info

- Name: Auto Line Namer 1.0.0
- Author: erkanercan

Note: the deploy helper's default target base uses a specific Steam userdata path inside $HOME. The script will remove an existing folder with the same mod name before copying. If your Steam userdata path differs, pass a custom path to `./scripts/deploy_mod.sh` or edit the script.

## Installation

Option A — Steam Workshop

- Subscribe on the Workshop page and enable the mod in the game's mod list.

Option B — Local deploy (developer/test)

- Use the provided helper to copy the repository into your local TF2 mods folder (overwrites existing mod folder with the same name):

```bash
./scripts/deploy_mod.sh
# (optionally) ./scripts/deploy_mod.sh /custom/path/to/mods
```

The script uses your $HOME folder by default and will copy the current repo into the Steam userdata local/mods folder.

## GUI & Settings (what to expect)

- The ALN button is added to the game info bar. Click it to open the settings window.
- Tabs: General, Transport Types, Line Types, Cargo Types, Town Names, Debug.
- General tab contains: enable toggle, tag-prefix to exclude lines, active convention string, auto-update settings and a live Preview.
- The Preview updates live when you change any related setting (convention, transport type labels, cargo/town show-type, separators, etc.).

Tip: the convention preview shows a sample name using representative values so you can validate the pattern before applying it to real lines.

## Naming conventions and variables

You define the output using a convention string and these tokens:

- `{transportType}` — text for the transport type (customizable per-type)
- `{cargoTypes}` — comma/separator-separated cargo names (full or short)
- `{townNames}` — first and last town (full or short)
- `{lineType}` — local/intercity/regional suffix
- `{lineNumber}` — numeric identifier (line id)

Example: `{transportType} - {cargoTypes} - {townNames} {lineType}`

## Defaults & tokens (exact runtime defaults)

The mod ships with sensible defaults which are used when the player has not changed settings. These are the values the code uses (from `res/scripts/abajuradam/state.lua`):

- Active convention: `{transportType} {cargoTypes}-{townNames}-{lineType}-{lineNumber}`
- Disable (tag) prefix: `Cst` — any line name starting with this prefix will be ignored by ALN
- Enabled by default: true
- Auto Update: enabled = true, interval = 1 (minute)

Transport type defaults:

- roadPassenger = `Bus`
- roadCargo = `RC`
- tramPassenger = `Tram`
- trainPassenger = `TP`
- trainCargo = `TC`
- waterPassenger = `WP`
- waterCargo = `WC`
- airPassenger = `AP`
- airCargo = `AC`
- unknown = `UNK`

Line type defaults:

- localLineAddon = `LO`
- intercityLineAddon = `IC`
- regionalLineAddon = `RE`

Cargo / town defaults:

- Cargo separator: `,`
- Cargo show type (default): Full name (code value `0`)
- Town show type (default): Short (3-letter) (code value `1`)
- Town separator: `-`

Tokens available in convention strings:

- `{transportType}`, `{cargoTypes}`, `{townNames}`, `{lineType}`, `{lineNumber}`

Use these tokens in `Active Convention` to construct your preferred naming format.

## Behavior & edge-cases

- Auto-renaming triggers:
  - When you close the line editor or toggle the station add button (avoids excessive rename calls).
  - Periodically if Auto Update is enabled (useful to detect cargo types after vehicles load).
- If a line already has a non-updatable custom name (or a prefix you defined), ALN will skip renaming it.

### Rename triggers & persistence

- Automatic rename occurs in two places in the mod code:
  - When the line editor's "Add station" toggle is switched (the game-script listens for `lineEditor.addStation` toggle and triggers a rename when the toggle is turned off — this avoids rapid repeated renames).
  - Periodic auto-update in the game-script's `data().update` loop when Auto Update is enabled (interval in minutes).
- Manual force-rename: set the line name to `r` or `reload` and toggle the Add Station button (off → on). This is useful to trigger an immediate rename without waiting for the interval.
- Settings are persisted by the game script (`save` / `load`), and `load()` restores known subkeys including `autoUpdate.enabled` and `autoUpdate.interval`.
- The Reset Settings button in the GUI resets the stored settings to the defaults and updates the GUI immediately.

## Preview

- The settings window shows a live preview under the Active Convention field. It reflects changes to:
  - The convention string
  - Transport type labels
  - Cargo show-type (Full/Short)
  - Town name show-type (Full/Short)
  - Separators

If you want more realistic preview samples we can add a "Sample lines" selector that uses actual lines from the map.

## Examples

Here are three concrete example conventions and their expected outputs using the mod defaults (transport type labels, cargo/town show types and separators are noted):

1. Default convention (defaults from `state.lua`)

- Active convention: `{transportType} {cargoTypes}-{townNames}-{lineType}-{lineNumber}`
- Defaults: transport type for road passenger = `Bus`, cargo show = Full, town show = Short (3-letter), town separator = `-`, line type for 2 towns = `IC`.
- Example map: Road passenger line between "Springfield" and "Shelbyville" carrying passengers.
- Output: `Bus Passengers-Spr-She-IC-1`

2. Human-readable convention for cargo trains

- Active convention: `{transportType} - {cargoTypes} - {townNames} {lineType}`
- Settings: transport type for train cargo = `TC`, cargo show = Short (3-letter), cargo separator = `, `, town show = Short.
- Example map: Train cargo line between "Norwich" and "Cambridge" carrying Logs and Gravel.
- Output: `TC - Log,Gra - Nor-Cam IC`

3. Local passenger shuttle (single-town shorter form)

- Active convention: `{transportType}: {townNames} ({lineNumber}) {lineType}`
- Settings: transport type for water passenger = `WP`, town show = Full, line type local = `LO`.
- Example map: Water passenger line inside "Portville".
- Output: `WP: Portville (1) LO`

You can copy any of these convention strings into the Active Convention field and adjust transport/cargo/town settings to match your naming preferences.

## Troubleshooting

- Preview doesn't change: make sure the settings window is open and you modified a field that affects the preview. If the preview still doesn't update, redeploy the mod and restart the game.
- Lines not renamed: check the Disable Prefix and make sure the line doesn't contain it. Also confirm the mod is enabled.
- Default disable-prefix: `Cst` — lines starting with this prefix are ignored by ALN unless you change the prefix in settings.
- Cargo types incorrect: cargo detection may need vehicles to be assigned and cargo to be loaded; enabling Auto Update helps.

## Test locally (deploy)

Use the supplied deploy helper to copy the repository into your local Steam userdata mods folder. The script will remove any existing folder with the same mod name and copy the current repository (useful for testing changes quickly):

```bash
./scripts/deploy_mod.sh
# or supply a custom mods base path:
./scripts/deploy_mod.sh "/path/to/Steam/userdata/XXXX/1066780/local/mods"
```

After deploying, start Transport Fever 2 and enable the mod in the game's mod list (if required). Open a save, click the `[ALN]` button in the game info bar and test the settings / preview.

## Developer notes

- Important files:

  - `res/scripts/abajuradam/auto_line_namer_helper.lua` — name generation logic
  - `res/scripts/abajuradam/state.lua` — persistent settings getters/setters
  - `res/scripts/abajuradam/auto_line_namer_gui.lua` — GUI window and event passthrough
  - `res/config/game_script/auto_line_namer.lua` — game-script lifecycle and event handler
  - `scripts/deploy_mod.sh` — local copy/deploy helper

- Style and safety:
  - Guard `api.engine.getComponent` results before using fields.
  - Use `State` getters/setters for all configuration access.
  - Escape user-provided strings when used in Lua patterns.

Additional developer pointers:

- Localization strings live in `strings.lua`. Add new keys and translations there; the GUI uses `_('key')` to resolve them.
- When adding new settings, wire them through the GUI helper (sendScriptEvent) and handle them in `GUIHelper.handleGuiEvents` and `game_script.load`/`save` for persistence.
- The naming logic lives in `res/scripts/abajuradam/auto_line_namer_helper.lua`. If you change token names or add new tokens, update both the helper and the README examples.

## Contributing

- Open a GitHub issue for bugs or feature requests. PRs are welcome — keep changes small and include a short test plan.

## License

- This mod is distributed under the MIT license. See `LICENSE` for details.

- This mod is distributed under the MIT license. See `LICENSE` for details.
