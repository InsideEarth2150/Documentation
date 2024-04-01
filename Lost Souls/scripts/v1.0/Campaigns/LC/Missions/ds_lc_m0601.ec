mission "translateMissionDS_LC_M0601"
{
	player var0;
	player var1;
	player var2;
	
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
		
		var0 = GetPlayer(1);
		var0.EnableStatistics(1);
		var2 = GetPlayer(3);
		var1 = GetPlayer(0);
	
		RegisterGoal(2, "translateGoalDS_LC_M0601_protectHQ");
		RegisterGoal(0, "translateGoalDS_LC_M0601_getDataFromE");
		RegisterGoal(1, "translateGoalDS_LC_M0601_rescueUnit");
		
		var0.LoadScript("single\\singleHard");
		var2.SetMoney(10000);
		var0.SetMoney(50000);
		var0.SetMoney(40000);
		
		var2.EnableCommand(commandSoldBuilding, 1);
		var2.EnableAIFeatures(aiEnabled, 0);
		var2.EnableMilitaryUnitsLimit(0);
		var2.EnableBuilding("LCBBF", 1);
		var2.EnableBuilding("LCBMR", 1);
		var2.EnableBuilding("LCBPP", 1);
		var2.EnableBuilding("LCBBA", 1);
		var2.EnableBuilding("LCBAB", 1);
		var2.EnableBuilding("LCBDE", 1);
		var2.EnableBuilding("LCBHQ", 0);
		var2.EnableBuilding("LCBSB", 1);
		var2.EnableBuilding("LCBLZ", 1);
		var2.EnableBuilding("WLASER", 1);
		var2.EnableBuilding("LCBNE", 1);
		var2.EnableBuilding("LCBUC", 1);
		var2.EnableBuilding("LCBCC", 1);
		var2.EnableBuilding("LCBEN1", 1);
		var2.EnableBuilding("LCBEN2", 1);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBSR", 0);
		var2.EnableBuilding("LCBGA", 1);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 1);
		var2.EnableBuilding("LCBART", 0);
		var2.EnableResearch("RES_LC_WARTILLERY", 1);
		var2.AddResearch("RES_LC_WAS1");
		var2.EnableResearch("RES_LC_WAS2", 1);
		var2.EnableResearch("RES_LCUNH", 1);
		
		var0.AddResearch("RES_UCS_UBL1");
		var0.AddResearch("RES_UCS_UBL2");
		var0.AddResearch("RES_UCS_BOMBER31");
		var0.AddResearch("RES_UCS_BOMBER32");
		var0.AddResearch("RES_UCS_WHG1");
		var0.AddResearch("RES_UCS_WHG2");
		var0.AddResearch("RES_UCS_BHD");
		var0.AddResearch("RES_UCS_SHD3");
		var0.AddResearch("RES_UCS_SHD4");
		var0.AddResearch("RES_UCSWBHC1");
		var0.AddResearch("RES_UCSWBHC2");
		var0.AddResearch("RES_UCS_MHC2");
		var0.AddResearch("RES_UCS_MHC3");
		var0.AddResearch("RES_UCS_MHC4");
		var0.AddResearch("RES_UCSBHT");
		var0.AddResearch("RES_UCSWAN1");
		
		var0.EnableBuilding("UCSBBA", 1);
		var0.EnableBuilding("UCSBFA", 1);
		var0.EnableBuilding("UCSBPP", 1);
		var0.EnableBuilding("UCSBPR", 1);
		var0.EnableBuilding("UCSBET", 0);
		var0.EnableBuilding("UCSBRF", 1);
		var0.EnableBuilding("UCSBAB", 1);
		var0.EnableBuilding("UCSBST", 1);
		var0.EnableBuilding("UCSBBT", 1);
		var0.EnableBuilding("UCSBHT", 1);
		var0.EnableBuilding("UCSBSH", 1);
		var0.EnableBuilding("UCSBFO", 1);
		var0.EnableBuilding("UCSBEN1", 1);
		var0.EnableBuilding("UCSBEN2", 1);
		var0.EnableBuilding("Teleport", 1);
		
		loc0 = var1.CreateUnitEx(var1.GetStartingPointX(), var1.GetStartingPointY(), 0, null, "UCSUCS", "UCSRADAR1", null, null, null);
		var1.SetScriptUnit(0, loc0);
		
		SetConsoleText("translateIncomingEvent");
		CallCamera();
		
		var2.LookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 10, 128, 10, 0);
		var2.DelayedLookAt(var1.GetStartingPointX(), var1.GetStartingPointY(), 10, 0, 10, 0, 40, 1);
		return State1, 1;
	}
	
	state State1
	{
		var0.SetNumberOfOffensiveHelicopterPlatoons(1);
		var0.SetNumberOfOffensiveTankPlatoons(1);
		var0.SetMaxHelicopterPlatoonSize(4);
		var0.SetMaxTankPlatoonSize(6);
		var0.SetNumberOfDefensiveTankPlatoons(4);
		var0.SetNumberOfDefensiveHelicopterPlatoons(4);
		
		var0.EnableAIFeatures(aiRejectAlliance, 0);
		var0.EnableAIFeatures(aiUpgradeCannons, 1);
		var0.EnableAIFeatures(aiBuildBuilders, 1);
		var0.EnableAIFeatures(aiBuildRepairers, 1);
		var0.EnableAIFeatures(aiEnabled, 1);
		var0.EnableAIFeatures(aiBuildBuildings, 1);
		var0.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var0.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var0.EnableAIFeatures(aiControlSupplyUnits, 1);
		var0.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var0.EnableAIFeatures(aiBuildTanks, 1);
		var0.EnableAIFeatures(aiBuildHelicopters, 1);
		var0.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var0.EnableAIFeatures(aiDefenseTowers, 1);
		var0.EnableAIFeatures(aiControlDefense, 1);
		var0.EnableAIFeatures(aiControlOffense, 1);
		var0.EnableAIFeatures(aiControlMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var0.EnableAI(0);
		
		var1.EnableAIFeatures(aiRejectAlliance, 0);
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
		var1.EnableAIFeatures(aiControlOffense, 0);
		var1.EnableAIFeatures(aiControlMiningUnits, 1);
		var1.EnableAIFeatures(aiBuildMiningUnits, 1);
		var1.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var1.EnableAI(0);
		
		var0.SetAlly(var1);
		var2.SetAlly(var1);
		
		ShowVideo("LC_M06");
		
		return State2, 40;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableGoal(0, 1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingDS_LC_M0601_getDataFromE_protectHQ", var2.GetName());
		
		return State3, 10;
	}
	
	state State3
	{
		unitex loc0;
		
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		loc0 = var1.GetScriptUnit(0);
		loc0.CommandMove(GetPointX(0), GetPointY(0), 0);
		ShowArea(var2.GetIFF(), loc0.GetLocationX(), loc0.GetLocationY(), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		var2.DelayedLookAt(loc0.GetLocationX(), loc0.GetLocationY(), 5, 128, 30, 0, 40, 1);
		
		if(loc0.GetLocationX() == GetPointX(0) && loc0.GetLocationY() == GetPointY(0))
		{
			loc0.CommandHoldPosition();
			
			loc0 = var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSP1", null, 0);
			loc0.CommandMove(GetPointX(2), GetPointY(2), 0);
			var0.SetScriptUnit(1, loc0);
			
			var2.DelayedLookAt(GetPointX(2), GetPointY(2), 5, 0, 30, 0, 20, 1);
			
			return State4, 10;
		}
		return State3, 20;
	}
	
	state State4
	{
		unitex loc0;
		
		loc0 = var0.GetScriptUnit(1);
		
		if (!loc0.IsMoving())
		{
			var1.SetAlly(var0);
			var2.SetAlly(var1);
			
			return State5, 100;
		}
		
		return State4, 10;
	}
	
	state State5
	{
		unitex loc0;
		
		SetConsoleText("");
		
		loc0 = var0.GetScriptUnit(1);
		loc0.CommandHoldPosition();
		
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingDS_LC_M0601_rescueUnit", var2.GetName());
		
		var0.EnableAI(1);
		SetTimer(0, 12000 + GetMissionTime());
		
		return State6, 100;
	}
	
	state State6
	{
		unitex loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		int loc5;
		int loc6;
		
		loc0 = var1.GetScriptUnit(0);
		loc1 = GetPointX(30);
		loc2 = GetPointY(30);
		loc3 = GetPointX(31);
		loc4 = GetPointY(31);
		loc5 = loc0.GetLocationX();
		loc6 = loc0.GetLocationY();
		
		if (loc0 == null)
		{
			SetGoalState(0, 2);
			SetGoalState(1, 2);
			AddBriefing("translateFailedDS_LC_M0601_rescueUnit", var2.GetName());
			return State8, 50;
		}
		
		if (var2.GetNumberOfBuildings(buildingHeadquater) < 1)
		{
			SetGoalState(0, 2);
			SetGoalState(1, 2);
			AddBriefing("translateFailedDS_LC_M0601_protectHQ", var2.GetName());
			return State8, 50;
		}
		
		if (loc5 <= loc1 && loc6 <= loc2 && loc5 >= loc3 && loc6 >= loc4)
		{
			SetGoalState(1, 1);
			SetGoalState(2, 1);
			SetGoalState(0, 1);
			
			EnableNextMission(5, 1);
			AddBriefing("translateAccomplishedDS_LC_M0601_all", var2.GetName());
			EnableEndMissionButton(1);
			return State7, 20;
		}
		
		return State6, 200;
	}
	
	state State8
	{
		EnableNextMission(5, 2);
		EndMission(0);
	}
	
	state State7
	{
		return State7, 500;
	}
	
	event Timer0()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		unitex loc5;
		
		loc4 = Rand(2);
		loc3 = loc4 + 29;
		
		loc0 = var2.GetNumberOfUnits();
		loc2 = loc0 / 3;
		;
		if (GetDifficultyLevel() == 1)
		{
			loc2 = loc0 / 2;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc2 = (loc0 * 2) / 3;
		}
		
		if (loc4)
		{
			for (loc1 = 0; loc1 < loc2; loc1 = loc1 + 1)
			{
				var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 2);
				var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSH1", null, 2);
				var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHG2", null, null, null, 2);
			}
		}
		else
		{
			for (loc1 = 0; loc1 < loc2; loc1 = loc1 + 1)
			{
				var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 2);
				var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSWSH1", null, 2);
				var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHG2", null, null, null, 2);
			}
		}
		var0.Attack(GetPointX(loc3), GetPointY(loc3), 0);
		SetTimer(0, 12000 + GetMissionTime());
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var2.GetMoney();
		var2.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}