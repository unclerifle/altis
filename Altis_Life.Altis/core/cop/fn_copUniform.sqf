/*
	COP UNIFORM SCRIPT
	Author: coldgas (http://altis.newhopeoutfit.de)
	Created for www.altisliferpg.com
*/
exitWith {};
	#define __GETC__(var) (call var)
	
	
	// Special Uniforms cops can buy in shops. Add new 'if' for every classname you want the skin to be overwritten. (warning, does NOT work with every class!)
	
	if ((uniform player) == "U_B_CombatUniform_mcam_worn")  then {
		player setObjectTextureGlobal [0, "textures\YOURFILENAME.FILETYPE"];
	};
	
// call this script in as many files as possible, especially init_cop, init_civ and all files related to the cop-shop.