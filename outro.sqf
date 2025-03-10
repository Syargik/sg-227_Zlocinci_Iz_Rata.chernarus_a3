_camera = "camera" camCreate [12081.411, 7170.292, 23.702];
_camera camSetTarget flag_1;
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera say2D "serb";
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.5;
_camera camCommitPrepared 5;


waitUntil {camCommitted _camera};
[format ["Осталось игроков на стороне атаки: %1", (east countside playableUnits)],0,0.8,3,0.5] spawn bis_fnc_dynamictext;

_camera = "camera" camCreate [11994.812, 7241.192, 23.702];
_camera camSetTarget flag_1;
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 5;


waitUntil {camCommitted _camera};
[format ["Осталось игроков на стороне обороны: %1", (west countside playableUnits)],0,0.8,3,0.5] spawn bis_fnc_dynamictext;

_camera = "camera" camCreate [12070.197, 7306.651, 23.702];
_camera camSetTarget flag_1;
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.5;
_camera camCommitPrepared 5;

waitUntil {camCommitted _camera};

_camera = "camera" camCreate [12141.922, 7244.597, 23.702];
_camera camSetTarget flag_1;
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 4.3;

waitUntil {camCommitted _camera};
[parseText "<t font='PuristaBold' size='2'>Победа Атаки!</t>", [0.35, 0.5, 1, 1], nil, 4, 0.7, 0] spawn BIS_fnc_textTiles;

_camera = "camera" camCreate [12070.197, 7306.651, 23.702];
_camera camSetTarget flag_1;
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.3;
_camera camCommitPrepared 2;

waitUntil {camCommitted _camera};
cutText ["", "BLACK OUT", 1];