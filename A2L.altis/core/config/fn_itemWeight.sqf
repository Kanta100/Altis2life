/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "organe": {4};
	case "atomre": {5};
	case "kiwi": {1};
	case "mais": {2};
	case "wolle": {3};
	case "banane": {2};
	case "birne": {2};
	case "hopfen": {3};
	case "oilu": {8};
	case "oilp": {6};
	case "heroinu": {9};
	case "heroinp": {6};
	case "cannabis": {6};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {1};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {1};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "frog": {3};
	case "froglegs": {1};
	case "froglsd": {1};
	default {1};
};
