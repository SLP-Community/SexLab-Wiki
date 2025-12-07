---
layout: default
title: Converting Animations
permalink: /slsb/converting-animations/
---

# Converting Animations

How to convert SLAL animation packs to SLSB format for SexLab P+.

---

## Quick Start

To convert SLAL packs quickly:

1. Set up your development environment (see [Environment Setup](../environment-setup/))
2. Place SLAL packs in `SLAL_Packs/` folder with correct structure
3. Run `execute_convert_full.cmd`
4. Collect converted outputs from `SLSB_Outputs/`
5. Package and distribute

---

## Detailed Conversion Process

### Prerequisites

Before starting, ensure you have:
- The SLSB.Convert.Dev.Essentials downloaded and extracted
- All FNIS tools installed (see [Environment Setup](../environment-setup/))
- Latest jsons from `Automated.SLSB.Conversions` in `updated_slsb_jsons/`
- SLAL animation packs to convert in `SLAL_Packs/` folder

### Step 1: Organize Your Packs

Place SLAL packs in the `SLAL_Packs/` folder with the required structure:

```
SLAL_Packs/
├── BillyyCreatures/
│   └── SLAnims/
│       └── json/
│           ├── BillyyCreatures.json
│           └── [other animation files]
├── AnimationsByLeito/
│   └── SLAnims/
│       └── json/
│           └── AnimationsByLeito.json
└── [other packs]/
    └── SLAnims/
        └── json/
```

**Important:** Structure must be `PackName/SLAnims/json/` or the converter won't find the files.

### Step 2: Run the Batch Converter

1. Open File Explorer to your dev environment
2. Double-click `execute_convert_full.cmd`
3. The script runs automatically and processes all packs

### Step 3: Collect Output Files

After conversion completes, your SLSB conversions will be generated in `SLSB_Outputs/`:

```
SLSB_Outputs/
  └───conversions [yyyy.mm.dd_hh.mm.ss]
        ├───[Pack Name 1]
        |    ├───meshes
        │    │     └───actors
        │    │           └───[<actor>]
        │    │                ├───animations
        │    │                └───behaviors
        │    └───SKSE
        │          └───Sexlab
        │                └───Registry
        │                     └───Source
        └───[Pack Name 2]
             ├───meshes
             │     └───actors
             │           └───[<actor>]
             │                ├───animations
             │                └───behaviors
             └───SKSE
                   └───Sexlab
                         └───Registry
                              └───Source
```

### Step 4: Package for Users

Create a mod / zip archive containing the output directories `meshes` and `SKSE` (including thier content) for each converted pack/module and distribute/publish the same.

Users will install this on top of the original SLAL animation pack (which are needed for animation meshes/assets).

---

### What Gets Converted

The converter automatically extracts:
- **Animation names** - Display name and unique event hkx identifiers
- **Gender/race tags** - Actor requirements (male, female, creature, etc.)
- **Creature info** - Race keys for creature animations
- **Animation stages** - Which .hkx files play and timing/impact sound
- **Actor offsets** - Offsets and rotations for each participant
- **Scene parameters** - Stage timers, stage sound, etc.
- **Tags/categories** - Aggressive, Loving, Foreplay, etc.
- **AnimObjects info** - All AnimObjects are incorporated as-is for each animation event.

---

## Manual Adjustments

After conversion, you may need to make manual adjustments to the slsb.json and re-compile the `.slr` files thrught the SLSB tool through `Import Project` option.

### Common Adjustments

| Issue | Solution |
|-------|----------|
| Wrong animation tags | Edit JSON before recompiling |
| Incorrect gender tags | Update actor definitions |
| Timing issues | Adjust stage timer values |
| Missing interaction types | Add appropriate tags |
| Position offsets wrong | Manually adjust offset arrays |

### When to Adjust

Most conversions work automatically, but you may need to adjust for:
- Animations with non-standard gender combinations
- Creature animations with unusual race pairings
- Packs with missing metadata
- Legacy packs with incomplete definitions

### Testing Adjustments

After editing JSON:
1. Run the `SexLab Scene Builder.exe`.
2. Import the edited JSON project file and export.
2. Replace the generated `.slr` file with the one generated previously by converter.
3. Install the modified conversion; launch game and verify animations appear correctly.
4. Test with MatchMaker.s

---

## Testing Your Conversion

### Pre-Test Verification

Before testing in-game, verify your conversion:

1. Check output folder has the structure and content outlined in the section `Package Structure` below.
2. Verify manifest shows no errors
3. Ensure output files are not empty (check file size > 1KB)

### In-Game Testing

1. Install the original SLAL pack (for mesh files)
2. Install your converted SLSB conversion distribution
3. Launch game and load a save
4. Open SexLab MCM → Registrations
5. Check if your animations appear in the list

### Testing with MatchMaker

Use the MatchMaker tool to test animations without manual setup:

1. Open SexLab MCM
2. Go to MatchMaker
3. Select your animation pack
4. Choose actors and let MatchMaker start the scene
5. Verify animation plays correctly

### Debugging Failed Conversions

If animations don't appear:

| Issue | Check |
|-------|-------|
| `.slr` file not created | Verify SLAL_Packs folder structure |
| Manifest shows errors | Check FNIS tools are installed |
| No animations in MCM | Verify `Data/SKSE/Plugins/SexLabRegistry/` path |
| Animations crash | Check actor/creature count matches animation |
| Wrong animation plays | Verify JSON wasn't manually edited incorrectly |

### Papyrus Logging

For detailed debugging:

1. Edit `skyrim.ini`:
   ```ini
   [Papyrus]
   bEnableLogging=1
   bEnableTrace=1
   ```

2. Check logs at:
   ```
   Documents/My Games/Skyrim Special Edition/Logs/Script/
   ```

---

## Distribution

### Package Structure

Your conversion package should contain:

```
[SLSB Conversion]
    ├───meshes
    │     └───actors
    │          └───[<actor>]
    │               ├───animations
    │               └───behaviors
    └───SKSE
          └───Sexlab
                └───Registry
                     └───Source
```

1. An SLSB Project JSON in `SKSE/SexLab/Registry/Source/<PackName>.slsb.json`.
2. A SexLab Registry SLR file in `SKSE/SexLab/Registry/<PackName>.slr`.
3. An edited FNIS AnimList in `meshes/actors/<character>/animations/FNIS_<PackName>_List.txt`.
4. Newly generated behaviour file in `meshes/actors/<character>/behaviors/FNIS_<PackName>_Behaviour.hkx`.

### Documentation

Include a README noting:
- Required base pack (SLAL version)
- Installation order
- Any known issues
- Credits to original author

### Permissions

Always check the original pack's permissions before distributing conversions. Many authors require permission for derivative works.

---

## Getting Help

- **Discord**: [#slsb-and-pack-dev](https://discord.gg/JPSHb4ebqj)
- **Tutorial**: [MissCorruption's Guide](https://gist.github.com/MissCorruption/fc62e0b46e3652ad6a85fe903a6a9b37)
- **Examples**: Check existing converted packs for reference
