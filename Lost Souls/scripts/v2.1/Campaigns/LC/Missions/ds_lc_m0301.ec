mission "translateMissionDS_LC_M0301"
{
	player var0;
	player var1;
	player var2;
	int var3;
	int var4;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	state State6;
	
	
	state State0
	{
		var0 = GetPlayer(1);
		var0.EnableStatistics(0);
		
		var2 = GetPlayer(3);
		var1 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalDS_LC_M0301_destroyAri");
		RegisterGoal(1, "translateGoalDS_LC_M0301_destroyEnemyBase");
		
		if(GetDifficultyLevel() == 0)
		{
			var1.LoadScript("single\\singleEasy");
			var2.SetMoney(8000);
		}
		if(GetDifficultyLevel() == 1)
		{
			var1.LoadScript("single\\singleMedium");
			var2.SetMoney(3000);
		}
		if(GetDifficultyLevel() == 2)
		{
			var1.LoadScript("single\\singleHard");
			var2.SetMoney(2000);
		}
		var1.SetMoney(20000);
		
		var2.EnableCommand(commandSoldBuilding, 1);
		var2.EnableAIFeatures(aiEnabled, 0);
		var2.EnableBuilding("LCBBF", 0);
		var2.EnableBuilding("LCBMR", 0);
		var2.EnableBuilding("LCBPP", 0);
		var2.EnableBuilding("LCBBA", 0);
		var2.EnableBuilding("LCBAB", 0);
		var2.EnableBuilding("LCBDE", 0);
		var2.EnableBuilding("LCBHQ", 0);
		var2.EnableBuilding("LCBSB", 0);
		var2.EnableBuilding("LCBLZ", 0);
		var2.EnableBuilding("WLASER", 0);
		var2.EnableBuilding("LCBNE", 0);
		var2.EnableBuilding("LCBUC", 0);
		var2.EnableBuilding("LCBCC", 0);
		var2.EnableBuilding("LCBEN1", 0);
		var2.EnableBuilding("LCBEN2", 0);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBSR", 0);
		var2.EnableBuilding("LCBGA", 0);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 0);
		var2.EnableBuilding("LCBART", 0);
		var2.EnableResearch("RES_LCUFG2", 1);
		var2.EnableResearch("RES_LC_SOB2", 1);
		var2.EnableResearch("RES_LCCAA1", 1);
		var2.EnableResearch("RES_LCWAN1", 1);
		var2.EnableResearch("RES_LCWAA1", 1);
		var2.EnableResearch("RES_LC_BC1", 1);
		
		var1.AddResearch("RES_ED_HGen");
		var1.AddResearch("RES_ED_UMW2");
		var1.AddResearch("RES_ED_UMW3");
		var1.AddResearch("RES_EDWAN1");
		var1.AddResearch("RES_EDWAA1");
		var1.EnableBuilding("EDBBPP", 0);
		var1.EnableBuilding("EDBBA", 1);
		var1.EnableBuilding("EDBFA", 1);
		var1.EnableBuilding("EDBWB", 0);
		var1.EnableBuilding("EDBAB", 1);
		var1.EnableBuilding("EDBBRE", 1);
		var1.EnableBuilding("EDBMI", 1);
		var1.EnableBuilding("EDBTC", 0);
		var1.EnableBuilding("EDBST", 1);
		var1.EnableBuilding("EDBPB", 1);
		var1.EnableBuilding("EDBBT", 1);
		var1.EnableBuilding("EDBRC", 0);
		var1.EnableBuilding("EDBHQ", 1);
		var1.EnableBuilding("EDBRA", 1);
		var1.EnableBuilding("EDBEN1", 1);
		var1.EnableBuilding("EDBLZ", 0);
		
		var3 = 0;
		var4 = 0;
		
		CallCamera();
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		
		if(GetDifficultyLevel() == 0)
		{
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
		}
		if(GetDifficultyLevel() == 1)
		{
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
		}
		if(GetDifficultyLevel() == 2)
		{
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
			var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUMO3", "LCWSR3", null, null, null, 2);
		}
		
		var2.LookAt(var2.GetStartingPointX(), var2.GetStartingPointY() - 30, 20, 128, 10, 0);
		var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		var1.SetNumberOfOffensiveHelicopterPlatoons(0);
		var1.SetNumberOfOffensiveTankPlatoons(0);
		var1.SetMaxHelicopterPlatoonSize(4);
		var1.SetMaxTankPlatoonSize(6);
		var1.SetNumberOfDefensiveTankPlatoons(4);
		var1.SetNumberOfDefensiveHelicopterPlatoons(4);
		
		var1.EnableAIFeatures(aiRejectAlliance, 1);
		var1.EnableAIFeatures(aiUpgradeCannons, 1);
		var1.EnableAIFeatures(aiBuildBuilders, 1);
		var1.EnableAIFeatures(aiBuildRepairers, 1);
		var1.EnableAIFeatures(aiEnabled, 1);
		var1.EnableAIFeatures(aiBuildBuildings, 1);
		var1.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var1.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var1.EnableAIFeatures(aiControlSupplyUnits, 1);
		var1.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var1.EnableAIFeatures(aiBuildTanks, 1);
		var1.EnableAIFeatures(aiBuildHelicopters, 1);
		var1.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var1.EnableAIFeatures(aiDefenseTowers, 1);
		var1.EnableAIFeatures(aiControlDefense, 1);
		var1.EnableAIFeatures(aiControlOffense, 1);
		var1.EnableAIFeatures(aiControlMiningUnits, 0);
		var1.EnableAIFeatures(aiBuildMiningUnits, 0);
		var1.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var1.EnableAI(1);
		
		for (loc1 = 0; loc1 < 4; loc1 = loc1 + 1)
		{
			loc2 = loc1 * 5 + 9;
			
			loc0 = GetUnit(GetPointX(loc2), GetPointY(loc2));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			
			loc0 = GetUnit(GetPointX(loc2 + 3), GetPointY(loc2 + 3));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			
			ShowArea(var2.GetIFF(), GetPointX(loc1 + 1), GetPointY(loc1 + 1), 0, 10, showAreaPassives |showAreaBuildings);
		}
		ShowVideo("LC_M03");
		
		return State2, 90;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M0301_destroyAri", var2.GetName());
		return State3, 200;
	}
	
	state State3
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		loc2 = 0;
		loc1 = 29;
		
		if (var2.GetNumberOfUnits() == 0)
		{
			SetGoalState(0, 2);
			AddBriefing("translateFailedDS_LC_M0301_destroyAri", var2.GetName());
			return State6, 50;
		}
		while (!loc2 && loc1 < 45)
		{
			loc1 = loc1 + 1;
			loc0 = GetUnit(GetPointX(loc1), GetPointY(loc1));
			
			if(loc0 != null)
			{
				loc2 = 1;
			}
		}
		
		if(!loc2)
		{
			SetGoalState(0, 1);
			EnableGoal(1, 1);
			AddBriefing("translateBriefingDS_LC_M0301_destroyEnemyBases", var2.GetName());
			var2.EnableBuilding("LCBLZ", 1);
			var2.EnableBuilding("LCBPP", 1);
			var2.EnableBuilding("LCBBA", 1);
			var2.EnableBuilding("LCBSB", 1);
			var2.EnableBuilding("LCBAB", 1);
			var2.EnableBuilding("LCBMR", 1);
			return State4, 200;
		}
		
		for(loc1 = 0;loc1 < 4; loc1 = loc1 + 1)
		{
			ShowArea(var2.GetIFF(), GetPointX(loc1 + 1), GetPointY(loc1 + 1), 0, 10, showAreaPassives |showAreaBuildings);
		}
		return State3, 200;
	}
	
	state State4
	{
		if (var3)
		{
			var3 = 0;
			if (var1.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 1);
				EnableNextMission(2, 1);
				AddBriefing("translateAccomplishedDS_LC_M0301_destroyEnemyBases", var2.GetName());
				EnableEndMissionButton(1);
				return State5;
			}
		}
		if (var4)
		{
			var4 = 0;
			if (var2.GetNumberOfUnits() == 0 && var2.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M0301_destroyEnemyBases", var2.GetName());
				return State6, 50;
			}
		}
		if (var1.GetMoney() < 100)
		{
			if(GetDifficultyLevel() == 0)
			{
				var1.AddMoney(1500);
			}
			if(GetDifficultyLevel() == 1)
			{
				var1.AddMoney(3000);
			}
			if(GetDifficultyLevel() == 2)
			{
				var1.AddMoney(5000);
			}
		}
	}
	
	state State5
	{
		return State5, 500;
	}
	
	state State6
	{
		EnableNextMission(2, 2);
		EndMission(0);
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var3 = 1;
		var4 = 1;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var4 = 1;
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var2.GetMoney();
		var2.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}