//Initialise Admin Panel
nul = [] execVM "adminpanelmk2\init.sqf";

//Civilian kill counter
TFD_civ_deaths = 0;
null = [] execVM "scripts\civkill_init.sqf"; //comment this out if you don't want civilian casualties counted

//Saving disabled without autosave.
enableSaving [false,false]; 

setViewDistance 3000;
setObjectViewDistance 3000;

