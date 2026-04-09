---
layout: default
title: VR Gesture Controls
permalink: /slp/vr-gestures/
---

# VR Gesture Controls

This section introduces the various VR gesture controls available in SexLab P+ when using **Skyrim VR** and the **VRIK Player Actions** mod. For an overview of non-VR controls, reference section [How To Play](../how-to-play/) instead.

Following is the reference for all VRIK gestures available during scenes. They only require **thumbstick or trackpad** (Left and Right).

> ★ = Effect depends on **Adjust Self** — see note in Mode 1

---

## Mode 1 / 2 — Normal

| Gesture | ◀ Left stick / trackpad | ▶ Right stick / trackpad|
|---------|--------|---------|
| ***Tap*** | Toggle Adjust Self | Cycle POV Modes |
| ***Up*** | Raise Enjoyment ★ — costs Stamina | Change Scene |
| ***Down*** | Holdback ★ — costs Magicka | End Scene |
| ***Left*** | Target Partner ← | Stage ← |
| ***Right*** | Target Partner → | Stage → |
| ***Back*** | Toggle Free Cam | Move Scene |
| ***Forward*** | Scene Selector Menu | Change Positions ★ |


**★ Adjust Self**
Controls who is affected by starred actions. When **ON**, those actions apply to your own actor (the player character). When **OFF**, they apply to the currently selected partner.

**POV modes:**
There are three POV / Camera Modes that can be cycled through by using *CyclePOVMode* gesture. These determine the connection between view of player headset and the player body. These are as follows

| # | Name | Description |
|---|------|-------------|
| 0 | 1st Person | Headset locked to body |
| 1 | 1st Person Free | Headset unlocked |
| 2 | 3rd Person | Headset unlocked |

**Entering Offset Mode:**
Open the *Scene Selector Menu*, then navigate to offset adjustment options from there. Offset mode replaces these gestures until disabled.

---

## Mode 2 / 2 — Offset

| Gesture | ◀ Left stick / trackpad | ▶ Right stick / trackpad |
|---------|--------|---------|
| ***Tap*** | Toggle Adjust Self | Hold to Adjust *(hold while adjusting offsets)* |
| ***Up*** | Toggle Adjust Stage | OffsetAdj Up ★ |
| ***Down*** | Restore Offsets | OffsetAdj Down ★ |
| ***Left*** | Adj Mode ← | OffsetAdj Left ★ |
| ***Right*** | Adj Mode → | OffsetAdj Right ★ |

**Usage:**
Select an adj mode with L_Left / L_Right, then hold R_Tap while flicking the right stick to adjust. Release R_Tap to pause without losing your mode.

**Adjustment modes:**

| Mode | Up / Down | Left / Right |
|------|-----------|--------------|
| *Disabled* | *Restores Normal mode gestures* | |
| Position X-Y | Y (adj forward) | X (adj sideway) |
| Position R-Z | Z (adj height) | R (adj rotation) |
| Scene X-Y | Y (adj forward) | X (adj sideway) |
| Scene R-Z | Z (adj height) | R (adj rotation) |

**Disabling Offset Mode:**
Cycle L_Left / L_Right until the *Disabled* adj mode is selected. This restores all Normal mode gestures.

---

## Recommended Reads

- [How To Play](../how-to-play/) - Understand the basic SexLab configs and controls (non-VR usually, but some shared)
- [Settings Reference](../settings-reference/) - To understand the various MCM and SexLab.ini configs
