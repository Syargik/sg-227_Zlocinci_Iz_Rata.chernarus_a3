if (hasInterface) then {
    [
        Aircraft, // переменная ЛА
        "Перезарядить пилоны",
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_loaddevice_ca.paa",
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_loaddevice_ca.paa",
        "(_this distance _target < 6) and (_target distance airRepair < 20) and (_target getVariable 'reloadAvailable')",
        "(_caller distance _target < 6) and (_target distance airRepair < 20) and (_target getVariable 'reloadAvailable')",
        {
            _status = [];
            {
                availableAmmo = _x # 4;
                if (availableAmmo < 1) then {
                    _status pushBack (formatText ["%1 не осталось боеприпасов", (_x # 5)]);
                    continue;
                };

                pylonDmg = Aircraft getHitPointDamage (_x # 2);
                if (pylonDmg >= 0.8) then {
                    _status pushBack (formatText ["%1 сильно поврежден или уничтожен", (_x # 0)]);
                    continue;
                };

                currentAmmo = Aircraft ammoOnPylon (_x # 0);
                if (currentAmmo == (_x # 3)) then {
                    _status pushBack (formatText ["%1 полностью заряжен", (_x # 0)]);
                    continue;
                };

            } forEach rocketsPylons;
            if (count _status > 0) then {
                _statusString = "";
                {
                    _statusString = composeText [_statusString, lineBreak, _x];
                } forEach _status;
                hint _statusString;
            };
        },
        {},
        {
            _newPylons = [];
            {
                pylonName = _x # 0;
                hitpointName = _x # 0;
                maxAmmo = _x # 3;
                availableAmmo = _x # 4;
                currentAmmo = Aircraft ammoOnPylon (_x # 0);
                ammoDelta = maxAmmo - currentAmmo;
                ammoLeft = availableAmmo - ammoDelta;
                ammoToLoad = if (ammoLeft < 0) then { currentAmmo + availableAmmo; } else { currentAmmo + ammoDelta; };
                [Aircraft, [pylonName, ammoToLoad]] remoteExec ["setAmmoOnPylon", Aircraft];
                _x set [4, ammoLeft max 0];
                _newPylons pushBack _x;
            } forEach rocketsPylons;
            missionNamespace setVariable ['rocketsPylons', _newPylons, true];
        },
        {},
        [],
        30,
        10,
        false,
        false
    ] call BIS_fnc_holdActionAdd;
};