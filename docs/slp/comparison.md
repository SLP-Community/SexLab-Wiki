---
layout: default
title: Feature Comparison
permalink: /slp/comparison/
---

# Feature Comparison

A side-by-side comparison of Vanilla SexLab, SexLab Utilities+ (SLU+), and SexLab P+ (SLP+).

---

## Comparison Table

| Feature | Vanilla SexLab | SLU+ | SLP+ |
|---------|---------------|------|------|
| **Mod Compatibility** | Full backwards compatibility | Full backwards compatibility | Most mods compatible* |
| **Speed** | Slow | Faster | Extremely Fast |
| **Animation Support** | Requires SLAL | Requires SLAL | Uses SLSB (SLAL patches available) |
| **Animation Registration** | Manual in MCM, slow | Manual in MCM, slow | Automatic at startup, near-instant |
| **MCM Settings** | Import/export only | Import/export only | Save-agnostic, auto-loading |
| **Voices** | Standard, addons available | Standard, addons available | New voice engine** |
| **Animation Limit** | 1000 Human / 1000 Creature | 1250 (FOMOD option) | Unlimited*** |
| **Orgasm Logic** | On animation end | On animation end | Built-in: End, Scene-based, or Separate |
| **Futa Support** | Limited | Improved for SOS | Improved for TNG |
| **Furniture Support** | Very Limited | Improved | Improved |
| **Devious Devices** | Built-in | Enhanced filters | Limited support with DDNG |

---

## Notes

### * Mod Compatibility

Most mods that don't modify core SexLab scripts will work. See [Incompatible Mods](../incompatible-mods/) for exceptions.

### ** Voice Packs

The new voice engine is not compatible with vanilla SexLab voice packs. P+-compatible voice packs are available on the Discord.

### *** Animation Limit Details

P+ has no hard limit on animations. However, mods using the legacy `sslBaseAnimation` class can only access the first 1000 human and 1000 creature animations (2000 total).

---

## Built-in Features

SLP+ includes functionality that requires separate mods with vanilla SexLab:

| Feature | Vanilla SexLab | SLP+ |
|---------|---------------|------|
| Separate Orgasm System | Requires [SLSO](https://www.loverslab.com/files/file/5929-sexlab-separate-orgasm-se/) | Built-in |
| Fast Animation Search | Requires [SLAS](https://www.loverslab.com/files/file/25350-slas-sexlab-anim-searcher/) | Made redundant |
| Grass Clipping Fix | Requires [SLGP](https://www.loverslab.com/files/file/25455-slgp-sexlab-grass-patch/) | Made redundant |
| Smooth Expressions | Requires [Smooth Expressions](https://www.loverslab.com/files/file/31585-sexlab-smooth-expressions/) | Built-in |

---

## Performance Comparison

### Animation Registration

| Framework | Time to Register 500 Animations |
|-----------|--------------------------------|
| Vanilla SexLab | Several minutes |
| SLU+ | Faster, still noticeable |
| SLP+ | Near-instant (automatic) |

### Scene Startup

| Framework | Time to Start Scene |
|-----------|---------------------|
| Vanilla SexLab | Noticeable delay (1-3 seconds) |
| SLU+ | Reduced delay |
| SLP+ | Immediate |

---

## Orgasm System Comparison

### Vanilla SexLab + SLSO
- Requires separate mod
- Widget support
- Minigame available
- Additional Papyrus overhead

### SLP+ Built-in System
- Completely rewritten enjoyment logic
- 3D physics data detects interaction types
- Stage-specific and position-specific tags drive enjoyment
- Fully customizable via [Settings Reference](../settings-reference/)
- SLSO events maintained for backwards compatibility
- Widget support available naively as well as through an optional patch
- An optional and highly customizable minigame with its buffs and penalties

---

## Choosing the Right Framework

### Choose Vanilla SexLab if:
- You need maximum mod compatibility
- You use mods known to be incompatible with P+
- You prefer a stable, well-established framework

### Choose SLU+ if:
- You want improvements over vanilla
- You need full backwards compatibility
- You're not ready to switch to SLSB

### Choose SLP+ if:
- You want the best performance
- You need more than 1000 animations
- You want modern features built-in
- You're starting fresh or willing to migrate
