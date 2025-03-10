CrititalLosesWest = 7; // потери для синих
CrititalLosesEast = 9; // потери для красных

missionNamespace setVariable ["a3a_endMissionTime", 6000, true]; // 6000 - время в секундах

_triggers = [trg_0, trg_1];

[_triggers] spawn {
	params ["_triggers"];
	waitUntil {sleep 10; a3a_var_started};
	while {isNil "srv_triggerFinished"} do { 
	sleep 10;
			
		if ((east countside playableUnits) < CrititalLosesEast) then {
			srv_triggerFinished = true;
			sleep 10;
			["KFOR удержали базу! Победа обороны", west] call a3a_fnc_endMission; // Победа WEST
		};
		
		if ((west countside playableUnits) < CrititalLosesWest) then {
			srv_triggerFinished = true;
			sleep 10;
			["Сербия захватила базу KFOR! Победа атаки", east] call a3a_fnc_endMission; // Победа EAST
		};
		
		if (mkk_platform_missionTime >= a3a_endMissionTime) then { 
			srv_triggerFinished = true;
			["KFOR получило подкрепление! Победа обороны", west] call a3a_fnc_endMission; // Победа по окончанию таймера
		};

		_opforUnitsInTrigger = count ([_triggers, east] call WST_fnc_countTriggerUnits);
		_bluforUnitsInTrigger = count ([_triggers, west] call WST_fnc_countTriggerUnits);

		if ((_bluforUnitsInTrigger < 2) && ((_opforUnitsInTrigger) >= 3)) then {
			srv_triggerFinished = true;
			flag_1 setFlagTexture "serbia.paa";
			["outro.sqf"] remoteexec ["execvm", -2];
			sleep 19;
			["База KFOR захвачена! Победа атаки", east] call a3a_fnc_endMission; // Победа по захвату триггера
		};
    };
};