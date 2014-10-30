#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers","_mkName","_mk","_uniform","_gang_darg","_gang_sd", "_gang_adac","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;


//diag_log format["PLAYERSIDE: %1", _side];
//Spawn Marker, Spawn Name, PathToImage


switch (_side) do
{
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Autobahn Polizei","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			//["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["securityservice","MEK Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case civilian:
	{

		if (life_player_alive) then {
			_markers = [
				["last_pos","Letze Position","\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]
			];

		} else {
			_markers =  [
				["civ_spawn_2","Pyrgos(Schwer)","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Kavala(Leicht)","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				//["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				//["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(license_civ_rebel) then {
			_markers = _markers + [
						["rebellen_1","Rebel Spawn 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
						["rebellen_2","Rebel Spawn 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
						["rebellen_3","Rebel Spawn 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
					];
			};
		
		};
		
		// GANGS
		// DARG with loadout for Uniforms
		if((getPlayerUID player) in __GETC__(life_gang_darg)  )then {
			_markers = _markers + [
							["dreth","DARG HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};					
		// Security service - with loadout for Uniforms
		if((getPlayerUID player) in __GETC__(life_gang_sd)  )then {
			_markers = _markers + [
							["securityservice","Sicherheitsdienst","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};
		// Ravensquad service - with loadout for Uniforms
		if((getPlayerUID player) in __GETC__(life_gang_ravensquad)  )then {
			_markers = _markers + [
							["rs_spawn","MS 13 SquadBase","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};

			// ava service - with loadout for Uniforms
		if((getPlayerUID player) in __GETC__(life_gang_ava)  )then {
			_markers = _markers + [
							["ava_spawn","AVA","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};				

			// oob service - with loadout for Uniforms
		if((getPlayerUID player) in __GETC__(life_gang_oob)  )then {
			_markers = _markers + [
							["oob_spawn","Berenzino","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};	
		
			// bwu service - with loadout for Uniforms
		if((getPlayerUID player) in __GETC__(life_gang_bwu)  )then {
			_markers = _markers + [
							["bwu_spawn","BWU","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};				

		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				_markers = _markers + [
				[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]
				];


				//_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;

		};



	};
	
	case independent: {
		_markers = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Sofia ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_6","Airfield","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]

		];
	};
	
	case east: {
		_markers = [
			["adac_1","ADAC HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_2","ADAC Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_3","ADAC Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_4","ADAC Pygros","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_5","ADAC 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]

		];
	};
};
_markers;