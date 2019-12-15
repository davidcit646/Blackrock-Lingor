/*
WhiteList:
----------
*/

// Format - "64 Bit SteamID", // Last.F
whiteList = [
	"76561198064095277", // Citarelli
	"76561198084251095", // Strike 
	"76561197998646278", // Blake
	"76561197961894729", // ODoyle
	"76561198073062030", // Ocean
	"76561198070834956", // Mariani
	"76561197993700922", // Bates
];

sleep 5;

0 spawn {
	private["_uid"];
	while {
		true
	}
	do {
		if (isNil "zeusman1") then {
			zeusman1 = objNull
		};
		_uid = getPlayerUID zeusman1;
		if (_uid in whiteList) then {
			if (getAssignedCuratorUnit zeus_1 != zeusman1) then {
				zeusman1 assignCurator zeus_1;
			};
		} else {
			unassignCurator zeus_1;
			if (isPlayer zeusman1) then {
				zeusman1 setPos[0, 0, 0];
				["You are not authorized to use this slot, vacate the slot!", "hint", zeusman1, false] call remoteExec;
				sleep 2;
				[
					["end1", false], "BIS_fnc_endMission", zeusman1, false
				] call remoteExec;
				sleep 15;
			};
		};
		sleep 5;
	}; //while
};

0 spawn {
	private["_uid"];
	while {
		true
	}
	do {
		if (isNil "zeusman2") then {
			zeusman2 = objNull
		};
		_uid = getPlayerUID zeusman2;
		if (_uid in whiteList) then {
			if (getAssignedCuratorUnit zeus_2 != zeusman2) then {
				zeusman2 assignCurator zeus_2;
			};
		} else {
			unassignCurator zeus_2;
			if (isPlayer zeusman2) then {
				zeusman2 setPos[0, 0, 0];
				["You are not authorized to use this slot, vacate the slot!", "hint", zeusman2, false] call remoteExec;
				sleep 2;
				[
					["end1", false], "BIS_fnc_endMission", zeusman2, false
				] call remoteExec;
				sleep 15;
			};
		};
		sleep 5;
	}; //while
};

0 spawn {
	private["_uid"];
	while {
		true
	}
	do {
		if (isNil "zeusman3") then {
			zeusman3 = objNull
		};
		_uid = getPlayerUID zeusman3;
		if (_uid in whiteList) then {
			if (getAssignedCuratorUnit zeus_3 != zeusman3) then {
				zeusman3 assignCurator zeus_3;
			};
		} else {
			unassignCurator zeus_3;
			if (isPlayer zeusman3) then {
				zeusman3 setPos[0, 0, 0];
				["You are not authorized to use this slot, vacate the slot!", "hint", zeusman3, false] call remoteExec;
				sleep 2;
				[
					["end1", false], "BIS_fnc_endMission", zeusman3, false
				] call remoteExec;
				sleep 15;
			};
		};
		sleep 5;
	}; //while
};
0 spawn {
	private["_uid"];
	while {
		true
	}
	do {
		if (isNil "zeusman4") then {
			zeusman4 = objNull
		};
		_uid = getPlayerUID zeusman4;
		if (_uid in whiteList) then {
			if (getAssignedCuratorUnit zeus_4 != zeusman4) then {
				zeusman4 assignCurator zeus_4;
			};
		} else {
			unassignCurator zeus_4;
			if (isPlayer zeusman4) then {
				zeusman4 setPos[0, 0, 0];
				["You are not authorized to use this slot, vacate the slot!", "hint", zeusman4, false] call remoteExec;
				sleep 2;
				[
					["end1", false], "BIS_fnc_endMission", zeusman4, false
				] call remoteExec;
				sleep 15;
			};
		};
		sleep 5;
	}; //while
};

0 spawn {

	while {
		true
	}
	do {
		{
			_currentCurator = _x; {
				_currentCurator addCuratorEditableObjects[[_x], true];
			}
			forEach allPlayers;
		}
		forEach allCurators;
		sleep 30;
	};

};