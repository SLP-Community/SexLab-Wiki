---
layout: default
title: Creating Packs with SLSB
permalink: /slsb/creating-packs-using-slsb/
---

# Creating animation packs using SexLab Scene Builder

This guide walks through authoring a new animation pack in the official **SexLab Scene Builder (SLSB)** tool.

<div class="note">
Before you start, make sure your <a href="../environment-setup/">environment is set up</a> (FNIS For Modders / Nemesis / Pandora as needed).
</div>

---

## Creating the animation structure

1. Click **New Scene**.
2. Fill out the animation name at the top, then press **Add Stage**.

![Stage Editing window](https://i.imgur.com/0zJwr33.png "Stage Editor")

### Stage basics

1. Pick a stage name in the top field.
2. Select tags for your animation (dropdown or custom tags field).

<div class="note">
Add your own nickname or another unique tag so the animation is easy to find in-game later.
</div>

3. Enter the name of your `.hkx` file into the **Animation (basic)** field **without** the `.hkx` extension.

- Established file naming: `animation_name_S[number]_A[number]` — stage number, then actor number.
- If the stage uses animation objects for that actor, fill **Anim Object**. Format: `AnimObject1,AnimObject2,...` (comma-separated here, not spaces like FNIS lists). Names must match your CK AnimObject names.
- For non-looping animations, set **Stage Duration** in stage edit mode.
- The **Submissive** checkbox slots the IsVictim actor into that stage.

To add a second/third/fourth actor, click `+` under **Positions** and repeat the same steps.

### Cloning stages

After finishing stage 1, click **Save** in the top corner. Right-click the created stage and choose **Clone Stage** so you do not have to re-enter the same info.

Enter a name for the new stage, and set **Animation (basic)** to the next hkx — e.g. if stage one was `kr_test_s1_a1.hkx`, stage two is typically `kr_test_s2_a1.hkx`.

Assuming standard logic, for the **last** stage mark **Climax** for the relevant actors.

### Scene options

- If the animation works with beds, enable **Allow Bed** in stages overview mode.
- If it is for a specific mod and should not appear in general searches, enable **Private**.

---

## Stage navigation

After stages are set up, wire navigation. In stage overview, click the arrow side of a stage box and drag to the next stage.

Repeat for all stages to create a standard linear SexLab animation in the order you choose.

![Navigation Setup](https://i.imgur.com/bNjP7A4.png "Navigation Setup")

For branching animations (similar to OStim), drag additional arrows to alternate paths. Fill out **Navigation info** in stage edit mode — that text is shown during playback when choosing stages. Navigation defaults to the first option.

When stages are done, click **Store** in stage overview, then **File → Save** for your project JSON.

<div class="note">
If you previously used SLAnimGenerate.py, this project JSON is essentially your <code>Source/MyAnimPack.txt</code> — keep it as the master source for later edits.
</div>

---

## Export

Use **File → Export**. SLSB generates:

- `\meshes\actors\character\animations\Test\FNIS_Test_List.txt`
- `\SKSE\SexLab\Registry\Test.slr`

Install those as a new mod in your mod manager. Put your `.hkx` files in the same folder as the FNIS list `.txt`, run **FNIS For Modders**, point it at your new FNIS list, and generate the behaviour hkx.

Collect the generated `\meshes\actors\character\behaviors\FNIS_Test_Behavior.hkx` (from MO2 overwrites or your FNIS output folder) and package it with your animation pack.

---

## Testing in-game

1. Run **FNIS For Users** / **Nemesis** / **Pandora**.
2. Start the game.
3. Open **MCM → SexLab → Matchmaker**.
4. In **Required tags**, enter your unique tag so P+ can find the animation.
5. Test with the built-in spells.
