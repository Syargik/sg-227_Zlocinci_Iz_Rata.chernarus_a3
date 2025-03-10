_serbianFaces = ["WhiteHead_14", "WhiteHead_15", "WhiteHead_13", "WhiteHead_12", "WhiteHead_11", "WhiteHead_10", "WhiteHead_09", "WhiteHead_08", "WhiteHead_07", "WhiteHead_06", "WhiteHead_05", "WhiteHead_04"];

{

	if ((uniform _x) == "rhssaf_uniform_m10_digital_summer" || (uniform _x) == "rhssaf_uniform_m10_digital_tan_boots") then

	{
		_x setface (selectRandom _serbianFaces);
	};

} foreach allunits;