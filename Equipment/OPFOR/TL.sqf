_uniform = missionNamespace getVariable "OPFORuniforms";
_headgear = missionNamespace getVariable "OPFORheadgears";
_googles = missionNamespace getVariable "OPFORgoogles";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhsgref_30rnd_556x45_m21_t";
_unit addWeapon "rhs_weap_m21a_pbg40";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";

_unit addWeapon "Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "JCA_MCRP_V_CarrierRigKBT_01_CQB_olive_F";
for '_i' from 1 to 6 do { _unit addItemToVest 'rhsgref_30rnd_556x45_m21_t';};
for '_i' from 1 to 2 do { _unit addItemToVest 'mkk_30rnd_556x45_m856a1_m21';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};

// Backpack with items: 

_unit addBackpack "rhsusf_falconii";
for '_i' from 1 to 15 do { _unit addItemToBackpack 'rhs_VOG25';};

_unit addHeadgear _headgear;
_unit addGoggles _googles;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";