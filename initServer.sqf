diag_log "initServer start";

// Disable RHS engine start up so vehicles move immediately when spawned
RHS_ENGINE_STARTUP_OFF = 1;

// Increase ACE max carry and drag weights
ACE_maxWeightCarry = 9000;
ACE_maxWeightDrag = 200000;

// Side Relations
civilian setFriend [west, 1];
//
independent setFriend [east, 0];
independent setFriend [west, 0];
//
east setFriend [independent, 0];
east setFriend [west, 0];
//
west setFriend [independent, 0];
west setFriend [east, 0];

// Alive initialization
[] execVM "alive\CustomFactions.sqf";
[] execVM "alive\Tasks.sqf";

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Advanced shit
[] execVM "ASL_AdvancedSlingLoading\functions\fn_advancedSlingLoadInit.sqf";
[] execVM "AT_AdvancedTowing\functions\fn_advancedTowingInit.sqf";
[] execVM "AUR_AdvancedUrbanRappelling\functions\fn_advancedUrbanRappellingInit.sqf";

//Make the RHS M119 towable
//Sweetwater
SA_TOW_RULES_OVERRIDE = [["AllVehicles", "CAN_TOW", "RHS_M119_WD"]];

// Start times selected randomly throughout the daylight hours between sunrise and one hour before sunset
waitUntil { time > 0 }; // Allow time subsystem to initialize so that missionStart is correct
private _date = missionStart select [0, 5];

private _times = [_date] call BIS_fnc_sunriseSunsetTime;
private _startTime = (_times select 0) + (random ((_times select 1) - (_times select 0) - 1));
private _startHour = floor _startTime;
private _startMinute = (_startTime - _startHour) * 60;

_date set [3, _startHour];
_date set [4, _startMinute];

setDate _date;

//ALiVE headless
if (!hasInterface && !isDedicated) then {
	headlessClients = [];
	headlessClients set [(count headlessClients), player];
	publicVariable "headlessClients";
	isHC = true;
};


diag_log "initServer end";
