#include <macro.h>
/*
	File: fn_initAdac.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_adaclevel) < 1) && (__GETC__(life_adminlevel) < 1)) then {
        ["NotWhitelisted",false,true] call BIS_fnc_endMission;
        sleep 35;
};

_logistic = execVM "extra\=BTC=_Logistic\=BTC=_logistic_Init.sqf";
_igiload = execVM "extra\IgiLoad\IgiLoadInit.sqf";

player setVariable["adacrank",(__GETC__(life_adaclevel)),true];

		switch(__GETC__(life_coplevel)) do {

			case 1: {
				life_paycheck = life_paycheck * 1.5; //Paycheck Amount 
			};
			case 2: {
				life_paycheck = life_paycheck * 2; //Paycheck Amount
			};
			case 3: {
				life_paycheck = life_paycheck * 2.5; //Paycheck Amount
			};
			case 4: {
				life_paycheck = life_paycheck * 2.7; //Paycheck Amount
			};
			case 5: {
				life_paycheck = life_paycheck * 2.9; //Paycheck Amount
			};
			case 6: {
				life_paycheck = life_paycheck * 3.2; //Paycheck Amount
			};
			case 7: {
				life_paycheck = life_paycheck * 3.8; //Paycheck Amount
			};
		};

[] call life_fnc_zoneCreator;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_updateClothes;	
