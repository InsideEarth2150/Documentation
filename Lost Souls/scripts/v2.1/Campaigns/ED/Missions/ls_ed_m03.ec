mission "translatemissionLS_ED_M03"
{
	int var0;
	int var1;
	int var2;
	int var3;
	int var4;
	int var5;
	int var6;
	int var7;
	int var8;
	int var9;
	player var10;
	player var11;
	player var12;
	player var13;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	state State6;
	state State7;
	state State8;
	
	state State0
	{
		unitex loc0;
		int loc1;
		
		var10 = GetPlayer(3);
		var11 = GetPlayer(1);
		var12 = GetPlayer(4);
		var13 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalLS_ED_M03_freeEdBase");
		RegisterGoal(1, "translateGoalLS_ED_M03_repairEdBase");
		RegisterGoal(2, "translateGoalLS_ED_M03_defendEdBase");
		RegisterGoal(3, "translateGoalLS_ED_M03_guard4Trucks");
		var11.EnableStatistics(0);
		var12.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var10.LoadScript("single\\singleEasy");
			var13.SetMoney(13000);
			var4 = -2;
			var8 = 10000;
			var0 = 6500;
		}
		if (GetDifficultyLevel() == 1)
		{
			var10.LoadScript("single\\singleMedium");
			var4 = 2;
			var13.SetMoney(5000);
			var8 = 7800;
			var0 = 4800;
		}
		if (GetDifficultyLevel() == 2)
		{
			var10.LoadScript("single\\singleHard");
			var13.SetMoney(1000);
			var4 = 4;
			var8 = 6500;
			var0 = 3600;
		}
		
		var13.EnableAIFeatures(aiEnabled, 0);
		var12.EnableAIFeatures(aiEnabled, 0);
		var13.EnableCommand(commandSoldBuilding, 1);
		
		var10.SetMoney(100000);
		
		var13.AddResearch("RES_ED_UHT1");
		var13.AddResearch("RES_ED_UHT2");
		var13.AddResearch("RES_ED_UHT3");
		var13.EnableResearch("RES_ED_UBT1", 0);
		var13.AddResearch("RES_ED_MHC2");
		var13.AddResearch("RES_ED_WHC1");
		var13.AddResearch("RES_ED_WHC2");
		var13.AddResearch("RES_ED_MHC3");
		var13.AddResearch("RES_ED_MHC4");
		var13.AddResearch("RES_ED_HGen");
		var13.AddResearch("RES_ED_BMD");
		var13.AddResearch("RES_ED_BHD");
		var13.AddResearch("RES_ED_WHL1");
		var13.AddResearch("RES_ED_WHL2");
		var13.AddResearch("RES_ED_WHL3");
		var13.AddResearch("RES_ED_RepHand2");
		var13.AddResearch("RES_ED_SCR2");
		var13.AddResearch("RES_EDWAA1");
		var13.AddResearch("RES_EDWAN1");
		
		var13.EnableBuilding("EDBBPP", 1);
		var13.EnableBuilding("EDBBA", 1);
		var13.EnableBuilding("EDBFA", 1);
		var13.EnableBuilding("EDBAB", 1);
		var13.EnableBuilding("EDBBRE", 1);
		var13.EnableBuilding("EDBMI", 1);
		var13.EnableBuilding("EDBST", 1);
		var13.EnableBuilding("EDBLZ", 1);
		var13.EnableBuilding("EDBWB", 1);
		var13.EnableBuilding("EDBPB", 1);
		var13.EnableBuilding("EDBBT", 1);
		var13.EnableBuilding("EDBHT", 0);
		var13.EnableBuilding("EDBRC", 0);
		var13.EnableBuilding("EDBRA", 0);
		var13.EnableBuilding("EDBTC", 0);
		var13.EnableBuilding("EDBHQ", 0);
		var13.EnableBuilding("EDBEN1", 0);
		
		var10.AddResearch("RES_LC_UMO3");
		var10.AddResearch("RES_LC_WSL1");
		var10.AddResearch("RES_LC_WSL2");
		var10.AddResearch("RES_LC_WHL1");
		var10.AddResearch("RES_LC_WHL2");
		var10.AddResearch("RES_LCBPP2");
		var10.AddResearch("RES_LC_WSS1");
		var10.AddResearch("RES_LC_WSS2");
		var10.AddResearch("RES_LC_WHS1");
		var10.AddResearch("RES_LC_WHS2");
		var10.AddResearch("RES_LC_UME1");
		var10.AddResearch("RES_LC_UME2");
		var10.AddResearch("RES_LC_UME3");
		var10.AddResearch("RES_LCUSF1");
		var10.AddResearch("RES_LCUSF2");
		var10.AddResearch("RES_LCCAA1");
		var10.AddResearch("RES_LCWAN1");
		var10.AddResearch("RES_LC_WMR1");
		var10.AddResearch("RES_LC_WMR2");
		var10.AddResearch("RES_LC_WMR3");
		var10.AddResearch("RES_LC_AMR1");
		var10.AddResearch("RES_LC_AMR2");
		var10.AddResearch("RES_MMR2");
		var10.AddResearch("RES_MMR3");
		var10.AddResearch("RES_MMR4");
		var10.AddResearch("RES_LCBNE");
		var10.AddResearch("RES_LC_BMD");
		var10.AddResearch("RES_LC_BHD");
		var10.AddResearch("RES_LCBPP2");
		var10.EnableResearch("RES_LC_WAS1", 0);
		var10.EnableResearch("RES_LCUNH", 0);
		var10.EnableResearch("RES_LC_ART", 0);
		
		var10.EnableBuilding("LCBBF", 1);
		var10.EnableBuilding("LCBPP", 1);
		var10.EnableBuilding("LCBBA", 1);
		var10.EnableBuilding("LCBAB", 1);
		var10.EnableBuilding("LCBDE", 1);
		var10.EnableBuilding("LCBHQ", 1);
		var10.EnableBuilding("LCBSB", 1);
		var10.EnableBuilding("WLASER", 1);
		var10.EnableBuilding("LCBNE", 1);
		var10.EnableBuilding("LCBGA", 1);
		var10.EnableBuilding("LCBPP2", 1);
		var10.EnableBuilding("LCBEN1", 0);
		var10.EnableBuilding("LCBRC", 0);
		var10.EnableBuilding("LCBEN2", 0);
		var10.EnableBuilding("LCBUC", 0);
		var10.EnableBuilding("LCBCC", 0);
		var10.EnableBuilding("LCBLZ", 0);
		var10.EnableBuilding("LCBART", 0);
		var10.EnableBuilding("LCBSD", 0);
		var10.EnableBuilding("LCBWC", 0);
		var10.EnableBuilding("LCBSS", 0);
		var10.EnableBuilding("LCBSR", 0);
		
		var1 = 0;
		
		for (loc1 = 0; loc1 < 5; loc1 = loc1 + 1)
		{
			var13.CreateUnitEx(GetPointX(0) + loc1, GetPointY(0), 0, null, "EDUHT1", "EDWHC2", null, "EDBANNER", null, 2);
			var13.CreateUnitEx(GetPointX(0) + loc1, GetPointY(0) + 1, 0, null, "EDUHT1", "EDWHC2", null, "EDWSR3", null, 2);
		}
		
		for (loc1 = 0; loc1 < 5; loc1 = loc1 + 1)
		{
			var10.CreateUnitEx(GetPointX(1), GetPointY(1) + loc1, 0, null, "LCUCR1", "LCWHL2", null, "LCBANNER", null, 2);
		}
		
		var6 = var10.GetNumberOfUnits();
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY() + 5, 20, 128, 10, 0);
		var13.DelayedLookAt(var13.GetStartingPointX(), var13.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
		var12.EnableAIFeatures(aiEnabled, 0);
		var12.EnableAI(0);
		
		var10.SetNumberOfOffensiveTankPlatoons(5);
		var10.SetNumberOfOffensiveHelicopterPlatoons(2);
		var10.SetMaxTankPlatoonSize(10);
		var10.SetNumberOfDefensiveTankPlatoons(1);
		var10.SetMaxAttackFrequency(0);
		var10.SetMaxHelicopterPlatoonSize(6);
		
		var10.EnableAIFeatures(aiRejectAlliance, 0);
		var10.EnableAIFeatures(aiUpgradeCannons, 1);
		var10.EnableAIFeatures(aiBuildBuilders, 1);
		var10.EnableAIFeatures(aiBuildRepairers, 1);
		var10.EnableAIFeatures(aiBuildBuildings, 1);
		var10.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var10.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var10.EnableAIFeatures(aiControlSupplyUnits, 1);
		var10.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var10.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var10.EnableAIFeatures(aiDefenseTowers, 1);
		var10.EnableAIFeatures(aiControlDefense, 1);
		var10.EnableAIFeatures(aiControlMiningUnits, 1);
		var10.EnableAIFeatures(aiBuildMiningUnits, 1);
		var10.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var10.EnableAIFeatures(aiBuildHelicopters, 1);
		var10.EnableAIFeatures(aiControlOffense, 0);
		var10.EnableAIFeatures(aiEnabled, 1);
		var10.EnableAIFeatures(aiBuildTanks, 0);
		var10.EnableAI(0);
		
		var12.EnableAIFeatures(aiRejectAlliance, 0);
		var12.EnableAI(1);
		
		var12.ChooseEnemy(var10);
		var12.SetEnemy(var10);
		var13.SetAlly(var12);
		
		ShowVideo("ED_M03");
		
		var9 = 0;
		
		return State2, 60;
	}
	
	state State2
	{
		SetConsoleText("");
		SetTimer(0, 0);
		var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY(), 20, 0, 10, 0);
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M03_freeEdBase", var13.GetName());
		return State5, 1;
	}
	
	state State5
	{
		int loc0;
		int loc1;
		
		if (var13.GetNumberOfBuildings() < 3)
		{
			SetGoalState(0, 2);
			AddBriefing("translateFailedLS_ED_M03_freeEdBase", var13.GetName());
			return State4, 20;
		}
		loc0 = var10.GetNumberOfUnits();
		if (var6 - loc0 >= 5)
		{
			for (loc1 = 0; loc1 < 5; loc1 = loc1 + 1)
			{
				var13.CreateUnitEx(GetPointX(9) + loc1, GetPointY(9) + 1, 0, null, "EDUOH1", "EDREPAIR2", null, null, null, 2);
			}
			var13.CreateUnitEx(GetPointX(9) + loc1, GetPointY(9), 0, null, "EDUBU1", null, null, null, null, 2);
			
			CallCamera();
			EnableInterface(1);
			EnableCameraMovement(1);
			SetConsoleText("translateIncomingEvent");
			var13.LookAt(GetPointX(9), GetPointY(9), 20, 0, 10, 0);
			EnableGoal(1, 1);
			EnableGoal(2, 1);
			SetGoalState(0, 1);
			AddBriefing("translateBriefingLS_ED_M03_repairEdBase", var13.GetName());
			
			var10.EnableAIFeatures(aiControlDefense, 1);
			var10.EnableAIFeatures(aiControlOffense, 1);
			var10.EnableAIFeatures(aiBuildTanks, 1);
			var10.EnableAIFeatures(aiEnabled, 1);
			var10.EnableAI(1);
			var12.EnableAI(1);
			var12.ChooseEnemy(var10);
			var12.SetEnemy(var10);
			var13.SetAlly(var12);
			
			var7 = GetMissionTime();
			
			return State6, 20;
		}
		return State5, 100;
	}
	
	state State6
	{
		int loc0;
		int loc1;
		int loc2;
		unitex loc3;
		
		loc1 = 0;
		SetConsoleText("");
		for (loc0 = 10; loc0 < 13; loc0 = loc0 + 1)
		{
			loc3 = GetUnit(GetPointX(loc0), GetPointY(loc0), 0);
			if (loc3.IsBuilding() && loc3.IsDisabled() == 0)
			{
				loc1 = loc1 + 1;
			}
		}
		
		if (var2 == 1 && var12.GetNumberOfBuildings() < 3)
		{
			var2 = 0;
			SetGoalState(2, 2);
			AddBriefing("translateFailedLS_ED_M03_defendEdBase", var13.GetName());
			return State4, 20;
		}
		if (loc1 > 2)
		{
			SetGoalState(1, 1);
			AddBriefing("translateBriefingLS_ED_M03_beginProduction", var13.GetName());
			var13.EnableBuilding("EDBLZ", 1);
			var7 = GetMissionTime();
			return State7, 20;
		}
		
		loc2 = var0 - (GetMissionTime() - var7);
		if (loc2 > 0)
		{
			SetConsoleText("translateTimeToRepair", loc2 / 16383, loc2 % 16383 / 683);
		}
		else
		{
			SetGoalState(1, 2);
			AddBriefing("translateFailedLS_ED_M03_repairEdBase", var13.GetName());
			return State4, 20;
		}
		return State6, 100;
	}
	
	state State7
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		if (var2 == 1 && var12.GetNumberOfBuildings() < 3)
		{
			var2 = 0;
			SetGoalState(2, 2);
			AddBriefing("translateFailedLS_ED_M03_defendEdBase", var13.GetName());
			return State4, 20;
		}
		SetConsoleText("");
		loc0 = 36000 - (GetMissionTime() - var7);
		if (loc0 > 10 * 60 * 20 + var8 && var9 == 0)
		{
			var9 = 1;
			SetTimer(1, GetMissionTime());
		}
		if (loc0 > 0)
		{
			SetConsoleText("translateTimeToProduceTrucks", loc0 / 16383, loc0 % 16383 / 683);
		}
		else
		{
			CallCamera();
			var13.LookAt(GetPointX(3), GetPointY(3), 20, 0, 10, 0);
			EnableInterface(1);
			EnableCameraMovement(1);
			SetConsoleText("translateIncomingEvent");
			
			for (loc1 = 0; loc1 < 5; loc1 = loc1 + 1)
			{
				loc2 = var13.CreateUnitEx(GetPointX(3) + loc1, GetPointY(3), 0, null, "EDUMM11", null, null, null, null, 0);
				var13.SetScriptUnit(loc1, loc2);
			}
			loc2 = var13.CreateUnitEx(GetPointX(3) + 2, GetPointY(3) + 1, 0, null, "EDUMM11", null, null, null, null, 0);
			var13.SetScriptUnit(5, loc2);
			EnableGoal(3, 1);
			SetGoalState(2, 1);
			AddBriefing("translateBriefingLS_ED_M03_guard4Trucks", var13.GetName());
			
			return State8, 20;
		}
		return State7, 200;
	}
	
	state State8
	{
		int loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		var6 = 0;
		loc2 = 0;
		for (loc0 = 0; loc0 < 6; loc0 = loc0 + 1)
		{
			loc1 = var13.GetScriptUnit(loc0);
			if (loc1 != null)
			{
				var6 = var6 + 1;
				loc3 = Distance(loc1.GetLocationX(), loc1.GetLocationY(), GetPointX(2), GetPointY(2));
				if (loc3 < 15)
				{
					loc2 = loc2 + 1;
				}
			}
		}
		
		if (var6 < 4)
		{
			SetGoalState(3, 2);
			AddBriefing("translateFailedLS_ED_M03_Guard4Trucks", var13.GetName());
			return State4, 20;
		}
		
		if (loc2 > 3)
		{
			SetGoalState(3, 1);
			AddBriefing("translateAccomplishedLS_ED_M03_guard4Trucks", var13.GetName());
			EnableNextMission(3, 1);
			EnableEndMissionButton(1);
			return State3, 100;
		}
		return State8, 100;
	}
	
	state State4
	{
		EnableNextMission(3, 2);
		EndMission(0);
	}
	
	state State3
	{
		return State3, 500;
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		
		loc2 = Rand(3) + 4;
		
		loc1 = var13.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc1 = loc1 - var10.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc1 < 4)
		{
			loc1 = 4;
		}
		
		loc1 = loc1 + var4;
		
		if (loc1 > 48)
		{
			loc1 = 48;
		}
		
		for (loc0 = 0; loc0 < loc1 / 3; loc0 = loc0 + 1)
		{
			var10.CreateUnitEx(GetPointX(7), GetPointY(7), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
			var10.CreateUnitEx(GetPointX(7), GetPointY(7), 0, null, "LCUCR3", "LCWHS2", null, "LCWSR3", null, 3);
		}
		
		var10.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(1, var8 + GetMissionTime());
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var13.GetMoney();
		var13.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var13.GetNumberOfBuildings() == 0 && var13.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M03_lostAll", var13.GetName());
			state State4;
			return;
		}
		var1 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var13.GetNumberOfBuildings() == 0 && var13.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_ED_M03_lostAll", var13.GetName());
			state State4;
			return;
		}
		var2 = 1;
	}

}