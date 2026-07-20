---
layout: default
title: Introduction
permalink: /slsb/introduction/
---

# SexLab Scene Builder (SLSB)

SLSB is an external tool and the next-generation animation registration system for SexLab P+.

---

## What is SLSB?

**SexLab Scene Builder** is an external tool that replaces SLAL (SexLab Animation Loader) as the method for registering animations with SexLab P+. It compiles JSON animation definitions into `.slr` (SexLab Registry) files that P+ reads at startup.

It provides:

- **Instant registration** - No manual MCM clicking
- **No animation cap** - Unlimited animations
- **Better organization** - More structured animation data
- **Simpler format** - JSON-based configuration
- **Compiled output** - JSON → .slr files for optimal loading

---

## Why SLSB?

SLAL (the old system) has fundamental limitations. SLSB replaces it with a modern approach:

| Limitation | SLAL | SLSB |
|------------|------|------|
| Registration speed | Minutes per pack | Instant |
| Animation cap | 1000 human + 1000 creature | Unlimited |
| User interaction | Manual MCM clicks | Automatic |
| Settings persistence | Per-save only | Save-agnostic |
| Architecture | Papyrus scripts | Native registry files |

For detailed technical comparison, see [SLAL vs SLSB](../slal-vs-slsb/).

---

## How It Works

### Quick Comparison

**Old SLAL workflow:** Install pack → Start game → Open MCM → Register → Wait → Repeat for each pack → Repeat for each save

**New SLSB workflow:** Install pack containing .slr files → Start game → Done!

For a detailed workflow comparison with diagrams, see [SLAL vs SLSB](../slal-vs-slsb/).

---

## File Structure

SLSB uses JSON source files that compile to `.slr` registry files:

### SLAL Structure (Old)
```
Data/
└── SLAnims/json/
    └── SLAL_MyAnimPack.json      # SLAL json
└── SLAnims/source/
    └── SLAL_MyAnimPack.txt       # Source txt
```

### SLSB Structure (New)
```
Source (development):
└── MyAnimPack.json              # JSON definition (author keeps this)

Distributed to users:
Data/
└── SKSE/SexLab/Registry/
    └── MyAnimPack.slr           # Compiled registry file
```

> **Note:** Users install the compiled `.slr` files. Pack authors work with JSON and use SLSB to compile them.

---

## Getting Started

### For Users

If you just want to use animation packs:

1. Install SLSB-compatible packs (or SLAL packs with SLSB conversions)
2. That's it! They work automatically.

See [Animation Packs](../../slp/animation-packs/) for available packs.

### For Developers

If you want to create or convert animation packs:

1. [SLAL vs SLSB](../slal-vs-slsb/) — Understand the differences
2. [Environment Setup](../environment-setup/) — Set up your development tools
3. [Creating Packs with SLSB](../creating-packs-using-slsb/) — Author new packs in the Scene Builder UI
4. [Converting Animations](../converting-animations/) — Convert existing SLAL packs

---

## Resources

- **Discord**: [Join for support](https://discord.gg/JPSHb4ebqj) — #slsb-and-pack-dev channel
- **GitHub**: [SexLab Source](https://github.com/Scrabx3/SexLab)
- **Tool tutorial**: [Creating Packs with SLSB](../creating-packs-using-slsb/)
