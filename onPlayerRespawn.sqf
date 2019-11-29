diag_log "onPlayerRespawn start";

waitUntil { not isNull player };

[player, "novoice"] remoteExec ["setSpeaker", 0, true]; //JIP

if (not isNil "CLIENT_RespawnLoadout") then { player setUnitLoadout CLIENT_RespawnLoadout };
