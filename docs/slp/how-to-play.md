---
layout: default
title: How to Play
permalink: /slp/how-to-play/
---

# How to Play

Learn how to navigate the MCM, understand the enjoyment system, and get the most out of SexLab P+.

---

## MCM Overview

The SexLab P+ MCM menu is your control center. Here's what each section does:

### Animation Settings

Configure how animations behave:

- **Animation Speed** - Default speed for scenes
- **Cumulative Speed** - Whether speed increases through stages
- **Stage Timer** - How long each stage lasts
- **Auto Advance** - Automatically progress through stages

### Timers & Stripping

Control scene timing and undressing:

- **Pre-scene delay** - Time before animation starts
- **Stripping behavior** - What gets removed automatically
- **Re-dress settings** - What gets put back on after

### Actor Settings

Configure NPC participation and filtering:

- **Gender settings** - Who can participate in scenes
- **Aggression settings** - Consent and aggression handling
- **Expression settings** - Facial expression behavior

### Sound & Voice

Audio configuration:

- **Voice volume** - Adjust voice audio levels
- **Sound effects** - Enable/disable ambient sounds

### Debug

Troubleshooting tools:

- **Reset systems** - Fix stuck states
- **Logging options** - Enable detailed logs
- **Test functions** - Verify installation

---

## The Enjoyment System

P+ features a completely rewritten enjoyment system that's more dynamic than vanilla SexLab.

### How It Works

Instead of simple timers, enjoyment is calculated based on:

1. **Collision Interactions** - In-built 3D physics detection allows the system to be aware of penetration, grinding, handjobs, and other actions (as well as their intensity) among participating actors.
2. **Stage Tags and Position Tags** - The system relies on stage tags as well as position tags, allowing it to detect nature of interactions and their intensity. This relies heavily on the comprehensive integration of tags from SLAnimStageLabels and HentaiRim in the SLSB conversions.
3. **Actor Preferences** - Individual actors respond differently based on their arousal level, sexual preferences, sub/dom status, and relationship ranks.
4. **User Interactions** - A highly configurable enjoyment minigame which offers additional enjoyment gain or reductions and has its own rewards and penalties.

### Interaction Detection

P+ uses 3D physics data to determine what's happening:

| Detection | Effect on Enjoyment |
|-----------|---------------------|
| Penetration | High enjoyment gain |
| Oral | Moderate enjoyment gain |
| Grinding | Low-moderate gain |
| Handjob | Low gain |
| Idle/positioning | Minimal gain |

For a full list of supported interaction types and their relative effects on enjoyment's rate, see the Enjoyment section in `SexLab.ini`.

### Configuration Levels

**MCM (In-Game - Recommended for most users)**

Your MCM preferences are automatically saved to `Settings.yaml` and persist across all saves. This is where you configure game-facing options like animation speed, timers, and actor behavior.

**Advanced Configuration (SexLab.ini - For technical users)**

For fine-tuning the framework's internal behavior (enjoyment rates per interaction type, detection thresholds, physics sensitivity, etc.), edit:
```
SKSE\Plugins\SexLab.ini
```

See the [Settings Reference](../settings-reference/) for a complete list of technical configuration values.

---

## During a Scene

### Hotkey Controls

Default controls during scenes (may vary based on setup):

| Key | Action |
|-----|--------|
| **Space** | Advance to next stage |
| **End** | End scene |
| **+/-** | Adjust speed |
| **Page Up/Down** | Change animation |

> Check your MCM for exact keybindings.

### Understanding Stages

Animations progress through stages:

1. **Stage 1** - Usually foreplay/positioning
2. **Middle stages** - Increasing intensity
3. **Final stage** - Climax/orgasm animations

The stage timer (configurable) determines how long each stage lasts, or you can advance manually.

### Orgasm Modes

P+ supports multiple orgasm behaviors:

| Mode | Description |
|------|-------------|
| **Legacy Mode** | Classic behavior; actors climax together when scene ends |
| **Scene Based** | Actors climax individally, once an orgasm-tagged stage is reached, which is usually the last stage |
| **Separate Orgasms** | Default behaviour; actors climax individually, based on enjoyment |

Configure this in MCM under the orgasm settings.

---

## Scene Control

### Starting Scenes

Scenes can start through:
- Spells added by the internal Match Maker (can be enabled from the MCM)
- Other mods (quests, events, etc.)
- Spells/powers added by content mods
- Console commands

### Managing Active Scenes

P+ can handle multiple concurrent scenes. Each scene runs as a separate "thread."

### Ending Scenes

Scenes end when:
- Timer expires
- You press the end hotkey
- Another mod ends the scene

---

## Tips for Best Experience

### Performance
- Keep your animation library organized
- Use the animation filter features
- Don't run too many concurrent scenes

### Compatibility
- Let P+ win all file conflicts
- Use SLSB-converted animation packs
- Check mod compatibility before installing new content

### Troubleshooting
- Use Debug > Reset if scenes get stuck
- Enable logging temporarily to diagnose issues
- Check the [Troubleshooting](../../troubleshooting/) page for common fixes

---

## Next Steps

- [Recommended Mods](../recommended-mods/) - Enhance your setup
- [Animation Packs](../animation-packs/) - Get more content
- [Troubleshooting](../../troubleshooting/) - Fix common issues
