mission "translatemissionLS_ED_M05"
{
	int var0;
	int var1;
	int var2;
	int var3;
	int var4;
	int var5;
	int var6;
	int var7;
	player var8;
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
	state State10;
	state State11;
	
	state State0
	{
		unitex loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		var9 = GetPlayer(1);
		var8 = GetPlayer(3);
		var12 = GetPlayer(2);
		var10 = GetPlayer(0);
		var11 = GetPlayer(7);
		
		RegisterGoal(0, "translateGoalLS_ED_M05_destroyTraitor");
		RegisterGoal(1, "translateGoalLS_ED_M05_defendBase");
		RegisterGoal(2, "translateGoalLS_ED_M05_destroyCommand");
		var8.EnableStatistics(0);
		var9.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var11.LoadScript("single\\singleHard");
			var10.LoadScript("single\\singleEasy");
			var12.SetMoney(15000);
			var2 = 0;
			var3 = 7000;
		}
		if (GetDifficultyLevel() == 1)
		{
			var11.LoadScript("single\\singleMedium");
			var10.LoadScript("single\\singleMedium");
			var12.SetMoney(10000);
			var2 = 2;
			var3 = 6000;
		}
		if (GetDifficultyLevel() == 2)
		{
			var10.LoadScript("single\\singleHard");
			var11.LoadScript("single\\singleEasy");
			var12.SetMoney(5000);
			var2 = 4;
			var3 = 5000;
		}
		
		var12.EnableAIFeatures(aiEnabled, 0);
		var12.EnableCommand(commandSoldBuilding, 1);
		
		var11.SetMoney(200000);
		var10.SetMoney(500000);
		
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
		var12.EnableBuilding("EDBWB", 0);
		var12.EnableBuilding("EDBRC", 0);
		var12.EnableBuilding("EDBTC", 0);
		var12.EnableBuilding("EDBHQ", 0);
		var12.EnableBuilding("EDBEN1", 0);
		
		var10.CopyResearches(var12);
		var10.EnableBuilding("EDBBPP", 1);
		var10.EnableBuilding("EDBBA", 1);
		var10.EnableBuilding("EDBFA", 1);
		var10.EnableBuilding("EDBAB", 1);
		var10.EnableBuilding("EDBBRE", 1);
		var10.EnableBuilding("EDBMI", 1);
		var10.EnableBuilding("EDBST", 1);
		var10.EnableBuilding("EDBPB", 1);
		var10.EnableBuilding("EDBBT", 1);
		var10.EnableBuilding("EDBHT", 1);
		var10.EnableBuilding("EDBRA", 1);
		var10.EnableBuilding("EDBLZ", 0);
		var10.EnableBuilding("EDBWB", 0);
		var10.EnableBuilding("EDBRC", 0);
		var10.EnableBuilding("EDBTC", 0);
		var10.EnableBuilding("EDBHQ", 0);
		var10.EnableBuilding("EDBEN1", 0);
		
		var11.CopyResearches(var12);
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
		
		var0 = 0;
		
		for (loc2 = 0; loc2 < 10; loc2 = loc2 + 1)
		{
			var12.CreateUnitEx(GetPointX(7), GetPointY(7) + loc2, 0, null, "EDUHT3", "EDWMR3", null, null, null, 3);
			var12.CreateUnitEx(GetPointX(7) + 1, GetPointY(7) + loc2, 0, null, "EDUHT3", "EDWHC2", null, "EDBANNER", null, 3);
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
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var12.LookAt(var12.GetStartingPointX(), var12.GetStartingPointY() - 5, 20, 0, 10, 0);
		var12.DelayedLookAt(var12.GetStartingPointX(), var12.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
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
		var11.EnableAIFeatures(aiControlOffense, 0);
		var11.EnableAIFeatures(aiBuildTanks, 0);
		var11.EnableAI(1);
		
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
		var10.EnableAIFeatures(aiBuildBuildings, 1);
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
		var10.EnableAIFeatures(aiBuildHelicopters, 1);
		var10.EnableAIFeatures(aiControlOffense, 1);
		var10.EnableAIFeatures(aiBuildTanks, 1);
		var10.EnableAI(0);
		
		var11.SetNeutral(var12);
		var12.SetNeutral(var11);
		
		var10.ChooseEnemy(var11);
		var10.SetEnemy(var11);
		var12.SetAlly(var10);
		
		var5 = 1;
		var4 = 0;
		SetTimer(0, 20);
		
		return State4, 60;
	}
	
	state State4
	{
		if (var4 == 0)
		{
			var12.LookAt(GetPointX(0), GetPointY(0), 20, 0, 10, 0);
			var12.DelayedLookAt(GetPointX(1), GetPointY(1), 20, 0, 10, 0, 150, 1);
			var4 = 1;
			return State4, 150;
		}
		if (var4 == 1)
		{
			var12.DelayedLookAt(GetPointX(2), GetPointY(2), 20, 0, 10, 0, 150, 1);
			var4 = 2;
			return State4, 150;
		}
		if (var4 == 2)
		{
			SetTimer(0, 0);
			var12.LookAt(var12.GetStartingPointX(), var12.GetStartingPointY(), 20, 0, 10, 0);
			ShowVideo("ED_M05");
			return State2, 10;
		}
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M05_destroyTraitor", var12.GetName());
		
		return State7, 1;
	}
	
	state State7
	{
		int loc0;
		int loc1;
		unitex loc2;
		unitex loc3;
		
		if (var12.IsPointLocated(GetPointX(3), GetPointY(3)))
		{
			SetGoalState(0, 2);
			AddBriefing("translateBriefingLS_ED_M05_meeting", var12.GetName());
			SetTimer(0, 20);
			
			var5 = 2;
			var4 = 0;
			
			for (loc0 = 0; loc0 < 10; loc0 = loc0 + 1)
			{
				loc2 = var10.CreateUnitEx(GetPointX(4), GetPointY(4) + loc0, 0, null, "EDUHT3", "EDWHC2", null, "EDBANNER", null, 3);
				loc2.BeginRecord();
				loc2.CommandHoldPosition();
				loc2.CommandMove(GetPointX(5), GetPointY(5), 0);
				
				for (loc1 = 8; loc1 < 13; loc1 = loc1 + 1)
				{
					loc3 = GetUnit(GetPointX(loc1), GetPointY(loc1), 0);
					loc2.CommandAttack(loc3);
				}
				loc2.EndRecord();
				loc2.ExecuteRecord();
				
				loc2 = var10.CreateUnitEx(GetPointX(4) + 1, GetPointY(4) + loc0, 0, null, "EDUA32", "EDWAMR2", null, null, null, 3);
				loc2.BeginRecord();
				loc2.CommandHoldPosition();
				loc2.CommandMove(GetPointX(5), GetPointY(5), 0);
				
				for (loc1 = 13; loc1 < 18; loc1 = loc1 + 1)
				{
					loc3 = GetUnit(GetPointX(loc1), GetPointY(loc1), 0);
					loc2.CommandAttack(loc3);
				}
				loc2.EndRecord();
				loc2.ExecuteRecord();
				
				var6 = var10.GetNumberOfUnits();
				var7 = var11.GetNumberOfBuildings();
			}
			
			return State5, 20;
		}
		return State7, 100;
	}
	
	state State5
	{
		if (var4 == 0)
		{
			var11.ChooseEnemy(var10);
			var11.SetEnemy(var10);
			var12.SetAlly(var11);
			var12.ChooseEnemy(var10);
			var12.SetEnemy(var10);
			var12.SetAlly(var11);
			var10.ChooseEnemy(var11);
			var10.SetEnemy(var11);
			
			CallCamera();
			EnableInterface(0);
			EnableCameraMovement(0);
			SetConsoleText("translateIncomingEvent");
			
			var12.LookAt(GetPointX(4), GetPointY(4), 20, 128, 10, 0);
			var12.DelayedLookAt(GetPointX(5), GetPointY(5), 20, 128, 10, 0, 200, 1);
			var4 = 1;
			return State5, 200;
		}
		if (var4 == 1)
		{
			SetTimer(0, 0);
			var12.LookAt(var12.GetStartingPointX(), var12.GetStartingPointY(), 20, 0, 10, 0);
			return State3, 10;
		}
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingLS_ED_M05_defendBase", var12.GetName());
		
		return State8, 1;
	}
	
	state State8
	{
		int loc0;
		
		if (var1 == 1)
		{
			var1 = 0;
			loc0 = var10.GetNumberOfUnits();
			if (loc0 + 12 < var6)
			{
				var12.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUBU1", null, null, null, null, 3);
				SetTimer(0, 20);
				var5 = 3;
				var4 = 0;
				
				return State6, 20;
			}
		}
		
		if (var0 == 1)
		{
			var0 = 0;
			loc0 = var11.GetNumberOfBuildings();
			if (loc0 + 10 < var6)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_ED_M05_DefendTraitor", var12.GetName());
				return State11, 20;
			}
		}
		return State8, 100;
	}
	state State6
	{
		if (var4 == 0)
		{
			CallCamera();
			EnableInterface(0);
			EnableCameraMovement(0);
			SetConsoleText("translateIncomingEvent");
			
			var12.LookAt(GetPointX(4), GetPointY(4), 20, 128, 10, 0);
			var12.DelayedLookAt(GetPointX(4), GetPointY(4) + 2, 20, 0, 10, 0, 50, 0);
			var4 = 1;
			return State6, 50;
		}
		if (var4 == 1)
		{
			var12.DelayedLookAt(GetPointX(18), GetPointY(18), 20, 0, 10, 0, 50, 0);
			var4 = 2;
			return State6, 150;
		}
		if (var4 == 2)
		{
			var12.DelayedLookAt(GetPointX(19), GetPointY(19), 20, 0, 10, 0, 50, 0);
			var4 = 3;
			return State6, 150;
		}
		if (var4 == 3)
		{
			var12.DelayedLookAt(GetPointX(6), GetPointY(6), 20, 0, 10, 0, 100, 0);
			var4 = 4;
			return State6, 100;
		}
		if (var4 == 4)
		{
			EnableInterface(1);
			EnableCameraMovement(1);
			EnableGoal(2, 1);
			AddBriefing("translateChangedLS_ED_M05_destroyCommandBuildBase", var12.GetName());
			SetConsoleText("");
			
			var11.EnableAIFeatures(aiControlOffense, 1);
			var11.EnableAIFeatures(aiBuildTanks, 1);
			var10.EnableAI(1);
			
			SetTimer(0, 0);
			SetTimer(1, GetMissionTime() + var3);
			
			return State9, 10;
		}
	}
	
	state State9
	{
		if (var0 == 1)
		{
			var0 = 0;
			if (var11.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_ED_M05_DefendTraitor", var12.GetName());
				return State11, 20;
			}
			if (var12.GetNumberOfBuildings() == 0 && var12.GetNumberOfUnits() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_ED_M05_PlayerDead", var12.GetName());
				return State11, 20;
			}
			if (var10.GetNumberOfBuildings() == 0)
			{
				SetGoalState(2, 1);
				SetGoalState(1, 1);
				AddBriefing("translateAccomplishedLS_ED_M05_all", var12.GetName());
				EnableNextMission(5, 1);
				EnableEndMissionButton(1);
				SetTimer(1, 0);
				return State10, 20;
			}
		}
		return State9, 100;
	}
	
	state State11
	{
		EnableNextMission(5, 2);
		EndMission(0);
	}
	
	state State10
	{
		return State10, 500;
	}
	
	event Timer0()
	{
		if (var5 == 1)
		{
			ShowArea(var12.GetIFF(), GetPointX(0), GetPointY(0), 0, 1, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var12.GetIFF(), GetPointX(1), GetPointY(1), 0, 7, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var12.GetIFF(), GetPointX(2), GetPointY(2), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
		if (var5 == 2)
		{
			ShowArea(var12.GetIFF(), GetPointX(4), GetPointY(4), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var12.GetIFF(), GetPointX(5), GetPointY(5), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
		if (var5 == 3)
		{
			ShowArea(var12.GetIFF(), GetPointX(18), GetPointY(18), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var12.GetIFF(), GetPointX(19), GetPointY(19), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		
		loc4 = Rand(6) + 18;
		
		loc1 = var12.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc1 = loc3 + var11.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = var10.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc1 - loc2;
		
		if (loc3 < 4)
		{
			loc3 = 4;
		}
		
		loc3 = loc3 + var2;
		
		if (loc3 > 42)
		{
			loc3 = 42;
		}
		
		for (loc0 = 0; loc0 < loc3 / 3; loc0 = loc0 + 1)
		{
			var10.CreateUnitEx(GetPointX(24), GetPointY(24), 0, null, "EDUHT3", "EDWHC2", null, "EDBANNER", null, 3);
			var10.CreateUnitEx(GetPointX(24), GetPointY(24), 0, null, "EDUHT3", "EDWHL3", null, "EDWSR3", null, 3);
			var10.CreateUnitEx(GetPointX(24), GetPointY(24), 0, null, "EDUA41", "EDWAMR2", null, null, null, 3);
		}
		
		var10.Attack(GetPointX(loc4), GetPointY(loc4), 0);
		SetTimer(1, var3 + GetMissionTime());
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
		var1 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var0 = 1;
	}

}