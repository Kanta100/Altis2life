#include <macro.h>
/*
File: fn_spawnPointCfg.sqf
Author: Bryan "Tonic" Boardwine


Description:
Master configuration for available spawn points depending on the units side.


Return:
[Spawn Marker,Spawn Name,Image Path]
*/
private["_side", "_ret"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;


//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
case west:
{
_ret = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Ch-Alpha","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
};


    case civilian:
    {
        if(license_civ_rebel && playerSide == civilian) then {
        _ret = [
                    ["civ_spawn_2","Rebellenstadt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["reb_a1","Ammolofi","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["reb_a2","Edessa","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Agios","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_5","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                ];
        };
        
		if(license_civ_redfaction && playerSide == civilian) then {
        _ret = [
                    ["civ_spawn_2","Rebellenstadt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["reb_a1","Ammolofi","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["reb_a2","Edessa","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Agios","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_5","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["rf_spawn","RedFactionHQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                ];
        };
		
        //if no rebel license, than can spawn normal loc
        if(!license_civ_rebel && playerSide == civilian) then {
        _ret = [
                    ["civ_spawn_5","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Agios","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                ];
        };
    };
};

_ret;