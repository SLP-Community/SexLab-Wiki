---
layout: default
title: FAQ
permalink: /faq/
---

# Frequently Asked Questions

Common questions about SexLab P+ and SLSB.

---

## General

### What is SexLab P+?

SexLab P+ (Patch Plus) is a complete overhaul of the SexLab Framework for Skyrim SE. It improves performance, removes animation limits, and adds modern features.

### Is P+ a separate mod from SexLab?

It's a replacement. You install base SexLab first (as a precaution), then P+ overwrites it entirely.

### Which Skyrim versions are supported?

**Current builds:**
- **1.6.1170** - Fully supported
- **1.5.97** - Limited support
- **1.6.640** - Not supported (will crash eventually)
- **GOG** - Not guaranteed but investigated

**Future builds:** Future versions will use CommonLibSSE-NG, making them **version agnostic** (one build for all versions).

### Is there an LE/Oldrim version?

No. P+ is SE/AE only.

### What about VR support?

A VR version is being considered but requires external help. If you're interested in contributing to VR support, please reach out on the [Discord](https://discord.gg/JPSHb4ebqj).

---

## Installation

### Do I need SLAL?

No. P+ uses SLSB instead. Don't install the SLAL loader.

### Do I need SKSE?

Yes, absolutely. SKSE is required.

### What about SLSO, SLAS, and other addons?

These are built into P+ and should NOT be installed separately:
- SexLab Separate Orgasm (SLSO)
- SexLab Anim Searcher (SLAS)
- SexLab Grass Patch (SLGP)
- SL Smooth Expressions

### Can I use my existing saves?

You can, but testing on a new save first is recommended. Some issues only appear on existing saves.

---

## Animations

### How many animations can I have?

Unlimited with P+. The vanilla 1000 cap is removed.

> **Note:** Mods using legacy API calls can only access the first 1000.

### Do my SLAL packs still work?

Yes, but you need SLSB conversion patches. Install the SLAL pack (for meshes) and the SLSB conversion on top.

### Where do I get animation packs?

See [Animation Packs](/slp/animation-packs/) for a list of converted packs and download links.

### Can I convert SLAL packs myself?

Yes! See [Converting Animations](/slsb/converting-animations/) for instructions.

---

## Compatibility

### Will my other SexLab mods work?

Most will. P+ maintains backwards compatibility for:
- Scene events
- Animation tags
- Standard API calls

See [Incompatible Mods](/slp/incompatible-mods/) for exceptions.

### What about Devious Devices?

DD NG works with minor issues. Animation filtering (e.g., no oral with gags) doesn't work correctly.

### Does Schlongs of Skyrim work?

Yes, but [The New Gentleman](https://www.nexusmods.com/skyrimspecialedition/mods/104215) is recommended instead for better compatibility.

---

## Features

### What is the enjoyment system?

P+ has a rewritten enjoyment system that:
- Detects interaction types via 3D physics
- Uses stage-specific and position-specific tags
- Responds to actor's arousal, sexuality, and relationship rank
- Affects actors individually

You can customize most features via the Enjoyment Settings tab in the MCM. For advanced users, additional options are available in `SKSE\Plugins\SexLab.ini`. See the [Settings Reference](/slp/settings-reference/) for all available options.

### Are there enjoyment widgets?

Widgets in the form of enjoyment bars are natively implemented in SexLab P+ and should be ample enough to indicate the enjoyment state of actors.

However, if the traditional SLSO-style widgets are preferred, a stripped-down version of the SLSO mod is available in the thread `SLPP Patches` in channel `dev-forum` on the Discord. As an additional feature, the SLSO widgets have been updated to support new features introduced in SexLab P+, such as pain and edging states, as well as physics/interaction detection.

### Is there an enjoyment minigame?

Yes, an enjoyment minigame has been implemented natively in the most recent iterations of SexLab P+. In its simplest form, it allows enjoyment to be increased or decreased through mouse clicks at a configurable cost to stamina or magicka.

Once an actor's enjoyment exceeds 90, the minigame changes in nature and requires timed clicks (a UI update is still needed to visualize the time window) to gain enjoyment and maintain the edging state. This state allows enjoyment to exceed 100 without orgasm and without stamina costs, while also providing some buffs. However, penalties apply if the enjoyment increase hotkey is spammed too much, including the possibility of a ruined orgasm.

The minigame feature is completely optional, as enjoyment gain through interaction/collision detection is sufficient and does not require the additional enjoyment provided by the minigame.

### Can I import my MCM settings?

P+ uses a different settings system. You'll need to reconfigure, but your settings are then saved to `Settings.yaml` and persist across all saves automatically.

---

## SLSB

### What's the difference between SLAL and SLSB?

| SLAL | SLSB |
|------|------|
| Papyrus scripts (.psc/.pex) | JSON source → compiled .slr files |
| Manual MCM registration | Automatic at startup |
| 1000 animation limit | Unlimited |
| Painfully slow | Near-instant |

SLSB is an external tool that compiles JSON definitions into `.slr` (SexLab Registry) files.

See [SLAL vs SLSB](/slsb/slal-vs-slsb/) for details.

### Do pack authors need to update?

Ideally yes, but the community provides conversions for popular packs.

### Can animations be tagged differently in SLSB?

Yes, SLSB allows more detailed tagging including per-stage and per-position tags.

---

## Troubleshooting

### Why aren't my animations loading?

1. Check `.slr` files are in `Data/SKSE/Plugins/SexLabRegistry/`
2. Verify conversions with **matching versions** are installed and winning conflicts
3. Make sure you ran behavior generation

### Why is the MCM empty?

Wait 1-2 minutes after loading for MCM to populate. Also check SkyUI is installed. Test on a new game if all else fails.

### Why do I crash when starting scenes?

- Verify your Skyrim version is supported
- Install Mfg Fix NG
- Check for mod conflicts

See [Troubleshooting](/troubleshooting/) for more help.

---

## Community

### Where can I get help?

- [Discord](https://discord.gg/JPSHb4ebqj) - Best for quick help
- [LoversLab](https://www.loverslab.com/files/file/25318-sexlab-p/) - Forum discussions

### How can I report bugs?

While making bug reports (either on Discord or LoversLab), make sure to include:
- P+ version
- Skyrim version
- Steps to reproduce
- Papyrus logs

### How can I contribute?

- Report bugs with detailed info
- Help answer questions in Discord
- Create or convert animation packs
- Test WIP versions and provide feedback

---

## Technical

### Where are settings stored?

P+ uses two configuration files:

| File | Location | Purpose |
|------|----------|----------|
| `Settings.yaml` | `SKSE\Plugins\SexLabData\Settings.yaml` | Your MCM preferences (auto-saved) |
| `SexLab.ini` | `SKSE\Plugins\SexLab.ini` | Framework internals (enjoyment rates, detection thresholds) |

See the [Settings Reference](/slp/settings-reference/) for details on SexLab.ini.

### Where are animation definitions?

`Data\SKSE\Plugins\SexLabRegistry\` (as `.slr` files)

### Is P+ open source?

Yes. [GitHub Organization](https://github.com/SLP-Community)
