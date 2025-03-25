_headgear = missionNamespace getVariable "BLUFORheadgears";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhsusf_200Rnd_556x45_box";
_unit addWeapon "rhs_weap_m249_pip_ris";
_unit addPrimaryWeaponItem "mkk_hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "rhsusf_acc_saw_bipod";

_unit addWeapon "mkk_B8_Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "AGE_Fatigues_MultiCam_Gloves";

// Vest with items:
_unit addVest "tfa_cpc_communicationsbelt_mc_empty";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhsusf_200Rnd_556x45_box';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};

// Backpack with items:
_unit addBackpack "B_AssaultPack_mcamo";
for '_i' from 1 to 2 do { _unit addItemToBackpack 'rhsusf_200Rnd_556x45_box';};

_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";