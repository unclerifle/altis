/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		//if have reb license, only spawn here
		if(license_civ_rebel && playerSide == civilian) then {
		_markers = [
					["reb_spawn_1","Rebel North","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_2","Rebel South West","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_3","Rebel South East","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};

		//if no rebel license, than can spawn normal loc
		if(!license_civ_rebel && playerSide == civilian) then {
		_markers = [

					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
				
				if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_markers pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
		};

		//if donor, they also get these options
//		if(__GETC__(life_donator) > 0) then {
//			_markers = _markers + [
//					["donor_kavala","Donor Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
//					["donor_north","Donor Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
//					["donor_airfield","Donor Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
//
//				];
//		};
	
	case independent: {
		_markers = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_markers;