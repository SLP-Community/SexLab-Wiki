---
layout: default
title: Installation
permalink: /slp/installation/
---

# Installation Guide

A complete, step-by-step guide to installing SexLab P+.

---

## Requirements

### Skyrim Version

**Current Builds (Legacy Versioning)**

| Version | Support Level |
|---------|---------------|
| **1.6.1170** | ✅ Fully Supported |
| **1.5.97** | ⚠️ Limited Support (based on Patreon funding) |
| **1.6.640** | ❌ Unsupported (will eventually crash) |
| **Older versions** | ❌ Not Supported |

> **GOG Users:** Support is not guaranteed but will be investigated.

**Future Builds (CommonLibSSE-NG)**

Future versions of SexLab P+ will be compiled with CommonLibSSE-NG, making them **version agnostic**. This means a single build will work across all Skyrim SE/AE versions without needing version-specific releases.

### VR Support

A VR version is being considered but requires external help and contributions. If you're interested in helping with VR support, please reach out on the [Discord](https://discord.gg/JPSHb4ebqj).

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

> **Note 3:** SLAL aniamtion pack and SLSB conversion versions should match exactly (for example, if you have Billyy 9.6, only use conversions made for Billyy 9.6) to avoid T-Poses.

### Step 5: Generate Behaviors

Run your behavior generation tool:

- **Pandora** - Recommended. Use the latest stable version from Nexus.
- **Nemesis + FNIS** - Usually preferred for stability, but it's more tedious.

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

## Recommended Mods

For optimal physics and body support, see:

**→ [Recommended Mods](../recommended-mods/)**

This includes body mods (CBBE 3BA, HIMBO, The New Gentleman) and other complementary mods.

---

## Post-Installation

### First Launch

1. Start Skyrim and load a new save
2. Wait for all mods to initialize
3. Open MCM and find SexLab
4. Configure settings as desired

### Settings

P+ settings are **save-agnostic**—configure once and they apply to all saves.

Your MCM preferences are automatically saved to:
```
SKSE\Plugins\SexLabData\Settings.yaml
```

For advanced configuration of the enjoyment system, detection thresholds, and other framework internals, see the [Settings Reference](../settings-reference/).

---

## Common Issues

### "Animations not playing"
- Did you run behavior generation?
- Are SLSB conversions installed and winning conflicts?
- Do the versions of SLAL animation pack and the SLSB conversion match exactly?

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
