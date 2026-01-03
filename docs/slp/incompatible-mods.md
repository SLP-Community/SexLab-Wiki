---
layout: default
title: Incompatible Mods
permalink: /slp/incompatible-mods/
---

# Incompatible Mods

This is a non-exhaustive list of mods known to be incompatible with SexLab P+.

> **Note:** There are too many SL mods to test them all. Not all mods listed were tested against the latest P+ version. Information may change with updates.

---

## Fully Incompatible

These mods **will not work** with SexLab P+:

### Deadly Drain

**[Deadly Drain SE Enhanced](https://www.loverslab.com/files/file/18011-sexlab-deadly-drain-se-enhanced-beta/)** - Any version

Deadly Drain interacts with SexLab in an incorrect and unsupported manner. P+ no longer supports this behavior.

> A rough patch exists in [this thread](https://www.loverslab.com/topic/170031-sexlab-deadly-drain-se-enhanced-beta/page/43/#findComment-4417317), but some features may not work.

### Follow Me for Sex

The original mod appears to have vanished. Patching is not advisable because the mod was overcomplicated to begin with.

### SexLab Tools

**[SL Tools](https://www.loverslab.com/files/file/10660-sexlab-tools-for-se-patched/)** - Incompatible

This functionality will be integrated into P+ natively, likely during the UI update.

### FreeFlyCam

May conflict with keybindings for the new P+ UI. This may or may not be fixed in the future.

---

## Redundant Mods

These mods should **not be installed** because their functionality is built into P+:

| Mod | Status |
|-----|--------|
| [SexLab Utilities+ (SLU+)](https://www.loverslab.com/files/file/10316-osmelmc-mod-tweaks/) | Redundant - same goals as P+ |
| [SexLab Anim Searcher (SLAS)](https://www.loverslab.com/files/file/25350-slas-sexlab-anim-searcher/) | Redundant - P+ is faster |
| [SexLab Grass Patch (SLGP)](https://www.loverslab.com/files/file/25455-slgp-sexlab-grass-patch/) | Redundant - fixed natively |
| [SexLab Separate Orgasm (SLSO)](https://www.loverslab.com/files/file/5929-sexlab-separate-orgasm-se/) | Redundant - built into P+ |
| [SL Smooth Expressions](https://www.loverslab.com/files/file/31585-sexlab-smooth-expressions/) | Redundant - built into P+ |

> **Note:** SL Utilities+ **WILL** break scene setup, do not use with SLP+

---

## Partially Compatible

These mods work but with limitations:

### Devious Devices NG

**[DD NG](https://www.loverslab.com/files/file/29779-devious-devices-ng/)** - Partial compatibility

- Version 0.3.7 (LoversLab) and 0.3.8 (Discord) have minor incompatibilities
- The animation filter (filtering out "impossible" animations like oral with a gag) does not work correctly

### ZAZ

**ZAZ Scripts** are incompatible—but most mods only need ZAZ **meshes** (furniture, gags, ropes, etc.).

- ZAZ uses Papyrus to register animations, which is no longer possible with SLSB/P+
- Mods that register animations through ZAZ require patching

**Known mods requiring ZAZ animation patching:**
- Estrus
- ZAZ itself
- DD/DDNG
- Prison Overhaul

---

## Animation Limit Notes

P+ has **no animation limit** by default. However, mods using the legacy `sslBaseAnimation` class can only access:

- First 1000 human animations
- First 1000 creature animations
- 2000 animations total

This affects older mods that haven't updated to the new API.

> **Note:** Skyrim's Havok animation limit of 65,534 (20k base + pandora + OAR) still applies.

---

## Checking Mod Compatibility

### Before Installing

1. Check if the mod modifies core SexLab scripts
2. Look for P+ compatibility notes on the mod page
3. Search the [Discord](https://discord.gg/JPSHb4ebqj) for reports
4. Ask in the Discord if unsure

### If a Mod Isn't Working

1. Check if someone else has reported the issue
2. If not, inform the mod author with:
   - Your Papyrus logs
   - Steps to reproduce
   - Your mod list

### Enabling Papyrus Logging

#### Using BethINI

Under the "General" tab, enable logging:
- Enable Papyrus Logging: ✅
- Enable Papyrus Profiling: ✅

#### Manual INI Edit

Add to your `skyrim.ini`:

```ini
[Papyrus]
bEnableLogging=1
bEnableTrace=0
bEnableProfiling=1
bLoadDebugInformation=0
```

Papyrus Logs will appear in:
```
Documents\My Games\Skyrim Special Edition\Logs\Script\
```

Sexlab Logs will appear in:
```
Documents\My Games\Skyrim Special Edition\SKSE\
```

---

## Reporting Incompatibilities

Found an incompatible mod? Report it on the [Discord](https://discord.gg/JPSHb4ebqj) with:

1. Mod name and version
2. P+ version
3. What doesn't work
4. Papyrus logs if available

This helps keep the documentation accurate and assists other users.
