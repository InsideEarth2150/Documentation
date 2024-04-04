mission "translatemissionLS_ED_M09"
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
	player var9;
	player var10;
	player var11;
	player var12;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	state State6;
	state State7;
	state State8;
	state State9;
	
	state State0
	{
		unitex loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		var11 = GetPlayer(1);
		var9 = GetPlayer(3);
		var12 = GetPlayer(2);
		var10 = GetPlayer(10);
		
		RegisterGoal(0, "translateGoalLS_ED_M09_radarUnitsAlive");
		RegisterGoal(1, "translateGoalLS_ED_M09_radarUnitsPositioned");
		RegisterGoal(2, "translateGoalLS_ED_M09_hqAlive");
		RegisterGoal(3, "translateGoalLS_ED_M09_hqCaptured");
		
		var11.EnableStatistics(0);
		var10.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var10.LoadScript("single\\singleHard");
			var9.LoadScript("single\\singleEasy");
			var12.SetMoney(25000);
			var4 = 0;
			var5 = 15000;
		}
		if (GetDifficultyLevel() == 1)
		{
			var9.LoadScript("single\\singleMedium");
			var10.LoadScript("single\\singleMedium");
			var12.SetMoney(18000);
			var4 = 2;
			var5 = 11500;
		}
		if (GetDifficultyLevel() == 2)
		{
			var9.LoadScript("single\\singleHard");
			var10.LoadScript("single\\singleHard");
			var12.SetMoney(15000);
			var4 = 3;
			var5 = 9500;
		}
		
		var12.EnableAIFeatures(aiEnabled, 0);
		var12.EnableCommand(commandSoldBuilding, 1);
		
		var9.SetMoney(50000);
		var10.SetMoney(0);
		
		var12.EnableBuilding("EDBBPP", 1);
		var12.EnableBuilding("EDBBA", 1);
		var12.EnableBuilding("EDBFA", 1);
		var12.EnableBuilding("EDBAB", 1);
		var12.EnableBuilding("EDBBRE", 1);
		var12.EnableBuilding("EDBMI", 1);
		var12.EnableBuilding("EDBST", 1);
		var12.EnableBuilding("EDBPB", 1);
		var12.EnableBuilding("EDBBT", 1);
		var12.EnableBuilding("EDBHT", 1);
		var12.EnableBuilding("EDBRA", 1);
		var12.EnableBuilding("EDBLZ", 1);
		var12.EnableBuilding("EDBART", 1);
		var12.EnableBuilding("EDBBC", 1);
		var12.EnableBuilding("EDBSI", 1);
		var12.EnableBuilding("EDBWB", 0);
		var12.EnableBuilding("EDBRC", 0);
		var12.EnableBuilding("EDBTC", 0);
		var12.EnableBuilding("EDBHQ", 0);
		var12.EnableBuilding("EDBEN1", 0);
		
		var9.AddResearch("RES_LC_UCU1");
		var9.AddResearch("RES_LC_UCU2");
		var9.AddResearch("RES_LC_UCU3");
		var9.AddResearch("RES_LC_UBO1");
		var9.AddResearch("RES_LC_UBO2");
		var9.AddResearch("RES_LC_WAS1");
		var9.AddResearch("RES_LC_WAS2");
		var9.AddResearch("RES_LC_ART");
		var9.AddResearch("RES_LC_SDIDEF");
		var9.AddResearch("RES_LC_WARTILLERY");
		var9.AddResearch("RES_LCUFG1");
		var9.AddResearch("RES_LCUFG2");
		var9.AddResearch("RES_LCUFG3");
		
		var9.EnableBuilding("LCBBF", 1);
		var9.EnableBuilding("LCBPP", 1);
		var9.EnableBuilding("LCBBA", 1);
		var9.EnableBuilding("LCBAB", 1);
		var9.EnableBuilding("LCBDE", 1);
		var9.EnableBuilding("LCBHQ", 1);
		var9.EnableBuilding("LCBSB", 1);
		var9.EnableBuilding("WLASER", 1);
		var9.EnableBuilding("LCBNE", 1);
		var9.EnableBuilding("LCBGA", 1);
		var9.EnableBuilding("LCBPP2", 1);
		var9.EnableBuilding("LCBSD", 1);
		var9.EnableBuilding("LCBART", 1);
		var9.EnableBuilding("LCBEN1", 0);
		var9.EnableBuilding("LCBRC", 0);
		var9.EnableBuilding("LCBEN2", 0);
		var9.EnableBuilding("LCBUC", 0);
		var9.EnableBuilding("LCBCC", 0);
		var9.EnableBuilding("LCBLZ", 0);
		var9.EnableBuilding("LCBWC", 0);
		var9.EnableBuilding("LCBSS", 0);
		var9.EnableBuilding("LCBSR", 0);
		
		var2 = 0;
		
		loc0 = var12.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUSPY1", null, null, null, null, 3);
		loc0.SetUnitName("translateUnitNameSpy");
		var12.SetScriptUnit(0 , loc0);
		loc0 = var12.CreateUnitEx(GetPointX(0) + 1, GetPointY(0), 0, null, "EDUSPY1", null, null, null, null, 3);
		loc0.SetUnitName("translateUnitNameSpy");
		var12.SetScriptUnit(1 , loc0);
		
		for (loc2 = 0; loc2 < 10; loc2 = loc2 + 1)
		{
			var12.CreateUnitEx(GetPointX(1) + loc2, GetPointY(1), 0, null, "EDUBT2", "EDWHL3", "EDWHL3", "EDBANNER", "EDWSL3", 3);
			var12.CreateUnitEx(GetPointX(1) + loc2, GetPointY(1) + 1, 0, null, "EDUMW3", "EDCAA1", null, null, null, 1);
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var12.LookAt(var12.GetStartingPointX(), var12.GetStartingPointY() + 5, 20, 0, 10, 0);
		var12.DelayedLookAt(var12.GetStartingPointX(), var12.GetStartingPointY() - 5, 20, 0, 10, 0, 100, 1);
		return State1, 1;
	}
	
	state State1
	{
		var10.SetNumberOfOffensiveTankPlatoons(6);
		var10.SetNumberOfOffensiveHelicopterPlatoons(6);
		var10.SetMaxTankPlatoonSize(10);
		var10.SetNumberOfDefensiveTankPlatoons(4);
		var10.SetMaxAttackFrequency(0);
		var10.SetMaxHelicopterPlatoonSize(6);
		
		var10.EnableAIFeatures(aiRejectAlliance, 0);
		var10.EnableAIFeatures(aiUpgradeCannons, 1);
		var10.EnableAIFeatures(aiBuildBuilders, 1);
		var10.EnableAIFeatures(aiBuildRepairers, 1);
		var10.EnableAIFeatures(aiEnabled, 1);
		var10.EnableAIFeatures(aiBuildBuildings, 0);
		var10.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var10.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var10.EnableAIFeatures(aiControlSupplyUnits, 1);
		var10.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var10.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var10.EnableAIFeatures(aiDefenseTowers, 1);
		var10.EnableAIFeatures(aiControlDefense, 1);
		var10.EnableAIFeatures(aiControlMiningUnits, 0);
		var10.EnableAIFeatures(aiBuildMiningUnits, 1);
		var10.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var10.EnableAIFeatures(aiBuildHelicopters, 0);
		var10.EnableAIFeatures(aiControlOffense, 1);
		var10.EnableAIFeatures(aiBuildTanks, 1);
		var10.EnableAI(0);
		
		var9.SetNumberOfOffensiveTankPlatoons(6);
		var9.SetNumberOfOffensiveHelicopterPlatoons(6);
		var9.SetMaxTankPlatoonSize(10);
		var9.SetNumberOfDefensiveTankPlatoons(4);
		var9.SetMaxAttackFrequency(0);
		var9.SetMaxHelicopterPlatoonSize(6);
		
		var9.EnableAIFeatures(aiRejectAlliance, 0);
		var9.EnableAIFeatures(aiUpgradeCannons, 1);
		var9.EnableAIFeatures(aiBuildBuilders, 1);
		var9.EnableAIFeatures(aiBuildRepairers, 1);
		var9.EnableAIFeatures(aiEnabled, 1);
		var9.EnableAIFeatures(aiBuildBuildings, 1);
		var9.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var9.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var9.EnableAIFeatures(aiControlSupplyUnits, 1);
		var9.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var9.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var9.EnableAIFeatures(aiDefenseTowers, 1);
		var9.EnableAIFeatures(aiControlDefense, 1);
		var9.EnableAIFeatures(aiControlMiningUnits, 0);
		var9.EnableAIFeatures(aiBuildMiningUnits, 0);
		var9.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var9.EnableAIFeatures(aiBuildHelicopters, 0);
		var9.EnableAIFeatures(aiControlOffense, 0);
		var9.EnableAIFeatures(aiBuildTanks, 0);
		var9.EnableAI(1);
		
		var10.SetAlly(var9);
		var9.SetAlly(var10);
		var10.SetNeutral(var12);
		var12.SetNeutral(var10);
		
		var6 = 0;
		var7 = 1;
		
		SetConsoleText("translateIncomingEvent");
		SetTimer(0, 20);
		
		return State4, 100;
	}
	
	state State4
	{
		if (var6 == 0)
		{
			var12.DelayedLookAt(GetPointX(20), GetPointY(20), 20, 0, 10, 0, 100, 0);
			var6 = 1;
			return State4, 100;
		}
		if (var6 == 1)
		{
			var12.DelayedLookAt(GetPointX(21), GetPointY(21), 20, 0, 10, 0, 100, 0);
			var6 = 2;
			return State4, 100;
		}
		if (var6 == 2)
		{
			var12.DelayedLookAt(GetPointX(22), GetPointY(22), 20, 0, 10, 0, 100, 0);
			var6 = 3;
			return State4, 100;
		}
		if (var6 == 3)
		{
			var12.DelayedLookAt(GetPointX(23), GetPointY(23), 20, 0, 10, 0, 100, 0);
			var6 = 4;
			return State4, 100;
		}
		if (var6 == 4)
		{
			var12.DelayedLookAt(GetPointX(24), GetPointY(24), 20, 0, 10, 0, 100, 0);
			var6 = 5;
			return State4, 100;
		}
		if (var6 == 5)
		{
			var12.DelayedLookAt(GetPointX(25), GetPointY(25), 20, 0, 10, 0, 100, 0);
			var6 = 6;
			return State4, 100;
		}
		if (var6 == 6)
		{
			var12.LookAt(var12.GetStartingPointX(), var12.GetStartingPointY(), 20, 0, 10, 0);
			SetTimer(0, 0);
			ShowVideo("ED_M09");
			return State2, 10;
		}
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingLS_ED_M09_radarUnitsPositioned", var12.GetName());
		SetTimer(3, 6200);
		
		return State6, 1;
	}
	
	state State6
	{
		unitex loc0;
		int loc1;
		int loc2;
		int loc3;
		
		loc1 = 0;
		loc2 = 0;
		
		if(var2 == 1)
		{
			var2 = 0;
			loc0 = var12.GetScriptUnit(0);
			if (loc0 == null)
			{
				loc1 = 1;
			}
			
			loc0 = var12.GetScriptUnit(1);
			if (loc0 == null)
			{
				loc1 = 1;
			}
			
			if (loc1 == 1)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_ED_M09_radarUnitsAlive", var12.GetName());
				return State9, 20;
			}
		}
		
		loc0 = var12.GetScriptUnit(0);
		loc3 = Distance(loc0.GetLocationX(), loc0.GetLocationY(), GetPointX(25), GetPointY(25));
		
		if (loc3 < 3)
		{
			loc2 = loc2 + 1;
		}
		
		loc0 = var12.GetScriptUnit(1);
		loc3 = Distance(loc0.GetLocationX(), loc0.GetLocationY(), GetPointX(25), GetPointY(25));
		
		if (loc3 < 3)
		{
			loc2 = loc2 + 1;
		}
		
		if (loc2 == 2)
		{
			CallCamera();
			EnableInterface(0);
			EnableCameraMovement(0);
			SetConsoleText("translateIncomingEvent");
			var6 = 0;
			var7 = 2;
			SetTimer(0, 20);
			return State5, 20;
		}
		
		return State6, 100;
	}
	
	state State5
	{
		if (var6 == 0)
		{
			var12.LookAt(GetPointX(26), GetPointY(26), 20, 0, 10, 0);
			var12.DelayedLookAt(GetPointX(27), GetPointY(27), 20, 0, 10, 0, 200, 0);
			var6 = 1;
			return State5, 200;
		}
		if (var6 == 1)
		{
			var12.LookAt(GetPointX(28), GetPointY(28), 20, 0, 10, 0);
			var12.DelayedLookAt(GetPointX(29), GetPointY(29), 20, 0, 10, 0, 200, 0);
			var6 = 2;
			return State5, 200;
		}
		if (var6 == 2)
		{
			var12.LookAt(GetPointX(30), GetPointY(30), 20, 0, 10, 0);
			var12.DelayedLookAt(GetPointX(31), GetPointY(31), 20, 0, 10, 0, 200, 0);
			var6 = 3;
			return State5, 200;
		}
		if (var6 == 3)
		{
			var12.CreateUnitEx(var12.GetStartingPointX(), var12.GetStartingPointY(), 0, null, "EDUBU1", null, null, null, null, 3);
			var12.LookAt(var12.GetStartingPointX(), var12.GetStartingPointY(), 20, 0, 10, 0);
			SetTimer(0, 0);
			return State3, 10;
		}
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(2, 1);
		EnableGoal(3, 1);
		SetGoalState(0, 1);
		SetGoalState(1, 1);
		AddBriefing("translateBriefingLS_ED_M09_hqCaptured", var12.GetName());
		
		return State7, 1;
	}
	
	state State7
	{
		int loc0;
		unitex loc1;
		
		if (var2 == 1)
		{
			var2 = 0;
			if (var12.GetNumberOfUnits() == 0 && var12.GetNumberOfBuildings() == 0)
			{
				SetGoalState(3, 2);
				AddBriefing("translateFailedLS_ED_M09_PlayerlostAll", var12.GetName());
				return State9, 20;
			}
		}
		
		loc1 = GetUnit(GetPointX(2), GetPointY(2));
		if (loc1 == null || loc1.IsPassive() == 1)
		{
			SetGoalState(2, 2);
			AddBriefing("translateFailedLS_ED_M09_hqAlive", var12.GetName());
			return State9, 20;
		}
		
		if (loc1.GetIFF() == var12.GetIFF())
		{
			SetGoalState(3, 1);
			SetGoalState(2, 1);
			AddBriefing("translateAccomplishedLS_ED_M09_hqCaptured", var12.GetName());
			EnableNextMission(9, 1);
			EnableEndMissionButton(1);
			return State8, 20;
		}
		return State7, 100;
	}
	
	state State9
	{
		SetConsoleText("");
		EnableNextMission(9, 2);
		EndMission(0);
	}
	
	state State8
	{
		return State8, 500;
	}
	
	event Timer0()
	{
		int loc0;
		if (var7 == 1)
		{
			for (loc0 = 20; loc0 < 26; loc0 = loc0 + 1)
			{
				ShowArea(var12.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 11, showAreaPassives |showAreaBuildings | showAreaUnits);
			}
		}
		if (var7 == 2)
		{
			for (loc0 = 26; loc0 < 32; loc0 = loc0 + 1)
			{
				ShowArea(var12.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 7, showAreaPassives |showAreaBuildings | showAreaUnits);
			}
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		
		loc2 = Rand(5) + 4;
		
		loc1 = var12.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc1 < 0)
		{
			loc1 = 0;
		}
		
		loc1 = loc1 + var4;
		
		if (loc1 > 48)
		{
			loc1 = 48;
		}
		
		for (loc0 = 0; loc0 < loc1 / 2; loc0 = loc0 + 1)
		{
			var9.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUCU3", "LCWHL2", "LCWHL2", "LCWSL2", "LCBANNER", 3);
			var9.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUHT1", "LCWHC1", null, null, null, 3);
		}
		
		var9.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(1, var5 + GetMissionTime());
	}
	
	event Timer3()
	{
		var9.EnableAIFeatures(aiControlOffense, 1);
		var9.EnableAIFeatures(aiBuildHelicopters, 1);
		var9.EnableAIFeatures(aiBuildTanks, 1);
		
		SetTimer(1, var5 + GetMissionTime());
		AddBriefing("translateInfoLS_ED_M09_enemyAttacks", var12.GetName());
		SetTimer(3, 0);
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var12.GetMoney();
		var12.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var2 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var9.GetNumberOfBuildings() < 5)
		{
			SetTimer(1, 0);
		}
		
		var2 = 1;
	}

}