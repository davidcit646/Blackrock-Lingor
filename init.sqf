diag_log "init start";
3600 call ALiVE_fnc_AutoSave_PNS;
/// XXX: Restart flip script on respawn
player addAction[
	"Flip Vehicle",
	"Scripts\FlipAction.sqf",
	[],
	0,
	false,
	true,
	"",
	"_this == (vehicle _target) && {
		(count nearestObjects[_target, ['landVehicle'], 5]) > 0 && {
			(vectorUp cursorTarget) select 2 < 0
		}"
	}
];
/// XXX: Restart flip script on respawn
Player AddEventHandler[
	"Respawn", {
		(_this select 0) addAction[
			"Flip Vehicle",
			"Scripts\FlipAction.sqf",
			[],
			0,
			false,
			true,
			"",
			"_this == (vehicle _target) && {(count nearestObjects [_target, ['landVehicle'], 5]) > 0 && {(vectorUp cursorTarget) select 2 < 0}}"
		];
	}];
execVM "alive\CustomFactions.sqf";
};
diag_log "init end";