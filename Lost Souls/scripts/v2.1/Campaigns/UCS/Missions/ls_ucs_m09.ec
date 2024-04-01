mission "translatemissionLS_UCS_M09"
{
	int var0;
	int var1;
	unitex var2;
	player var3;
	player var4;
	player var5;
	player var6;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	state State5;
	
	state State0
	{
		unitex loc0;
		int loc1;
		unitex loc2;
		
		var4 = GetPlayer(2);
		var3 = GetPlayer(3);
		var5 = GetPlayer(5);
		var6 = GetPlayer(1);
		
		RegisterGoal(0, "translateGoalLS_UCS_M09_survivePC");
		RegisterGoal(1, "translateGoalLS_UCS_M09_surviveED");
		RegisterGoal(2, "translateGoalLS_UCS_M09_destroyGolan");
		
		var3.EnableStatistics(0);
		
		var4.LoadScript("single\\singleHard");
		var5.LoadScript("single\\singleMedium");
		
		var6.SetMoney(20000);
		var6.EnableAIFeatures(aiEnabled, 0);
		var6.EnableCommand(commandSoldBuilding, 1);
		
		var4.SetMoney(500000);
		var5.SetMoney(9999999);
		
		var6.EnableBuilding("UCSBBA", 1);
		var6.EnableBuilding("UCSBFA", 1);
		var6.EnableBuilding("UCSBPP", 1);
		var6.EnableBuilding("UCSBPR", 1);
		var6.EnableBuilding("UCSBET", 1);
		var6.EnableBuilding("UCSBRF", 1);
		var6.EnableBuilding("UCSBAB", 1);
		var6.EnableBuilding("UCSBST", 1);
		var6.EnableBuilding("UCSBBT", 1);
		var6.EnableBuilding("UCSBFO", 1);
		var6.EnableBuilding("UCSBSH", 1);
		var6.EnableBuilding("UCSBHT", 1);
		var6.EnableBuilding("UCSBLZ", 0);
		var6.EnableBuilding("UCSBEN1", 0);
		var6.EnableBuilding("UCSBEN2", 0);
		var6.EnableBuilding("UCSBTB", 0);
		var6.EnableBuilding("UCSBTE", 0);
		var6.EnableBuilding("UCSBRC", 0);
		var6.EnableBuilding("UCSBWB", 0);
		var6.EnableBuilding("UCSBPB", 0);
		var6.EnableBuilding("UCSBPC", 0);
		var6.EnableBuilding("UCSBHQ", 0);
		var6.EnableBuilding("UCSBSD", 0);
		var6.EnableBuilding("UCSBSS", 0);
		var6.EnableBuilding("UCSBUC", 1);
		var6.EnableBuilding("UCSBART", 0);
		
		var5.CopyResearches(var6);
		var5.EnableBuilding("UCSBBA", 1);
		var5.EnableBuilding("UCSBFA", 1);
		var5.EnableBuilding("UCSBPP", 1);
		var5.EnableBuilding("UCSBPR", 1);
		var5.EnableBuilding("UCSBET", 1);
		var5.EnableBuilding("UCSBRF", 1);
		var5.EnableBuilding("UCSBAB", 1);
		var5.EnableBuilding("UCSBST", 1);
		var5.EnableBuilding("UCSBBT", 1);
		var5.EnableBuilding("UCSBFO", 1);
		var5.EnableBuilding("UCSBSH", 1);
		var5.EnableBuilding("UCSBLZ", 1);
		var5.EnableBuilding("UCSBHT", 1);
		var5.EnableBuilding("UCSBPB", 1);
		var5.EnableBuilding("UCSBPC", 1);
		var5.EnableBuilding("UCSBHQ", 1);
		var5.EnableBuilding("UCSBSD", 1);
		var5.EnableBuilding("UCSBUC", 1);
		var5.EnableBuilding("UCSBART", 1);
		var5.EnableBuilding("UCSBEN1", 0);
		var5.EnableBuilding("UCSBEN2", 0);
		var5.EnableBuilding("UCSBTB", 0);
		var5.EnableBuilding("UCSBTE", 0);
		var5.EnableBuilding("UCSBRC", 0);
		var5.EnableBuilding("UCSBWB", 0);
		var5.EnableBuilding("UCSBSS", 0);
		
		var4.EnableBuilding("EDBBPP", 1);
		var4.EnableBuilding("EDBBA", 1);
		var4.EnableBuilding("EDBFA", 1);
		var4.EnableBuilding("EDBWB", 1);
		var4.EnableBuilding("EDBAB", 1);
		var4.EnableBuilding("EDBBRE", 1);
		var4.EnableBuilding("EDBMI", 1);
		var4.EnableBuilding("EDBTC", 0);
		var4.EnableBuilding("EDBST", 1);
		var4.EnableBuilding("EDBPB", 1);
		var4.EnableBuilding("EDBBT", 1);
		var4.EnableBuilding("EDBBC", 1);
		var4.EnableBuilding("EDBSI", 1);
		var4.EnableBuilding("EDBHT", 1);
		var4.EnableBuilding("EDBART", 1);
		var4.EnableBuilding("EDBRC", 0);
		var4.EnableBuilding("EDBHQ", 0);
		var4.EnableBuilding("EDBRA", 1);
		var4.EnableBuilding("EDBEN1", 0);
		var4.EnableBuilding("EDBLZ", 0);
		
		var2 = var6.CreateUnitEx(GetPointX(20), GetPointY(20), 0, null, "UCSU4L1", "UCSWDHP2", "UCSBANNER", null, null, 3);
		var2.SetUnitName("translateHeroName");
		
		var0 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var6.LookAt(var6.GetStartingPointX(), var6.GetStartingPointY() + 5, 20, 0, 10, 0);
		var6.DelayedLookAt(var6.GetStartingPointX(), var6.GetStartingPointY(), 20, 0, 10, 0, 100, 1);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		var4.SetNumberOfOffensiveTankPlatoons(2);
		var4.SetNumberOfOffensiveHelicopterPlatoons(0);
		var4.SetMaxTankPlatoonSize(10);
		var4.SetNumberOfDefensiveTankPlatoons(4);
		var4.SetMaxAttackFrequency(0);
		var4.SetMaxHelicopterPlatoonSize(6);
		
		var4.EnableAIFeatures(aiRejectAlliance, 0);
		var4.EnableAIFeatures(aiUpgradeCannons, 1);
		var4.EnableAIFeatures(aiBuildBuilders, 1);
		var4.EnableAIFeatures(aiBuildRepairers, 1);
		var4.EnableAIFeatures(aiEnabled, 1);
		var4.EnableAIFeatures(aiBuildBuildings, 1);
		var4.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var4.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var4.EnableAIFeatures(aiControlSupplyUnits, 1);
		var4.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var4.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var4.EnableAIFeatures(aiDefenseTowers, 1);
		var4.EnableAIFeatures(aiControlDefense, 1);
		var4.EnableAIFeatures(aiControlMiningUnits, 0);
		var4.EnableAIFeatures(aiBuildMiningUnits, 0);
		var4.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var4.EnableAIFeatures(aiBuildHelicopters, 0);
		var4.EnableAIFeatures(aiControlOffense, 0);
		var4.EnableAIFeatures(aiBuildTanks, 0);
		var4.EnableAI(1);
		
		var5.SetNumberOfOffensiveTankPlatoons(10);
		var5.SetNumberOfOffensiveHelicopterPlatoons(0);
		var5.SetMaxTankPlatoonSize(10);
		var5.SetNumberOfDefensiveTankPlatoons(5);
		var5.SetMaxAttackFrequency(0);
		var5.SetMaxHelicopterPlatoonSize(6);
		
		var5.EnableAIFeatures(aiRejectAlliance, 1);
		var5.EnableAIFeatures(aiUpgradeCannons, 1);
		var5.EnableAIFeatures(aiBuildBuilders, 1);
		var5.EnableAIFeatures(aiBuildRepairers, 1);
		var5.EnableAIFeatures(aiEnabled, 1);
		var5.EnableAIFeatures(aiBuildBuildings, 1);
		var5.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var5.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var5.EnableAIFeatures(aiControlSupplyUnits, 1);
		var5.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var5.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var5.EnableAIFeatures(aiDefenseTowers, 1);
		var5.EnableAIFeatures(aiControlDefense, 1);
		var5.EnableAIFeatures(aiControlMiningUnits, 1);
		var5.EnableAIFeatures(aiBuildMiningUnits, 1);
		var5.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var5.EnableAIFeatures(aiBuildHelicopters, 1);
		var5.EnableAIFeatures(aiControlOffense, 0);
		var5.EnableAIFeatures(aiBuildTanks, 0);
		var5.EnableAI(1);
		
		var4.SetEnemy(var5);
		var4.ChooseEnemy(var5);
		var6.SetAlly(var4);
		var5.SetEnemy(var6);
		var5.SetEnemy(var4);
		
		for (loc1 = 0; loc1 < 3; loc1 = loc1 + 1)
		{
			loc2 = loc1 * 5;
			loc0 = GetUnit(GetPointX(loc2), GetPointY(loc2));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			loc0 = GetUnit(GetPointX(loc2 + 3), GetPointY(loc2 + 3));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
		}
		
		ShowVideo("UCS_M09");
		
		return State2, 100;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(1, 1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingLS_UCS_M09_allGoals", var6.GetName());
		SetTimer(1, 6000);
		SetTimer(0, 12000);
		SetTimer(3, 60000);
		
		return State3, 1;
	}
	
	state State3
	{
		if (var0 == 1)
		{
			if (var6.GetNumberOfBuildings() == 0 && var6.GetNumberOfUnits() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_UCS_M09_PlayerLostAll", var6.GetName());
				return State5, 20;
			}
		
			if (var4.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_UCS_M09_EdDead", var6.GetName());
				return State5, 20;
			}
			
			if (var5.GetNumberOfBuildings() == 0 && var5.GetNumberOfUnits() == 0)
			{
				SetTimer(0, 0);
				SetGoalState(0, 1);
				SetGoalState(1, 1);
				SetGoalState(2, 1);
				AddBriefing("translateAccomplishedLS_UCS_M09_All", var6.GetName());
				SetConsoleText("");
				EnableNextMission(9, 1);
				EndMission(1);
			}
		}
		
		return State3, 100;
	}
	
	state State5
	{
		EnableNextMission(9, 2);
		EndMission(0);
	}
	
	state State4
	{
		return State4, 500;
	}
	
	
	event Timer0()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		
		var5.SetEnemy(var4);
		var5.ChooseEnemy(var4);
		
		loc0 = Rand(3) + 30;
		
		loc1 = var5.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = var4.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 + var6.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc2 - loc1;
		
		if (loc3 <= 4)
		{
			loc3 = 4;
		}
		
		if (loc3 > 52)
		{
			loc3 = 52;
		}
		
		loc3 = loc3 / 4;
		
		for (loc4 = 0; loc4 < loc3; loc4 = loc4 + 1)
		{
			var5.CreateUnitEx(GetPointX(21), GetPointY(21), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSBANNER", null, 3);
			var5.CreateUnitEx(GetPointX(21), GetPointY(21), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSWSH3", null, 3);
			var5.CreateUnitEx(GetPointX(22), GetPointY(22), 0, null, "UCSUBL2", "UCSWBHC2", "UCSWSSR3", "UCSBANNER", null, 3);
			var5.CreateUnitEx(GetPointX(22), GetPointY(22), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", "UCSWSH3", null, 3);
		}
		
		var5.Attack(GetPointX(loc0), GetPointY(loc0), 0);
		SetTimer(0, 6000);
	}
	
	event Timer1()
	{
		SetTimer(1, 0);
		var4.EnableAIFeatures(aiControlOffense, 1);
		var4.EnableAIFeatures(aiBuildTanks, 1);
		var5.EnableAIFeatures(aiControlOffense, 1);
		var5.EnableAIFeatures(aiBuildTanks, 1);
	}
	
	event Timer3()
	{
		SetTimer(3, 0);
		AddBriefing("translateBriefingLS_UCS_M09_allowAri", var6.GetName());
		
		var6.EnableBuilding("UCSBART", 1);
	}
	
	event EndMission()
	{
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var0 = 1;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var2 == uUnit || var2 == null)
		{
			var2 = null;
			SetGoalState(0, 2);
			AddBriefing("translateFailedLS_UCS_M09_survivePC", var6.GetName());
			state State5;
		}
		var0 = 1;
	}

}