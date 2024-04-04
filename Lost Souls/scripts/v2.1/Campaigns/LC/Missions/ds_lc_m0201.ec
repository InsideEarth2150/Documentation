mission "translateMissionDS_LC_M0201"
{
	player var0;
	player var1;
	player var2;
	int var3;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	
	
	state State0
	{
		var0 = GetPlayer(1);
		var0.EnableStatistics(0);
		
		var2 = GetPlayer(3);
		var1 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalDS_LC_M0201_destroyEnemyBase");
		
		if(GetDifficultyLevel() == 0)
		{
			var1.LoadScript("single\\singleEasy");
			var2.SetMoney(5000);
		}
		if(GetDifficultyLevel() == 1)
		{
			var1.LoadScript("single\\singleMedium");
			var2.SetMoney(2000);
		}
		if(GetDifficultyLevel() == 2)
		{
			var1.LoadScript("single\\singleHard");
		}
		var1.SetMoney(20000);
		
		var2.EnableAIFeatures(aiEnabled, 0);
		var2.SetMilitaryUnitsLimit(35000);
		var2.EnableBuilding("LCBBF", 1);
		var2.EnableBuilding("LCBMR", 1);
		var2.EnableBuilding("LCBPP", 1);
		var2.EnableBuilding("LCBBA", 1);
		var2.EnableBuilding("LCBAB", 1);
		var2.EnableBuilding("LCBDE", 1);
		var2.EnableBuilding("LCBHQ", 1);
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
		var2.EnableBuilding("LCBGA", 0);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 0);
		var2.EnableBuilding("LCBART", 0);
		var2.EnableResearch("RES_LCUFG2", 1);
		var2.EnableResearch("RES_LC_SOB1", 1);
		var2.EnableResearch("RES_LC_SHR2", 1);
		
		var1.AddResearch("RES_ED_UA21");
		var1.AddResearch("RES_ED_UA22");
		var1.AddResearch("RES_ED_UMW1");
		var1.AddResearch("RES_EDUSTEALTH");
		var1.AddResearch("RES_ED_BMD");
		var1.AddResearch("RES_ED_RepHand");
		var1.AddResearch("RES_ED_RepHand2");
		var1.AddResearch("RES_ED_SCR");
		var1.AddResearch("RES_ED_SGen");
		var1.AddResearch("RES_ED_MGen");
		var1.AddResearch("RES_ED_BC1");
		var1.EnableBuilding("EDBBPP", 1);
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
		
		CallCamera();
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		
		var2.LookAt(var2.GetStartingPointX() - 30, var2.GetStartingPointY(), 20, 64, 10, 0);
		var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		var1.SetMaxHelicopterPlatoonSize(4);
		var1.SetNumberOfOffensiveHelicopterPlatoons(4);
		var1.SetNumberOfOffensiveTankPlatoons(4);
		var1.SetMaxTankPlatoonSize(6);
		var1.SetNumberOfDefensiveTankPlatoons(4);
		
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
			loc0 = GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			
			loc0 = GetUnit(GetPointX(loc2), GetPointY(loc2));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 3), GetPointY(loc2 + 3)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 3), GetPointY(loc2 + 3)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
		}
		ShowVideo("LC_M02");
		
		return State2, 90;
	
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M0201_destroyEnemyBase", var2.GetName());
		SetTimer(0, 6000 + GetMissionTime());
		if (GetDifficultyLevel() == 0)
		{
			KillArea(var1.GetIFF(), GetPointX(2), GetPointY(2), GetPointZ(2), 6);
			KillArea(var1.GetIFF(), GetPointX(3), GetPointY(3), GetPointZ(3), 6);
		}
		return State3, 100;
	
	}
	
	state State3
	{
		if (var2.GetNumberOfBuildings() == 0)
		{
			SetGoalState(0, 2);
			AddBriefing("translateFailedDS_LC_M0201_destroyEnemyBase", var2.GetName());
			return State5, 50;
		}
		if (var1.GetNumberOfBuildings() == 0)
		{
			SetGoalState(0, 1);
			EnableNextMission(1, 1);
			AddBriefing("translateAccomplishedDS_LC_M0201_destroyEnemyBase", var2.GetName());
			EnableEndMissionButton(1);
			return State4;
		}
		if (var1.GetMoney() < 1000)
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
		return State3, 200;
	}
	
	state State5
	{
		EnableNextMission(1, 2);
		EndMission(0);
	}
	
	state State4
	{
		return State4, 500;
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var2.GetMoney();
		var2.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event Timer0()
	{
		int loc0;
		
		loc0 = Rand(2);
		var1.Attack(GetPointX(loc0), GetPointY(loc0), 0);
	}
}