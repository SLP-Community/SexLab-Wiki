---
layout: default
title: Beginner's Guide
nav_order: 2
parent: SexLab P+
---

# Beginner's Guide

New to SexLab Patch? This guide will introduce you to the framework and get you started.

---

## What is SexLab?

**SexLab** is a modding framework for Skyrim that provides a foundation for adult content mods. By itself it only adds default animation packs and playing scenes with a debug spell. It's API however allows other mods to:

- Start animations and scenes
- Integrate adult scenes into story/quest content
- NPC interactions

SexLab handles the technical complexity of positioning actors, playing animations, applying effects, and managing the overall experience.

---

## What is SexLab P+ (Patch Plus)?

**SexLab P+** is a complete overhaul of the original SexLab Framework. It was created to address longstanding issues and modernize the framework for today's modding scene.

### Key Benefits

| Feature | Description |
|---------|-------------|
| **Performance** | Extremely fast animation registration and scene startup |
| **No Limits** | Unlimited animation slots (default SexLab caps at 1000) |
| **Modern Tech** | Uses SLSB instead of SLAL for animations |
| **Built-in Features** | Includes functionality from SLSO, SLAS, and other addon mods |
| **Automatic Settings** | MCM settings are save-game agnostic and auto-load |

---

## Core Concepts

### Animations
Animations are the visual content—the movements actors perform during scenes. These come in **animation packs** created by various authors.

### Animation Packs
Collections of animations bundled together. P+ has moved from the old SLAL packs to SexLab Scene Builder (SLSB) packs. These have to either be converted from SLAL or made from scratch. A collection of automated conversions is available [here](link pending)

### Scenes/Threads
A "scene" or "thread" is an active animation session. P+ can run multiple threads simultaneously.

### Tags
Animations are categorized using tags (e.g., "Aggressive", "Loving", "Oral"). Mods use these tags to select appropriate animations.

### Enjoyment System
P+ features a rebuilt enjoyment system that tracks actor pleasure during scenes based on:
- Animation stage tags
- Physics-based interaction detection
- Individual actor preferences

---

## Your First Setup

### 1. Essential Mods

Before installing SexLab P+, you need:

| Mod | Purpose |
|-----|---------|
| [SKSE](https://skse.silverlock.org/) | Script extender, required for most mods |
| [SkyUI](https://www.nexusmods.com/skyrimspecialedition/mods/12604) | Provides MCM menu system |
| [Mfg Fix NG](https://www.nexusmods.com/skyrimspecialedition/mods/114095) | Facial expression fixes |
| [Address Library](https://www.nexusmods.com/skyrimspecialedition/mods/32444) | Required by many SKSE plugins |

### 2. Body Mods

For physics and proper mesh support:

- **Female bodies**: [CBBE 3BA](https://www.nexusmods.com/skyrimspecialedition/mods/30174)
- **Male bodies**: [HIMBO](https://www.nexusmods.com/skyrimspecialedition/mods/46311)
- **Genitals**: [The New Gentleman](https://www.nexusmods.com/skyrimspecialedition/mods/104215)

### 3. Animation Packs

You'll need animation content. See our [Animation Packs](../animation-packs/) page for a list of converted packs ready for P+.

---

## The MCM Menu

After installation, open the MCM (Mod Configuration Menu) and find **SexLab**. Key sections include:

- **Animation Settings** - Control animation behavior
- **Actor Settings** - Configure NPC participation
- **Timers & Stripping** - Scene timing and clothing removal
- **Debug** - Troubleshooting tools

> See [How to Play](../how-to-play/) for a detailed MCM walkthrough.

---

## Common Terminology

| Term | Meaning |
|------|---------|
| **SLAL** | SexLab Animation Loader - the old animation system |
| **SLSB** | SexLab Scene Builder - the new animation system |
| **Thread** | An active scene/animation session |
| **Stages** | Individual phases within an animation sequence |
| **Orgasm** | Scene climax, can be triggered various ways |
| **Tags** | Categories/labels attached to animations |

---

## Next Steps

- [Installation Guide](../installation/) - Detailed setup instructions
- [How to Play](../how-to-play/) - Using the MCM and enjoyment system
- [Animation Packs](../animation-packs/) - Get animation content
