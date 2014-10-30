
enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
introSpawn = nil;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.7";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";


if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketConfiguration;
	//diag_log "Market prices generated!";
		//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	//diag_log "Server FSM executed";
};

[] execVM "extra\zlt_fastrope.sqf";
[] execVM "extra\teargas.sqf";
[] execVM "extra\fn_statusBar.sqf"; //Load the Statusbar
[] execVM "extra\D41_Wetter.sqf"; //Dynamisches wetter, weniger starker nebel

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
};
StartProgress = true;


[] execVM "extra\PlayersStats.sqf"; // Anzeige Spieler Online
[] execVM "extra\FPS.sqf"; // FPS

{_x setMarkerAlphaLocal 0} forEach ["mrkRed","mrkRed_1","mrkRed_1_1","mrkRed_1_3"];

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

