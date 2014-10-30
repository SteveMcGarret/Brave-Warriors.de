/*
File: fn_vehicleColorStr.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
  case "C_Offroad_01_F" :
  {
  switch (_index) do
  {
  case 0: {_color = "Red";};
  case 1: {_color = "Yellow";};
  case 2: {_color = "White";};
  case 3: {_color = "Blue";};
  case 4: {_color = "Dark Red";};
  case 5: {_color = "Blue / White"};
  case 6: {_color = "Black"};
  case 7: {_color = "Polizei"};
  case 8: {_color = "Notarzt"};
  case 9: {_color = "Taxigelb"};
  case 10: {_color = "ADAC"};
  case 11: {_color = "Dodge"};
  

};
};

case "C_Hatchback_01_F":
{
  switch (_index) do
  {
  case 0: {_color = "Beige";};
  case 1: {_color = "Green";};
  case 2: {_color = "Blue";};
  case 3: {_color = "Dark Blue";};
  case 4: {_color = "Yellow";};
  case 5: {_color = "White"};
  case 6: {_color = "Grey"};
  case 7: {_color = "Black"};
};
};

case "C_Hatchback_01_sport_F":
{
  switch(_index) do
  {
  case 0: {_color = "Red"};
  case 1: {_color = "Dark Blue"};
  case 2: {_color = "Orange"};
  case 3: {_color = "Black / White"};
  case 4: {_color = "Tan"};
  case 5: {_color = "Monster"};
  case 6: {_color = "Polizei"};
  case 7: {_color = "Metallica"};
};
};

case "C_SUV_01_F":
{
  switch (_index) do
  {
  case 0: {_color = "Dark Red";};
  case 1: {_color = "Black";};
  case 2: {_color = "Silver";};
  case 3: {_color = "Orange";};
  case 4: {_color = "Evangelion 02";};
  case 5: {_color = "Notarzt";};
  case 6: {_color = "Polizei";};
  case 7: {_color = "ADAC";};
  case 8: {_color = "Future (Beta)";};
  case 9: {_color = "Batman";};
  case 10: {_color = "Corbon White";};
  case 11: {_color = "Corbon";};
  case 12: {_color = "Ferrari";};
  case 13: {_color = "Monsta";};
  case 14: {_color = "Skull";};
};
};

case "C_Van_01_box_F":
{
  switch (_index) do
  {
  case 0: {_color = "White"};
  case 1: {_color = "Red"};
  case 2: {_color = "RTW"};

};
};

case "C_Van_01_transport_F":
{
  switch (_index) do
  {
  case 0: {_color = "White"};
  case 1: {_color = "Red"};
};
};

case "C_Van_01_fuel_F":
{
  switch (_index) do
  {
  case 0: {_color = "White"};
  case 1: {_color = "Red"};
};
};

case "B_Quadbike_01_F" :
{
  switch (_index) do
  {
  case 0: {_color = "Brown"};
  case 1: {_color = "Digi Desert"};
  case 2: {_color = "Black"};
  case 3: {_color = "Blue"};
  case 4: {_color = "Red"};
  case 5: {_color = "White"};
  case 6: {_color = "Digi Green"};
  case 7: {_color = "Hunter Camo"};
  case 8: {_color = "Rebel Camo"};
};
};

case "B_Heli_Light_01_F":
{
  switch (_index) do
  {
  case 0: {_color = "Polizei - Schwarz"};
  case 1: {_color = "Polizei - Blau"};
  case 2: {_color = "Polizei"};
  case 3: {_color = "Civ Blue"};
  case 4: {_color = "Civ Red"};
  case 5: {_color = "Digi Green"};
  case 6: {_color = "Blueline"};
  case 7: {_color = "Elliptical"};
  case 8: {_color = "Furious"};
  case 9: {_color = "Jeans Blue"};
  case 10: {_color = "Speedy Redline"};
  case 11: {_color = "Sunset"};
  case 12: {_color = "Vrana"};
  case 13: {_color = "Waves Blue"};
  case 14: {_color = "Rebel Digital"};
  case 15: {_color = "EMS White"};
  case 16: {_color = "ADAC"};
  case 17: {_color = "Schwarz"};
  case 18: {_color = "Pink"};
};
};

case "O_Heli_Light_02_unarmed_F":
{
  switch (_index) do
  {
  case 0: {_color = "Black"};
  case 1: {_color = "White / Blue"};
  case 2: {_color = "Digi Green"};
  case 3: {_color = "Desert Digi"};
  case 4: {_color = "EMS White"};
};
};

case "B_MRAP_01_F":
{
  switch (_index) do
  {
  case 0: {_color = "Polizei"};
  case 1: {_color = "GSGA"};
  case 2: {_color = "Medic"};
};
};

case "B_MRAP_01_hmg_F":
{
  switch (_index) do
  {
  case 0: {_color = "GSGA"};
};
};

case "O_MRAP_02_F":
{
  switch (_index) do
  {
  case 0: {_color = "Tarnfleck"};
  case 1: {_color = "SD"};
  case 2: {_color = "KSK"};
  case 3: {_color = "Polizei"};
  case 4: {_color = "KSK2"};
  




};
};
case "O_MRAP_02_hmg_F":
{
  switch (_index) do
  {
  case 0: {_color = "Tarnfleck"};
  case 1: {_color = "SD"};
  case 2: {_color = "KSK"};

};
};
case "I_Truck_02_covered_F":
{
  switch (_index) do
  {
  case 0: {_color = "Orange"};
  case 1: {_color = "Black"};
  case 2: {_color = "Schwarz"};

};
};

case "I_Truck_02_transport_F":
{
  switch (_index) do
  {
  case 0: {_color = "Orange"};
  case 1: {_color = "Black"};
  case 2: {_color = "Schwarz"};

};
};

case "B_APC_Wheeled_01_cannon_F":
{
  switch (_index) do
  {
  case 0: {_color = "Black"};
};
};

case "O_Heli_Attack_02_black_F":
{
  switch (_index) do
  {
  case 0: {_color = "Black"};
};
};

case "I_Heli_Transport_02_F":
{
  switch (_index) do
  {
  case 0: {_color = "Ion"};
  case 1: {_color = "Dahoman"};
  case 2: {_color = "Polizei"};
  case 3: {_color = "SD"};
  
};
};

case "B_APC_Wheeled_01_cannon_F":
{
  switch (_index) do
  {
  case 0: {_color = "Black"};
};
};

case "B_Heli_Transport_01_F":
{
  switch (_index) do
  {
  case 0: {_color = "Black"};
  case 1: {_color = "Polizei"};
  case 2: {_color = "GSGA"};

};
};
case "I_Heli_light_03_unarmed_F":
{
  switch (_index) do
  {
  case 0: {_color = "Polizei"};
  case 1: {_color = "Notarzt"};
  case 2: {_color = "ADAC"};

};
};


case "B_Truck_01_mover_F":
{
  switch (_index) do
  {
  case 0: {_color = "ADAC"};
};
};
case "O_APC_Wheeled_02_rcws_F":
{
  switch (_index) do
  {
  case 0: {_color = "Polizei"};
};
};
case "I_MRAP_03_F":
{
  switch (_index) do
  {
  case 0: {_color = "KSK"};
};
};
case "I_MRAP_03_hmg_F":
{
  switch (_index) do
  {
    case 0: {_color = "KSK"};
  };
};

case "B_Truck_01_covered_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};


  };
};
case "B_Truck_01_box_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};


  };
};
case "B_Truck_01_transport_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};
	case 1: {_color = "ADAC"};

  };
};
case "O_Truck_03_covered_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};

  };
};
case "O_G_Van_01_fuel_F":
{
  switch (_index) do
  {
   case 0: {_color = "ADAC"};

  };
};












};

_color;