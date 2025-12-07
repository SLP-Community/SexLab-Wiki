---
layout: default
title: Environment Setup
permalink: /slsb/environment-setup/
---

# Environment Setup

Set up your development environment for creating and converting SLSB animation packs.

---

## Required Software

### Python

SLSB conversion tools require Python 3.10 or higher.

#### Windows

1. Download from [python.org](https://www.python.org/downloads/)
2. Run the installer
3. **Important:** Check "Add Python to PATH"
4. Click "Install Now"

Verify installation:
```powershell
python --version
```

#### Alternative: Using Scoop (Windows)

```powershell
scoop install python
```


## Conversion Tools

### Getting the Development Essentials

1. Download **SLSB.Convert.Dev.Essentials** from the [Discord](https://discord.gg/JPSHb4ebqj) (pinned in **#slsb-and-pack-dev** channel)
2. Extract to a short path without spaces (e.g., `D:/SkyrimMods/SLSB.Convert.Dev.Essentials`)

### Required FNIS Tools

You'll need FNIS tools for animation processing. Download these from Nexus Mods:

1. [FNIS Behavior SE 7.6 XXL](https://www.nexusmods.com/skyrimspecialedition/mods/3038?tab=files&file_id=124620)
2. [FNIS Creature Pack SE 7.6](https://www.nexusmods.com/skyrimspecialedition/mods/3038?tab=files&file_id=124621)
3. [Command Line FNIS for Modders](https://www.nexusmods.com/skyrim/mods/81882?tab=files&file_id=1000235248)

### Required SLATE ActionLogs

1. [SexLab AnimStageLabels](https://www.loverslab.com/files/file/27407-sexlab-anim-stage-labels/)
2. [HentaiRim Tags](https://www.loverslab.com/files/file/43761-hentairim-p/)

### Setting Up Dev Tools

After downloading, extract tools to your dev environment:

1. Extract FNIS Behavior SE → `base_game_replica\Data`
   - Take the **"tools"** folder from `FNIS Behavior SE 7.6 XXL\Data`
2. Extract FNIS Creature Pack → `base_game_replica\Data`
   - Take the **"tools"** folder
3. Extract Command Line FNIS → `base_game_replica\Data`
   - Extract the **"tools"** folder
4. Extract AnimStageLabels → `slate_action_logs`
   - Take the **"SLATE"** folder contents from `SLAnimStageLabels\SKSE\Plugins`
5. Extract HentaiRim Tags → `slate_action_logs`
   - Take the **"SLATE"** folder contents

---

## Setting Up Your First Conversion

### Step 1: Prepare the Dev Environment

Extract the downloaded **SLSB.Convert.Dev.Essentials** to a path without spaces:

```
D:/SkyrimMods/SLSB.Convert.Dev.Essentials/
```

### Step 2: Add FNIS Tools

Follow the "Required FNIS Tools", "Required SLATE ActionLogs", and "Setting Up Dev Tools" sections above to add:
- FNIS Behavior tools
- FNIS Creature tools
- Command Line FNIS
- AnimStageLabels
- HentaiRim Tags

### Step 3: Maintain Animation Hashes

**Important:** SLSB and SLP+ identify scenes by hash. To prevent users from losing animation toggles and customizations on updates:

1. Download the latest `Automated.SLSB.Conversions.v_.7z` from the mod page
2. Extract and search for `.json` files
3. Copy all JSON files to `[dev_env]\updated_slsb_jsons/`
4. The converter will use these hashes for new conversions

This ensures users' saved animation preferences persist across updates.

### Step 4: Confirm Dev Environment Structure

The dev environment should now look like:
```
[SLSB.Convert.Dev.Essentials]/
   │   execute_convert_full.cmd
   │   execute_convert_test.cmd
   │
   ├───SLAL_Packs/
   ├───SLSB_Outputs/
   |
   └───[dev_env]/
      │   SexLab Scene Builder.exe
      │   slsb-convert.py
      │
      ├───base_game_replica/
      │   └───Data/
      │       └───tools/
      │           ├───GenerateFNIS_for_Modders/
      │           │   │   commandlinefnisformodders.exe
      │           │   │   commandlinefnisformoddershook.dll
      │           │   │   GenerateFNISforModders.exe
      │           │   │   hkxcmd.exe
      │           │   │
      │           │   └───<other content>
      |           |
      │           └───GenerateFNIS_for_Users/
      │               └───<content>
      │
      ├───slate_action_logs/
      │       SLATE_ActionLog - 1OsmelMC.json
      │       SLATE_ActionLog - 2SLEN Vampire.json
      │       SLATE_ActionLog - 3Nymra.json
      │       SLATE_ActionLog - ASL Creature.json
      │       SLATE_ActionLog - ASL Human.json
      │       SLATE_ActionLog - ASL SFX.json
      │       SLATE_ActionLog - Hentairim Supplement Tags.json
      │       SLATE_ActionLog - Hentairim tags.json
      │
      └───updated_slsb_jsons/
               _1.0.txt
               <Pack Names>.slsb.json
```


### Step 5: Convert SLAL Packs

1. Place SLAL packs in `SLAL_Packs/` with proper structure (see included examples)
2. Run `execute_convert_full.cmd` (on Windows) or equivalent script
3. Wait for conversion to complete
4. Check `SLSB_Outputs/` for generated `.slr` files

### Step 5: Verify Conversions

The output directory should contain:
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

These converted packages are what you distribute to users or install as replacer mods on top of SLAL Animation packs. These include the following files:

1. An SLSB Project JSON in `SKSE/SexLab/Registry/Source/<PackName>.slsb.json`. This can be fed into SLSB tool for manual tweaking and SLR generation afterwards. This is not read by either the game or SexLab P+.
2. A SexLab Registry SLR file in `SKSE/SexLab/Registry/<PackName>.slr`. This is read by SexLab P+ and tells it the various features of animation packs and each scene contained in it.
3. An edited FNIS AnimList in `meshes/actors/<character>/animations/FNIS_<PackName>_List.txt`. This is fed into FNIS_for_Modders to generate a behaviour file.
4. Newly generated behaviour file in `meshes/actors/<character>/behaviors/FNIS_<PackName>_Behaviour.hkx`. This is read by the game to play the animations required by SexLab P+.

---

## Testing Environment

### Game Setup

For testing conversions:

1. **Separate Profile**: Create a dedicated MO2/Vortex profile for testing
2. **Minimal Setup**: Only essential mods + SL P+ + your conversion
3. **Test Save**: Keep a clean save for quick testing

### Quick Test Process

1. Install your conversion
2. Launch game, load test save
3. Open MCM → SexLab
4. Check if animations appear
5. Test with console commands or MatchMaker

### Debugging

Enable Papyrus logging to catch errors:

`skyrim.ini`:
```ini
[Papyrus]
bEnableLogging=1
bEnableTrace=1
```

Check logs at:
```
Documents/My Games/Skyrim Special Edition/Logs/Script/
```

---

## Batch Processing Multiple Packs

### Automated Full Conversion

The toolkit provides batch scripts to convert multiple SLAL packs at once.

#### Windows

Double-click one of:
- `execute_convert_full.cmd` - Full conversion of all packs in `SLAL_Packs/`
- `execute_convert_test.cmd` - Test conversion (limited, for testing script changes without behavior generation)

The script will:
1. Process each pack in `SLAL_Packs/`
2. Place converted SLSB output in `SLSB_Outputs/`
5. Report completion and any errors

### Troubleshooting Batch Conversions

| Issue | Cause | Solution |
|-------|-------|----------|
| Script won't run | File permissions | Right-click → "Run as Administrator" |
| "Python not found" | Python not in PATH | Install Python with "Add to PATH" checked |
| Pack not converted | Wrong folder structure | Ensure `SLAL_Packs/PackName/SLAnims/json/` layout |
| Missing tools | Incomplete FNIS setup | Follow "Required FNIS Tools" section |
| Empty output | No JSON found | Check source packs contain json/ folder |

---

## Quick Reference: File Paths

**Critical paths to remember:**

| File/Folder | Purpose | Example |
|---|---|---|
| `SLAL_Packs/` | Input SLAL packs | `SLAL_Packs/BillyyCreatures/SLAnims/json/` |
| `SLSB_Outputs/` | Output .slr files | `SLSB_Outputs/BillyyCreatures.slr` |
| `updated_slsb_jsons/` | Hash reference | Copy latest Automated.SLSB.Conversions JSONs here |
| `base_game_replica/Data/` | FNIS tools | All FNIS tools go here |
| `slate_action_logs/` | Animation labels | SLATE folder contents from AnimStageLabels & HentaiRim |
| `slsb-convert.py` | Conversion script | The main script handling the whole conversion logic |

## Additional Resources

- **Discord**: [#slsb-and-pack-dev](https://discord.gg/JPSHb4ebqj) for help
- **Tutorial**: [MissCorruption's Guide](https://gist.github.com/MissCorruption/fc62e0b46e3652ad6a85fe903a6a9b37)
- **GitHub**: [SexLab Repository](https://github.com/SLP-Community) for source reference
