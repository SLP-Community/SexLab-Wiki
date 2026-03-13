---
layout: default
title: Overlays and Voices
permalink: /slp/overlays-and-voices/

---

# Cum Fx Overlays

SLP+ uses a custom SCOE based logic to apply Cum FX via Racemenu overlays and no longer uses legacy Spell FX to apply textures. Fx overlays are applied individually per type - ie. you can have `/Oral/SLACS/3.dds` and `Vaginal/SLACS/2.dds` displayed at the same time. The legacy SL textures combinining different Fx types into a single texture ie. `Vaginal2Oral3.dds` are no longer supported or used by SLP+.

SexLab P+ stores and loads overlays from the filepath `Textures/Sexlab/CumFx/<TYPE>/<PROFILE>/<N>.dds`. Where `<TYPE>` is either Oral, Vaginal or Anal, `<PROFILE>` the name of the profile, e.g. SLACS for the default FX set, and `<N>.dds` are the individual textures.

CumFX are sorted as layers and are applied sequentially from lowest-to-highest. You can have up to 256 `<0-255>.dds` layers in each `<TYPE>/<PROFILE>`. The exact numerical numbering of the files is irrelevant, as long as they adhere to a numerical ascending order. ie `[0.dds, 8.dds, 42,dds, 123.dds, 204.dds, 255.dds]` would be a valid profile with layer 1 being 0.dds and layer 6 being 255.dds 

---

## Custom Fx Overlays

You can add custom cum overlays in two ways.

---

### Custom Overlay Profile

1. Create a mod with the file structure `Textures/Sexlab/CumFx/<TYPE>/<PROFILE>/<N>.dds`. 
2. Determine the `<TYPE>` you want to create a replacer for - Oral, Vaginal or Anal. Make all 3 folders to create a replacer for all 3.
3. Assign one unique `<PROFILE>` name for your project and use it for each type you created.
4. Place your desired `.dds` textures inside each `/<TYPE>/<PROFILE>/` folder and name them `<0-255>.dds`.
5. Switch to the desired FX profile in the SLP+ MCM in-game.

This is the recommended method for creating new overlay profiles.

---

### Default Replacer (***Not Recommended***)

1. Create a mod with the file structure `Textures/Sexlab/CumFx/[Oral,Vaginal,Anal]/SLACS/`.
2. Place your desired `.dds` textures inside each `/<TYPE>/<PROFILE>/` folder and name them `<0-255>.dds`. 
3. Ensure it overwrites SLP+

***This is NOT recommended*** This will overwrite the default SLP+ SLACS profile textures and you will no longer have access to the default textures. ***This is NOT recommended***