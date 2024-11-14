# Auto Line Namer (ALN) - User Manual

## TL;DR How to Use

1. Subscribe to the mod on [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3360333659).
2. Open the game and start a new or loaded save.
3. Click the `[ALN]` button in the game info bar.
4. Enable auto naming and customize settings as needed.
5. Close the settings window and start creating lines.
6. Auto Line Namer will automatically rename when you add some stops to the line and click the add stop button or close the line editor.
7. If you want to rename a line manually, set the line name to `r` or `reload` and click - unclick the add stop button.
8. If you don't want to keep renaming the lines over and over after all the cargo loaded, you can set the auto update interval in the settings window and enable it, so the lines will be renamed automatically in the specified interval.

## Overview

Auto Line Namer automatically generates consistent naming patterns for transport lines in Transport Fever 2 based on their properties and route details.

## Installation

Subscribe to the mod on [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3360333659).

## Core Features

- Automatic line naming based on transport type, cargo, and connected towns
- Interval-based updates for cargo type detection
- Manual rename triggers
- Customizable naming patterns
- Exclude specific lines from auto-naming

## How Line Naming Works

Lines are renamed in two cases:

1. When closing line editor after changes
2. At specified intervals (for accurate cargo detection)

Manual rename triggers:

- Set line name to `r` or `reload`
- Use default names (`Line 1`, `UNK`)

After that you need to click - unclick the add stop button to apply the new name.

## Settings Guide

Access via `[ALN]` button in game info bar.

All the default settings can be changed in the settings window.

### General Settings

| Setting            | Description                                     | Example                                    |
| ------------------ | ----------------------------------------------- | ------------------------------------------ |
| Enable auto naming | Toggle main functionality                       | -                                          |
| Disable Prefix     | Prevents auto-naming for lines with this prefix | `[NoAuto]`                                 |
| Active Convention  | Naming pattern variables                        | `{transportType} - {townNames} {lineType}` |
| Auto Update        | Interval-based renaming (minutes)               | Every 1 minute                             |

### Naming Variables

You can use the following variables in the naming pattern and set them in the settings window:

- `{transportType}`: Mode of transport (RP, RC, TP, TC, WP, WC, AP, AC, UNK, etc. Customizable in settings)
- `{cargoTypes}`: Cargo being carried (multiple types separated by your choice of character- default is `,`)
- `{townNames}`: Connected town names (start-end)
- `{lineType}`: Line classification (local, intercity, regional)
- `{lineNumber}`: Unique identifier as line id

### Transport Type Abbreviations

| Type            | Default |
| --------------- | ------- |
| Road Passenger  | RP      |
| Road Cargo      | RC      |
| Train Passenger | TP      |
| Train Cargo     | TC      |
| Water Passenger | WP      |
| Water Cargo     | WC      |
| Air Passenger   | AP      |
| Air Cargo       | AC      |
| Unknown         | UNK     |

### Line Type Abbreviations

| Type      | Abbrev | Description       |
| --------- | ------ | ----------------- |
| Local     | LO     | Within one town   |
| Intercity | IC     | Between two towns |
| Regional  | RE     | Through 3+ towns  |

### Cargo Settings

- Separator: Character between multiple cargo types
- Show Type: Full names or abbreviations

### Town Name Settings

- Show Type: Full or short names

### Debug Options

Log levels: TRACE, DEBUG, INFO, WARN, ERROR

## Example Names

```
Convention: {transportType} - {townNames} {lineType}
Settings: Road Passenger: RP, Intercity: IC, Town Show Type: Full
Output: RP - Town A, Town B IC
```

```
Convention: {transportType} - {cargoTypes} - {townNames} {lineType}
Settings: Road Passenger: RP, Town Show Type: Full, Local: LO
Output: RP - Passengers - Town A LO
```

```
Convention: {transportType} - {cargoTypes} - {townNames} {lineType}
Settings: Road Passenger: RP, Town Show Type: Short, Local: LO
Output: RP - Passengers - Abc LO -- Town name with 3 characters
```

```
Convention: {transportType} - {cargoTypes} - {townNames} {lineType}
Settings: Road Cargo: TRC, Town Show Type: Short, Local: LO
Output: TRC - Logs, Gravel - Abc LO
```

```
Convention: {transportType} - [{cargoTypes}] - {townNames} {lineType}
Settings: Road Cargo: TRUCK, Town Show Type: Short, Local: LO
Output: TRUCK - [Logs, Gravel] - Abc LO
```

## Important Notes

- Initial cargo types may be incorrect until:
  - Vehicles are assigned
  - Cargo is loaded
  - Auto-update interval passes
- Prevent auto-naming by:
  - Adding `[NoAuto]` prefix
  - Disabling in settings
- Force rename by:
  - Using `r` or `reload` as name
  - Waiting for auto-update
  - Closing/reopening line editor

## Troubleshooting

- **No rename**: Check for custom name or `[NoAuto]` prefix
- **Wrong cargo**: Wait for vehicle loading or use manual rename
- **Town name issues**: Verify stop connections

## Feedback & Support

- [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3360333659)
- [GitHub Issues](https://github.com/erkanercan/TPF2-AutoLineNamer/issues)

## FAQ

- **Q**: How do I disable auto-naming for specific lines?
  - **A**: Add `[NoAuto]` prefix to line name. You can change this in settings.
- **Q**: Why are cargo types not detected correctly?
  - **A**: Wait for vehicles to load cargo or use manual rename. In TPF2, cargo types are not immediately available, instead game defines some default cargo types for the vehicles.(For example, logs for all cargo trucks) So, the cargo types will be detected after the vehicles loaded some cargo.
- **Q**: How can I rename lines manually?
  - **A**: Set line name to `r` or `reload` and click - unclick the add stop button.
  - **A**: Use default names (`Line 1`, `UNK`). After that you need to click - unclick the add stop button to apply the new name.
- **Q**: Why are town names not showing up in line names?
  - **A**: Verify that stops are connected to towns. If not, manually rename the line.
- **Q**: Why did you remove auto naming, and now we need to click - unclick the add stop button to apply the new name?
  - **A**: Unfortunately with the old method, game tries to rename the line almost 5 times in a second, and this causes some performance issues. So, I had to change the method to prevent this. Now, the line will be renamed after you click - unclick the add stop button. If I find a method to add a button next to line name in the line editor, I will add it to the mod.
- **Q**: Why are the line names not updating after the cargo loaded?
  - **A**: If you don't want to keep renaming the lines over and over after all the cargo loaded, you can set the auto update interval in the settings window and enable it, so the lines will be renamed automatically in the specified interval.
