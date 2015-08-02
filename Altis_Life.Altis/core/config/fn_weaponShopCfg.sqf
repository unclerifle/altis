#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",5000],
						["hgun_P07_snds_F","Stun Pistol",500],
						["hgun_P07_F",nil,7500],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",100]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1],
						["NVGoggles",nil,1200],
						["B_Carryall_oli",nil,1000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Patrol Officer Shop",
					[
						["arifle_MX_F",nil,2500],
						["SMG_02_ACO_F",nil,1500],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_MRCO",nil,3000],
						["bipod_01_f_snd",nil,2000],
						["bipod_02_F_hex",nil,2000],
						["bipod_03_F_blk",nil,2000],
						["muzzle_snds_H",nil,2750],
						["optic_AMS_base",nil,2750],
						["optic_KHS_base",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Sergeant Officer Shop",
					[
						["srifle_EBR_F",nil,500],
						["arifle_MXM_F",nil,500],
						["SMG_02_ACO_F",nil,500],
						["hgun_ACPC2_F",nil,500],
						["arifle_MXC_F",nil,500],
						["arifle_MX_GL_F","MXC 40mm",500],
						["optic_SOS",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_Holosight",nil,500],
						["optic_Mrco",nil,500],
						["acc_flashlight",nil,500],
						["optic_Hamr",nil,500],
						["optic_Arco",nil,500],
						["optic_MRCO",nil,500],
						["bipod_01_f_snd",nil,2000],
						["bipod_02_F_hex",nil,2000],
						["bipod_03_F_blk",nil,2000],
						["optic_AMS_base",nil,2750],
						["optic_KHS_base",nil,2750],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_B",nil,500],
						["HandGrenade_Stone","Flashbang",1700],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "cop_swat":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sufficient rank!"};
			default
			{
				["Special Weapons And Tactics Shop",
					[
						["srifle_GM6_F",nil,500],
						["srifle_LRR_F",nil,500],
						["LMG_Mk200_F",nil,500],
						["optic_SOS",nil,500],
						["muzzle_snds_H_MG",nil,10000],
						["optic_Arco",nil,500],
						["bipod_01_f_snd",nil,2000],
						["bipod_02_F_hex",nil,2000],
						["bipod_03_F_blk",nil,2000],
						["optic_AMS_base",nil,2750],
						["optic_KHS_base",nil,2750],
						["5Rnd_127x108_Mag",nil,500],
						["5Rnd_127x108_APDS_Mag",nil,500],
						["7Rnd_408_Mag",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["SatchelCharge_Remote_Mag",nil,500]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Pistol_heavy_01_MRD_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,25],
						["muzzle_snds_acp",nil,20000],
						["hgun_Rook40_F",nil,6500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,11500],
						["9Rnd_45ACP_Mag",nil,45],
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,500],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["arifle_MX_SW_F",nil,150000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,15000],
						["srifle_EBR_F",nil,150000],
						["20Rnd_762x51_Mag",nil,500],
						["SMG_01_F",nil,30000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["muzzle_snds_acp",nil,20000],
						["srifle_GM6_F",nil,2000000],
						["srifle_GM6_camo_F",nil,2000000],
						["5Rnd_127x108_Mag",nil,20000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",100000],
						["srifle_LRR_F",nil,2000000],
						["7Rnd_408_Mag",nil,20000],
						["optic_SOS",nil,65000],
						["optic_DMS",nil,65000],
						["optic_NVS",nil,80000],
						["optic_Aco",nil,3500],
						["optic_ACO_grn",nil,3500],
						["optic_MRCO",nil,5500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
                        ["muzzle_snds_H_SW","MX SW 6.5mm Silencer",20000],
						["muzzle_snds_H",nil,20000],
						["muzzle_snds_L",nil,20000],
						["muzzle_snds_M",nil,20000],
						["muzzle_snds_B",nil,20000],
						["NVGoggles",nil,1500],
						["FirstAidKit",nil,250],
						["ToolKit",nil,250],
						["DemoCharge_Remote_Mag","IED",250000]
					]
				];
			};
		};
	};
	
	case "rebelMedic":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebMedic): {"You don't have the required training!"};
			default		
			{		
				["Medic Shop",		
					[		
						["Medikit",nil,50000]		
					]
				];		
			};
		};
	};
	
	case "rebelSniper":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebSniper): {"You don't have the required training!"};
			default
			{
				["Sniper Shop",
					[
						["srifle_EBR_F",nil,40000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,20000],
						["srifle_GM6_F",nil,1000000],
						["srifle_GM6_camo_F",nil,1000000],
						["5Rnd_127x108_Mag",nil,10000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",30000],
						["srifle_LRR_F",nil,1000000],
						["7Rnd_408_Mag",nil,5000],
						["bipod_01_f_snd",nil,2000],
						["bipod_02_F_hex",nil,2000],
						["bipod_03_F_blk",nil,2000],
						["optic_AMS_base",nil,2750],
						["optic_KHS_base",nil,2750],
						["optic_SOS",nil,30000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,20000]
					]
				];
			};
		};
	};
	
	case "rebelExplosive":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebExplosive): {"You don't have the required training!"};
			default
			{
				["Explosive Shop",
					[
						["DemoCharge_Remote_Mag","IED",100000],
						["V_HarnessOGL_brn","Suicide Vest",1700000],
						["SatchelCharge_Remote_Mag",nil,100000],
						["ATMine_Range_Mag","Anti Vehicle Mine",500000]
					]
				];
			};
		};
	};
	
	case "rebelGrenade":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebGrenade): {"You don't have the required training!"};
			default
			{
				["Grenadier Shop",
					[
						["arifle_Katiba_GL_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_TRG21_GL_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20_GL_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,500],
						["1Rnd_HE_Grenade_shell",nil,50000],
						["HandGrenade",nil,50000],
						["1Rnd_SmokeRed_Grenade_shell",nil,500],
						["1Rnd_SmokeYellow_Grenade_shell",nil,500],
						["1Rnd_SmokePurple_Grenade_shell",nil,500],
						["1Rnd_SmokeOrange_Grenade_shell",nil,500],
						["UGL_FlareWhite_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["UGL_FlareRed_F",nil,500],
						["bipod_01_f_snd",nil,2000],
						["bipod_02_F_hex",nil,2000],
						["bipod_03_F_blk",nil,2000],
						["optic_AMS_base",nil,2750],
						["optic_KHS_base",nil,2750],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000]
					]
				];
			};
		};
	};
	
	case "rebelGunner":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebGunner): {"You don't have the required training!"};
			default
			{
				["Machine Gun Shop",
					[
						["LMG_Mk200_F",nil,500000],
						["muzzle_snds_H_MG",nil,100000],
						["200Rnd_65x39_cased_Box_Tracer",nil,20000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["LMG_Zafir_F",nil,2000000],
						["bipod_01_f_snd",nil,2000],
						["bipod_02_F_hex",nil,2000],
						["bipod_03_F_blk",nil,2000],
						["optic_AMS_base",nil,2750],
						["optic_KHS_base",nil,2750],
                        ["150Rnd_762x51_Box_Tracer",nil,20000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["ItemGPS",nil,100],
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Donator Shop Tier 1",
					[
						["ItemGPS",nil,100],
						["hgun_Pistol_heavy_01_MRD_F",nil,8000],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Rook40_F",nil,1500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,1500],
						["9Rnd_45ACP_Mag",nil,45],
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,150],
						["arifle_Katiba_F",nil,25000],
						["30Rnd_65x39_caseless_green",nil,125],
						["srifle_DMR_01_F",nil,32000],
						["10Rnd_762x51_Mag",nil,250],
						["arifle_SDAR_F",nil,25000],
						["20Rnd_556x45_UW_mag",nil,60],
						["arifle_MX_SW_F",nil,50000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2000],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,250],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["srifle_GM6_F",nil,950000],
						["srifle_GM6_camo_F",nil,950000],
						["5Rnd_127x108_Mag",nil,18000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",70000],
						["srifle_LRR_F",nil,1000000],
						["srifle_LRR_camo_F",nil,1000000],
						["7Rnd_408_Mag",nil,16000],
						["optic_SOS",nil,40000],
						["optic_DMS",nil,40000],
						["optic_NVS",nil,50000],
						["optic_ACO_grn",nil,3500],
						["optic_ACO_grn_smg",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,5500],
                        ["muzzle_snds_H_SW","MX SW 6.5mm Silencer",10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_B",nil,10000],
						["30Rnd_9x21_Mag",nil,100],
						["NVGoggles",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,50],
						["H_HelmetB_camo",nil,50],
						["H_HelmetCrew_I",nil,50],
						["H_CrewHelmetHeli_I",nil,50],
						["H_HelmetB_light_snakeskin",nil,50],
						["H_PilotHelmetFighter_B",nil,50],
						["H_HelmetIA",nil,50],
						["U_O_GhillieSuit",nil,7500],
						["U_I_GhillieSuit",nil,7500],
						["U_I_CombatUniform",nil,1000],
						["U_B_PilotCoveralls",nil,1000],
						["V_TacVest_oli",nil,1000],
						["B_Carryall_oli",nil,1000],
						["B_Carryall_ocamo",nil,500],
						["B_Carryall_mcamo",nil,500],
						["DemoCharge_Remote_Mag","IED",250000],
						["V_HarnessOGL_brn","Suicide Vest",1500000]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Donator Shop Tier 2",
					[
					["ItemGPS",nil,100],
					["hgun_Pistol_heavy_01_MRD_F",nil,7000],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Rook40_F",nil,1500],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,1500],
						["9Rnd_45ACP_Mag",nil,45],
						["arifle_TRG20_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,150],
						["arifle_Katiba_F",nil,20000],
						["30Rnd_65x39_caseless_green",nil,125],
						["srifle_DMR_01_F",nil,30000],
						["10Rnd_762x51_Mag",nil,250],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,60],
						["arifle_MX_SW_F",nil,40000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2000],
						["srifle_EBR_F",nil,40000],
						["20Rnd_762x51_Mag",nil,250],
						["SMG_01_F",nil,20000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["srifle_GM6_F",nil,950000],
						["srifle_GM6_camo_F",nil,950000],
						["5Rnd_127x108_Mag",nil,16000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",60000],
						["srifle_LRR_F",nil,950000],
						["srifle_LRR_camo_F",nil,950000],
						["7Rnd_408_Mag",nil,16000],
						["optic_SOS",nil,40000],
						["optic_DMS",nil,40000],
						["optic_NVS",nil,50000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,5500],
						["optic_ACO_grn_smg",nil,3500],
                        ["muzzle_snds_H_SW","MX SW 6.5mm Silencer",10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_B",nil,10000],
						["NVGoggles",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,50],
						["H_HelmetB_camo",nil,50],
						["H_HelmetCrew_I",nil,50],
						["H_CrewHelmetHeli_I",nil,50],
						["H_HelmetB_light_snakeskin",nil,50],
						["H_HelmetIA",nil,50],
						["H_PilotHelmetFighter_B",nil,50],
						["U_O_GhillieSuit",nil,5000],
						["U_I_GhillieSuit",nil,5000],
						["V_TacVest_oli",nil,500],
						["U_IG_Guerilla1_1",nil,500],
						["U_I_G_Story_Protagonist_F",nil,500],
						["U_I_G_resistanceLeader_F",nil,500],
						["U_O_PilotCoveralls",nil,500],
						["U_IG_leader","Guerilla Leader",500],
						["U_B_SpecopsUniform_sgg",nil,500],
						["U_B_PilotCoveralls",nil,500],
						["U_O_CombatUniform_oucamo",nil,500],
						["U_I_CombatUniform",nil,500],
						["U_O_SpecopsUniform_ocamo",nil,500],
						["H_ShemagOpen_tan",nil,500],
						["H_Shemag_olive",nil,500],
						["H_ShemagOpen_khk",nil,500],
						["H_HelmetO_ocamo",nil,500],
						["H_MilCap_oucamo",nil,500],
						["H_Bandanna_camo",nil,500],
						["B_Carryall_oli",nil,500],
						["B_Carryall_ocamo",nil,500],
						["B_Carryall_mcamo",nil,500],
						["DemoCharge_Remote_Mag","IED",200000],
						["V_HarnessOGL_brn","Suicide Vest",1500000]
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["Donator Shop Tier 3",
					[
					["ItemGPS",nil,100],
					["hgun_Pistol_heavy_01_MRD_F",nil,6000],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Rook40_F",nil,1500],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,1500],
						["9Rnd_45ACP_Mag",nil,45],
						["arifle_TRG20_F",nil,15000],
						["30Rnd_556x45_Stanag",nil,150],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,125],
						["srifle_DMR_01_F",nil,25000],
						["10Rnd_762x51_Mag",nil,250],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,60],
						["arifle_MX_SW_F",nil,35000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2000],
						["srifle_EBR_F",nil,35000],
						["20Rnd_762x51_Mag",nil,250],
						["SMG_01_F",nil,15000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["srifle_GM6_F",nil,900000],
						["srifle_GM6_camo_F",nil,900000],
						["5Rnd_127x108_Mag",nil,14000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",50000],
						["srifle_LRR_F",nil,900000],
						["srifle_LRR_camo_F",nil,900000],
						["7Rnd_408_Mag",nil,14000],
						["optic_SOS",nil,30000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,50000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,5500],
						["optic_ACO_grn_smg",nil,3500],
                        ["muzzle_snds_H_SW","MX SW 6.5mm Silencer",10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_B",nil,10000],
						["NVGoggles",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,50],
						["H_HelmetB_camo",nil,50],
						["H_HelmetCrew_I",nil,50],
						["H_CrewHelmetHeli_I",nil,50],
						["H_HelmetB_light_snakeskin",nil,50],
						["H_PilotHelmetFighter_B",nil,50],
						["H_HelmetIA",nil,50],
						["U_O_GhillieSuit",nil,5000],
						["U_I_GhillieSuit",nil,5000],
						["V_TacVest_oli",nil,500],
						["U_IG_Guerilla1_1",nil,500],
						["U_I_G_Story_Protagonist_F",nil,500],
						["U_I_G_resistanceLeader_F",nil,500],
						["U_O_PilotCoveralls",nil,500],
						["U_IG_leader","Guerilla Leader",500],
						["U_B_SpecopsUniform_sgg",nil,500],
						["U_B_PilotCoveralls",nil,500],
						["U_O_CombatUniform_oucamo",nil,500],
						["U_I_CombatUniform",nil,500],
						["U_O_SpecopsUniform_ocamo",nil,500],
						["H_ShemagOpen_tan",nil,500],
						["H_Shemag_olive",nil,500],
						["H_ShemagOpen_khk",nil,500],
						["H_HelmetO_ocamo",nil,500],
						["H_MilCap_oucamo",nil,500],
						["H_Bandanna_camo",nil,500],
						["B_Carryall_oli",nil,500],
						["B_Carryall_ocamo",nil,500],
						["B_Carryall_mcamo",nil,500],
						["V_TacVest_oli",nil,500],
						["B_Carryall_oli",nil,500],
						["DemoCharge_Remote_Mag","IED",160000],
						["V_HarnessOGL_brn","Suicide Vest",1500000]
					]
				];
			};
			case (__GETC__(life_donator) == 4):
			{
				["Donator Shop Tier 4",
					[
					["ItemGPS",nil,100],
					["hgun_Pistol_heavy_01_MRD_F",nil,5000],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Rook40_F",nil,1500],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,1500],
						["9Rnd_45ACP_Mag",nil,45],
						["arifle_TRG20_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,150],
						["arifle_Katiba_F",nil,10000],
						["30Rnd_65x39_caseless_green",nil,125],
						["srifle_DMR_01_F",nil,20000],
						["10Rnd_762x51_Mag",nil,250],
						["arifle_SDAR_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,60],
						["arifle_MX_SW_F",nil,25000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2000],
						["srifle_EBR_F",nil,25000],
						["20Rnd_762x51_Mag",nil,250],
						["SMG_01_F",nil,30000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["srifle_GM6_F",nil,850000],
						["srifle_GM6_camo_F",nil,850000],
						["5Rnd_127x108_Mag",nil,12000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",40000],
						["srifle_LRR_F",nil,850000],
						["srifle_LRR_camo_F",nil,850000],
						["7Rnd_408_Mag",nil,12000],
						["optic_SOS",nil,30000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,50000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_ACO_grn_smg",nil,3500],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,5500],
                        ["muzzle_snds_H_SW","MX SW 6.5mm Silencer",10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_B",nil,10000],
						["NVGoggles",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,50],
						["H_HelmetB_camo",nil,50],
						["H_HelmetCrew_I",nil,50],
						["H_CrewHelmetHeli_I",nil,50],
						["H_HelmetB_light_snakeskin",nil,50],
						["H_PilotHelmetFighter_B",nil,50],
						["H_HelmetIA",nil,50],
						["U_O_GhillieSuit",nil,5000],
						["U_I_GhillieSuit",nil,5000],
						["V_TacVest_oli",nil,500],
						["U_IG_Guerilla1_1",nil,500],
						["U_I_G_Story_Protagonist_F",nil,500],
						["U_I_G_resistanceLeader_F",nil,500],
						["U_O_PilotCoveralls",nil,500],
						["U_IG_leader","Guerilla Leader",500],
						["U_B_SpecopsUniform_sgg",nil,500],
						["U_B_PilotCoveralls",nil,500],
						["U_O_CombatUniform_oucamo",nil,500],
						["U_I_CombatUniform",nil,500],
						["U_O_SpecopsUniform_ocamo",nil,500],
						["H_ShemagOpen_tan",nil,500],
						["H_Shemag_olive",nil,500],
						["H_ShemagOpen_khk",nil,500],
						["H_HelmetO_ocamo",nil,500],
						["H_MilCap_oucamo",nil,500],
						["H_Bandanna_camo",nil,500],
						["B_Carryall_oli",nil,500],
						["B_Carryall_ocamo",nil,500],
						["B_Carryall_mcamo",nil,500],
						["V_TacVest_oli",nil,500],
						["B_Carryall_oli",nil,500],
						["DemoCharge_Remote_Mag","IED",140000],
						["V_HarnessOGL_brn","Suicide Vest",1500000]
					]
				];
			};
			case (__GETC__(life_donator) == 5):
			{
				["Donator Shop Tier 5",
					[
						["ItemGPS",nil,100],				
						["hgun_Pistol_heavy_01_MRD_F",nil,4000],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Rook40_F",nil,1500],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,1500],
						["9Rnd_45ACP_Mag",nil,45],
						["arifle_TRG20_F",nil,5000],
						["30Rnd_556x45_Stanag",nil,150],
						["arifle_Katiba_F",nil,5000],
						["30Rnd_65x39_caseless_green",nil,125],
						["srifle_DMR_01_F",nil,5000],
						["10Rnd_762x51_Mag",nil,250],
						["arifle_SDAR_F",nil,5000],
						["20Rnd_556x45_UW_mag",nil,60],
						["arifle_MX_SW_F",nil,25000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2000],
						["srifle_EBR_F",nil,20000],
						["20Rnd_762x51_Mag",nil,250],
						["SMG_01_F",nil,5000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["srifle_GM6_F",nil,800000],
						["srifle_GM6_camo_F",nil,800000],
						["5Rnd_127x108_Mag",nil,10000],
						["5Rnd_127x108_APDS_Mag","TruckStopper",30000],
						["srifle_LRR_F",nil,800000],
						["srifle_LRR_camo_F",nil,800000],
						["7Rnd_408_Mag",nil,10000],
						["optic_SOS",nil,30000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,50000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,5500],
						["optic_ACO_grn_smg",nil,3500],
                        ["muzzle_snds_H_SW","MX SW 6.5mm Silencer",10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_B",nil,10000],
						["NVGoggles",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,50],
						["H_HelmetB_camo",nil,50],
						["H_HelmetCrew_I",nil,50],
						["H_CrewHelmetHeli_I",nil,50],
						["H_HelmetB_light_snakeskin",nil,50],
						["H_PilotHelmetFighter_B",nil,50],
						["H_HelmetIA",nil,50],
						["U_O_GhillieSuit",nil,5000],
						["U_I_GhillieSuit",nil,5000],
						["V_TacVest_oli",nil,500],
						["U_IG_Guerilla1_1",nil,500],
						["U_I_G_Story_Protagonist_F",nil,500],
						["U_I_G_resistanceLeader_F",nil,500],
						["U_O_PilotCoveralls",nil,500],
						["U_IG_leader","Guerilla Leader",500],
						["U_B_SpecopsUniform_sgg",nil,500],
						["U_B_PilotCoveralls",nil,500],
						["U_O_CombatUniform_oucamo",nil,500],
						["U_I_CombatUniform",nil,500],
						["U_O_SpecopsUniform_ocamo",nil,500],
						["H_ShemagOpen_tan",nil,500],
						["H_Shemag_olive",nil,500],
						["H_ShemagOpen_khk",nil,500],
						["H_HelmetO_ocamo",nil,500],
						["H_MilCap_oucamo",nil,500],
						["H_Bandanna_camo",nil,500],
						["B_Carryall_oli",nil,500],
						["B_Carryall_ocamo",nil,500],
						["B_Carryall_mcamo",nil,500],
						["V_TacVest_oli",nil,500],
						["B_Carryall_oli",nil,500],
						["DemoCharge_Remote_Mag","IED",100000],
						["V_HarnessOGL_brn","Suicide Vest",1500000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
