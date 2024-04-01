mission "translatemissionLS_ED_M01"
{
	player var0;
	player var1;
	player var2;
	
	int var3;
	int var4;
	int var5;
	int var6;
	
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
	state State10;
	state State11;
	
	state State0
	{
		int loc0;
		
		var0 = GetPlayer(1);
		var2 = GetPlayer(2);
		var1 = GetPlayer(3);
		
		RegisterGoal(0, "translateGoalLS_ED_M01_destroyLC");
		RegisterGoal(1, "translateGoalLS_ED_M01_collectRess");
		var0.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var1.LoadScript("single\\singleEasy");
			var2.SetMoney(20000);
			var5 = 5 * 60 * 20;
			var6 = 0;
		}
		if (GetDifficultyLevel() == 1)
		{
			var1.LoadScript("single\\singleMedium");
			var2.SetMoney(15000);
			var5 = 4 * 60 * 20;
			var6 = 4;
		}
		if (GetDifficultyLevel() == 2)
		{
			var1.LoadScript("single\\singleHard");
			var2.SetMoney(10000);
			var5 = 3 * 60 * 20;
			var6 = 6;
		}
		var1.SetMoney(60000);
		
		var2.EnableAIFeatures(aiEnabled, 0);
		var2.EnableCommand(commandSoldBuilding, 1);
		
		var1.EnableBuilding("LCBBF", 1);
		var1.EnableBuilding("LCBPP", 1);
		var1.EnableBuilding("LCBBA", 1);
		var1.EnableBuilding("LCBAB", 1);
		var1.EnableBuilding("LCBDE", 1);
		var1.EnableBuilding("LCBHQ", 1);
		var1.EnableBuilding("LCBSB", 1);
		var1.EnableBuilding("WLASER", 1);
		var1.EnableBuilding("LCBNE", 1);
		var1.EnableBuilding("LCBGA", 0);
		var1.EnableBuilding("LCBPP2", 0);
		var1.EnableBuilding("LCBEN1", 0);
		var1.EnableBuilding("LCBRC", 0);
		var1.EnableBuilding("LCBEN2", 0);
		var1.EnableBuilding("LCBUC", 0);
		var1.EnableBuilding("LCBCC", 0);
		var1.EnableBuilding("LCBLZ", 0);
		var1.EnableBuilding("LCBART", 0);
		var1.EnableBuilding("LCBSD", 0);
		var1.EnableBuilding("LCBWC", 0);
		var1.EnableBuilding("LCBSS", 0);
		var1.EnableBuilding("LCBSR", 0);
		
		var2.EnableBuilding("EDBBPP", 1);
		var2.EnableBuilding("EDBBA", 1);
		var2.EnableBuilding("EDBFA", 1);
		var2.EnableBuilding("EDBAB", 1);
		var2.EnableBuilding("EDBBRE", 1);
		var2.EnableBuilding("EDBMI", 1);
		var2.EnableBuilding("EDBST", 1);
		var2.EnableBuilding("EDBLZ", 0);
		var2.EnableBuilding("EDBPB", 0);
		var2.EnableBuilding("EDBBT", 0);
		var2.EnableBuilding("EDBHT", 0);
		var2.EnableBuilding("EDBRC", 0);
		var2.EnableBuilding("EDBRA", 0);
		var2.EnableBuilding("EDBWB", 0);
		var2.EnableBuilding("EDBTC", 0);
		var2.EnableBuilding("EDBHQ", 0);
		var2.EnableBuilding("EDBEN1", 0);
		
		for (loc0 = 0; loc0 < 4; loc0 = loc0 + 1)
		{
			var2.CreateUnitEx(GetPointX(0) + loc0, GetPointY(0), 0, null, "EDUHT1", "EDWHC2", null, "EDBANNER", null, 1);
			var2.CreateUnitEx(GetPointX(0) + loc0, GetPointY(0) + 1, 0, null, "EDUHT1", "EDWHC2", null, "EDBANNER", null, 1);
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var2.LookAt(var2.GetStartingPointX() + 4, var2.GetStartingPointY() + 5, 20, 0, 10, 0);
		var2.DelayedLookAt(var2.GetStartingPointX() + 4, var2.GetStartingPointY(), 20, 0, 10, 0, 40, 1);
		return State1, 1;
	}
	
	state State1
	{
		var1.SetNumberOfOffensiveTankPlatoons(20);
		var1.SetNumberOfOffensiveHelicopterPlatoons(0);
		var1.SetMaxTankPlatoonSize(2);
		var1.SetNumberOfDefensiveTankPlatoons(0);
		var1.SetMaxAttackFrequency(0);
		var1.SetMaxHelicopterPlatoonSize(0);
		
		var1.EnableAIFeatures(aiRejectAlliance, 1);
		var1.EnableAIFeatures(aiUpgradeCannons, 1);
		var1.EnableAIFeatures(aiBuildBuilders, 1);
		var1.EnableAIFeatures(aiBuildRepairers, 1);
		var1.EnableAIFeatures(aiEnabled, 1);
		var1.EnableAIFeatures(aiBuildBuildings, 0);
		var1.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var1.EnableAIFeatures(aiControlSupplyUnits, 1);
		var1.EnableAIFeatures(aiBuildTanks, 1);
		var1.EnableAIFeatures(aiBuildHelicopters, 0);
		var1.EnableAIFeatures(aiControlDefense, 1);
		var1.EnableAIFeatures(aiControlOffense, 0);
		var1.EnableAIFeatures(aiControlMiningUnits, 0);
		var1.EnableAIFeatures(aiBuildMiningUnits, 0);
		var1.EnableAI(1);
		
		ShowVideo("ED_M01");
		return State2, 40;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M01_destroyLC", var2.GetName());
		SetTimer(0, 20);
		
		return State5, 1;
	}
	
	state State5
	{
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var2.LookAt(GetPointX(14), GetPointY(14), 20, 128, 10, 0);
		var2.DelayedLookAt(GetPointX(13), GetPointY(13), 20, 192, 10, 0, 150, 1);
		return State6, 150;
	}
	
	state State6
	{
		var2.DelayedLookAt(GetPointX(15), GetPointY(15), 20, 0, 10, 0, 150, 1);
		return State3, 150;
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		var2.LookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 0, 10, 0);
		AddBriefing("translateBriefingLS_ED_M01_bestWay", var2.GetName());
		SetTimer(0, 0);
		
		return State11, 20;
	}
	
	state State11
	{
		if(var3 == 1)
		{
			var3 = 0;
			if (var1.GetNumberOfBuildings() == 0)
			{
				var1.EnableAIFeatures(aiBuildBuildings, 0);
				var2.CreateUnitEx(GetPointX(14), GetPointY(14), 0, null, "EDUBU1", null, null, null, null, 0);
				var2.LookAt(GetPointX(14), GetPointY(14), 20, 0, 10, 0);
				EnableGoal(1, 1);
				SetGoalState(0, 1);
				AddBriefing("translateBriefingLS_ED_M01_collectRess", var2.GetName());
				SetTimer(2, var5 + GetMissionTime());
				return State10, 100;
			}
		}
		return State11, 100;
	}
	
	state State10
	{
		if(var3 == 1)
		{
			var3 = 0;
			if (var2.GetNumberOfBuildings() == 0 && var2.GetNumberOfUnits() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_ED_M01_collectRess", var2.GetName());
				return State8, 20;
			}
		}
		if (var2.GetMoney() >= 50000)
		{
			SetGoalState(1, 1);
			AddBriefing("translateAccomplishedLS_ED_M01_collectRess", var2.GetName());
			return State7, 20;
		}
		return State10, 100;
	}
	
	state State7
	{
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var2.LookAt(GetPointX(14), GetPointY(14), 20, 0, 10, 0);
		KillArea(var2.GetIFF(), GetRight() / 2, GetBottom() / 2, 0, 200);
		var2.DelayedLookAt(GetPointX(15), GetPointY(15), 20, 128, 10, 0, 250, 1);
		
		return State9, 250;
	}
	
	state State9
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		SetConsoleText("");
		EnableNextMission(1, 1);
		EndMission(1);
		
		return State4, 20;
	}
	
	state State8
	{
		EnableNextMission(1, 2);
		EndMission(0);
	}
	
	state State4
	{
		return State4, 500;
	}
	
	event Timer2()
	{
		int loc0;
		unitex loc1;
		int loc2;
		int loc3;
	
		loc3 = Rand(3) + 16;
		
		loc2 = var2.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 - var1.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc2 < 6)
		{
			loc2 = 6;
		}
		
		loc2 = (loc2 + var6) / 2;
		if (loc2 > 20)
		{
			loc2 = 20;
		}
		
		for (loc0 = 0; loc0 < loc2; loc0 = loc0 + 1)
		{
			var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "LCUMO2", "LCWSR3", null, null, null, 2);
			var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "LCUMO2", "LCWSL2", null, null, null, 2);
		}
		var1.Attack(GetPointX(14), GetPointY(14), 0);
	}
	
	event Timer0()
	{
		ShowArea(var2.GetIFF(), GetPointX(13), GetPointY(13), 0, 6, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var2.GetIFF(), GetPointX(14), GetPointY(14), 0, 6, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var2.GetIFF(), GetPointX(15), GetPointY(15), 0, 6, showAreaPassives |showAreaBuildings | showAreaUnits);
	}
	
	event EndMission()
	{
		SendCustomEvent(0, 3, 10000, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var3 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var3 = 1;
	}
	
	event Artefact(int nArtefactNum, player pPlayerOnArtefact)
	{
		return 0;
	}

}