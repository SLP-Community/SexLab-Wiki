---
layout: default
title: Installation
nav_order: 6
parent: SexLab P+
---

# Installation Guide

A complete, step-by-step guide to installing SexLab P+.

---

## Requirements

### Skyrim Version

| Version | Support Level |
|---------|---------------|
| **1.6.1170** | ✅ Fully Supported |
| **1.5.97** | ⚠️ Limited Support (based on Patreon funding) |
| **1.6.640** | ❌ Unsupported (will eventually crash) |
| **Older versions** | ❌ Not Supported |

> **GOG Users:** Support is not guaranteed but will be investigated.

> With the community maintaining SexLab Patch+ an "NG" build is in progress. This would make SLP+ version agnostic

### Required Mods

Install these before SexLab P+:

| Mod | Notes |
|-----|-------|
| [SKSE](https://skse.silverlock.org/) | Match to your Skyrim version |
| [Address Library](https://www.nexusmods.com/skyrimspecialedition/mods/32444) | Required by many SKSE plugins |
| [SkyUI](https://www.nexusmods.com/skyrimspecialedition/mods/12604) | For MCM menus |
| [Mfg Fix NG](https://www.nexusmods.com/skyrimspecialedition/mods/114095) | Required for expressions |
| [BEES](https://www.nexusmods.com/skyrimspecialedition/mods/106441) | Only if on 1.6.640 or lower |

---

## Installation Steps

### Step 1: Install Base SexLab

Install the base SexLab Framework first. This is a precaution as P+ will overwrite everything except the logo.

### Step 2: Install Mfg Fix NG

Download and install [Mfg Fix NG](https://www.nexusmods.com/skyrimspecialedition/mods/114095) along with its requirements.

### Step 3: Install SexLab P+

Download from one of these sources:
- **Stable Release:** [LoversLab](https://www.loverslab.com/files/file/25318-sexlab-p/)
- **WIP/Beta:** [Discord](https://discord.gg/JPSHb4ebqj)

**Critical:** P+ must win ALL file conflicts. Let it overwrite every mod that touches base SexLab.*

*The only exception is HentaiRim for SLP+. It needs Papyrus functions that have yet to be added to the main scripts.

### Step 4: Install Animation Packs

1. Install the **SLAL packs** you want (but NOT the SLAL loader itself)
2. Download the `Automated.SLSB.Conversions` package
3. Install the conversions, letting them overwrite the SLAL packs

Your mod order should look something like this:

```
SexLab P+
├── [Animation Pack 1] (SLAL version)
├── SLSB Conversion for Pack 1 ← overwrites above
├── [Animation Pack 2] (SLAL version)  
├── SLSB Conversion for Pack 2 ← overwrites above
└── ...
```

> **Note:** Until authors grant redistribution permission, you must download both the original SLAL pack and its SLSB conversion separately.

> **Note 2:** At the time of writing we are actively contacting SLAL pack authors to help them migrate/provide SLSB conversions.

### Step 5: Generate Behaviors

Run your behavior generation tool:

- **Nemesis + FNIS** - Recommended for stability, albeit more tedious
- **Pandora** - Alternative option (has known issues with Draugrs/Skeletons and potentially ZAZ)

### Step 6: Verify Installation

1. Ensure no mods are overwriting SexLab P+ (unless specifically patched)
2. Check for file conflicts in your mod manager
3. Review your load order

### Step 7: Test

**Always test on a new save first!**

---

## Mod Manager Setup

### MO2 (Mod Organizer 2)

Your left pane should look like:

```
...
Base SexLab
Mfg Fix NG
SexLab P+ ← wins all SL conflicts
Animation Pack 1 (SLAL)
SLSB Conversion Pack 1 ← overwrites SLAL pack
Animation Pack 2 (SLAL)
SLSB Conversion Pack 2
...
```

### Vortex

Use load order rules to ensure:
1. SexLab P+ loads after base SexLab
2. SLSB conversions load after their respective SLAL packs
3. No mods overwrite SexLab P+ files

---

## Soft Requirements

For optimal physics and body support:

### Female Bodies
[CBBE 3BA (3BBB)](https://www.nexusmods.com/skyrimspecialedition/mods/30174)

### Male Bodies
[HIMBO](https://www.nexusmods.com/skyrimspecialedition/mods/46311)

### Genitals
[The New Gentleman (TNG)](https://www.nexusmods.com/skyrimspecialedition/mods/104215) is recommended over Schlongs of Skyrim.

---

## Post-Installation

### First Launch

1. Start Skyrim and load a new save
2. Wait for all mods to initialize
3. Open MCM and find SexLab
4. Configure settings as desired

### Settings

P+ settings are **save-agnostic**, configure once and they apply to all saves.

Settings are stored in:
```
SKSE\Plugins\SexLab.ini
```

---

## Common Issues

### "Animations not playing"
- Did you run behavior generation?
- Are SLSB conversions installed and winning conflicts?

### "CTD on scene start"
- Verify Skyrim version compatibility
- Check for mod conflicts
- Ensure Mfg Fix NG is installed

### "MCM not showing"
- Is SkyUI installed?
- Wait a few minutes after loading for mods to initialize

See [Troubleshooting](../../troubleshooting/) for more solutions.

---

## Next Steps

- [Animation Packs](../animation-packs/) - Get animation content
- [Recommended Mods](../recommended-mods/) - Enhance your setup
- [How to Play](../how-to-play/) - Learn the systems
