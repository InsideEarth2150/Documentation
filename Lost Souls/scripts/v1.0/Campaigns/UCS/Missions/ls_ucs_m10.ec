mission "translatemissionLS_UCS_M10"
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
	state State6;
	state State7;
	
	state State0
	{
		unitex loc0;
		int loc1;
		unitex loc2;
		
		var4 = GetPlayer(2);
		var3 = GetPlayer(3);
		var5 = GetPlayer(5);
		var6 = GetPlayer(1);
		
		RegisterGoal(0, "translateGoalLS_UCS_M10_survivePC");
		RegisterGoal(1, "translateGoalLS_UCS_M10_surviveLC");
		RegisterGoal(2, "translateGoalLS_UCS_M10_surviveED");
		RegisterGoal(3, "translateGoalLS_UCS_M10_destroyGolan");
		
		var3.LoadScript("single\\singleHard");
		var4.LoadScript("single\\singleHard");
		var5.LoadScript("single\\singleHard");
		
		var6.SetMoney(40000);
		var6.EnableAIFeatures(aiEnabled, 0);
		var6.EnableCommand(commandSoldBuilding, 1);
		
		var4.SetMoney(500000);
		var3.SetMoney(500000);
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
		
		var3.EnableBuilding("LCBBF", 1);
		var3.EnableBuilding("LCBPP", 1);
		var3.EnableBuilding("LCBBA", 1);
		var3.EnableBuilding("LCBAB", 1);
		var3.EnableBuilding("LCBDE", 1);
		var3.EnableBuilding("LCBHQ", 1);
		var3.EnableBuilding("LCBSB", 1);
		var3.EnableBuilding("WLASER", 1);
		var3.EnableBuilding("LCBNE", 1);
		var3.EnableBuilding("LCBGA", 1);
		var3.EnableBuilding("LCBPP2", 1);
		var3.EnableBuilding("LCBART", 1);
		var3.EnableBuilding("LCBSD", 1);
		var3.EnableBuilding("LCBEN1", 0);
		var3.EnableBuilding("LCBRC", 0);
		var3.EnableBuilding("LCBEN2", 0);
		var3.EnableBuilding("LCBUC", 0);
		var3.EnableBuilding("LCBCC", 0);
		var3.EnableBuilding("LCBLZ", 0);
		var3.EnableBuilding("LCBWC", 0);
		var3.EnableBuilding("LCBSS", 0);
		var3.EnableBuilding("LCBSR", 0);
		
		var2 = var6.CreateUnitEx(var6.GetStartingPointX(), var6.GetStartingPointY(), 0, null, "UCSU4L1", "UCSWDHP2", "UCSBANNER", null, null, 3);
		var2.SetUnitName("translateHeroName");
		
		var0 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		return State1, 1;
	}
	
	state State1
	{
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
		var4.EnableAIFeatures(aiControlOffense, 1);
		var4.EnableAIFeatures(aiBuildTanks, 1);
		var4.EnableAI(1);
		
		var3.SetNumberOfOffensiveTankPlatoons(2);
		var3.SetNumberOfOffensiveHelicopterPlatoons(0);
		var3.SetMaxTankPlatoonSize(10);
		var3.SetNumberOfDefensiveTankPlatoons(4);
		var3.SetMaxAttackFrequency(0);
		var3.SetMaxHelicopterPlatoonSize(6);
		
		var3.EnableAIFeatures(aiRejectAlliance, 0);
		var3.EnableAIFeatures(aiUpgradeCannons, 1);
		var3.EnableAIFeatures(aiBuildBuilders, 1);
		var3.EnableAIFeatures(aiBuildRepairers, 1);
		var3.EnableAIFeatures(aiEnabled, 1);
		var3.EnableAIFeatures(aiBuildBuildings, 1);
		var3.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var3.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var3.EnableAIFeatures(aiControlSupplyUnits, 1);
		var3.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var3.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var3.EnableAIFeatures(aiDefenseTowers, 1);
		var3.EnableAIFeatures(aiControlDefense, 1);
		var3.EnableAIFeatures(aiControlMiningUnits, 0);
		var3.EnableAIFeatures(aiBuildMiningUnits, 0);
		var3.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var3.EnableAIFeatures(aiBuildHelicopters, 0);
		var3.EnableAIFeatures(aiControlOffense, 1);
		var3.EnableAIFeatures(aiBuildTanks, 1);
		var3.EnableAI(1);
		
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
		var5.EnableAIFeatures(aiControlOffense, 1);
		var5.EnableAIFeatures(aiBuildTanks, 1);
		var5.EnableAI(1);
		
		var4.SetEnemy(var5);
		var4.ChooseEnemy(var5);
		var6.SetAlly(var4);
		var3.SetAlly(var4);
		var3.SetEnemy(var5);
		var3.ChooseEnemy(var5);
		var6.SetAlly(var3);
		var4.SetAlly(var3);
		var5.SetEnemy(var6);
		var5.SetEnemy(var3);
		var5.SetEnemy(var4);
		
		ShowArea(var6.GetIFF(), GetPointX(1), GetPointY(1), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var6.GetIFF(), GetPointX(2), GetPointY(2), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var6.GetIFF(), GetPointX(3), GetPointY(3), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		var6.LookAt(GetPointX(1), GetPointY(1), 20, 192, 10, 0);
		var6.DelayedLookAt(GetPointX(2), GetPointY(2), 20, 192, 10, 0, 200, 1);
		
		return State2, 200;
	}
	
	state State2
	{
		var6.DelayedLookAt(GetPointX(3), GetPointY(3), 20, 192, 10, 0, 300, 1);
		return State3, 300;
	}
	
	state State3
	{
		var6.DelayedLookAt(var6.GetStartingPointX(), var6.GetStartingPointY(), 20, 0, 10, 0, 300, 1);
		return State4, 300;
	}
	
	state State4
	{
		ShowVideo("UCS_M10");
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(1, 1);
		EnableGoal(2, 1);
		EnableGoal(3, 1);
		AddBriefing("translateBriefingLS_UCS_M10_allGoals", var6.GetName());
		SetTimer(0, 6000);
		SetTimer(1, 100);
		SetTimer(2, 90000);
		SetTimer(3, 60000);
		
		return State5, 1;
	}
	
	state State5
	{
		if (var0 == 1)
		{
			if (var6.GetNumberOfBuildings() == 0 && var6.GetNumberOfUnits() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_UCS_M10_PlayerLostAll", var6.GetName());
				return State7, 20;
			}
		
			if (var4.GetNumberOfBuildings() == 0)
			{
				SetGoalState(2, 2);
				AddBriefing("translateFailedLS_UCS_M10_EdDead", var6.GetName());
				return State7, 20;
			}
		
			if (var3.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_UCS_M10_LcDead", var6.GetName());
				return State7, 20;
			}
			
			if (var5.GetNumberOfBuildings() == 0 && var5.GetNumberOfUnits() == 0)
			{
				SetTimer(0, 0);
				SetTimer(1, 0);
				SetTimer(2, 0);
				SetGoalState(0, 1);
				SetGoalState(2, 1);
				SetGoalState(1, 1);
				SetGoalState(3, 1);
				AddBriefing("translateAccomplishedLS_UCS_M10_All", var6.GetName());
				SetConsoleText("");
				EnableNextMission(10, 4);
				EndMission(0);
			}
		}
		
		return State5, 100;
	}
	
	state State7
	{
		EnableNextMission(10, 2);
		EndMission(0);
	}
	
	state State6
	{
		return State6, 500;
	}
	
	
	event Timer0()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		
		loc0 = Rand(3);
		
		if (loc0 == 0)
		{
			var5.ChooseEnemy(var6);
		}
		else if (loc0 == 1)
		{
			var5.ChooseEnemy(var4);
		}
		else
		{
			var5.ChooseEnemy(var3);
		}
		
		loc1 = var5.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = var4.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 + var3.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 + var6.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc2 - loc1;
		
		if (loc3 <= 4)
		{
			loc3 = 4;
		}
		
		loc3 = loc3 / 4;
		
		for (loc4 = 0; loc4 < loc3; loc4 = loc4 + 1)
		{
			var5.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSBANNER", null, 3);
			var5.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSWSH3", null, 3);
			var5.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUBL2", "UCSWBHC2", "UCSWSSR3", "UCSBANNER", null, 3);
			var5.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", "UCSWSH3", null, 3);
		}
		
		var5.Attack(GetPointX(loc0 + 1), GetPointY(loc0 + 1), 0);
	}
	
	event Timer1()
	{
		int loc0;
		
		SetConsoleText("");
		loc0 = 100000 - GetMissionTime();
		
		if (loc0 > 0)
		{
			SetConsoleText("translateEarthDestroyed", loc0 / 16383, loc0 % 16383 / 683);
		}
	}
	
	event Timer2()
	{
		AddBriefing("translateFailedLS_UCS_M10_destroyGolan", var6.GetName());
		state State7;
	}
	
	event Timer3()
	{
		SetTimer(3, 0);
		AddBriefing("translateBriefingLS_UCS_M10_allowMDW", var6.GetName());
		
		var6.EnableBuilding("UCSBART", 1);
		var6.EnableBuilding("UCSBPB", 1);
		var6.EnableBuilding("UCSBPC", 1);
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
			AddBriefing("translateFailedLS_UCS_M10_survivePC", var6.GetName());
			state State7;
		}
		var0 = 1;
	}

}