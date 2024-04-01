mission "translatemissionLS_ED_M06"
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
		unitex loc1;
		int loc2;
		int loc3;
		
		var10 = GetPlayer(1);
		var9 = GetPlayer(3);
		var13 = GetPlayer(2);
		var11 = GetPlayer(8);
		var12 = GetPlayer(0);
		
		RegisterGoal(0, "translateGoalLS_ED_M06_destroyEDDamm");
		RegisterGoal(1, "translateGoalLS_ED_M06_alive2Trucks");
		RegisterGoal(2, "translateGoalLS_ED_M06_position2Trucks");
		var9.EnableStatistics(0);
		var10.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var12.LoadScript("single\\singleEasy");
			var11.LoadScript("single\\singleEasy");
			var13.SetMoney(20000);
			var2 = 0;
			var3 = 15000;
		}
		if (GetDifficultyLevel() == 1)
		{
			var12.LoadScript("single\\singleMedium");
			var11.LoadScript("single\\singleMedium");
			var13.SetMoney(15000);
			var2 = 1;
			var3 = 13000;
		}
		if (GetDifficultyLevel() == 2)
		{
			var11.LoadScript("single\\singleHard");
			var12.LoadScript("single\\singleHard");
			var13.SetMoney(10000);
			var2 = 2;
			var3 = 11000;
		}
		
		var13.EnableAIFeatures(aiEnabled, 0);
		var13.EnableCommand(commandSoldBuilding, 1);
		
		var12.SetMoney(500000);
		var11.SetMoney(200000);
		
		var13.EnableResearch("RES_ED_SCR3", 1);
		
		var13.EnableBuilding("EDBBPP", 1);
		var13.EnableBuilding("EDBBA", 1);
		var13.EnableBuilding("EDBFA", 1);
		var13.EnableBuilding("EDBAB", 1);
		var13.EnableBuilding("EDBBRE", 1);
		var13.EnableBuilding("EDBMI", 1);
		var13.EnableBuilding("EDBST", 1);
		var13.EnableBuilding("EDBPB", 1);
		var13.EnableBuilding("EDBBT", 1);
		var13.EnableBuilding("EDBHT", 1);
		var13.EnableBuilding("EDBRA", 1);
		var13.EnableBuilding("EDBLZ", 1);
		var13.EnableBuilding("EDBWB", 0);
		var13.EnableBuilding("EDBRC", 0);
		var13.EnableBuilding("EDBTC", 0);
		var13.EnableBuilding("EDBHQ", 0);
		var13.EnableBuilding("EDBEN1", 0);
		
		var11.CopyResearches(var13);
		var11.EnableBuilding("EDBBPP", 1);
		var11.EnableBuilding("EDBBA", 1);
		var11.EnableBuilding("EDBFA", 1);
		var11.EnableBuilding("EDBAB", 1);
		var11.EnableBuilding("EDBBRE", 1);
		var11.EnableBuilding("EDBMI", 1);
		var11.EnableBuilding("EDBST", 1);
		var11.EnableBuilding("EDBPB", 1);
		var11.EnableBuilding("EDBBT", 1);
		var11.EnableBuilding("EDBHT", 1);
		var11.EnableBuilding("EDBRA", 1);
		var11.EnableBuilding("EDBLZ", 0);
		var11.EnableBuilding("EDBWB", 0);
		var11.EnableBuilding("EDBRC", 0);
		var11.EnableBuilding("EDBTC", 0);
		var11.EnableBuilding("EDBHQ", 0);
		var11.EnableBuilding("EDBEN1", 0);
		
		var12.CopyResearches(var13);
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
		var12.EnableBuilding("EDBLZ", 0);
		var12.EnableBuilding("EDBWB", 0);
		var12.EnableBuilding("EDBRC", 0);
		var12.EnableBuilding("EDBTC", 0);
		var12.EnableBuilding("EDBHQ", 0);
		var12.EnableBuilding("EDBEN1", 0);
		
		var0 = 0;
		var8 = 0;
		
		for (loc2 = 0; loc2 < 3; loc2 = loc2 + 1)
		{
			loc0 = var13.CreateUnitEx(GetPointX(0) + loc2, GetPointY(0), 0, null, "EDUMM11", null, null, null, null, 3);
			var13.SetScriptUnit(loc2, loc0);
			loc0.SetUnitName("translateUnitTruck");
		}
		
		for (loc2 = 0; loc2 < 10; loc2 = loc2 + 1)
		{
			loc3 = loc2 * 5 + 30;
			loc1 = GetUnit(GetPointX(loc3), GetPointY(loc3));
			loc1.CommandSetContainerSource(GetUnit(GetPointX(loc3 + 1), GetPointY(loc3 + 1)));
			loc1.CommandSetContainerSource(GetUnit(GetPointX(loc3 + 1), GetPointY(loc3 + 1)));
			loc1.CommandSetContainerDestination(GetUnit(GetPointX(loc3 + 2), GetPointY(loc3 + 2)));
			loc1 = GetUnit(GetPointX(loc3 + 3), GetPointY(loc3 + 3));
			loc1.CommandSetContainerSource(GetUnit(GetPointX(loc3 + 4), GetPointY(loc3 + 4)));
			loc1.CommandSetContainerSource(GetUnit(GetPointX(loc3 + 4), GetPointY(loc3 + 4)));
			loc1.CommandSetContainerDestination(GetUnit(GetPointX(loc3 + 2), GetPointY(loc3 + 2)));
		}
		loc1 = GetUnit(GetPointX(80), GetPointY(80));
		loc1.CommandSetContainerSource(GetUnit(GetPointX(81), GetPointY(81)));
		loc1.CommandSetContainerDestination(GetUnit(GetPointX(82), GetPointY(82)));
		loc1 = GetUnit(GetPointX(83), GetPointY(83));
		loc1.CommandSetContainerSource(GetUnit(GetPointX(84), GetPointY(84)));
		loc1.CommandSetContainerDestination(GetUnit(GetPointX(82), GetPointY(82)));
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY() + 10, 20, 0, 10, 0);
		var13.DelayedLookAt(var13.GetStartingPointX(), var13.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
		var12.SetNumberOfOffensiveTankPlatoons(6);
		var12.SetNumberOfOffensiveHelicopterPlatoons(6);
		var12.SetMaxTankPlatoonSize(10);
		var12.SetNumberOfDefensiveTankPlatoons(4);
		var12.SetMaxAttackFrequency(0);
		var12.SetMaxHelicopterPlatoonSize(6);
		
		var12.EnableAIFeatures(aiRejectAlliance, 0);
		var12.EnableAIFeatures(aiUpgradeCannons, 1);
		var12.EnableAIFeatures(aiBuildBuilders, 1);
		var12.EnableAIFeatures(aiBuildRepairers, 1);
		var12.EnableAIFeatures(aiEnabled, 1);
		var12.EnableAIFeatures(aiBuildBuildings, 1);
		var12.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var12.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var12.EnableAIFeatures(aiControlSupplyUnits, 1);
		var12.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var12.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var12.EnableAIFeatures(aiDefenseTowers, 1);
		var12.EnableAIFeatures(aiControlDefense, 1);
		var12.EnableAIFeatures(aiControlMiningUnits, 0);
		var12.EnableAIFeatures(aiBuildMiningUnits, 1);
		var12.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var12.EnableAIFeatures(aiBuildHelicopters, 0);
		var12.EnableAIFeatures(aiControlOffense, 1);
		var12.EnableAIFeatures(aiBuildTanks, 1);
		var12.EnableAI(1);
		
		var11.SetNumberOfOffensiveTankPlatoons(6);
		var11.SetNumberOfOffensiveHelicopterPlatoons(6);
		var11.SetMaxTankPlatoonSize(10);
		var11.SetNumberOfDefensiveTankPlatoons(4);
		var11.SetMaxAttackFrequency(0);
		var11.SetMaxHelicopterPlatoonSize(6);
		
		var11.EnableAIFeatures(aiRejectAlliance, 0);
		var11.EnableAIFeatures(aiUpgradeCannons, 1);
		var11.EnableAIFeatures(aiBuildBuilders, 1);
		var11.EnableAIFeatures(aiBuildRepairers, 1);
		var11.EnableAIFeatures(aiEnabled, 1);
		var11.EnableAIFeatures(aiBuildBuildings, 1);
		var11.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var11.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var11.EnableAIFeatures(aiControlSupplyUnits, 1);
		var11.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var11.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var11.EnableAIFeatures(aiDefenseTowers, 1);
		var11.EnableAIFeatures(aiControlDefense, 1);
		var11.EnableAIFeatures(aiControlMiningUnits, 0);
		var11.EnableAIFeatures(aiBuildMiningUnits, 1);
		var11.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var11.EnableAIFeatures(aiBuildHelicopters, 1);
		var11.EnableAIFeatures(aiControlOffense, 1);
		var11.EnableAIFeatures(aiBuildTanks, 0);
		var11.EnableAI(1);
		
		var12.SetAlly(var11);
		var11.SetAlly(var12);
		
		ShowVideo("ED_M06");
		
		return State2, 60;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(1, 1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M06_destroyEDDamm", var13.GetName());
		SetTimer(1, var3 + GetMissionTime());
		SetTimer(2, var3 + GetMissionTime());
		
		return State5, 1;
	}
	
	state State5
	{
		int loc0;
		int loc1;
		
		if (var0 == 1)
		{
			var0 = 0;
			if (var12.GetNumberOfBuildings() == 0)
			{
				var4 = 0;
				var5 = 1;
				SetTimer(0, 20);
				SetTimer(1, 0);
				return State4, 20;
			}
			if (var8 == 0)
			{
				if (var11.GetNumberOfBuildings() == 0)
				{
					AddBriefing("translateInfoLS_ED_M06_p_EDFoodKilled", var13.GetName());
					SetTimer(2, 0);
					var8 = 1;
				}
			}
		}
		return State5, 100;
	}
	
	state State4
	{
		if (var4 == 0)
		{
			CallCamera();
			EnableInterface(0);
			EnableCameraMovement(0);
			SetConsoleText("translateIncomingEvent");
			
			var13.LookAt(GetPointX(4), GetPointY(4), 20, 192, 10, 0);
			var13.DelayedLookAt(GetPointX(5), GetPointY(5), 20, 64, 10, 0, 100, 1);
			var4 = 1;
			return State4, 100;
		}
		if (var4 == 1)
		{
			var13.DelayedLookAt(GetPointX(6), GetPointY(6), 20, 64, 10, 0, 200, 1);
			var4 = 2;
			return State4, 150;
		}
		if (var4 == 2)
		{
			SetTimer(0, 0);
			var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY(), 20, 0, 10, 0);
			return State3, 10;
		}
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(2, 1);
		SetGoalState(0, 1);
		AddBriefing("translateAccomplishedLS_ED_M06_destroyEDDamm_NOWPosition2Trucks", var13.GetName());
		
		return State6, 1;
	}
	
	state State6
	{
		int loc0;
		unitex loc1;
		int loc2;
		int loc3;
		int loc4;
		
		if (var0 == 1)
		{
			var0 = 0;
			if (var8 == 0 && var11.GetNumberOfBuildings() == 0)
			{
				AddBriefing("translateInfoLS_ED_M06_p_EDFoodKilled", var13.GetName());
				var8 = 1;
				SetTimer(2, 0);
			}
		}
		for (loc0 = 0; loc0 < 3; loc0 = loc0 + 1)
		{
			loc1 = var13.GetScriptUnit(loc0);
			if (loc1 != null)
			{
				loc2 = Distance(loc1.GetLocationX(), loc1.GetLocationY(), GetPointX(7), GetPointY(7));
				if (loc2 < 3)
				{
					loc3 = 1;
				}
				loc2 = Distance(loc1.GetLocationX(), loc1.GetLocationY(), GetPointX(8), GetPointY(8));
				if (loc2 < 3)
				{
					loc4 = 1;
				}
			}
		}
		
		if (loc3 == 1 && loc4 == 1)
		{
			SetGoalState(2, 1);
			SetGoalState(1, 1);
			AddBriefing("translateAccomplishedLS_ED_M06_all", var13.GetName());
			EnableNextMission(6, 1);
			EndMission(1);
			return State7, 20;
		}
		return State6, 100;
	}
	
	state State8
	{
		EnableNextMission(6, 2);
		EndMission(0);
	}
	
	state State7
	{
		return State7, 500;
	}
	
	event Timer0()
	{
		if (var5 == 1)
		{
			ShowArea(var13.GetIFF(), GetPointX(7), GetPointY(7), 0, 8, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var13.GetIFF(), GetPointX(8), GetPointY(8), 0, 8, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		int loc5;
		
		loc4 = Rand(5) + 13;
		loc5 = Rand(2) + 11;
		
		loc1 = var13.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = var11.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 + var12.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc1 - loc2;
		
		if (loc3 < 0)
		{
			loc3 = 0;
		}
		
		loc3 = loc3 + var2;
		loc3 = loc3 * 8 / 10;
		
		if (loc3 > 40)
		{
			loc3 = 40;
		}
		
		for (loc0 = 0; loc0 < loc3 / 2; loc0 = loc0 + 1)
		{
			var12.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "EDUHT3", "EDWHC2", null, "EDBANNER", null, 3);
			var12.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "EDUHT3", "EDWHL3", null, "EDWSR3", null, 3);
		}
		
		var12.Attack(GetPointX(loc4), GetPointY(loc4), 0);
		SetTimer(1, var3 + GetMissionTime());
	}
	
	event Timer2()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		
		loc4 = Rand(5) + 13;
		
		loc1 = var13.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = var11.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 + var12.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc1 - loc2;
		
		if (loc3 < 0)
		{
			loc3 = 0;
		}
		
		loc3 = loc3 + var2;
		loc3 = loc3 * 2 / 10;
		
		if (loc3 > 40)
		{
			loc3 = 40;
		}
		
		for (loc0 = 0; loc0 < loc3; loc0 = loc0 + 1)
		{
			var11.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "EDUA41", "EDWAMR2", null, null, null, 3);
		}
		
		var11.Attack(GetPointX(loc4), GetPointY(loc4), 0);
		SetTimer(2, var3 + GetMissionTime());
	}
	
	event EndMission()
	{
	}
	
	event UnitDestroyed(unit uUnit)
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		loc1 = 0;
		for (loc0 = 0; loc0 < 3; loc0 = loc0 + 1)
		{
			loc2 = var13.GetScriptUnit(loc0);
			if (loc2 != null)
			{
				loc1 = loc1 + 1;
			}
		}
		
		if (loc1 < 2)
		{
			SetGoalState(1, 2);
			AddBriefing("translateFailedLS_ED_M06_alive2Trucks", var13.GetName());
			state State8;
		}
		
		var0 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var0 = 1;
	}

}