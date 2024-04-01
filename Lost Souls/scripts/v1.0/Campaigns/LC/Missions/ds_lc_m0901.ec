mission "translateMissionDS_LC_M0801"
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
	
	
	state State0
	{
		int loc0;
		unitex loc1;
		
		var0 = GetPlayer(1);
		var2 = GetPlayer(0);
		var1 = GetPlayer(3);
	
		RegisterGoal(0, "translateGoalDS_LC_M0901_technicanAlive");
		RegisterGoal(1, "translateGoalDS_LC_M0901_ionAlive");
		RegisterGoal(2, "translateGoalDS_LC_M0901_golanAlive");
		RegisterGoal(3, "translateGoalDS_LC_M0901_deactivateGolan");
		RegisterGoal(4, "translateGoalDS_LC_M0901_technicanToGolan");
		
		var1.SetMoney(2000);
		var2.LoadScript("single\\singleHard");
		
		if(GetDifficultyLevel() == 0)
		{
			var0.LoadScript("single\\singleEasy");
		}
		if(GetDifficultyLevel() == 1)
		{
			var0.LoadScript("single\\singleMedium");
		}
		if(GetDifficultyLevel() == 2)
		{
			var0.LoadScript("single\\singleHard");
		}
		var0.SetMoney(600000);
		
		var1.EnableCommand(commandSoldBuilding, 1);
		var1.EnableAIFeatures(aiEnabled, 0);
		var1.EnableBuilding("LCBBF", 1);
		var1.EnableBuilding("LCBMR", 1);
		var1.EnableBuilding("LCBPP", 1);
		var1.EnableBuilding("LCBBA", 1);
		var1.EnableBuilding("LCBAB", 1);
		var1.EnableBuilding("LCBDE", 1);
		var1.EnableBuilding("LCBHQ", 1);
		var1.EnableBuilding("LCBSB", 1);
		var1.EnableBuilding("LCBLZ", 1);
		var1.EnableBuilding("WLASER", 1);
		var1.EnableBuilding("LCBNE", 1);
		var1.EnableBuilding("LCBUC", 1);
		var1.EnableBuilding("LCBCC", 1);
		var1.EnableBuilding("LCBEN1", 1);
		var1.EnableBuilding("LCBEN2", 1);
		var1.EnableBuilding("LCBRC", 0);
		var1.EnableBuilding("LCBSR", 0);
		var1.EnableBuilding("LCBGA", 1);
		var1.EnableBuilding("LCBSD", 0);
		var1.EnableBuilding("LCBWC", 0);
		var1.EnableBuilding("LCBSS", 0);
		var1.EnableBuilding("LCBPP2", 1);
		var1.EnableBuilding("LCBART", 0);
		
		for (loc0 = 0; loc0 < 4; loc0 = loc0 + 1)
		{
			loc1 = GetUnit(GetPointX(loc0), GetPointY(loc0), 0);
			var1.SetScriptUnit(loc0, loc1);
		}
		
		loc1.SetUnitName("translateNameDS_LC_M0901_technican");
		
		CallCamera();
		SetConsoleText("translateIncomingEvent");
		var4 = 0;
		EnableInterface(0);
		EnableCameraMovement(0);
		
		var1.LookAt(var1.GetStartingPointX() - 10, var1.GetStartingPointY(), 10, 64, 10, 0);
		var1.DelayedLookAt(var1.GetStartingPointX(), var1.GetStartingPointY(), 15, 0, 30, 0, 30, 1);
		return State1, 1;
	}
	
	state State1
	{
		var0.SetNumberOfOffensiveHelicopterPlatoons(2);
		var0.SetNumberOfOffensiveTankPlatoons(6);
		var0.SetMaxHelicopterPlatoonSize(10);
		var0.SetMaxTankPlatoonSize(10);
		var0.SetNumberOfDefensiveTankPlatoons(1);
		var0.SetNumberOfDefensiveHelicopterPlatoons(0);
		
		var0.EnableAIFeatures(aiRejectAlliance, 1);
		var0.EnableAIFeatures(aiUpgradeCannons, 1);
		var0.EnableAIFeatures(aiBuildBuilders, 1);
		var0.EnableAIFeatures(aiBuildRepairers, 1);
		var0.EnableAIFeatures(aiEnabled, 1);
		var0.EnableAIFeatures(aiBuildBuildings, 1);
		var0.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var0.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var0.EnableAIFeatures(aiControlSupplyUnits, 1);
		var0.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var0.EnableAIFeatures(aiBuildTanks, 0);
		var0.EnableAIFeatures(aiBuildHelicopters, 0);
		var0.EnableAIFeatures(aiBuildMilitaryFactory, 0);
		var0.EnableAIFeatures(aiDefenseTowers, 1);
		var0.EnableAIFeatures(aiControlDefense, 1);
		var0.EnableAIFeatures(aiControlOffense, 1);
		var0.EnableAIFeatures(aiControlMiningUnits, 0);
		var0.EnableAIFeatures(aiBuildMiningUnits, 0);
		var0.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var0.EnableAI(1);
		
		var2.SetNumberOfOffensiveHelicopterPlatoons(0);
		var2.SetNumberOfOffensiveTankPlatoons(4);
		var2.SetMaxHelicopterPlatoonSize(10);
		var2.SetMaxTankPlatoonSize(10);
		var2.SetNumberOfDefensiveTankPlatoons(0);
		var2.SetNumberOfDefensiveHelicopterPlatoons(0);
		
		var2.EnableAIFeatures(aiRejectAlliance, 0);
		var2.EnableAIFeatures(aiUpgradeCannons, 1);
		var2.EnableAIFeatures(aiBuildBuilders, 1);
		var2.EnableAIFeatures(aiBuildRepairers, 1);
		var2.EnableAIFeatures(aiEnabled, 1);
		var2.EnableAIFeatures(aiBuildBuildings, 1);
		var2.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var2.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var2.EnableAIFeatures(aiControlSupplyUnits, 1);
		var2.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var2.EnableAIFeatures(aiBuildTanks, 1);
		var2.EnableAIFeatures(aiBuildHelicopters, 1);
		var2.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var2.EnableAIFeatures(aiDefenseTowers, 1);
		var2.EnableAIFeatures(aiControlDefense, 1);
		var2.EnableAI(1);
		
		var3 = 0;
		SetTimer(0, 9600);
		SetTimer(2, 72000);
		SetTimer(1, 18000);
		SetTimer(3, 6000);
		
		ShowVideo("LC_M09");
		
		return State2, 30;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(1, 1);
		EnableGoal(2, 1);
		EnableGoal(3, 1);
		EnableGoal(4, 1);
		AddBriefing("translateBriefingDS_LC_M0901_allInOne", var1.GetName());
		
		var1.SetAlly(var2);
		
		return State3, 10;
	}
	
	state State3
	{
		unitex loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		int loc5;
		int loc6;
		int loc7;
		int loc8;
		
		loc0 = GetUnit(GetPointX(10), GetPointY(10), 0);
		
		if (loc0 != null && GetGoalState(3) == 0 && loc0.IsDisabled())
		{
			SetGoalState(3, 1);
			if (GetGoalState(4) == 1)
			{
				SetGoalState(2, 1);
				SetGoalState(1, 1);
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedDS_LC_M0901_all", var1.GetName());
				EnableNextMission(8, 1);
				EnableEndMissionButton(1);
				return State4, 100;
			}
			else
			{
				AddBriefing("translateAccomplishedDS_LC_M0901_deactivateGolan", var1.GetName());
			}
		}
		if (var3 == 1)
		{
			var3 = 0;
			if (loc0 == null || loc0.IsBuilding() == 0)
			{
				SetGoalState(2, 2);
				AddBriefing("translateFailedDS_LC_M0901_golanAlive", var1.GetName());
				return State5, 50;
			}
			
			loc0 = var1.GetScriptUnit(3);
			if (loc0 == null)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedDS_LC_M0901_technicanAlive", var1.GetName());
				return State5, 50;
			}
			
			loc2 = 0;
			for (loc1 = 0; loc1 < 3; loc1 = loc1 + 1)
			{
				loc0 = var1.GetScriptUnit(loc1);
				if (loc0 != null)
				{
					loc2 = loc2 + 1;
				}
			}
			if (loc2 == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M0901_ionAlive", var1.GetName());
				return State5, 50;
			}
		}
		loc0 = var1.GetScriptUnit(3);
		loc3 = loc0.GetLocationX();
		loc4 = loc0.GetLocationY();
		loc5 = GetPointX(4);
		loc6 = GetPointY(4);
		loc7 = GetPointX(5);
		loc8 = GetPointY(5);
		
		if (loc3 >= loc5 && loc4 >= loc6 && loc3 <= loc7 && loc4 <= loc8)
		{
			SetGoalState(4, 1);
			if (GetGoalState(3) == 1)
			{
				SetGoalState(2, 1);
				SetGoalState(1, 1);
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedDS_LC_M0901_all", var1.GetName());
				EnableNextMission(8, 1);
				EnableEndMissionButton(1);
				SetTimer(0, 0);
				SetTimer(1, 0);
				return State4, 100;
			}
			else
			{
				AddBriefing("translateAccomplishedDS_LC_M0901_technicanToGolan", var1.GetName());
			}
		}
		return State3, 100;
	}
	
	state State4
	{
		return State4, 500;
	}
	
	state State5
	{
		EnableNextMission(8, 2);
		EndMission(0);
	}
	
	event Timer0()
	{
		int loc0;
		int loc1;
		
		loc1 = var1.GetNumberOfUnits() - var0.GetNumberOfUnits();
		
		if (loc1 < 2)
		{
			loc1 = 2;
		}
		
		if (GetDifficultyLevel() == 0)
		{
			loc1 = loc1 / 11 * 2 + var4 / 11 * 2;
		}
		if (GetDifficultyLevel() == 1)
		{
			loc1 = loc1 / 4 + var4 / 4;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc1 = loc1 / 7 * 2 + var4 / 7 * 2;
		}
		
		for (loc0 = 0; loc0 < loc1 / 2; loc0 = loc0 + 1)
		{
			var0.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 3);
			var0.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSWSH3", null, 3);
			var0.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", null, null, 3);
			var0.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", null, null, 3);
		}
		for (loc0 = 0; loc0 < loc1 / 2; loc0 = loc0 + 1)
		{
			var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSU4L3", "UCSWDHP2", "UCSBANNER", null, null, 3);
			var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSU4L3", "UCSWDHP2", "UCSWSSR3", null, null, 3);
			var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSU4L3", "UCSWDHP2", "UCSWSSP2", null, null, 3);
			var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSU4L3", "UCSWDHP2", "UCSWSSR3", null, null, 3);
		}
		
		var4 = var4 + 1;
	}
	
	event Timer1()
	{
		int loc0;
		
		for (loc0 = 0; loc0 < 8; loc0 = loc0 + 1)
		{
			var1.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 2);
			var1.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSR3", null, 2);
		}
		
		AddBriefing("translateInfoDS_LC_M0901_supportArrived", var1.GetName());
	}
	
	event Timer2()
	{
		var1.EnableBuilding("LCBART", 1);
		AddBriefing("translateInfoDS_LC_M0901_allowAri", var1.GetName());
		SetTimer(2, 0);
	}
	
	event Timer3()
	{
		int loc0;
		int loc1;
		
		loc0 = Rand(4);
		loc1 = loc0 + 8;
		
		if(loc1 > 8)
		{
			loc1 = loc1 + 2;
		}
		
		var0.Attack(GetPointX(loc1), GetPointY(loc1), 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var3 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var3 = 1;
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var1.GetMoney();
		var1.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}