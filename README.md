# Automatic Line Naming (ALN) for Transport Fever 2

[Steam Workshop Link](https://steamcommunity.com/sharedfiles/filedetails/?id=3360333659)

## Description

The Automatic Line Naming (ALN) mod for Transport Fever 2 dynamically generates names for player-created lines based on route details, transport type, and whether they carry cargo or passengers. This mod simplifies gameplay by automatically creating unique, informative names for each line, helping you keep track of your network effortlessly. Featuring configurable settings, renaming options, and detailed logging, ALN lets you focus on managing your network without the hassle of manual naming.

---

## Current Features

### Automated Naming Convention

Each line name follows this structure:

```
    [Transport Type] - [(Cargo Types)]: [First Town Initials] - [Last Town Initials] [Line Type] #[Count]
```

#### Components of the Naming Convention

- **Transport Type**: Abbreviation based on transport mode (e.g., `RC` for Road Cargo, `TP` for Train Passenger).
- **Cargo Types**: If applicable, displays the types of cargo in parentheses (e.g., `(Grain)`), or is left blank for passenger-only lines.
- **Town Initials**: Up to three-letter initials of the starting and ending towns (e.g., `Spr` for Springfield).
- **Line Type**:
  - **LO (Local)**: A line that operates within a single town, typically shorter routes such as urban buses or short-distance trams.
  - **IC (Intercity)**: A line that connects two distinct towns, often medium-range routes like regional trains, intercity buses, or cargo trucks between two locations.
  - **RE (Regional)**: A line that passes through three or more towns, typically longer routes covering multiple cities or regions, like express trains or multi-stop cargo routes.
- **Count**: If multiple lines share the same name, a unique count (e.g., `#1`, `#2`) is added to avoid duplicates.

#### Examples

- **Road Cargo Line**: `RC - (Grain): Spr - Cap IC #1`
- **Passenger Train Line**: `TP - Spr - She IC`
- **Air Passenger Line**: `AP - Cap - Ogd LO`

### Transport Type Detection

Differentiates between passenger and cargo lines across all transport types, with shorthand for each mode.

### Renaming Options

- **Manual Refresh**: Set a line’s name to `"reload"` or `"r"` to trigger an automatic renaming based on the current route and transport type.
- **Default Naming**: Lines with default values (e.g., `"Line 1"`, `"Line 2"`) or prefixed with `"UNK"` are automatically renamed.
- **Tag Exclusion**: Use the `[NoAuto]` tag to exclude lines from auto-renaming.

### Customizable Settings

- Adjust naming conventions or exclude lines from renaming.
- Configurable logging to monitor mod actions and troubleshoot as needed.

### Logging for Transparency

Detailed log messages for actions like renaming, skipping lines, and detected cargo types.

---

## Upcoming Features

- **In-Game Customization GUI**: Directly adjust naming conventions, logging levels, and tag exclusions in-game.
- **Additional Naming Patterns**: More flexible patterns, including customizable prefixes and suffixes.
- **Support for Custom Cargo Types**: Enhanced detection for modded or custom cargo types to improve naming accuracy.

---

## How to Use

1. **Install the Mod**  
   Subscribe on the Steam Workshop and enable it in Transport Fever 2’s mod settings.

2. **Create a New Line**  
   Set up a line as usual. ALN will automatically generate a name based on its details.

3. **Rename Existing Lines**  
   ALN renames existing lines with default or placeholder names. You can also rename a line by setting its name to `"reload"` or `"r"`.

4. **Modify Settings (Optional)**  
   Open `logging.lua` to adjust logging levels or enable extended logging.

---

## Troubleshooting and Tips

- **Why is my line not renamed?**  
  The line may already have a custom name or might not meet renaming conditions (e.g., no assigned stops). Set the line name to `"reload"` or `"r"` to force a renaming.

- **How do I exclude a line from renaming?**  
  Use the `[NoAuto]` tag in the line name to prevent auto-renaming.

---

## Notes

This mod automatically names new and default-named lines, making it ideal for quickly expanding your network. For feedback or bug reports, create an issue here or please leave a comment on the mod’s [Steam Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=3360333659)!

---
