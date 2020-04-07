diag_log "initPlayerLocal start";

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Load no fire on base script
player addEventHandler ["Fired", {
	if ((getPos (_this select 0)) inArea headquarters)  then	
	{
		deleteVehicle (_this select 6);
		titleText ["Firing weapons and placing / throwing explosives at base is STRICTLY PROHIBITED!", "PLAIN", 3];
	};
}]; 

diag_log "initPlayerLocal end";
