#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
DB_Async_Active = false;
DB_Async_ExtraLock = false;
life_server_isReady = false;
publicVariable "life_server_isReady";

//__CONST__(LIFE_SCHEMA_NAME,"'arma3life'");//CHANGE THIS IF YOUR DATABASE IS NOT CALLED ARMA3LIFE KEEP THE ' '

[] execVM "\life_server\functions.sqf";
[] execVM "\life_server\eventhandlers.sqf";

//I am aiming to confuse people including myself, ignore the ui checks it's because I test locally.
extDBversion = "extDB" callExtension "9:VERSION";
if(isNil {uiNamespace getVariable "life_sql_id"}) then {
	life_sql_id = round(random(9999));
	__CONST__(life_sql_id,life_sql_id);
	uiNamespace setVariable ["life_sql_id",life_sql_id];
	
	//Only need to setup extDB once.
	//  If mission is reloaded, will tell clients extDB is not loaded.
	//     Todo: Is it possible first client is loaded before this PV is sent ?
	if(extDBversion == "") exitWith {life_server_extDB_notLoaded = true; publicVariable "life_server_extDB_notLoaded";};
	//Initialize the database
	_result = "extDB" callExtension "9:DATABASE:Database2";
	if(_result != "[1]") exitWith {"extDB: Error with Database Connection"};
	_result = "extDB" callExtension format["9:ADD:DB_RAW_V2:%1",(call life_sql_id)];
	if(_result != "[1]") exitWith {"extDB: Error with Database Connection"};
	diag_log "extDB: Connected to Database";

	"extDB" callExtension "9:LOCK";
} else {
	life_sql_id = uiNamespace getVariable "life_sql_id";
	__CONST__(life_sql_id,life_sql_id);
};

//Run procedures for SQL cleanup on mission start.
["CALL resetLifeVehicles",1] spawn DB_fnc_asyncCall;
["CALL deleteDeadVehicles",1] spawn DB_fnc_asyncCall;
["DELETE FROM houses WHERE owned='0'",1] spawn DB_fnc_asyncCall;

life_adminlevel = 0;
life_medicLevel = 0;
life_coplevel = 0;
life_adaclevel = 0;

//Null out harmful things for the server.
__CONST__(JxMxE_PublishVehicle,"No");

//[] execVM "\life_server\fn_initHC.sqf";

life_radio_west = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_east = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_civ = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_indep = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];

serv_sv_use = [];

fed_bank setVariable["safe",(count playableUnits),true];

//General cleanup for clients disconnecting.
_onDisconnect = ["SERV_onClientDisconnect","onPlayerDisconnected",{[_uid,_id,_name] call TON_fnc_clientDisconnect}] call BIS_fnc_addStackedEventHandler;

[] spawn TON_fnc_cleanup;
life_gang_list = [];
publicVariable "life_gang_list";
life_wanted_list = [];
client_session_list = [];

[] execFSM "\life_server\cleanup.fsm";

[] spawn
{
	private["_logic","_queue"];
	while {true} do
	{
		sleep (30 * 60);
		_logic = missionnamespace getvariable ["bis_functions_mainscope",objnull];
		_queue = _logic getvariable "BIS_fnc_MP_queue";
		_logic setVariable["BIS_fnc_MP_queue",[],TRUE];
	};
};

[] spawn TON_fnc_federalUpdate;

[] spawn
{
	while {true} do
	{
		sleep (30 * 60);
		{
			_x setVariable["sellers",[],true];
		} foreach [Dealer_1,Dealer_2,Dealer_3];
	};
};

//Strip NPC's of weapons
{
	if(!isPlayer _x) then {
		_npc = _x;
		{
			if(_x != "") then {
				_npc removeWeapon _x;
			};
		} foreach [primaryWeapon _npc,secondaryWeapon _npc,handgunWeapon _npc];
	};
} foreach allUnits;

[] spawn TON_fnc_initHouses;
[] spawn TON_fnc_initWanted;


[] execVM "\life_server\Functions\Hero\fn_fetchPlayerVehicle.sqf";
[] spawn TON_fnc_vehicleRefresh;
//[] execVM "\life_server\Functions\Hero\fn_radartrap.sqf";

//Treasure hunt
call compile preProcessFileLineNumbers "\life_server\SHK_pos\shk_pos_init.sqf";
[] execVM "\life_server\Functions\Custom\fn_spawnGold.sqf";
gold_safe setVariable["gold",round(random 50),true];
[] spawn TON_fnc_goldUpdate;


//Lockup the dome
private["_dome","_rsb"];
_dome = nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"];
_rsb = nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"];

for "_i" from 1 to 3 do {_dome setVariable[format["bis_disabled_Door_%1",_i],1,true]; _dome animate [format["Door_%1_rot",_i],0];};
_rsb setVariable["bis_disabled_Door_1",1,true];
_rsb allowDamage false;
_dome allowDamage false;
[] spawn TON_fnc_bruecke;
[] spawn TON_fnc_hausweg;
[] call TON_fnc_tueren;
life_server_isReady = true;
publicVariable "life_server_isReady";
