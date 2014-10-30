/*
File: fn_vehicleColorCfg.sqf
Author: Bryan "Tonic" Boardwine
I_Heli_Transport_02_F
Description:
Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];


// BLACK: 			["#(rgb,1,1,1)color(0,0,0,1)","cop"],


switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
	_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
	_ret =
		[
		[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
		[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
		["textures\COP\Vehicles\police_mohawk_1.jpg","cop","textures\COP\Vehicles\police_mohawk_2.jpg","#(rgb,1,1,1)color(1,1,1,1)"],
		["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "C_Hatchback_01_sport_F":
	{
	_path = "\a3\soft_f_gamma\Hatchback_01\data\";
	_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			["textures\CIV\hatchback_sport_ken_block.jpg","civ"],
			["textures\COP\Vehicles\police_slimousine.jpg","cop"],
			["textures\CIV\hatchback_metallica.jpg","civ"]
		];
	};

	case "C_Offroad_01_F":
	{
	_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["textures\COP\Vehicles\police_offroad.jpg","cop"],
			["textures\MED\offroad_notarzt.jpg","med"],
			["#(argb,1,1,1)color(0.6,0.3,0.01,1)","civ"],
			["textures\ADAC\adac_offroad.jpg","adac"],
			["textures\CIV\civ_offroad_dodge.jpg","civ"]

		];
	};

	case "C_Hatchback_01_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};

	case "C_SUV_01_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["#(rgb,1,1,1)color(0,0,0,1)","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\CIV\suv_black.jpg","civ"],
			["textures\MED\suv_medik.jpg","med"],
			["textures\COP\Vehicles\police_suv.jpg","cop"],
			["textures\ADAC\adac_suv.jpg","adac"],
			["textures\COP\Vehicles\police_AH.jpg","cop"],
			["textures\CIV\batman_suv.jpg","civ"],
			["textures\CIV\carbon_suv.jpg","civ"],
			["textures\CIV\carbon_suv1.jpg","civ"],
			["textures\CIV\civ_suv_ferrari.jpg","civ"],
			["textures\CIV\civ_suv_monster.jpg","civ"],
			["textures\CIV\civ_suv_skull.jpg","civ"]
		];
	};

	case "C_Van_01_box_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\MED\rtwfrontneu.jpg","med","textures\MED\rtwbackneu.jpg"]
		];
	};

	case "C_Van_01_transport_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["#(rgb,1,1,1)color(20,10,0,1)","civ"]

		];
	};

	case "B_Quadbike_01_F":
	{
	_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};

	case "B_Heli_Light_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\police_heli.jpg","cop"],
			["textures\COP\Vehicles\police_heli2.jpg","cop"],
			["textures\COP\Vehicles\police_heli.jpg","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\MED\Notarzt_hummingbird.jpg","med"],
			["textures\ADAC\adac_Hummingbird.jpg","adac"],
			["#(rgb,1,1,1)color(1,0,0.6,1)","civ"],
      		["#(rgb,1,1,1)color(1,0,0.6,1)","civ","#(rgb,1,1,1)color(1,0,0.6,1)"]			

		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
	_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\MED\med_orca.jpg","med"]


		];
	};

	case "B_MRAP_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hunter\polizei_hunter1.jpg","cop","textures\COP\Vehicles\Hunter\polizei_hunter2.jpg"],
			["textures\COP\Vehicles\Hunter\hunter_GSG9.jpg","cop","textures\COP\Vehicles\Hunter\hunter_GSGA_plane.jpg"],
			["textures\MED\hunter_med_mrap_01.jpg","med","textures\MED\hunter_med_mrap_02.jpg"]
		];
	};

	case "I_Truck_02_covered_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "I_Truck_02_transport_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]			
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
	_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
	_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Heli_light_03_unarmed_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\police_hellcat.jpg","cop"],
			["textures\Med\notarzt_hellcat.jpg","med"],
			["textures\Adac\ADAC_hellcat.jpg","adac"]
		];
	};
	case "I_MRAP_03_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\strider_sek.jpg","cop","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};
	case "I_MRAP_03_hmg_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\strider_sek.jpg","cop","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};
	case "B_Heli_Light_01_F":
	{
	_ret =
		[
			["textures\MED\Vehicles\Notarzt_Hummingbird.jpg","med"]
		];
	};
	case "O_MRAP_02_F":
	{
	_ret =
		[
			["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","civ","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["textures\SD\Ifrit_black_front.jpg","civ","textures\SD\Ifrit_black_hinten.jpg"],
			//["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"],
			["#(rgb,1,1,1)color(0,0,0,1)","cop","#(rgb,1,1,1)color(0,0,0,1)"],
			["textures\COP\Vehicles\cop_ifrit_1.jpg","cop","textures\COP\Vehicles\cop_ifrit_2.jpg"],
			["textures\COP\Vehicles\Ifrit_sek_Front.jpg","cop","textures\COP\Vehicles\Ifrit_sek_hinten.jpg"]


		];
	};
	case "O_MRAP_02_hmg_F":
	{
	_ret =
		[
			["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","civ","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			//["textures\vehicles\Ifrit_black_front.jpg","civ","textures\vehicles\Ifrit_black_hinten.jpg"]
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"],
			["#(rgb,1,1,1)color(0,0,0,1)","cop","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "B_MRAP_01_hmg_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hunter\hunter_GSG9.jpg","cop","textures\COP\Vehicles\Hunter\hunter_GSGA_plane.jpg","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "B_Heli_Transport_01_F":
	{
	_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\COP\Vehicles\GH\gh_pol1.jpg","cop","textures\COP\Vehicles\GH\gh_pol2.jpg"],
			["textures\COP\Vehicles\GH\gh_gsga1.jpg","cop","textures\COP\Vehicles\GH\gh_gsga2.jpg"]
		];
	};
	case "B_Truck_01_mover_F":
	{
	_ret =
		[
			["textures\ADAC\hemtt_mover_adac.jpg","adac"]

		];
	};
	case "O_APC_Wheeled_02_rcws_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\apc_wheeled_02_ext_01_opfor_co.jpg","cop","textures\COP\Vehicles\apc_wheeled_02_ext_02_opfor_co.jpg","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};



	case "B_Truck_01_covered_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "B_Truck_01_box_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "B_Truck_01_transport_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"],
			["textures\ADAC\adac_hemtt.jpg","adac","textures\ADAC\adac_hemtt_back.jpg"]
		];
	};

	case "O_Truck_03_covered_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "O_G_Van_01_fuel_F":
	{
	_ret =
		[
			["textures\ADAC\van_01_tank_red_co.jpg","adac","textures\ADAC\van_02_tank_red_co.jpg"]

		];
	};

};
//diag_log "VEHICLE COLOR CFG";
//diag_log _ret;
_ret;