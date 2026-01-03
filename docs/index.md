---
layout: default
title: Home
permalink: /
---

# SexLab P+ Documentation

Welcome to the official documentation for **SexLab Patch Plus (SLP+)** and related tools.

---

## What is SexLab P+?

**SexLab P+** (Patch Plus) is a complete overhaul of the SexLab Framework for Skyrim Special Edition. It rewrites the original framework from the ground up to deliver dramatically better performance, unlimited animation support, and modern features that were previously only available through multiple addon mods.

If you're familiar with the original SexLab Framework, P+ is a drop-in replacement that makes everything faster, removes frustrating limitations, and consolidates features from popular addons like SLSO, SLAS, and more into a single package.

### Why Choose SexLab P+?

| Benefit | Description |
|---------|-------------|
| **Instant Performance** | Animation registration that took minutes now happens near-instantly at startup |
| **Unlimited Animations** | No more 1000-animation cap—install as many packs as you want |
| **Set It and Forget It** | MCM settings save to `Settings.yaml` and persist across all saves automatically |
| **All-in-One** | Built-in features replace SLSO, SLAS, SLGP, and other addon mods |
| **Modern Foundation** | Uses SLSB instead of SLAL for faster, more reliable animation loading |

> **Note:Unlimited Animations** Skyrim's Havok animation limit of 65,534 (20k base + pandora + OAR) still applies.

---

## Choose Your Path

### 👤 **Starting Fresh with SexLab P+?**

If you're new to SexLab or SexLab P+ and want a complete walkthrough:

<div class="grid-container">
  <div class="grid-item">
    <h3>1. Learn the Basics</h3>
    <p>Understand what SexLab is, how P+ improves it, and the core concepts you'll need.</p>
    <a href="slp/beginners-guide/">Beginner's Guide →</a>
  </div>
  
  <div class="grid-item">
    <h3>2. Install P+</h3>
    <p>Step-by-step instructions to get SexLab P+ installed and running.</p>
    <a href="slp/installation/">Installation Guide →</a>
  </div>
  
  <div class="grid-item">
    <h3>3. Get Animation Packs</h3>
    <p>Find and install animation content converted for P+.</p>
    <a href="slp/animation-packs/">Animation Packs →</a>
  </div>
  
  <div class="grid-item">
    <h3>4. Learn to Play</h3>
    <p>Master the MCM, enjoyment system, and scene controls.</p>
    <a href="slp/how-to-play/">How to Play →</a>
  </div>
</div>

---

### 🔄 **Migrating from Vanilla SexLab?**

Already using the original SexLab Framework? See our comparison and migration guides:

| Resource | Description |
|----------|-------------|
| [Why P+?](slp/why-pplus/) | Detailed breakdown of what's different and why it matters |
| [Feature Comparison](slp/comparison/) | Side-by-side comparison with vanilla SexLab and SLU+ |
| [Incompatible Mods](slp/incompatible-mods/) | Check if your current mods work with P+ |

---

## Quick Links

| Resource | Description |
|----------|-------------|
| [Settings Reference](slp/settings-reference/) | Complete reference for SexLab.ini configuration |
| [Troubleshooting](troubleshooting/) | Common issues and solutions |
| [FAQ](faq/) | Frequently asked questions |

---

## For Animation Pack Authors

<div class="grid-container">
  <div class="grid-item">
    <h3>SexLab Scene Builder</h3>
    <p>The next-generation animation registration tool replacing SLAL. Convert existing packs or create new ones.</p>
    <a href="slsb/introduction/">Learn About SLSB →</a>
  </div>
  
  <div class="grid-item">
    <h3>Converting SLAL Packs</h3>
    <p>Step-by-step guide to convert your SLAL packs to SLSB format.</p>
    <a href="slsb/converting-animations/">Conversion Guide →</a>
  </div>
</div>

---

## Community & Support

- **LoversLab Page**: [SexLab P+](https://www.loverslab.com/files/file/25318-sexlab-p/)
- **Source Code**: [GitHub Organization](https://github.com/SLP-Community)
- **Discord**: [Join the Community](https://discord.gg/JPSHb4ebqj)

---

## Version Information

**Current Phase**: Phase #2 (SexLab 2.10.2.0+)

### Supported Skyrim Versions

| Version | Support Status |
|---------|----------------|
| Skyrim 1.6.1170 | Fully Supported |
| Skyrim 1.5.97 | Limited Support |
| Skyrim 1.6.640 | Unsupported |

> **Note**: GOG support is not guaranteed but will be investigated.

### Future Development

**CommonLibSSE-NG Builds**: Future versions of SexLab P+ will be compiled with CommonLibSSE-NG, making them version agnostic. A single build will work across all Skyrim SE/AE versions.

**VR Support**: A VR version is being considered but requires external contributions. Interested in helping? Join the [Discord](https://discord.gg/JPSHb4ebqj)!

---

*Last updated: {{ site.time | date: "%B %d, %Y" }}*
