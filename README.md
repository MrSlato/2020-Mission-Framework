# 2020-Mission-Framework
Mission Framework for 2020

Welcome to the TFD Framework, Admins please vet and check code prior to addition, and before merging into master framework copy on github.

Mission makers please make changes you think will benefit the community and add scripts you think will be useful.

Read below for complete changelog history.

### 01/08/2020
- Added header files containing classnames for NATO M4 style ARs and Russian AK style ARs that can be enabled using the Diwako Punish Unknown Weapon whitelist located in init.sqf.
  - If enabled will allow players to use all M4/AK style rifles without being punished.
  - To be extra certain, you should still define the weapons used by players in your mission manually, no duplicates will be created.
  - *Should* only include AR weapons. Marksman rifles, lmgs, launchers, etc all still need to be added manually if you want players to be able to use them without penalty.
- Tweaked Punish Unknown Weapon settings to be slightly more forgiving.
- Fixed duplicate case in DAC_Config_Units.sqf;
- Added comments to cba_settings.sqf explaining the ACE Fatigue settings.
- Added new default ACE Fatigue settings and re-enabled Advanced fatigue by default.
- Removed HC mission parameter. Now auto-executes DAC on Server/HC automatically.

### 31/07/2020
- Moved Diwako Punish Unknown Weapon whitelist from initPlayerLocal.sqf to init.sqf (local whitelist should now work correctly)

### 26/07/2020
- Disabled ACE Advanced Fatigue by default.
- Forced Advanced Fatigue settings in cba_settings.sqf so they correctly overwrite the server settings.

### 24/07/2020
- Fixed Diwako Punish Unknown Weapon local whitelist in initPlayerLocal.sqf. The script requires the uppercase form of the weapon classname.
- Touched up a few comments from various functions.
- Added comments to fn_customDifficulty.sqf to help explain what each setting changes.

### 10/07/2020
- Updated DAC config files.

### 07/07/2020
- Moved TFD_fnc_setRadio, TFD_fnc_setPatch and TFD_fnc_forceUniform calls into playerSetup.sqf so they work correctly when respawns are enabled.
- Re-introduced DAC example mission.sqm which was accidentally removed during experimental merge.
  - To prevent confusion and/or overwritten mission files, it is now located in the DAC additional folder which includes the readme with instructions on how to open the example mission.
- Re-organised functions folder a little bit to seperate 'core' functions and 'misc'.
- Further tidied up init.sqf, initServer.sqf, initPlayerLocal.sqf and description.ext.
- Removed Timid's civpop script (forgot to remove before merging from experimental).
- Redesigned Timid's garrison script:
  - Now allows custom loadouts for units.
  - Units can move around and reposition instead of being locked in place (can be disabled).
  - Caches units that are far from players.
  - Markers and triggers can both be used to mark garrison zones now as well.
- Added forceUniform function fired from playerSetup.sqf:
  - This allows mission makers to force uniform/headgear/vest on players to prevent them from picking up uniforms and headgear they aren't supposed to have.
  - Units added to the whitelist will not have uniform forced on them, even if it is enabled.
  - Gear added to the whitelist will not be removed even if forced uniform is enabled.
  - Only uniform is forced by default.
- Added civPunish function fired from init.sqf. All parameters can be enabled/disabled:
  - Disabled by default, allows mission makers to punish players for killing civilians/non-combatants.
  - Shows a message to the whole server showing which player killed a civilian.
  - Fails mission if too many civilians are killed.
  - Kicks offending player to lobby if they kill too many civilians. (Default is 2)

### 04/07/2020
- Master Branch updated to match the experimental branch created by TimidShade.
- Multiple file movements and cleanups.
- Both DAC and JEBUS ai systems are now implemented in the same framework.
- Happy 4th of July to our lone American member :)

### 01/07/2020
- Added Nerfmanic to adminlist and debug console list.

### 17/06/2020
- VON tweaks.
- Added in entries for Diwako's Punish Weapon and Enhanced Movement Rework in cba_settings.sqf.
- Enabled ACE advanced fatigue by default so that stamina settings actually take effect.
- Added diwako_unknownwp_local_weapons array to initPlayerLocal.sqf so mission makers can manually add more weapons to player's known weapon pools.

### 13/06/2020
- Updated JEBUS to fix fn_saveVehicle.sqf error when trying to spawn vehicles.

### 02/06/2020
- Fixed declaring usingEstablishingShot variable before intro.sqf since it was causing errors.

### 31/05/2020
- Removed German DAC docs and Sector Fight settings PDF.
- Re-added old VON disable code in description.ext.

### 25/04/2020
- Updated VON disable code in initPlayerLocal.sqf and removed from description.ext.
- JEBUS update

### 28/01/2020
- Tweaked fn_missionStartHint.sqf to work correctly when no commander is present
- Removed unnecessary code from tfar.sqf (deprecated, now included in CBA settings file)
- Fixed unitRoster.sqf displaying local player's role instead of unit's role in ORBAT
- Minor tweaks to briefing.sqf

### 27/01/2020
- Updated CBA settings file to 2020 (updated ACE medical and TFAR settings)
- Minor tweaks to intro.sqf
- Added fn_setPatch.sqf && added to TFD.hpp
- Moved TFD_ORBAT array to initPlayerLocal.sqf instead of fn_setRadio.sqf to allow easier configuration and access from both setRadio and setPatch scripts.
- Added _setAdditional param to fn_setRadio.sqf to toggle assignment of additional channels

### 23/10/2019
- Changed 'ace_medical_bleedingCoefficient' to 1.2 in CBA settings (was 1)

### 20/10/2019
- Neatened file structure
- Moved AI/script frameworks such as DAC/JEBUS/EPD to '!ADDITIONAL_SCRIPTS' folder to allow mission makers to pick and choose which frameworks to use.
- Simplified comments to improve readability
- Moved files from 'scripts' to 'functions' to cleanup scripts folder and defined new functions (tried to provide examples too)
- Reduced 'ace_medical_bleedingCoefficient' to 1 in CBA settings (was 1.5)
- Tweaked wait time for establishing shot to 20s (player can still press space to skip anyway)
- Removed hint after closing setRadio hint
- Added civpop functions
- Added custom difficulty function

### 30/09/2019
Changed Ace view distance from force to unforced. Lowered respawn lives to 2 in cba medical settings also.
### 21/07/2019
CBA Settings updated to a standard file for medical settings and general settings every variable is documented with whats required and what it does. 
### 06/07/2019

**ADMINPANEL**
- Zeus Remote control funciton now fixed and working
- removed annoying missing texture error
- arsenal now can be opened on target players machine without putting everyone in arsenal (some times requires a second click or two - timing issue)
- teleport script reworked (tested in dedicated environment)

**GENERAL FIXES**
- seperated mission start dialog hint into a seperate function that can be commented out if mission makers dont want it
- radio channel setting tested and working
- squad leaders now have their shortwave additional channel set to hidden channel 9 by default so all SL's can have shortwave comms to each other without clusterfucking LongRange comms
- service jet script modified to function in multiplayer with a server only trigger (removes unecessary objects being created on clients)
- instruction comments added to service jet script
- garrison funciton and header moved to its own folder as requested
- server viewdistance and objectviewdistance pushed out to 3000m
- player viewdistance set to the same
- grass layer has been set to and off setting (mission maker can change this in initPlayerLocal.sqf)

**DAC**
 - artillery script modified to work with illum rounds / smoke rounds / HE rounds properly
 - 'lieutenant' error rechecked and fixed

**TODO in next patch**
- reorganise folder structure to be more intuitive


### 18/06/2019
**Updated Admin Panel functions**
- Fixed Teleport script and tested as working
**TFAR Fixes**
- fixed fn_setRadio.sqf script
    - now sets channel 8 on shortrange radios as additional for all squad leaders (at mission start)
**General Changes**
- added a basic Virtual Room mission with one functioning DAC zone for people to use as a 'test' room


### 08/06/2019
- **Updated Admin Panel functions**
    - Added dynamic zeus modules so all adminpanel users can now have their own zeus
    - removed the need for pre requisite editor placed zeus modules
    - fixed teleport script so it should no longer teleport a player AND his vehicle - just the player
    - fixed performance dropping loops
    - lock server button now actually works
    - kick ban buttons should work but untested in dedicated environment
    - disable button works but needs testing in dedicated environment
    - decoupled all functions into seperate files that compile on mission load to remain in memory and thus have faster access and run times
    - admin list now in a seperate header file so people dont accidentally break the code ``` \adminpanelmk2\ADMINLIST.hpp ```
    
    *TODO:* 
        - Remove adminpanel from framework and develop it as a standalone mod and post to steam workshop

- **OTHER FIXES**
    - Moved definition of CfgUnitInsignia from description.ext to its own header file now located with the insignia themselves in ```'media\insignia\insignia.hpp'```
    - corrected filenames to meet Arma standards (**camelCaseIsImportant**)
    - corrected copy/paste error with incorrect double quotes in initPlayerLocal.sqf
    - cleaned out initServer.sqf
    - corrected case sensitivity in headless client call - probably unecessary but just in case
    - updated **README.md**

### 22/04/19
- Added new DAC Behaviour and Units
- Updated CBA Settings
- Add jet service script documentation inside

### 06/02/18
- EPD (Ied Scripted Used by Atreus in older missions creates awesome particle affects and realist IED's Ask him for assistance for usage **Can Be performance hindering if not careful**)
- Johnnyshootos Boobytrap script ( Enables mission maker to spawn x size explosion onto player if they pick up x weapon **Use to prevent players from looting enemy weapons again be smart about it.)
- Added DAC Documentation in PDF's 

### 21/12/17
- added civilian kill counter
- added Stalk script
- added Fire Support script 
- added increased fuel consumption script
- removed tonny's duplicate guid for the admin panel
- updated framework to support TFAR beta via cba_settings.sqf
- updated compositions and set radio fnc to have s_x where x = unit number.  makes for easier copy/paste of units

### 14/12/17
- changed text in intro.sqf to placeholder text
- updated briefing.sqf with examples of markers and page breaks
- disabled ACE cook off in init.sqf
- added first implementation of civilian kill counter

### 29/03/17
-fixed admin panel issue in playersetup.sqf

### 16/03/2017
- updated to admin panel mk2 
- updated orbat journal entry code from newer framework by JS&JT
- minor comment changes in some sqf files
- updated dynamic markers function
- minor updates to Framework Check list

### 29/08/16
- added grenade stop script.
- removed setobjectVD to allow players self settings
- added example end classes in the description.ext

### 18/06/16
- Changed how insginia are now handled by creating some example config classes in the description.ext.  This allows far easier implementation of custom patches if desired by mission maker
- setpatch.sqf removed
- Removed redundant stgestures code
- updated EGspectator function call in the playerkilled.sqf

### 12/05/16
 - Updated fn_setradio.sqf function to include a full generic 26 man platoon layout supporting the new TFD mission making compositions

### 06/04/16
- Removed css spectator script and replaced with vanilla - this will now require a simple respawn marker created

### 08/03/16
- Removed playerkit.sqf and transfered radio function to initplayerlocal.sqf
- Deleted truckgear.sqf
- edited TFD.hpp class configs to remove redundant functions
- moved briefing.sqf, werthless.sqf and intro.sqf into scripts folder and adjusted initplayerlocal.sqf accordingly
- removed author, onloadname, onloadmission, loadscreen, overviewtext from description.ext
- retaining debugconsole, disableAI and joinunassigned as these will override any changes made by mission makers in eden
- Updated mission makers guide to reflect new eden changes.  Will update this further at a later date.

### 21/09/15
- Skilletkid added ST Gestures colouring defined in assigngroups.sqf
- Also fixed up error in DAC_units_config 

### 19/09/15
- Added werthless headless client script, set 120 seconds in init to let DAC initialise
- Skillet added LOPFOR new units

### 09/09/15
- Tonny747 updated fn radio to have SW channels preset based on assigngroups.sqf at mission start

### 27/08/15
- fixed fuck ups relating to commenting (now using notepad++!)
- tested casualty cap - working when executing custom code in array
- tested and created 1 additional parameter in desc.ext and init.sqf
- fn_f_casualtycap fixed in hpp and .sqf file to properly call
- created framework on VR map with ACE module settings place and an example DAC zone

### 24/08/2015 - Imperator
- Large amounts of changes/re-jigging of previous framework primarily to accommodate the return to TFAR and to make rookie user friendly.