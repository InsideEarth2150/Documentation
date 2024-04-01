mission "translatemissionLS_ED_M08"
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
	state State9;
	
	state State0
	{
		unitex loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		var10 = GetPlayer(1);
		var9 = GetPlayer(3);
		var13 = GetPlayer(2);
		var11 = GetPlayer(0);
		var12 = GetPlayer(14);
		
		RegisterGoal(0, "translateGoalLS_ED_M08_destroyED2");
		RegisterGoal(1, "translateGoalLS_ED_M08_keepRccAlive");
		RegisterGoal(2, "translateGoalLS_ED_M08_captureRcc");
		
		var9.EnableStatistics(0);
		var10.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var0 = 92000;
			var1 = 82000;
			var12.LoadScript("single\\singleHard");
			var11.LoadScript("single\\singleEasy");
			var13.SetMoney(15000);
			var4 = 0;
			var5 = 20000;
		}
		if (GetDifficultyLevel() == 1)
		{
			var0 = 82000;
			var1 = 72000;
			var11.LoadScript("single\\singleMedium");
			var12.LoadScript("single\\singleMedium");
			var13.SetMoney(10000);
			var4 = 1;
			var5 = 16000;
		}
		if (GetDifficultyLevel() == 2)
		{
			var0 = 72000;
			var1 = 62000;
			var11.LoadScript("single\\singleHard");
			var12.LoadScript("single\\singleHard");
			var13.SetMoney(8000);
			var4 = 2;
			var5 = 13000;
		}
		
		var13.EnableAIFeatures(aiEnabled, 0);
		var13.EnableCommand(commandSoldBuilding, 1);
		
		var11.SetMoney(500000);
		var12.SetMoney(0);
		
		var13.EnableResearch("RES_ED_AB1", 1);
		var13.EnableResearch("RES_ED_WHR1", 1);
		var13.EnableResearch("RES_ED_MHR2", 1);
		var13.EnableResearch("RES_ED_MB2", 1);
		var13.EnableResearch("RES_ED_ART", 1);
		var13.EnableResearch("RES_ED_BC1", 1);
		
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
		
		var2 = 0;
		
		for (loc2 = 0; loc2 < 7; loc2 = loc2 + 1)
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
		
		for (loc2 = 0; loc2 < 2; loc2 = loc2 + 1)
		{
			loc3 = loc2 * 3 + 65;
			loc1 = GetUnit(GetPointX(loc3), GetPointY(loc3));
			loc1.CommandSetContainerSource(GetUnit(GetPointX(loc3 + 1), GetPointY(loc3 + 1)));
			loc1.CommandSetContainerDestination(GetUnit(GetPointX(loc3 + 2), GetPointY(loc3 + 2)));
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY() + 5, 20, 0, 10, 0);
		var13.DelayedLookAt(var13.GetStartingPointX(), var13.GetStartingPointY() - 5, 20, 0, 10, 0, 100, 1);
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
		var12.EnableAIFeatures(aiBuildBuildings, 0);
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
		var12.EnableAI(0);
		
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
		var11.EnableAIFeatures(aiBuildBuildings, 0);
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
		var11.EnableAIFeatures(aiBuildTanks, 1);
		var11.EnableAI(1);
		
		var12.SetAlly(var11);
		var11.SetAlly(var12);
		var12.SetNeutral(var13);
		var13.SetNeutral(var12);
		
		var6 = 0;
		var7 = 1;
		
		SetTimer(0, 20);
		
		return State4, 100;
	}
	
	state State4
	{
		if (var6 == 0)
		{
			var13.LookAt(GetPointX(0), GetPointY(0), 20, 0, 10, 0);
			var13.DelayedLookAt(GetPointX(1), GetPointY(1), 20, 0, 10, 0, 100, 0);
			var6 = 1;
			return State4, 100;
		}
		if (var6 == 1)
		{
			var13.DelayedLookAt(GetPointX(2), GetPointY(2), 20, 0, 10, 0, 100, 1);
			var6 = 2;
			return State4, 100;
		}
		if (var6 == 2)
		{
			var13.DelayedLookAt(GetPointX(3), GetPointY(3), 20, 0, 10, 0, 100, 1);
			var6 = 3;
			return State4, 100;
		}
		if (var6 == 3)
		{
			var13.LookAt(GetPointX(4), GetPointY(4), 20, 0, 10, 0);
			var13.DelayedLookAt(GetPointX(5), GetPointY(5), 20, 0, 10, 0, 100, 0);
			var6 = 4;
			return State4, 100;
		}
		if (var6 == 4)
		{
			var13.DelayedLookAt(GetPointX(6), GetPointY(6), 20, 0, 10, 0, 100, 0);
			var6 = 5;
			return State4, 100;
		}
		if (var6 == 5)
		{
			var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY(), 20, 0, 10, 0);
			SetTimer(0, 0);
			ShowVideo("ED_M08");
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
		AddBriefing("translateBriefingLS_ED_M08_destroyED2", var13.GetName());
		SetTimer(1, var5 + GetMissionTime());
		SetTimer(3, var1);
		SetTimer(4, var0);
		
		return State6, 1;
	}
	
	state State6
	{
		int loc0;
		
		SetConsoleText("");
		
		loc0 = var1 - GetMissionTime();
		
		if(var2 == 1)
		{
			var2 = 0;
			if (var13.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_ED_M08_destroyED2", var13.GetName());
				return State9, 20;
			}
			if (var11.GetNumberOfBuildings() == 0)
			{
				SetTimer(1, 0);
				SetTimer(3, 0);
				CallCamera();
				EnableInterface(0);
				EnableCameraMovement(0);
				SetConsoleText("translateIncomingEvent");
				var6 = 0;
				var7 = 2;
				SetTimer(0, 20);
				
				return State5, 20;
			}
		}
		
		if (loc0 > 0)
		{
			SetConsoleText("translateTimeToDestroyED2", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State6, 100;
	}
	
	state State5
	{
		if (var6 == 0)
		{
			var13.LookAt(GetPointX(7), GetPointY(7), 20, 0, 10, 0);
			var13.DelayedLookAt(GetPointX(8), GetPointY(8), 20, 0, 10, 0, 100, 0);
			var6 = 1;
			return State5, 100;
		}
		if (var6 == 1)
		{
			var13.DelayedLookAt(GetPointX(9), GetPointY(9), 20, 0, 10, 0, 100, 1);
			var6 = 2;
			return State5, 100;
		}
		if (var6 == 2)
		{
			var13.LookAt(var13.GetStartingPointX(), var13.GetStartingPointY(), 20, 0, 10, 0);
			SetTimer(0, 0);
			return State3, 10;
		}
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		SetGoalState(0, 1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingLS_ED_M08_captureRcc", var13.GetName());
		
		return State7, 1;
	}
	
	state State7
	{
		int loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		SetConsoleText("");
		
		loc3 = var0 - GetMissionTime();
		
		loc2 = 0;
		for (loc0 = 10; loc0 < 14; loc0 = loc0 + 1)
		{
			loc1 = GetUnit(GetPointX(loc0), GetPointY(loc0));
			if (loc1.GetIFF() == var13.GetIFF())
			{
				loc2 = loc2 + 1;
			}
		}
		
		if (loc2 == 4)
		{
			SetTimer(4, 0);
			SetGoalState(2, 1);
			SetGoalState(1, 1);
			AddBriefing("translateAccomplishedLS_ED_M08_all", var13.GetName());
			EnableNextMission(8, 1);
			EnableEndMissionButton(1);
			return State8, 20;
		}
		
		if (loc3 > 0)
		{
			SetConsoleText("translateTimeToCaptureRcc", loc3 / 16383, loc3 % 16383 / 683);
		}
		return State7, 100;
	}
	
	state State9
	{
		EnableNextMission(8, 2);
		EndMission(0);
	}
	
	state State8
	{
		SetConsoleText("");
		return State8, 500;
	}
	
	event Timer0()
	{
		int loc0;
		if (var7 == 1)
		{
			for (loc0 = 0; loc0 < 7; loc0 = loc0 + 1)
			{
				ShowArea(var13.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 8, showAreaPassives |showAreaBuildings | showAreaUnits);
			}
		}
		if (var7 == 2)
		{
			for (loc0 = 7; loc0 < 10; loc0 = loc0 + 1)
			{
				ShowArea(var13.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 8, showAreaPassives |showAreaBuildings | showAreaUnits);
			}
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		
		loc2 = Rand(4) + 15;
		
		loc1 = var13.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
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
			var11.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "EDUBT2", "EDWHL3", "EDWHL3", "EDWSI2", "EDBANNER", 3);
			var11.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "EDUA41", "EDWAMR2", null, null, null, 3);
		}
		
		var11.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(1, var5 + GetMissionTime());
	}
	
	event Timer3()
	{
		SetGoalState(0, 2);
		AddBriefing("translateFailedLS_ED_M08_destroyED2InTime", var13.GetName());
		return State9;
	}
	
	event Timer4()
	{
		SetGoalState(2, 2);
		AddBriefing("translateFailedLS_ED_M08_captureRccInTime", var13.GetName());
		return State9;
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
		var2 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		loc1 = 0;
		for (loc0 = 10; loc0 < 14; loc0 = loc0 + 1)
		{
			loc2 = GetUnit(GetPointX(loc0), GetPointY(loc0));
			if (loc2 == null || loc2.IsPassive() == 1)
			{
				loc1 = 1;
			}
		}
		
		if (loc1 == 1)
		{
			SetGoalState(1, 2);
			AddBriefing("translateFailedLS_ED_M08_keepRccAlive", var13.GetName());
			return State9;
		}
		
		var2 = 1;
	}

}