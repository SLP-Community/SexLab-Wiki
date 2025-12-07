---
layout: default
title: Beginner's Guide
permalink: /slp/beginners-guide/
---

# Beginner's Guide

New to SexLab or SexLab P+? This guide will introduce you to the framework and its concepts.

---

## What is SexLab?

**SexLab** is a modding framework for Skyrim that provides a foundation for adult content mods. By itself, it adds default animation packs and a debug spell for playing scenes. Its API allows other mods to:

- Start animations and scenes between actors
- Integrate adult scenes into story/quest content
- Create NPC interactions and encounters

SexLab handles the technical complexity of positioning actors, playing animations, applying effects, and managing the overall experience.

---

## What is SexLab P+ (Patch Plus)?

**SexLab P+** is a complete overhaul of the original SexLab Framework. It was created to address longstanding issues and modernize the framework for today's modding scene.

### Key Benefits

| Feature | Description |
|---------|-------------|
| **Performance** | Near-instant animation registration and scene startup |
| **No Limits** | Unlimited animation slots (default SexLab caps at 1000) |
| **Modern Tech** | Uses SLSB instead of SLAL for animations |
| **Built-in Features** | Includes functionality from SLSO, SLAS, and other addon mods |
| **Automatic Settings** | MCM settings save to `Settings.yaml` and persist across all saves |

---

## Core Concepts

### Animations
Animations are the visual content—the movements actors perform during scenes. These come in **animation packs** created by various authors.

### Animation Packs
Collections of animations bundled together. P+ uses SexLab Scene Builder (SLSB) packs instead of the old SLAL format. Most popular SLAL packs have SLSB conversions available. See [Animation Packs](../animation-packs/) for downloads.

### Scenes/Threads
A "scene" or "thread" is an active animation session. P+ can run multiple threads simultaneously.

### Tags
Animations are categorized using tags (e.g., "Aggressive", "Loving", "Oral"). Mods use these tags to select appropriate animations for different situations.

### Enjoyment System
P+ features a rebuilt enjoyment system that tracks actor pleasure during scenes based on:
- Physics-based interaction detection
- Animation stage tags and position tags
- Individual actor preferences and arousal

---

## Installation & Setup

Now that you understand the basics, you're ready to install SexLab P+. Follow the detailed step-by-step guide:

**→ [Full Installation Guide](../installation/)**

This covers:
- System requirements and mod prerequisites
- Installation steps with load order guidance
- Animation pack installation and verification
- First launch and MCM setup

For information on recommended body mods and framework requirements, see [Recommended Mods](../recommended-mods/).

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

Now that you understand the basics, proceed with installation and setup:

1. **[Installation Guide](../installation/)** - Step-by-step setup instructions
2. **[Animation Packs](../animation-packs/)** - Get animation content for P+
3. **[How to Play](../how-to-play/)** - Learn the MCM and enjoyment system
4. **[Settings Reference](../settings-reference/)** - Advanced configuration options

### Already Using Vanilla SexLab?

If you're migrating from the original SexLab Framework, these guides will help:

- [Why P+?](../why-pplus/) - What's different and why it matters
- [Feature Comparison](../comparison/) - Side-by-side with vanilla SexLab
