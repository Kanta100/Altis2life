/*
    Safezonescript for ArmA 3 Alpha by Banshee
    **ALTIS2LIFE.de**
    DESCRIPTION:
    Stops players from throwing grenades and shoot in safezones.
    Dieses Script soll dabei helfen Noobspawns zu schützen.
*/

#define SAFE_ZONES    [["Safezone1", 600], ["copsafe_1",30], ["copsafe_2",50], ["copsafe_3",50]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Safezone! Schusswaffengebrauch sowie jegliche kriminelle Handlung untersagt! Sie wurden gewarnt nun ist die Waffe weg. Gruß Banshee"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFE_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
			 RemoveAllWeapons player;
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];  
	};
};