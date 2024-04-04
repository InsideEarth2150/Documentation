mission "translatemissionLS_ED_M10"
{
	int var0;
	int var1;
	int var2;
	int var3;
	int var4;
	int var5;
	player var6;
	player var7;
	player var8;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	state State6;
	
	state State0
	{
		unitex loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		var7 = GetPlayer(1);
		var6 = GetPlayer(3);
		var8 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalLS_ED_M10_destroyEnemy");
		
		var7.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var6.LoadScript("single\\singleEasy");
			var8.SetMoney(10000);
			var2 = 0;
			var3 = 18000;
		}
		if (GetDifficultyLevel() == 1)
		{
			var6.LoadScript("single\\singleMedium");
			var8.SetMoney(5000);
			var2 = 2;
			var3 = 14500;
		}
		if (GetDifficultyLevel() == 2)
		{
			var6.LoadScript("single\\singleHard");
			var8.SetMoney(0);
			var2 = 3;
			var3 = 11000;
		}
		
		var8.EnableAIFeatures(aiEnabled, 0);
		var8.EnableCommand(commandSoldBuilding, 1);
		
		var6.SetMoney(900000);
		
		var8.EnableBuilding("EDBBPP", 1);
		var8.EnableBuilding("EDBBA", 1);
		var8.EnableBuilding("EDBFA", 1);
		var8.EnableBuilding("EDBAB", 1);
		var8.EnableBuilding("EDBBRE", 1);
		var8.EnableBuilding("EDBMI", 1);
		var8.EnableBuilding("EDBST", 1);
		var8.EnableBuilding("EDBPB", 1);
		var8.EnableBuilding("EDBBT", 1);
		var8.EnableBuilding("EDBHT", 1);
		var8.EnableBuilding("EDBRA", 1);
		var8.EnableBuilding("EDBLZ", 1);
		var8.EnableBuilding("EDBART", 1);
		var8.EnableBuilding("EDBBC", 1);
		var8.EnableBuilding("EDBSI", 1);
		var8.EnableBuilding("EDBWB", 0);
		var8.EnableBuilding("EDBRC", 0);
		var8.EnableBuilding("EDBTC", 0);
		var8.EnableBuilding("EDBHQ", 0);
		var8.EnableBuilding("EDBEN1", 0);
		
		var6.EnableBuilding("LCBBF", 1);
		var6.EnableBuilding("LCBPP", 1);
		var6.EnableBuilding("LCBBA", 1);
		var6.EnableBuilding("LCBAB", 1);
		var6.EnableBuilding("LCBDE", 1);
		var6.EnableBuilding("LCBHQ", 1);
		var6.EnableBuilding("LCBSB", 1);
		var6.EnableBuilding("WLASER", 1);
		var6.EnableBuilding("LCBNE", 1);
		var6.EnableBuilding("LCBGA", 1);
		var6.EnableBuilding("LCBPP2", 1);
		var6.EnableBuilding("LCBSD", 1);
		var6.EnableBuilding("LCBART", 1);
		var6.EnableBuilding("LCBEN1", 0);
		var6.EnableBuilding("LCBRC", 0);
		var6.EnableBuilding("LCBEN2", 0);
		var6.EnableBuilding("LCBUC", 0);
		var6.EnableBuilding("LCBCC", 0);
		var6.EnableBuilding("LCBLZ", 0);
		var6.EnableBuilding("LCBWC", 0);
		var6.EnableBuilding("LCBSS", 0);
		var6.EnableBuilding("LCBSR", 0);
		
		var0 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var8.LookAt(var8.GetStartingPointX(), var8.GetStartingPointY() + 5, 20, 0, 10, 0);
		var8.DelayedLookAt(var8.GetStartingPointX(), var8.GetStartingPointY() - 5, 20, 0, 10, 0, 100, 1);
		return State1, 1;
	}
	
	state State1
	{
		var6.SetNumberOfOffensiveTankPlatoons(6);
		var6.SetNumberOfOffensiveHelicopterPlatoons(6);
		var6.SetMaxTankPlatoonSize(10);
		var6.SetNumberOfDefensiveTankPlatoons(4);
		var6.SetMaxAttackFrequency(0);
		var6.SetMaxHelicopterPlatoonSize(6);
		
		var6.EnableAIFeatures(aiRejectAlliance, 0);
		var6.EnableAIFeatures(aiUpgradeCannons, 1);
		var6.EnableAIFeatures(aiBuildBuilders, 1);
		var6.EnableAIFeatures(aiBuildRepairers, 1);
		var6.EnableAIFeatures(aiEnabled, 1);
		var6.EnableAIFeatures(aiBuildBuildings, 1);
		var6.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var6.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var6.EnableAIFeatures(aiControlSupplyUnits, 1);
		var6.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var6.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var6.EnableAIFeatures(aiDefenseTowers, 1);
		var6.EnableAIFeatures(aiControlDefense, 1);
		var6.EnableAIFeatures(aiControlMiningUnits, 0);
		var6.EnableAIFeatures(aiBuildMiningUnits, 0);
		var6.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var6.EnableAIFeatures(aiBuildHelicopters, 1);
		var6.EnableAIFeatures(aiControlOffense, 1);
		var6.EnableAIFeatures(aiBuildTanks, 1);
		var6.EnableAI(1);
		
		var4 = 0;
		SetTimer(0, 20);
		
		return State3, 100;
	}
	
	state State3
	{
		if (var4 == 0)
		{
			var8.LookAt(GetPointX(0), GetPointY(0), 20, 64, 10, 0);
			var8.DelayedLookAt(GetPointX(1), GetPointY(1), 20, 64, 10, 0, 150, 0);
			var4 = 1;
			return State3, 150;
		}
		if (var4 == 1)
		{
			var8.DelayedLookAt(GetPointX(2), GetPointY(2), 20, 64, 10, 0, 150, 0);
			var4 = 2;
			return State3, 150;
		}
		if (var4 == 2)
		{
			var8.LookAt(GetPointX(3), GetPointY(3), 20, 64, 10, 0);
			var8.DelayedLookAt(GetPointX(4), GetPointY(4), 20, 64, 10, 0, 150, 0);
			var4 = 3;
			return State3, 150;
		}
		if (var4 == 3)
		{
			var8.DelayedLookAt(GetPointX(5), GetPointY(5), 20, 64, 10, 0, 150, 0);
			var4 = 4;
			return State3, 150;
		}
		if (var4 == 4)
		{
			var8.DelayedLookAt(GetPointX(6), GetPointY(6), 20, 64, 10, 0, 150, 0);
			var4 = 5;
			return State3, 150;
		}
		if (var4 == 5)
		{
			var8.LookAt(GetPointX(7), GetPointY(7), 20, 0, 10, 0);
			var8.DelayedLookAt(GetPointX(8), GetPointY(8), 20, 0, 10, 0, 100, 0);
			var4 = 6;
			return State3, 100;
		}
		if (var4 == 6)
		{
			var8.DelayedLookAt(GetPointX(9), GetPointY(9), 20, 0, 10, 0, 100, 0);
			var4 = 7;
			return State3, 100;
		}
		if (var4 == 7)
		{
			var8.DelayedLookAt(GetPointX(10), GetPointY(10), 20, 0, 10, 0, 100, 0);
			var4 = 8;
			return State3, 100;
		}
		if (var4 == 8)
		{
			var8.DelayedLookAt(GetPointX(11), GetPointY(11), 20, 0, 10, 0, 150, 0);
			var4 = 9;
			return State3, 150;
		}
		if (var4 == 9)
		{
			var8.LookAt(var8.GetStartingPointX(), var8.GetStartingPointY(), 20, 0, 10, 0);
			SetTimer(0, 0);
			ShowVideo("ED_M10");
			return State2, 10;
		}
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M10_destroyEnemy", var8.GetName());
		SetTimer(1, var3 + GetMissionTime());
		
		return State4, 1;
	}
	
	state State4
	{
		if (var0 == 1)
		{
			var0 = 0;
			if (var8.GetNumberOfUnits() == 0 && var8.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_ED_M10_PlayerlostAll", var8.GetName());
				return State6, 20;
			}
			if (var6.GetNumberOfUnits() == 0 && var6.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedLS_ED_M10_destroyEnemy", var8.GetName());
				EnableNextMission(10, 4);
				EndMission(0);
			}
		}
		
		return State4, 100;
	}
	
	state State6
	{
		EnableNextMission(10, 2);
		EndMission(0);
	}
	
	state State5
	{
		SetConsoleText("");
		return State5, 500;
	}
	
	event Timer0()
	{
		int loc0;
		
		for (loc0 = 0; loc0 < 12; loc0 = loc0 + 1)
		{
			ShowArea(var8.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 8, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		
		loc2 = Rand(6) + 14;
		
		loc1 = var8.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc1 < 4)
		{
			loc1 = 4;
		}
		
		loc1 = loc1 + var2;
		
		if (loc1 > 48)
		{
			loc1 = 48;
		}
		
		for (loc0 = 0; loc0 < loc1 / 3; loc0 = loc0 + 1)
		{
			var6.CreateUnitEx(GetPointX(13), GetPointY(13), 0, null, "LCUCU3", "LCWHL2", "LCWHL2", "LCWSL2", "LCBANNER", 3);
			var6.CreateUnitEx(GetPointX(13), GetPointY(13), 0, null, "LCUHT1", "LCWHC1", null, null, null, 3);
			var6.CreateUnitEx(GetPointX(12), GetPointY(12), 0, null, "LCUBO2", "LCWAS2", null, null, null, 3);
		}
		
		var6.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(1, var3 + GetMissionTime());
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var0 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var6.GetNumberOfBuildings() < 10)
		{
			SetTimer(1, 0);
		}
		
		var0 = 1;
	}

}