#include <macro.h>
private["_target"]
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//if(isNull cursorTarget) exitWith {}; //DAFUQ?@!%$!R?EFFD?TGSF?HBS?DHBFNFD?YHDGN?D?FJH

_unit setVariable["Revive",true,true];
[[name player],"life_fnc_revived",_unit,false] spawn life_fnc_MP;
[[0,format["Admin %1 has revived a player.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;

