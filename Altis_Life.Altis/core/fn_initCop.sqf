#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};



if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

player setVariable["rank",(__GETC__(life_coplevel)),true];

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
//diag_log "CALLING UPDATE CLOTHES FROM: init cop";
[] call life_fnc_updateClothes;	
If (playerSide == west) Then {
 _Functions = []ExecVM "joinerUI\GroupMonitor.sqf";
 waitUntil {!IsNull Player && ScriptDone _Functions};
 Player AddEventHandler ["Respawn", {_menu = (_this select 0) addAction ["<t color=""#3399FF"">" +"Groups", "joinerUI\showJoiner.sqf"];}];
 _menu = player addAction ["<t color=""#3399FF"">" +"Groups", "joinerUI\showJoiner.sqf"];
 
};


