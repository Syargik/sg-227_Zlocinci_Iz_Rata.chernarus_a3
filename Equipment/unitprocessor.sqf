_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;

_item_processor = {
	removeAllItems _this;
	removeAllWeapons _this;
	removeAllItemsWithMagazines _this;
	removeAllAssignedItems _this;
	removeUniform _this;
	removeBackpack _this;
	removeHeadgear _this;
	removeVest _this;
	removeGoggles _this;
};

if (!isServer) exitWith {};

_unit call _item_processor;

_svn = format ["SerP_equipment_codes_%1_%2",_faction, _loadout];
if (isNil _svn) then
{
	missionNamespace setVariable [_svn, 
		compile preprocessFileLineNumbers format ["Equipment\%1\%2.sqf", _faction, _loadout]];
};

[_unit] call (missionNamespace getVariable [_svn, {}]);

missionNamespace setVariable ["OPFORheadgears", [
    "rhssaf_helmet_m97_digital",
    "rhssaf_helmet_m97_digital_black_ess",
	"rhssaf_helmet_m97_digital_black_ess_bare"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["OPFORgoogles", [
	"rhs_balaclava",
	"YuEBalaklava1bl",
	"armst_balaclava_2"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["OPFORuniforms", [
	"rhssaf_uniform_m10_digital_summer",
	"rhssaf_uniform_m10_digital_tan_boots"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["BLUFORheadgears", [
    "rhsusf_opscore_mc_cover",
    "rhsusf_opscore_mc_cover_pelt",
	"rhsusf_opscore_mc_cover_pelt_nsw",
	"rhsusf_opscore_mc_cover_pelt_cam"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["BLUFORITheadgears", [
    "UK3CB_BAF_H_Mk7_Camo_A",
    "UK3CB_BAF_H_Mk7_Camo_ESS_A",
	"UK3CB_BAF_H_Mk7_Camo_CESS_A"
] call BIS_fnc_selectRandom];
