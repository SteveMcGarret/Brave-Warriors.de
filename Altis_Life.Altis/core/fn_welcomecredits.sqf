/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: RenildoMarcio
	Date: 09/05/2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
private["_onScreenTime",
"_role1",
"_role1names",
"_role2",
"_role2names",
"_role3",
"_role3names",
"_role4",
"_role4names",
"_role5",
"_role5names",
"_role6",
"_role6names",
"_role7",
"_role8names",
"_role9",
"_role9names",
"_role11",
"_role11names",
"_role12",
"_role12names",
"_role13",
"_role13names",
"_role14",
"_role14names",
"_role15",
"_role15names",
"_role16",
"_role16names",
"_memberFunction",
"_memberNames",
"_finalText"];
_onScreenTime = 4;

sleep 10; //Wait in seconds before the credits start after player is in-game
 
if(life_firstSpawn) then {
	life_firstSpawn = false;
	// ES NERVT :D 
	//playSound ["intro",true];
};



_role1 = "Willkommen auf dem ANARCHY Altis Life Server:";
_role1names = ["Altis Life RPG by Tonic"];
_role2 = "Serveradmins!";
_role2names = ["Steve McGarrett","FlyFly"];
_role3 = "Website:";
_role3names = ["http://zombie-city.enjin.com/"];
_role4 = "MapDesign und Scripting by";
_role4names = ["Steve McGarrett","Kegamer99"];
_role5 = "Teamspeak:";
_role5names = ["Zombie-City.de"];
_role6 = "NEWS:";
_role6names = ["Handelt besonnen","be positive","habt Geduld","Denken vor Schießen"];
_role7 = "Der Server Ihres Vertrauens!";
_role7names = ["Brave-Warriors.de"];
_role8 = "Brave-Warriors.de";
_role8names = ["supported by vidocq"];
_role9 = "Created by:";
_role9names = ["TAW_Tonic"];
_role11 = "Directed by:";
_role11names = ["Steve McGarrett"];
_role12 = "Special thanks to:";
_role12names = ["TAW_Tonic", "nameless-gaming.org","Silex","xmscx","Demon","PolarBlue","HellsGateGaming","LT. Schelby(Skins)"];
_role13 = "Polizeileiter:";
_role13names = ["Steve McGarrett","FlyFly","Spartacus","Vidocq"];
_role14 = "Notarztleiter:";
_role14names = ["Steve McGarrett"];
_role15 = "ADAC";
_role15names = ["Intruder One"];
_role16 = "This Server is sponsored by";
_role16names = ["Wan't to donate?","Look at our Homapage"];




{
sleep 10;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.65' color='#FFFFFF' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FF0000' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7


_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;


sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names],
	[_role7, _role7names],
	[_role8, _role8names],
	[_role9, _role9names],
	[_role10, _role10names],
	[_role11, _role11names],
	[_role12, _role12names],
	[_role13, _role13names],
	[_role14, _role14names],
	[_role15, _role15names],
	[_role16, _role16names]
];
