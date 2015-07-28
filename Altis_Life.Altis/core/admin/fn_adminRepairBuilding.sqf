#include <macro.h>
private["_buildingarray"]

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};


_buildingarray = nearestObjects [player, ["static"], 100];
{
  (nearestBuilding _x) setDamage 0;
} forEach _buildingarray;
