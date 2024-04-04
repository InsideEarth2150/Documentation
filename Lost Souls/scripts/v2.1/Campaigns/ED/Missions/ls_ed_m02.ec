mission "translatemissionLS_ED_M02"
{
	int var0;
	int var1;
	int var2;
	
	int var3;
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
	
	state State0
	{
		unitex loc0;
		int loc1;
		
		var4 = GetPlayer(3);
		var5 = GetPlayer(1);
		var6 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalLS_ED_M02_destroyUCS");
		var4.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var5.LoadScript("single\\singleEasy");
			var6.SetMoney(25000);
			var2 = 0;
			var1 = 8500;
		}
		if (GetDifficultyLevel() == 1)
		{
			var5.LoadScript("single\\singleMedium");
			var6.SetMoney(16000);
			var2 = 3;
			var1 = 6000;
		}
		if (GetDifficultyLevel() == 2)
		{
			var5.LoadScript("single\\singleHard");
			var6.SetMoney(12000);
			var2 = 6;
			var1 = 5000;
		}
		
		var6.EnableAIFeatures(aiEnabled, 0);
		var6.EnableCommand(commandSoldBuilding, 1);
		
		var5.SetMoney(50000);
		
		var6.AddResearch("RES_ED_WSR1");
		var6.AddResearch("RES_ED_WSR2");
		var6.AddResearch("RES_ED_WSR3");
		var6.AddResearch("RES_MSR2");
		var6.AddResearch("RES_MSR3");
		var6.AddResearch("RES_MSR4");
		var6.AddResearch("RES_ED_WMR1");
		var6.AddResearch("RES_ED_WMR2");
		var6.AddResearch("RES_ED_WMR3");
		var6.AddResearch("RES_MMR2");
		var6.AddResearch("RES_MMR3");
		var6.AddResearch("RES_MMR4");
		var6.AddResearch("RES_ED_UMW1");
		var6.AddResearch("RES_ED_UMW2");
		var6.AddResearch("RES_ED_UMW3");
		var6.AddResearch("RES_EDUSTEALTH");
		var6.AddResearch("RES_ED_USS2");
		var6.AddResearch("RES_ED_USS3");
		var6.AddResearch("RES_ED_HGen");
		var6.AddResearch("RES_ED_RepHand");
		var6.EnableResearch("RES_ED_RepHand2", 0);
		var6.AddResearch("RES_ED_SCR");
		var6.EnableResearch("RES_ED_SCR2", 0);
		
		var6.EnableBuilding("EDBBPP", 1);
		var6.EnableBuilding("EDBBA", 1);
		var6.EnableBuilding("EDBFA", 1);
		var6.EnableBuilding("EDBAB", 1);
		var6.EnableBuilding("EDBBRE", 1);
		var6.EnableBuilding("EDBMI", 1);
		var6.EnableBuilding("EDBST", 1);
		var6.EnableBuilding("EDBLZ", 1);
		var6.EnableBuilding("EDBWB", 1);
		var6.EnableBuilding("EDBPB", 0);
		var6.EnableBuilding("EDBBT", 0);
		var6.EnableBuilding("EDBHT", 0);
		var6.EnableBuilding("EDBRC", 0);
		var6.EnableBuilding("EDBRA", 0);
		var6.EnableBuilding("EDBTC", 0);
		var6.EnableBuilding("EDBHQ", 0);
		var6.EnableBuilding("EDBEN1", 0);
		
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
		var5.EnableBuilding("UCSBEN1", 1);
		var5.EnableBuilding("UCSBEN2", 1);
		var5.EnableBuilding("UCSBTB", 0);
		var5.EnableBuilding("UCSBSH", 0);
		var5.EnableBuilding("UCSBTE", 0);
		var5.EnableBuilding("UCSBRC", 0);
		var5.EnableBuilding("UCSBWB", 0);
		var5.EnableBuilding("UCSBPB", 0);
		var5.EnableBuilding("UCSBPC", 0);
		var5.EnableBuilding("UCSBHQ", 0);
		var5.EnableBuilding("UCSBSD", 0);
		var5.EnableBuilding("UCSBSS", 0);
		var5.EnableBuilding("UCSBLZ", 0);
		var5.EnableBuilding("UCSBUC", 0);
		var5.EnableBuilding("UCSBHT", 0);
		var5.EnableBuilding("UCSBART", 0);
		var0 = 0;
		
		for (loc1 = 0; loc1 < 3; loc1 = loc1 + 1)
		{
			var6.CreateUnitEx(GetPointX(4) + loc1, GetPointY(4), 0, null, "EDUHT1", "EDWHC2", null, "EDBANNER", null, 1);
			var6.CreateUnitEx(GetPointX(4) + loc1, GetPointY(4) + 1, 0, null, "EDUHT1", "EDWHC2", null, "EDBANNER", null, 1);
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var6.LookAt(var6.GetStartingPointX() + 5, var6.GetStartingPointY(), 20, 0, 10, 0);
		var6.DelayedLookAt(var6.GetStartingPointX(), var6.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		var5.SetNumberOfOffensiveTankPlatoons(10);
		var5.SetNumberOfOffensiveHelicopterPlatoons(10);
		var5.SetNumberOfOffensiveShipPlatoons(10);
		var5.SetMaxShipPlatoonSize(6);
		var5.SetMaxTankPlatoonSize(10);
		var5.SetMaxHelicopterPlatoonSize(6);
		var5.SetNumberOfDefensiveTankPlatoons(3);
		var5.SetMaxAttackFrequency(0);
		
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
		var5.EnableAIFeatures(aiBuildTanks, 1);
		var5.EnableAIFeatures(aiBuildHelicopters, 1);
		var5.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var5.EnableAIFeatures(aiDefenseTowers, 1);
		var5.EnableAIFeatures(aiControlDefense, 1);
		var5.EnableAIFeatures(aiControlOffense, 0);
		var5.EnableAIFeatures(aiControlMiningUnits, 1);
		var5.EnableAIFeatures(aiBuildMiningUnits, 1);
		var5.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var5.EnableAI(1);
		
		var3 = 1;
		
		return State2, 80;
	}
	
	state State2
	{
		if (var3 == 1)
		{
			var6.LookAt(GetPointX(0), GetPointY(0), 20, 64, 10, 0);
			var6.DelayedLookAt(GetPointX(1), GetPointY(1), 20, 64, 10, 0, 150, 1);
			SetTimer(0, 20);
			var3 = 2;
			return State2, 150;
		}
		if (var3 == 2)
		{
			var6.DelayedLookAt(GetPointX(2), GetPointY(2), 20, 64, 10, 0, 150, 1);
			var3 = 3;
			return State2, 150;
		}
		if (var3 == 3)
		{
			var6.DelayedLookAt(GetPointX(3), GetPointY(3), 20, 64, 10, 0, 150, 1);
			var3 = 4;
			return State2, 150;
		}
		if (var3 == 4)
		{
			var6.LookAt(var6.GetStartingPointX(), var6.GetStartingPointY(), 20, 0, 10, 0);
			var3 = 0;
			SetTimer(0, 0);
			ShowVideo("ED_M02");
			return State3, 150;
		}
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		SetTimer(0, 0);
		SetTimer(1, var1 + GetMissionTime());
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_ED_M02_destroyUCS", var6.GetName());
		
		return State4, 1;
	}
	
	state State4
	{
		int loc0;
		
		if (var0 == 1)
		{
			if (var5.GetNumberOfBuildings() == 0)
			{
				SetTimer(1, 0);
			}
			
			if (var5.GetNumberOfUnits() < 8 && var5.GetNumberOfBuildings() < 8)
			{
				SetTimer(1, 0);
			}
			loc0 = var5.GetNumberOfUnits();
			
			if (loc0 < 10 && var5.GetNumberOfBuildings() < 5)
			{
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedLS_ED_M02_all", var6.GetName());
				EnableNextMission(2, 1);
				EnableEndMissionButton(1);
				return State5, 20;
			}
			
			if (var6.GetNumberOfUnits() == 0 && var6.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_ED_M02_all", var6.GetName());
				return State6, 20;
			}
		}
		return State4, 100;
	}
	
	state State6
	{
		EnableNextMission(2, 2);
		EndMission(0);
	}
	
	state State5
	{
		return State5, 500;
	}
	
	event Timer0()
	{
		int loc0;
		
		for (loc0 = 0; loc0 < 5; loc0 = loc0 + 1)
		{
			ShowArea(var6.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 7, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event Timer1()
	{
		int loc0;
		unitex loc1;
		int loc2;
		int loc3;
		int loc4;
		int loc5;
		int loc6;
		
		var5.EnableAIFeatures(aiControlOffense, 1);
		loc3 = Rand(2) + 7;
		
		loc2 = var6.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 - var5.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc2 < 8)
		{
			loc2 = 8;
		}
		
		loc2 = loc2 + var2;
		
		if (loc2 > 40)
		{
			loc2 = 40;
		}
		
		loc4 = loc2 * 2 / 10;
		loc5 = loc2 * 3 / 10;
		loc6 = loc2 * 5 / 10;
		
		for (loc0 = 0; loc0 < loc6 / 2; loc0 = loc0 + 1)
		{
			var5.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "UCSUSL3", "UCSWTSP2", null, null, null, 0);
			var5.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "UCSUML3", "UCSWSSP2", null, null, null, 3);
		}
		
		for (loc0 = 0; loc0 < loc4; loc0 = loc0 + 1)
		{
			var5.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "UCSUA13", "UCSWAP2", null, null, null, 1);
		}
		
		for (loc0 = 0; loc0 < loc5; loc0 = loc0 + 1)
		{
			var5.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "UCSUSS3", "UCSWSSR3", null, null, null, 1);
		}
		var5.Attack(GetPointX(loc3), GetPointY(loc3), 0);
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var6.GetMoney();
		var6.SetMoney(0);
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