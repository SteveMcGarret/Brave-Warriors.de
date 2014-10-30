#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop", "_coplevel"];

_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
			 ["Grundausstattung",
					[
						["arifle_sdar_F","Taser Gewehr",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],						
						["hgun_Rook40_F","Taser Pistole",2000],
						["hgun_Rook40_F",nil,7500],
  						["16Rnd_9x21_Mag",nil,200],						
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["NVGoggles_OPFOR",nil,2000],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["16Rnd_9x21_Mag",nil,50],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["H_CrewHelmetHeli_B",nil,50]
					]
				];
			};
		};
	};
	
	case "security":
	{
		switch(true) do
		{
			case ((getPlayerUID player) in  __GETC__(life_gang_sd)): 
			{
			 ["Altis Life SD Shop",
				   	[


                        ["srifle_GM6_F",nil,210000],
                        ["5Rnd_127x108_Mag",nil,2000],
                        ["Rangefinder",nil,6500],
						["optic_Aco","ACO",2500],
						["optic_ACO_grn","ACO Green",2500],
						["optic_Aco_smg","ACO Red",2500],
						["optic_ACO_grn_smg","SMG ACO Red",2500],
						["optic_Holosight","Mk17 Holosight 1x 2x",3000],
						["optic_Holosight_smg","SMG Mk17 Holosight 1x - 2x",3000],
						["optic_Hamr","RCO 10x",5000],
						["optic_MRCO","MRCO 1x - 6x",6000],
						["optic_SOS","SOS 18x - 75x",10000],
						["optic_Arco","ARCO 10x",8000],
						["optic_NVS","NVS 10x",12000],
						["optic_DMS","DMS 1x - 10x",10000],
						["optic_LRPS","DMS 18x - 75x",10000],	
  						["HandGrenade_Stone","Blendgranate",1700],
  						["SmokeShellRed","Traenengas",500],
						["Medikit",nil,500],
						["hgun_Pistol_heavy_02_F",".45 Magnum",10000],
						["hgun_P07_snds_F","Taser Pistole",2000],
						["6Rnd_45ACP_Cylinder",nil,50],
  						["SMG_02_ACO_F","Sting 9mm ACO",30000],
  						["30Rnd_9x21_Mag",nil,200],
						["arifle_TRG20_F",nil,30000],
  						["arifle_TRG21_GL_F",nil,30000],
  						["30Rnd_556x45_Stanag",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Red",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Green",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,200],
  						["LMG_Zafir_F",nil,30000],
  						["150Rnd_762x51_Box",nil,200],
						["150Rnd_762x51_Box_Tracer",nil,200],
  						["arifle_MXC_F","MXC 6.5",30000],
  						["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["arifle_MXM_F",nil,40000],
  				  		["arifle_MX_GL_ACO_F",nil,40000],
  				  		["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
  				  		["3Rnd_HE_Grenade_shell",nil,200],
  						["3Rnd_UGL_FlareWhite_F",nil,200],  		
  						["3Rnd_UGL_FlareGreen_F",nil,200],
  						["3Rnd_UGL_FlareRed_F",nil,200],  					
  						["3Rnd_UGL_FlareYellow_F",nil,200],  					
  						["3Rnd_UGL_FlareCIR_F",nil,200],
  						["HandGrenade_Stone","Blendgranate",1700],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000], 						
						["muzzle_snds_L",nil,10000], 						
						["muzzle_snds_M",nil,10000], 						
						["muzzle_snds_H_MG",nil,10000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["SmokeShellGreen","Traenengas",500],
						["H_CrewHelmetHeli_B",nil,50],
						["NVGoggles_OPFOR",nil,2000]						 	

					]
				];
			};
			default {"Du bist kein Mitglied des Sicherheitsdienstes"};
		};
	};
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitäter"};
			default {
			["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,1200],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30]

					]
				];
			};
		};
	};
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist kein ADAC Fahrer"};
			default {
			["ADAC Equiptment",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,1200],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30]

					]
				];
			};
		};
	};



	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
		 ["Polizei Shop",
					[
						["hgun_Pistol_heavy_02_F",".45 Magnum",10000],
						["6Rnd_45ACP_Cylinder",nil,50],
  						["SMG_02_ACO_F","Sting 9mm ACO",30000],
  						["30Rnd_9x21_Mag",nil,200],
  						["arifle_MXC_F","MXC 6.5",30000],
  						["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
  						["SMG_01_F",nil,30000],
  						["30Rnd_45ACP_Mag_SMG_01",nil,200],
  						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,200],
  						["HandGrenade_Stone","Blendgranate",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,500],
						["optic_Yorris",nil,1200],
						["optic_MRD",nil,2500],
				
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
				
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
			["Sonderkommando Shop",
					[
						["SmokeShellGreen","Traenengas",500],
						["hgun_Pistol_heavy_02_F",".45 Magnum",10000],
						["6Rnd_45ACP_Cylinder",nil,50],
  						["SMG_02_ACO_F","Sting 9mm ACO",30000],
  						["30Rnd_9x21_Mag",nil,200],
						["arifle_TRG20_F",nil,30000],
  						["arifle_TRG21_GL_F",nil,30000],
  						["30Rnd_556x45_Stanag",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Red",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Green",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,200],
  						["LMG_Mk200_F","MXC 6.5",30000],
  						["200Rnd_65x39_cased_Box",nil,200],
  						["200Rnd_65x39_cased_Box_Tracer",nil,200],
  						["arifle_MXC_F","MXC 6.5",30000],
  						["arifle_MXC_Black_F","MXC B 6.5",30000],
  						["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["arifle_MXM_F",nil,40000],
						["arifle_MXM_Black_F",nil,40000],
  				  		["arifle_MX_GL_ACO_F",nil,40000],
  				  		["arifle_MX_GL_Black_F",nil,40000],
  				  		["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
  				  		["3Rnd_HE_Grenade_shell",nil,200],
  						["3Rnd_UGL_FlareWhite_F",nil,200],  		
  						["3Rnd_UGL_FlareGreen_F",nil,200],
  						["3Rnd_UGL_FlareRed_F",nil,200],  					
  						["3Rnd_UGL_FlareYellow_F",nil,200],  					
  						["3Rnd_UGL_FlareCIR_F",nil,200],
  						["HandGrenade_Stone","Blendgranate",1700],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000], 						
						["muzzle_snds_L",nil,10000], 						
						["muzzle_snds_M",nil,10000], 						
						["muzzle_snds_H_MG",nil,10000]


/*arifle_MXC_Black_F
arifle_MX_Black_F
arifle_MX_GL_Black_F
arifle_MX_SW_Black_F
arifle_MXM_Black_F
*/
					]
				];
			};
		};
	};
	
	case "cop_sniper":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (__GETC__(life_coplevel) < 4): {"You are not at a sniper rank!"};
            default
            {
           ["Sonderkommando Scharfschuetzen Shop",
                    [
                        ["srifle_GM6_F",nil,210000],
                        ["5Rnd_127x108_Mag",nil,2000],
                        ["Rangefinder",nil,6500],
						["optic_Aco","ACO",2500],
						["optic_ACO_grn","ACO Green",2500],
						["optic_Aco_smg","ACO Red",2500],
						["optic_ACO_grn_smg","SMG ACO Red",2500],
						["optic_Holosight","Mk17 Holosight 1x 2x",3000],
						["optic_Holosight_smg","SMG Mk17 Holosight 1x - 2x",3000],
						["optic_Hamr","RCO 10x",5000],
						["optic_MRCO","MRCO 1x - 6x",6000],
						["optic_SOS","SOS 18x - 75x",10000],
						["optic_Arco","ARCO 10x",8000],
						["optic_NVS","NVS 10x",12000],
						["optic_DMS","DMS 1x - 10x",10000],
						["optic_LRPS","DMS 18x - 75x",10000]						
                    ]
                ];
            };
        };
    };
	
	case "cop_gsga":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (__GETC__(life_coplevel) < 5): {"You are not at a officer rank!"};
            default
            {
           ["Gruppenfuehrer Shop",
                    [
						["hgun_Pistol_heavy_02_F",".45 Magnum",10000],
						["6Rnd_45ACP_Cylinder",nil,50],
  						["SMG_02_ACO_F","Sting 9mm ACO",30000],
  						["30Rnd_9x21_Mag",nil,200],
  						["arifle_MXC_F","MXC 6.5",30000],
  						["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
  						["HandGrenade_Stone","Blendgranate",1700],
						["Medikit",nil,500]



							
                    ]
                ];
            };
        };
    };
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
			["Mohammed's Jihadi Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,82000],
						["LMG_Zafir_F",nil,500000],
						["150Rnd_762x51_Box",nil,5000],
						["11Rnd_45ACP_Mag",nil,70],
						["hgun_Rook40_F",nil,61500],
						["APERSMine_Range_Mag",nil,70000],
						["16Rnd_9x21_Mag",nil,120],
						["hgun_Pistol_heavy_02_F",nil,58000],
						["optic_Yorris",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_PDW2000_F",nil,90000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_SDAR_F",nil,140000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["arifle_Katiba_C_F",nil,150000],
						["arifle_Katiba_F",nil,160000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,130000],
						["arifle_Mk20C_plain_F",nil,135000],
						["arifle_Mk20_F",nil,140000],
						["arifle_Mk20_plain_F",nil,160000],
						["30Rnd_556x45_Stanag",nil,1000],
						["srifle_DMR_01_F",nil,190000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,210000],
						["20Rnd_762x51_Mag",nil,1000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["7Rnd_408_Mag",nil,10000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["srifle_LRR_LRPS_F",nil,1500000],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["optic_MRCO",nil,6000],
						["optic_SOS",nil,10000],
						["optic_Arco",nil,8000],
						["optic_NVS",nil,12000],
						["optic_DMS",nil,10000],
						["Rangefinder",nil,36500]										
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Pistol_heavy_01_F",nil,82000],
						["LMG_Zafir_F",nil,500000],
						["150Rnd_762x51_Box",nil,5000],
						["11Rnd_45ACP_Mag",nil,70],
						["hgun_Rook40_F",nil,61500],
						["APERSMine_Range_Mag",nil,70000],
						["16Rnd_9x21_Mag",nil,120],
						["hgun_Pistol_heavy_02_F",nil,58000],
						["optic_Yorris",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_PDW2000_F",nil,90000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_SDAR_F",nil,140000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["arifle_Katiba_C_F",nil,150000],
						["arifle_Katiba_F",nil,160000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,130000],
						["arifle_Mk20C_plain_F",nil,135000],
						["arifle_Mk20_F",nil,140000],
						["arifle_Mk20_plain_F",nil,160000],
						["30Rnd_556x45_Stanag",nil,1000],
						["srifle_DMR_01_F",nil,190000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,210000],
						["20Rnd_762x51_Mag",nil,1000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["7Rnd_408_Mag",nil,10000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["srifle_LRR_LRPS_F",nil,1500000],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["optic_MRCO",nil,6000],
						["optic_SOS",nil,10000],
						["optic_Arco",nil,8000],
						["optic_NVS",nil,12000],
						["optic_DMS",nil,10000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemCompass",nil,100],
				["ItemRadio",nil,100],
				["ItemMap",nil,100],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	case "gas":
	{
		["Altis General Store",
			[
				["Binocular",nil,300],
				["ItemGPS",nil,100],
				["ToolKit",nil,3500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
