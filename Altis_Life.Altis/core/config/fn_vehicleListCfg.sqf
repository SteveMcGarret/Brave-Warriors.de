#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return", "_gang_sd", "_gang_adac"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];


switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
		    ["C_SUV_01_F",5000],
			["B_Truck_01_medical_F",60000],
			["B_MRAP_01_F",7500],
			["C_Van_01_box_F",17500]
				
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",5000],
			["O_Heli_Light_02_unarmed_F",10000],
			["I_Heli_light_03_unarmed_F",275000]
			];			
		};

	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",49500],			
			["C_Offroad_01_F",12500],
			["B_G_Offroad_01_F",12500],			
			["C_SUV_01_F",35000],
			["C_Van_01_box_F",60000],
			["C_Van_01_transport_F",40000]
		];

		// GANG Cars
		if((getPlayerUID player) in __GETC__(life_gang_sd)) then {
			_return = _return + 
			[
				["O_MRAP_02_F",640000],
				["O_MRAP_02_hmg_F",1130000]
			];
				
		};

	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",375000],
			["I_Truck_02_covered_F",400000],
			["O_Truck_03_transport_F",3524000],
			["O_Truck_03_covered_F",4750000],
			["B_Truck_01_transport_F",5224000],			
			["B_Truck_01_box_F",6524000],
			["B_Truck_01_covered_F",6524000],
			["O_Truck_03_device_F",36450000],
			["B_Truck_01_fuel_F",4224000]
		];	
		
	};
	
	case "adac_truck":
	{
		_return =
		[
			["B_Truck_01_transport_F",10000],
			["B_Truck_01_mover_F",100000],
			["C_Offroad_01_F",12500],
			["C_Hatchback_01_F",9500],
			["C_SUV_01_F",35000],
			["B_Heli_Light_01_F",10000],
			["O_Heli_Light_02_unarmed_F",10000],
			["I_Heli_Transport_02_F",10000],
			["I_Heli_light_03_unarmed_F",10000],
			["O_G_Van_01_fuel_F",10000],
			["B_Truck_01_box_F",10000],
			["B_Truck_01_covered_F",10000]

		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",7500],
			["B_G_Offroad_01_F",25000],
			["O_MRAP_02_F",1800000],
			["C_Van_01_box_F",90000],
			["I_Truck_02_transport_F",475000],
			["I_Truck_02_covered_F",600000],
			["O_Truck_03_transport_F",4524000],
			["O_Truck_03_covered_F",5750000],
			["B_Truck_01_transport_F",6224000],			
			["B_Truck_01_box_F",7524000],
			["B_Truck_01_covered_F",7524000],
			["B_Heli_Light_01_F",1325000],
			["B_G_Offroad_01_armed_F",7000000],
			["I_Heli_Transport_02_F",6325000],
			["O_MRAP_02_hmg_F",13500000],
			["B_Heli_Light_01_armed_F",13500000] 
		];
	};
	
	case "cop_car":
	{
		_return set[count _return, ["C_Offroad_01_F",1000]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",10000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return, ["C_SUV_01_F",10000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return, ["B_MRAP_01_F",30000]];
			_return set[count _return, ["B_MRAP_01_hmg_F",150000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
		    _return set[count _return, ["I_MRAP_03_F",350000]];
			_return set[count _return, ["I_MRAP_03_hmg_F",250000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return, ["O_APC_Wheeled_02_rcws_F",500000]];	
			_return set[count _return, ["O_MRAP_02_F",500000]];	
			_return set[count _return, ["O_MRAP_02_hmg_F",500000]];	

		};

		if(__GETC__(life_coplevel) == 6) then
		{
			_return set[count _return, ["O_MRAP_02_F",500000]];	
			_return set[count _return, ["O_MRAP_02_hmg_F",500000]];	

		};

		if(__GETC__(life_coplevel) == 7) then
		{
			_return set[count _return, ["O_MRAP_02_F",500000]];	
			_return set[count _return, ["O_MRAP_02_hmg_F",500000]];	

		};
	};


	case "sd_car":
	{

		if((getPlayerUID player) in __GETC__(life_gang_sd)  )then {
			_return = _return + 
			[
				["B_Quadbike_01_F",2500],
				["C_Hatchback_01_F",9500],
				["C_Hatchback_01_sport_F",49500],			
				["C_Offroad_01_F",12500],
				["B_G_Offroad_01_F",12500],			
				["C_SUV_01_F",35000],
				["C_Van_01_box_F",60000],
				["C_Van_01_transport_F",40000],
				["O_MRAP_02_F",640000],
				["O_MRAP_02_hmg_F",1130000],
				["B_Heli_Attack_01_F",275000],
				["B_Heli_Light_01_F",500000],
				["O_Heli_Light_02_unarmed_F",750000],
				["I_Heli_Transport_02_F",6325000]
			];
		} else {
			_return = [
				["B_Quadbike_01_F",2500]
			];
		};

	};


	case "sd_air":
	{

		if((getPlayerUID player) in __GETC__(life_gang_sd)  )then {
			_return = _return + 
			[
				["B_Heli_Light_01_F",500000],
				["O_Heli_Light_02_unarmed_F",750000],
				["I_Heli_Transport_02_F",6325000],			
				["B_Heli_Attack_01_F",275000]
			];
		};

	};



	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",1325000],
			["O_Heli_Light_02_unarmed_F",2500000],
			["I_Heli_Transport_02_F",6325000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",175000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",250000]];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",275000]];

		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			 _return set[count _return,
			 ["B_Heli_Attack_01_F",275000]];
		};		


	};
	case "cop_airhq":
	{
		_return set[count _return,["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",175000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",250000]];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",275000]];
			 _return set[count _return,
			 ["I_Heli_light_03_F",275000]];
		
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			 _return set[count _return,
			 ["B_Heli_Attack_01_F",275000]];
		};		

	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["I_SDV_01_F",4000000]

		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000],
			["O_Boat_Armed_01_hmg_F",40000]
		];
	};
};


_return;
