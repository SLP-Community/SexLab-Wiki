---
layout: default
title: Settings Reference
permalink: /slp/settings-reference/
---

# Settings Reference

SexLab P+ uses two configuration files that serve different purposes:

| File | Location | Purpose |
|------|----------|---------|
| `SexLab.ini` | `SKSE\Plugins\SexLab.ini` | Core framework configuration (enjoyment rates, detection thresholds, etc.) |
| `Settings.yaml` | `SKSE\Plugins\SexLabData\Settings.yaml` | Your MCM preferences (auto-saved, persists across saves) |

This page documents the **SexLab.ini** settings that control the framework's internal behavior.

---

## Animation Settings

Settings controlling animation behavior and furniture handling.

| Setting | Default | Description |
|---------|---------|-------------|
| `fFurniturePreference` | 0.75 | Probability (0.0-1.0) that furniture will be used when starting a scene. |
| `fFurnitureScanRadius` | 750.0 | Radius (game units) to scan for usable furniture around actors. |
| `fMinScale` | 0.88 | Minimum actor scale for animation compatibility. |
| `bAllowDead` | 0 | Whether dead actors can participate in animations. |
| `fMinSetupTime` | 0.7 | Minimum time (seconds) for the "Starting" phase before transitioning to "Playing". |
| `fAdjustStepSizeIncrement` | 0.1 | Step increment for manual position adjustments. |
| `bAdjustNodes` | 1 | Enable automatic schlong/genital node adjustment during animations. |
| `fGhostModeAlpha` | 0.6 | Transparency alpha (0.0-1.0) for actors when ghost mode is enabled. |

### Furniture Detection

| Setting | Default | Description |
|---------|---------|-------------|
| `fFurnitureSquare` | 32.0 | Half-width of the square area scanned around furniture center. |
| `fFurnitureSquareHeight` | 128.0 | Height of the volume scanned above furniture for obstruction checking. |
| `fFurnitureSquareFloorSkip` | 16.0 | Height above floor to start scanning (avoids floor detection). |
| `fFurnitureSquareStepSize` | 8.0 | Step size when iterating through the furniture scan volume. |
| `fFurnitureTiltTolerance` | 10.0 | Maximum allowed tilt angle (degrees) for furniture to be usable. |

---

## Animation Filter Settings

Settings controlling animation selection scoring. Animations are scored based on how well actors match requirements.

| Setting | Default | Description |
|---------|---------|-------------|
| `iScoreAcceptThreshold` | 20 | Minimum score required for an animation to be considered valid. |
| `iWeightSexStrict` | 100 | Score bonus when actor sex strictly matches position requirement. |
| `iWeightSexLight` | 50 | Score bonus for permissive sex matching (futa/ambiguous cases). |
| `iWeightSexMismatch` | -30 | Score penalty when actor sex doesn't match animation position. |
| `iWeightVampire` | 10 | Score bonus when vampire status matches animation tags. |
| `iWeightSubmissive` | 20 | Score bonus when submissive trait matches animation requirements. |
| `iWeightUnconscious` | 10 | Score bonus when conscious state matches animation requirements. |
| `fScaleTolerance` | 0.1 | Allowed scale deviation from 1.0 for receiving scale bonus. |
| `iWeightScale` | 10 | Score bonus when actor scale is within tolerance of 1.0. |

---

## Creature Race Settings

Boolean toggles to enable/disable specific creature races in animations. Set to `false` to prevent a race from being used in scenes.

<details>
<summary><strong>Click to expand full race list</strong></summary>

| Setting (Race) |
|----------------|
| `bAshHopper` — Ash Hopper |
| `bLurker` — Lurker |
| `bBear` — Bear |
| `bMammoth` — Mammoth |
| `bBoar` — Boar |
| `bMudcrab` — Mudcrab |
| `bBoarMounted` — Mounted Boar |
| `bNetch` — Netch |
| `bBoarSingle` — Single Boar |
| `bRiekling` — Riekling |
| `bCanine` — Canine (generic) |
| `bSabrecat` — Sabrecat |
| `bChaurus` — Chaurus |
| `bSeeker` — Seeker |
| `bChaurusHunter` — Chaurus Hunter |
| `bSkeever` — Skeever |
| `bChaurusReaper` — Chaurus Reaper |
| `bSlaughterfish` — Slaughterfish |
| `bChicken` — Chicken |
| `bSpider` — Spider |
| `bCow` — Cow |
| `bSpriggan` — Spriggan |
| `bDeer` — Deer |
| `bStormAtronach` — Storm Atronach |
| `bDog` — Dog |
| `bTroll` — Troll |
| `bDragon` — Dragon |
| `bVampireLord` — Vampire Lord |
| `bDragonPriest` — Dragon Priest |
| `bWerewolf` — Werewolf |
| `bDraugr` — Draugr |
| `bWisp` — Wisp |
| `bDwarvenBallista` — Dwarven Ballista |
| `bWispmother` — Wispmother |
| `bDwarvenCenturion` — Dwarven Centurion |
| `bWolf` — Wolf |
| `bDwarvenSphere` — Dwarven Sphere |
| `bDwarvenSpider` — Dwarven Spider |
| `bFalmer` — Falmer |
| `bFlameAtronach` — Flame Atronach |
| `bFox` — Fox |
| `bFrostAtronach` — Frost Atronach |
| `bGargoyle` — Gargoyle |
| `bGiant` — Giant |
| `bGiantSpider` — Giant Spider |
| `bGoat` — Goat |
| `bHagraven` — Hagraven |
| `bHare` — Hare |
| `bHorker` — Horker |
| `bHorse` — Horse |
| `bIceWraith` — Ice Wraith |
| `bLargeSpider` — Large Spider |

</details>

---

## Statistics Settings

Settings for NPC sexuality distribution when generating random preferences.

| Setting | Default | Description |
|---------|---------|-------------|
| `fPercentageHetero` | 80.0 | Percentage of NPCs assigned heterosexual preference. |
| `fPercentageHomo` | 9.0 | Percentage of NPCs assigned homosexual preference. |

> **Note:** The remaining percentage (100 - 80 - 9 = 11%) represents bisexual preference.

---

## Distance & Detection Settings

Spatial thresholds used for detecting contact types between actor body parts. Units are game units for distances and degrees for angles.

### General Detection

| Setting | Default | Description |
|---------|---------|-------------|
| `fAnimObjDist` | 23.0 | Maximum distance for animation object attachment. |
| `fDistanceHand` | 8.3 | Distance threshold for hand contact detection. |
| `fDistanceFoot` | 13.3 | Distance threshold for foot-to-body contact. |
| `fDistanceFootMouth` | 4.3 | Distance threshold for foot-to-mouth interaction. |
| `fDistanceMouth` | 5.4 | Distance threshold for mouth/oral contact. |
| `fDistanceCrotch` | 8.0 | Distance threshold for crotch region interaction. |

### Head/Face Orientation

| Setting | Default | Description |
|---------|---------|-------------|
| `fAngleToHeadTolerance` | 20.0 | General angular tolerance for head orientation. |
| `fAngleToHeadSidewaysTolerance` | 50.0 | Angular tolerance when approaching head from side. |
| `fAngleToHeadFrontalTolerance` | 45.0 | Angular tolerance when approaching head from front. |
| `fCloseToHeadRatio` | 1.5 | Distance ratio multiplier for "close to head" checks. |
| `fThroatToleranceRadius` | 0.25 | Radius tolerance for throat/deepthroat detection. |
| `fAdjustHeadLimit` | 33.0 | Maximum allowed head position adjustment (game units). |

### Interaction Angles

| Setting | Default | Description |
|---------|---------|-------------|
| `fAngleCunnilingus` | 130.0 | Angle threshold for cunnilingus positioning. |
| `fAngleKissing` | 70.0 | Maximum angle between faces for kissing detection. |
| `fAngleGrinding` | 70.0 | Angle threshold for grinding contact. |
| `fAngleGrindingFF` | 130.0 | Angle threshold for female-female grinding. |
| `fAnglePenetration` | 90.0 | Maximum angle deviation for valid penetration alignment. |

### Penetration Detection

| Setting | Default | Description |
|---------|---------|-------------|
| `fPenetrationVaginalTolerance` | 1.0 | Distance tolerance for initial vaginal penetration. |
| `fPenetrationVaginalToleranceRepeat` | 3.5 | Looser tolerance for sustained vaginal contact. |
| `fPenetrationAnalToleranceRepeat` | 3.0 | Tolerance for sustained anal contact. |
| `fAdjustSchlongLimit` | 90.0 | Maximum schlong angle adjustment (degrees). |
| `fAdjustSchlongVaginalLimit` | 55.0 | Maximum schlong adjustment for vaginal alignment. |

---

## Enjoyment Settings

Controls the enjoyment/arousal accumulation system during scenes. Enjoyment values are accumulated over time based on detected contact types. The following are different InteractionFactors that influence the rate at which enjoyment increases based on detected interaction type. These can be modified at will:

1. If one deems vaginal to be more enjoying than anal, simply switch the values.
2. If one wants no enjoyment raise upon kissing, simple reduce the factor value to zero.
3. If one want an instant orgaasm on footjob, raise the value to a higher factor like 100, and so on.

### Enjoyment Rates by Interaction Type

| Setting | Default | Description |
|--------|---------|-------------|
| `f_pAnimObjFace` | 1.0 | Actor’s face is positioned in front of the partner’s animated object. |
| `f_aAnimObjFace` | 1.3 | Actor's animated object is positioned in front of the partner’s face. |
| `f_bKissing` | 1.9 | Actor’s face is positioned in front of the partner’s face (kissing interaction). |
| `f_pSuckingToes` | 2.1 | Actor’s toes are positioned close to the partner’s mouth. |
| `f_aSuckingToes` | 2.5 | Actor’s mouth is positioned close to the partner’s toes. |
| `f_pStimulation` | 2.5 | Actor's crotch is being stimulated (fingering, fisting, or inserted toys). |
| `f_pFacial` | 2.6 | Actor’s face is positioned in front of the partner’s genitals. |
| `f_aFacial` | 3.0 | Actor’s genitals are positioned in front of the partner’s face. |
| `f_pGrinding` | 3.2 | Actor’s body is being grinded against by the partner’s crotch. |
| `f_aGrinding` | 3.8 | Actor’s crotch is grinding against the partner’s body. |
| `f_aHandJob` | 3.4 | Actor’s hand is moving around the partner’s genitals. |
| `f_pHandJob` | 3.9 | Actor’s genitals are being stimulated by the partner’s hands. |
| `f_aFootJob` | 3.1 | Actor’s foot is moving around the partner’s genitals. |
| `f_pFootJob` | 4.1 | Actor’s genitals are being stimulated by the partner’s feet. |
| `f_aLickingShaft` | 3.7 | Actor’s mouth is licking the shaft of the partner’s genitals. |
| `f_pLickingShaft` | 4.7 | Actor’s genital shaft is being licked by the partner. |
| `f_aBoobJob` | 4.0 | Actor’s chest is moving around the partner’s genitals. |
| `f_pBoobJob` | 4.8 | Actor’s genitals are being stimulated by the partner’s chest. |
| `f_aOral` | 5.0 | Actor’s mouth is performing oral stimulation on the partner’s crotch. |
| `f_pOral` | 5.8 | Actor’s crotch is being stimulated by the partner’s mouth. |
| `f_pDeepthroat` | 5.5 | Actor’s genitals are deep inside the partner’s mouth. |
| `f_aDeepthroat` | 6.8 | Actor’s mouth is deep-throating the partner’s genitals. |
| `f_pSkullfuck` | 3.5 | Actor’s head is being penetrated by the partner’s genitals. |
| `f_aSkullfuck` | 7.5 | Actor’s genitals are penetrating the partner’s head. |
| `f_aVaginal` | 10.0 | Actor’s genitals are penetrating the partner’s vagina. |
| `f_pVaginal` | 11.2 | Actor’s vagina is being penetrated by the partner’s genitals. |
| `f_aAnal` | 11.4 | Actor’s genitals are penetrating the partner’s anus. |
| `f_pAnal` | 12.0 | Actor’s anus is being penetrated by the partner’s genitals. |

---

## Editing the INI File

To customize these settings:

1. Navigate to your Skyrim installation folder
2. Open `Data\SKSE\Plugins\SexLab.ini`
3. Edit values as desired
4. Save the file
5. Restart Skyrim for changes to take effect

> **Tip:** Back up the original file before making changes so you can restore defaults if needed.

---

## See Also

- [How to Play](../how-to-play/) - MCM configuration and gameplay guide
- [Troubleshooting](../../troubleshooting/) - Common issues and solutions
