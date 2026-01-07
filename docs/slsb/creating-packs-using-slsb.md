---
layout: default
title: SLSB Tool tutorial
permalink: /slsb/creating-packs-using-slsb/
---

# Creating animation packs using the official SL Scene Builder tool
## Creating the animation structure
Click on the “**New Scene**” button

Fill out the Animation name at the top, and press “**Add Stage**”

![Stage Editing window](https://i.imgur.com/0zJwr33.png "Stage Editor")

Pick a stage name at the top field.

Select the tags for your animation, either by picking from the dropdown menu, or enter new ones in the custom tags field. 
As a good idea, add your own nickname or something unique as a tag, so it’s easier to find it in-game later.

Enter the name of your hkx file into the **Animation (basic)** field without the .hkx extension

- The established convention for the file names is `animation_name_S[number]_A[number]`, where the first number is the stage number, the second is the actor number.
- If your stage contains animation objects for that actor, fill out the Anim Object field. Format is `AnimObject1,Animobject2,...` (unlike the FNIS lists, they’re separated by comma’s here, not spaces). Their names must match your CK AnimObject names. 
- If you have a non-looping animation, fill out the Stage Duration field in stage edit mode.
- “Submissive” checkbox will slot the IsVictim actor into that stage. 

To add a second/third/fourth actor, click on the `+` button under `Positions` and repeat the same steps.

After you’ve finished with stage 1, click Save in the top corner. Right click on the created stage, and select “**Clone Stage**” – this will help not to re-enter the same info again. 

Enter the name for the new stage, and fill out the **Animation (basic)** field with the next hkx - i.e. if your stage one was `kr_test_s1_a1.hkx`, it’s a good practice for the second stage to be `kr_test_s2_a1.hkx`

Assuming your animation follows the standard logic, for the last stage mark the **Climax** checkbox for both actors.

If your animation is compatible with beds, check the “**Allow Bed**” option in stages overview mode.

If your animation was made for some specific mod and shouldn’t show up in general searches, check the “**Private**” checkbox in the stages overview mode.

## Stage Navigation
After you’ve finished setting up stages, time to set up navigation. In stage overview, click the arrow-looking side of the stage box, and drag an arrow from it to the next stage. 

Repeat this for all stages – this will create a standard SL linear animation with an order of your choosing

![Navigation Setup](https://i.imgur.com/bNjP7A4.png "Navigation Setup")

Should you wish to create branching animations similar to OSTIM, click the arrow side again, and drag another arrow to a different branching path. Be sure to fill out the “**Navigation info**” block in stage edit mode in this case – this text will be displayed during animation playback for choosing stages. Stage navigation will default to the first option.

After you’ve finished creating stages, in stage overview click on Store button & save your json in File -> Save. 
(*for those previously familiar with SLAnimGenerate.py - this is, essentially, your Source/MyAnimPack.txt, so keep this file as the master source file should you require any further edits*)

## Export

In order to export, navigate to File – Export, SLSB will generate two files:

**\meshes\actors\character\animations\Test\FNIS_Test_List.txt**

**\SKSE\SexLab\Registry\Test.slr**

Install those as a new mod in your mod manager. Put your hkx files in the same folder where the FNIS list .txt was, run FNIS For Modders, point it to your new FNIS list and generate the behaviour hkx.

Collect the newly generated **\meshes\actors\character\behaviors\FNIS_Test_Behavior.hkx** either from MO2’s overwrites or your FNIS output folder, and package this file alongside your animation pack.

---

Run **FNIS For Users\Nemesis\Pandora**, start the game, go into the *MCM -> Sexlab -> Matchmaker*, in **Required tags** enter your unique tag - so P+ searches for it, and test your animation using the built-in spells!