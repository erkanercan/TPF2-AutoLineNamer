This project is a Transport Fever 2 mod (Auto Line Namer). The codebase is small and uses Lua scripts packaged with the mod.

Key facts for coding agents (keep this short & actionable):

- Big picture

  - Purpose: Automatically generate human-friendly line names for Transport Fever 2 based on route, vehicle and cargo info.
  - Where logic runs: game-script entry is `res/config/game_script/auto_line_namer.lua` (engine callbacks: `data().update`, `guiHandleEvent`, event handler plumbing).
  - UI and state live in `res/scripts/abajuradam/` — GUI: `auto_line_namer_gui.lua`, core logic helpers: `auto_line_namer_helper.lua`, state management: `state.lua`, logging: `logging.lua`.

- Project layout (most important files)

  - `mod.lua` — mod metadata used by the game.
  - `README.md` — user-facing documentation and high-level behaviour.
  - `res/config/game_script/auto_line_namer.lua` — game script glue: registers update loop, gui callbacks, save/load.
  - `res/scripts/abajuradam/state.lua` — singletons for settings and getters/setters used across modules.
  - `res/scripts/abajuradam/auto_line_namer_helper.lua` — main name-generation logic: reads line, vehicle and station components via `api.engine` and builds name according to convention.
  - `res/scripts/abajuradam/auto_line_namer_gui.lua` — builds the in-game settings window and forwards GUI changes back via script events.
  - `res/scripts/abajuradam/logging.lua` — small logging utility used throughout. Use its levels when adding debug messages.

- Important patterns & conventions you must follow

  - Single-instance state: always use `local State = require 'abajuradam/state'` and State.init() when needed. The state module exposes getters/setters rather than global variables.
  - Script events: GUI -> core communication uses `api.cmd.sendCommand(api.cmd.make.sendScriptEvent("auto_line_namer.lua", id, name, param))`. The game-script receives these in `handleEvent` and forwards to `GUIHelper.handleGuiEvents`.
  - Engine component access: read components via `api.engine.getComponent(id, api.type.ComponentType.*)`. Check `api.engine.entityExists(id)` and handle nil components gracefully.
  - Naming convention replacement: `auto_line_namer_helper.generateLineName` replaces tokens {transportType}, {townNames}, {lineType}, {cargoTypes}, {lineNumber} using `State.getActiveConvention()`.
  - Updatable name detection: `ALNHelper.isUpdatableName(name)` — only override when name is considered default/updatable. Respect the tag prefix `State.getTagPrefix()`.
  - Logging: use `log.debug/info/warn/error`. The GUI exposes a log-level combobox that maps directly to `log.setLevel()`.

- Typical developer workflows & commands

  - There is no build step. Editing Lua files and reloading the mod in Transport Fever 2 is the main dev loop.
  - To debug in-game, set log level via the mod settings window or directly call `log.setLevel(log.levels.DEBUG)` in code.
  - Save/load behavior: `res/config/game_script/auto_line_namer.lua` implements `save` and `load` for persisted settings — follow that pattern when adding new settings.

- Examples (copy/paste-ready patterns)

  - Send GUI change to game script:
    api.cmd.sendCommand(api.cmd.make.sendScriptEvent("auto_line_namer.lua", "settings_gui", "tagPrefix", text))

  - Read a line's name safely:
    local name = api.engine.getComponent(lineId, api.type.ComponentType.NAME)
    if name then name = name.name end

  - Guard when getting components:
    local comp = api.engine.getComponent(id, api.type.ComponentType.LINE)
    if not comp or not api.engine.entityExists(id) then return end

- Integration points & external dependencies

  - This mod runs inside Transport Fever 2. The API surface used is the in-game `api` global (engine, cmd, res). There are no external NPM/Python dependencies.
  - Localization strings live in `strings.lua` (data() returning tables by locale). Use `_("key")` in GUI code as current files do.

- What to look for when changing/growing the codebase

  - Keep state keys stable — `State` getters/setters are the contract used by UI and helper code.
  - When adding new GUI options, wire them to `ALNHelper.sendScriptCommand("settings_gui", name, param)` and handle them in `GUIHelper.handleGuiEvents` and `game_script.load`/`save`.
  - Performance: avoid expensive per-frame work in `data().update`. Use the configured interval (`autoUpdate.interval`) or GUI events to trigger renaming — this avoids frequent engine calls.

- Quick checklist for PRs (what reviewers expect)
  - Uses `State` getters/setters (no ad-hoc globals).
  - New settings are persisted via `save`/`load` in `res/config/game_script/auto_line_namer.lua`.
  - Proper nil checks for engine components and entity existence.
  - Logging at an appropriate level (debug messages guarded with `log.debug`).

If anything above is unclear or you want more examples (unit-like tests, more code snippets, or wiring a new setting end-to-end), tell me what area you want and I will expand the file.

Use tf2-api/docs folder as reference for all the api calls and component structures.
