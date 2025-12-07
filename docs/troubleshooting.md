---
layout: default
title: Troubleshooting
permalink: /troubleshooting/
---

# Troubleshooting

Common issues and their solutions for SexLab P+.

---

## Installation Issues

### Animations Not Appearing

**Symptoms:** Animations don't show up in MCM or during scenes.

**Solutions:**

1. **Check SLSB files are installed**
   - Verify JSON files exist in `Data/SKSE/Plugins/SexLabRegistry/`
   
2. **Verify load order**
   - SLSB conversions must overwrite SLAL packs
   - SexLab P+ must win all SL conflicts

3. **Run behavior generation**
   - Use Pandore or Nemesis
   - Ensure it completes without errors

4. **Check for file conflicts**
   - In MO2: Right-click P+ → Information → Conflicts
   - Nothing should overwrite P+ files

### MCM Not Showing

**Symptoms:** SexLab doesn't appear in MCM.

**Solutions:**

1. **Wait after loading**
   - MCM can take 1-2 minutes to populate
   
2. **Check SkyUI**
   - Ensure SkyUI is installed and working
   
3. **Verify SKSE**
   - Launch through SKSE loader
   - Check SKSE version matches Skyrim version

### CTD on Scene Start

**Symptoms:** Crash to desktop when a scene tries to start.

**Solutions:**

1. **Check Skyrim version**
   - 1.6.1170 = supported
   - 1.6.640 = will eventually crash
   
2. **Install Mfg Fix NG**
   - Required for facial expressions
   
3. **Check for mod conflicts**
   - Remove recently added mods and test

4. **Reduce animation count**
   - Total animation count should not exceed skyrim's engine limit
   - Include both OAR and FNIS/Pandora registered animations in the count

---

## Runtime Issues

### Scenes Getting Stuck

**Symptoms:** Scene won't end, actors frozen.

**Solutions:**

1. **Use MCM Reset**
   - MCM → SexLab → Debug → Reset
   
2. **Console commands**
   ```
   stopquest yourscenequest
   ```
   
3. **Hard reset**
   - Save, restart game, load

### Wrong Animations Playing

**Symptoms:** Wrong animation for the situation.

**Solutions:**

1. **Check animation tags**
   - Animations may have incorrect tags
   
2. **Filter settings**
   - Check MCM animation filter settings
   - Check filter settings in `SexLab.ini`
   
3. **Mod conflict**
   - Another mod may be overriding selection

### Actors in Wrong Positions

**Symptoms:** Actors floating, clipping through ground, or misaligned.

**Solutions:**

1. **Terrain issues**
   - Move to flatter ground
   
2. **Furniture conflicts**
   - Move away from furniture/objects
   
3. **Animation offset issues**
   - Some animations have incorrect offsets

---

## Performance Issues

### Script Lag During Scenes

**Symptoms:** Stuttering, delayed animations, input lag.

**Solutions:**

1. **Reduce concurrent scenes**
   - Limit NPCs/scenes running at once
   
2. **Check Papyrus load**
   - Too many script-heavy mods
   
3. **Upgrade to SSD**
   - Faster storage helps script loading

### Slow Scene Startup

**Symptoms:** Long delay before scenes begin.

**Solutions:**

1. **This shouldn't happen with P+**
   - If it does, something may be overwriting P+
   
2. **Check for old SL versions**
   - Ensure no vanilla SL files remain

3. **Open and close console menu**
   - Bug in SexLab P+ furniture selection/menu logic
   - Opening and closing any menu may help till it's fixed

---

## Audio Issues

### No Voice Audio

**Symptoms:** No moaning/voice sounds during scenes.

**Solutions:**

1. **Check voice packs**
   - P+ requires P+-compatible voice packs
   - Old voice packs don't work
   
2. **MCM volume settings**
   - Check SexLab → Sound settings
   
3. **Windows audio**
   - Check game audio isn't muted

---

## Getting Papyrus Logs

Logs help diagnose issues. Here's how to enable them:

### Method 1: BethINI

1. Open BethINI
2. Go to "General" tab
3. Enable:
   - Papyrus Logging
   - Papyrus Profiling

### Method 2: Manual INI Edit

Add to `skyrim.ini`:

```ini
[Papyrus]
bEnableLogging=1
bEnableTrace=0
bEnableProfiling=1
bLoadDebugInformation=0
```

### Log Location

```
Documents\My Games\Skyrim Special Edition\Logs\Script\Papyrus.0.log
```

---

## Reporting Bugs

When reporting issues, include:

1. **P+ version** - From mod page/Discord
2. **Skyrim version** - 1.5.97, 1.6.1170, etc.
3. **Mod list** - Or at least SL-related mods
4. **Steps to reproduce** - What triggers the issue
5. **Papyrus logs** - Attach the log file

Report on:
- [Discord](https://discord.gg/JPSHb4ebqj)
- [LoversLab thread](https://www.loverslab.com/files/file/25318-sexlab-p/)

---

## Still Stuck?

Join the [Discord](https://discord.gg/JPSHb4ebqj) and ask in the support channels. The community is helpful!
