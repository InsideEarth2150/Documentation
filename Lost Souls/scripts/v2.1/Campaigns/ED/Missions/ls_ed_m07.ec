mission "translatemissionLS_ED_M07"
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
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	state State6;
	state State7;
	
	state State0
	{
		unitex loc0;
		unitex loc1;
		int loc2;
		int loc3;
		
		var9 = GetPlayer(1);
		var8 = GetPlayer(3);
		var11 = GetPlayer(2);
		var10 = GetPlayer(0);
		
		RegisterGoal(0, "translateGoalLS_ED_M07_defendDamm");
		var8.EnableStatistics(0);
		var10.LoadScript("single\\singleMedium");
		var9.LoadScript("single\\singleMedium");
		
		var11.SetMoney(10000);
		var2 = 2;
		var3 = 6000;
		
		var11.EnableAIFeatures(aiEnabled, 0);
		var11.EnableCommand(commandSoldBuilding, 1);
		
		var10.SetMoney(0);
		var9.SetMoney(0);
		
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
		
		var10.CopyResearches(var11);
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
		
		var9.AddResearch("RES_UCS_SHD2");
		var9.AddResearch("RES_UCS_SHD3");
		var9.AddResearch("RES_UCS_SHD4");
		
		var0 = 0;
		var7 = 0;
		
		for (loc2 = 0; loc2 < 10; loc2 = loc2 + 1)
		{
			var11.CreateUnitEx(GetPointX(0), GetPointY(0) + loc2, 0, null, "EDUHT3", "EDWHC2", null, "EDWSR3", null, 3);
			var11.CreateUnitEx(GetPointX(1) + loc2, GetPointY(1), 0, null, "EDUHT3", "EDWHC2", null, "EDWSR3", null, 3);
			var11.CreateUnitEx(GetPointX(2) + loc2, GetPointY(2), 0, null, "EDUHT3", "EDWHC2", null, "EDWSR3", null, 3);
		}
		
		for (loc2 = 0; loc2 < 5; loc2 = loc2 + 1)
		{
			var11.CreateUnitEx(GetPointX(0) + 1, GetPointY(0) + loc2, 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDWSR3", "EDBANNER", 3);
			var11.CreateUnitEx(GetPointX(1) + loc2, GetPointY(1) + 1, 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDWSR3", "EDBANNER", 3);
			var11.CreateUnitEx(GetPointX(2) + loc2, GetPointY(2) + 1, 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDWSR3", "EDBANNER", 3);
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var11.LookAt(var11.GetStartingPointX(), var11.GetStartingPointY() + 5, 20, 0, 10, 0);
		var11.DelayedLookAt(var11.GetStartingPointX(), var11.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
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
		var9.EnableAIFeatures(aiBuildBuildings, 0);
		var9.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var9.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var9.EnableAIFeatures(aiControlSupplyUnits, 1);
		var9.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var9.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var9.EnableAIFeatures(aiDefenseTowers, 1);
		var9.EnableAIFeatures(aiControlDefense, 1);
		var9.EnableAIFeatures(aiControlMiningUnits, 0);
		var9.EnableAIFeatures(aiBuildMiningUnits, 1);
		var9.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var9.EnableAIFeatures(aiBuildHelicopters, 0);
		var9.EnableAIFeatures(aiControlOffense, 1);
		var9.EnableAIFeatures(aiBuildTanks, 1);
		var9.EnableAI(1);
		
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
		var10.EnableAIFeatures(aiBuildHelicopters, 1);
		var10.EnableAIFeatures(aiControlOffense, 1);
		var10.EnableAIFeatures(aiBuildTanks, 0);
		var10.EnableAI(0);
		
		var9.SetAlly(var10);
		var10.SetAlly(var9);
		
		var4 = 0;
		var5 = 1;
		
		return State3, 60;
	}
	
	state State3
	{
		int loc0;
		int loc1;
		unitex loc2;
		unitex loc3;
		
		if (var4 == 0)
		{
			var11.LookAt(GetPointX(2), GetPointY(2), 20, 0, 10, 0);
			var11.DelayedLookAt(GetPointX(3), GetPointY(3), 20, 192, 10, 0, 150, 0);
			var4 = 1;
			return State3, 150;
		}
		if (var4 == 1)
		{
			var11.LookAt(GetPointX(4), GetPointY(4), 20, 0, 10, 0);
			var11.DelayedLookAt(GetPointX(1), GetPointY(1), 20, 0, 10, 0, 150, 1);
			var4 = 2;
			SetTimer(0, 20);
			return State3, 150;
		}
		if (var4 == 2)
		{
			for (loc0 = 0; loc0 < 10; loc0 = loc0 + 1)
			{
				loc2 = var10.CreateUnitEx(GetPointX(5) + loc0, GetPointY(5), 0, null, "EDUHT3", "EDWHL3", null, "EDWSR3", null, 3);
				loc2.BeginRecord();
				loc2.CommandHoldPosition();
				loc2.CommandMove(GetPointX(6), GetPointY(6), 0);
				for (loc1 = 7; loc1 < 12; loc1 = loc1 + 1)
				{
					loc3 = GetUnit(GetPointX(loc1), GetPointY(loc1), 0);
					loc2.CommandAttack(loc3);
				}
				loc2.EndRecord();
				loc2.ExecuteRecord();
				
				loc2 = var10.CreateUnitEx(GetPointX(5) + loc0, GetPointY(5) + 1, 0, null, "EDUHT3", "EDWHL3", null, "EDWSR3", null, 3);
				loc2.BeginRecord();
				loc2.CommandHoldPosition();
				loc2.CommandMove(GetPointX(6), GetPointY(6), 0);
				for (loc1 = 7; loc1 < 12; loc1 = loc1 + 1)
				{
					loc3 = GetUnit(GetPointX(loc1), GetPointY(loc1), 0);
					loc2.CommandAttack(loc3);
				}
				loc2.EndRecord();
				loc2.ExecuteRecord();
			}
			for (loc0 = 0; loc0 < 10; loc0 = loc0 + 1)
			{
				loc2 = var10.CreateUnitEx(GetPointX(5) + loc0, GetPointY(5) + 2, 0, null, "EDUBT2", "EDWHL3", "EDWHL3", "EDWSI2", "EDBANNER", 3);
				loc2.BeginRecord();
				loc2.CommandHoldPosition();
				loc2.CommandMove(GetPointX(6), GetPointY(6), 0);
				for (loc1 = 7; loc1 < 12; loc1 = loc1 + 1)
				{
					loc3 = GetUnit(GetPointX(loc1), GetPointY(loc1), 0);
					loc2.CommandAttack(loc3);
				}
				loc2.EndRecord();
				loc2.ExecuteRecord();
			}
			var11.LookAt(GetPointX(5), GetPointY(5), 20, 0, 10, 0);
			var11.DelayedLookAt(GetPointX(6), GetPointY(6), 20, 0, 10, 0, 500, 1);
			var4 = 3;
			return State3, 500;
		}
		if (var4 == 3)
		{
			var11.LookAt(GetPointX(1), GetPointY(1), 20, 0, 10, 0);
			SetTimer(0, 0);
			ShowVideo("ED_M07");
			return State2, 10;
		}
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M07_defendDamm", var11.GetName());
		SetTimer(1, var3 + GetMissionTime());
		SetTimer(3, 30000);
		SetTimer(4, 72000);
		
		return State4, 1;
	}
	
	state State4
	{
		int loc0;
		
		SetConsoleText("");
		
		loc0 = 72000 - GetMissionTime();
		
		if(var0 == 1)
		{
			var0 = 0;
			if (var11.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_ED_M07_DefendDamm", var11.GetName());
				return State7, 20;
			}
		}
		if (loc0 > 0)
		{
			SetConsoleText("translateTimeToDefendDamm", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State4, 100;
	}
	
	state State5
	{
		if (var0 == 1)
		{
			var0 = 0;
			if (var11.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_ED_M07_DefendDamm", var11.GetName());
				return State7, 20;
			}
			if (var9.GetNumberOfUnits() + var10.GetNumberOfUnits() < 10)
			{
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedLS_ED_M07_all", var11.GetName());
				EnableNextMission(7, 1);
				EnableEndMissionButton(1);
				return State6, 20;
			}
		}
		return State5, 100;
	}
	
	state State7
	{
		EnableNextMission(7, 2);
		EndMission(0);
	}
	
	state State6
	{
		return State6, 500;
	}
	
	event Timer0()
	{
		if (var5 == 1)
		{
			ShowArea(var11.GetIFF(), GetPointX(5), GetPointY(5), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var11.GetIFF(), GetPointX(6), GetPointY(6), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var11.GetIFF(), GetPointX(12), GetPointY(12), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		
		var10.EnableAI(1);
		
		loc2 = Rand(8) + 20;
		
		loc1 = var11.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc1 < 4)
		{
			loc1 = 4;
		}
		
		loc1 = loc1 + var2;
		
		if (var7 == 1)
		{
			loc1 = loc1 / 2;
		}
		
		if (loc1 > 40)
		{
			loc1 = 40;
		}
		
		for (loc0 = 0; loc0 < loc1 / 2; loc0 = loc0 + 1)
		{
			var10.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "EDUBT2", "EDWHL3", "EDWHL3", "EDWSI2", "EDBANNER", 3);
			var10.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "EDUA41", "EDWAMR2", null, null, null, 3);
		}
		
		var10.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(1, var3 + GetMissionTime());
	}
	
	event Timer2()
	{
		int loc0;
		int loc1;
		int loc2;
		
		loc2 = Rand(8) + 20;
		
		loc1 = var11.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc1 < 4)
		{
			loc1 = 4;
		}
		
		loc1 = loc1 + var2;
		loc1 = loc1 / 2;
		
		if (loc1 > 20)
		{
			loc1 = 20;
		}
		
		for (loc0 = 0; loc0 < loc1 / 2; loc0 = loc0 + 1)
		{
			var9.CreateUnitEx(GetPointX(13), GetPointY(13), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSBANNER", null, 3);
			var9.CreateUnitEx(GetPointX(13), GetPointY(13), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSWSH3", null, 3);
		}
		
		var9.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(2, var3 + GetMissionTime());
	}
	
	event Timer3()
	{
		var7 = 1;
		SetTimer(2, var3 + GetMissionTime());
		AddBriefing("translateBriefingLS_ED_M07_ucsAttacks", var11.GetName());
		SetTimer(3, 0);
	}
	
	event Timer4()
	{
		SetTimer(2, 0);
		SetTimer(1, 0);
		AddBriefing("translateBriefingLS_ED_M07_killAllUnits", var11.GetName());
		SetTimer(4, 0);
		SetTimer(5, 2000);
		SetConsoleText("");
		
		state State5;
	}
	
	event Timer5()
	{
		int loc0;
		
		loc0 = Rand(8) + 20;
		var10.Attack(GetPointX(loc0), GetPointY(loc0), 0);
		var9.Attack(GetPointX(loc0), GetPointY(loc0), 0);
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var11.GetMoney();
		var11.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var0 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var0 = 1;
	}

}