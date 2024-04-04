mission "translatemissionLS_ED_M04"
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
	state State7;
	
	state State0
	{
		unitex loc0;
		int loc1;
		
		var5 = GetPlayer(1);
		var4 = GetPlayer(3);
		var6 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalLS_ED_M04_buildBase");
		RegisterGoal(1, "translateGoalLS_ED_M04_destroyEnemy");
		var4.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var5.LoadScript("single\\singleEasy");
			var6.SetMoney(20000);
			var1 = 0;
			var2 = 12000;
		}
		if (GetDifficultyLevel() == 1)
		{
			var5.LoadScript("single\\singleMedium");
			var6.SetMoney(15000);
			var1 = 1;
			var2 = 10000;
		}
		if (GetDifficultyLevel() == 2)
		{
			var5.LoadScript("single\\singleHard");
			var6.SetMoney(10000);
			var1 = 1;
			var2 = 9000;
		}
		
		var6.EnableAIFeatures(aiEnabled, 0);
		var6.EnableCommand(commandSoldBuilding, 1);
		
		var5.SetMoney(500000);
		
		var6.AddResearch("RES_ED_UBT1");
		var6.AddResearch("RES_ED_UBT2");
		var6.AddResearch("RES_ED_UHW1");
		var6.AddResearch("RES_ED_UHW2");
		var6.AddResearch("RES_ED_UMI1");
		var6.AddResearch("RES_ED_UMI2");
		var6.AddResearch("RES_ED_UA11");
		var6.AddResearch("RES_ED_UA12");
		var6.AddResearch("RES_ED_UA21");
		var6.AddResearch("RES_ED_UA22");
		var6.AddResearch("RES_ED_MHC2");
		var6.AddResearch("RES_ED_MHC3");
		var6.AddResearch("RES_ED_MHC4");
		var6.AddResearch("RES_ED_UA31");
		var6.AddResearch("RES_ED_UA32");
		var6.AddResearch("RES_ED_UA41");
		var6.AddResearch("RES_ED_UA42");
		var6.AddResearch("RES_ED_ASR1");
		var6.AddResearch("RES_ED_ASR2");
		var6.AddResearch("RES_ED_AMR1");
		var6.AddResearch("RES_ED_AMR2");
		var6.AddResearch("RES_ED_WSI1");
		var6.AddResearch("RES_ED_WSI2");
		var6.AddResearch("RES_ED_WHI1");
		var6.AddResearch("RES_ED_WHI2");
		var6.EnableResearch("RES_EDBHT", 1);
		var6.EnableResearch("RES_ED_AB1", 0);
		var6.EnableResearch("RES_ED_ART", 0);
		var6.EnableResearch("RES_ED_ART", 0);
		
		var6.EnableBuilding("EDBBPP", 1);
		var6.EnableBuilding("EDBBA", 1);
		var6.EnableBuilding("EDBFA", 1);
		var6.EnableBuilding("EDBAB", 1);
		var6.EnableBuilding("EDBBRE", 1);
		var6.EnableBuilding("EDBMI", 1);
		var6.EnableBuilding("EDBST", 1);
		var6.EnableBuilding("EDBLZ", 1);
		var6.EnableBuilding("EDBPB", 1);
		var6.EnableBuilding("EDBBT", 1);
		var6.EnableBuilding("EDBHT", 1);
		var6.EnableBuilding("EDBRA", 1);
		var6.EnableBuilding("EDBRC", 0);
		var6.EnableBuilding("EDBWB", 0);
		var6.EnableBuilding("EDBTC", 0);
		var6.EnableBuilding("EDBHQ", 0);
		var6.EnableBuilding("EDBEN1", 0);
		
		var5.AddResearch("RES_UCS_UHL1");
		var5.AddResearch("RES_UCS_UHL2");
		var5.AddResearch("RES_UCS_UHL3");
		var5.AddResearch("RES_UCS_UBL1");
		var5.AddResearch("RES_UCS_UBL2");
		var5.AddResearch("RES_UCS_WHP1");
		var5.AddResearch("RES_UCS_WHP2");
		var5.AddResearch("RES_UCS_WHP3");
		var5.AddResearch("RES_UCS_BMD");
		var5.AddResearch("RES_UCS_BHD");
		var5.AddResearch("RES_UCS_WAMR1");
		var5.AddResearch("RES_UCS_WAMR2");
		var5.AddResearch("RES_UCS_RepHand");
		var5.AddResearch("RES_UCS_RepHand2");
		var5.AddResearch("RES_UCSWAN1");
		var5.AddResearch("RES_UCS_WSG2");
		var5.AddResearch("RES_UCS_WHG1");
		var5.AddResearch("RES_UCS_WHG2");
		var5.AddResearch("RES_UCSWTSC1");
		var5.AddResearch("RES_UCSWTSC2");
		var5.AddResearch("RES_UCSWBHC1");
		var5.AddResearch("RES_UCSWBHC2");
		var5.AddResearch("RES_UCS_MSC2");
		var5.AddResearch("RES_UCS_MSC3");
		var5.AddResearch("RES_UCS_MSC4");
		var5.AddResearch("RES_UCS_MHC2");
		var5.AddResearch("RES_UCS_MHC3");
		var5.AddResearch("RES_UCS_MHC4");
		var5.AddResearch("RES_UCS_BC1");
		var5.AddResearch("RES_UCSUCS");
		var5.AddResearch("RES_UCS_WSD");
		var5.AddResearch("RES_UCSBHT");
		var5.EnableResearch("RES_UCS_WAPB1", 0);
		var5.EnableResearch("RES_UCS_SHD2", 0);
		var5.EnableResearch("RES_UCS_MB2", 0);
		var5.EnableResearch("RES_UCS_PC", 0);
		var5.EnableResearch("RES_UCSWEQ1", 0);
		var5.EnableResearch("RES_UCS_USM1", 0);
		var5.EnableResearch("RES_UCS_ART", 0);
		
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
		var5.EnableBuilding("UCSBHT", 1);
		var5.EnableBuilding("UCSBLZ", 0);
		var5.EnableBuilding("UCSBEN1", 0);
		var5.EnableBuilding("UCSBEN2", 0);
		var5.EnableBuilding("UCSBTB", 0);
		var5.EnableBuilding("UCSBTE", 0);
		var5.EnableBuilding("UCSBRC", 0);
		var5.EnableBuilding("UCSBWB", 0);
		var5.EnableBuilding("UCSBPB", 0);
		var5.EnableBuilding("UCSBPC", 0);
		var5.EnableBuilding("UCSBHQ", 0);
		var5.EnableBuilding("UCSBSD", 0);
		var5.EnableBuilding("UCSBSS", 0);
		var5.EnableBuilding("UCSBUC", 1);
		var5.EnableBuilding("UCSBART", 0);
		
		var0 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var6.LookAt(var6.GetStartingPointX(), var6.GetStartingPointY() - 5, 20, 0, 10, 0);
		var6.DelayedLookAt(var6.GetStartingPointX(), var6.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
		var5.SetNumberOfOffensiveTankPlatoons(6);
		var5.SetNumberOfOffensiveHelicopterPlatoons(6);
		var5.SetMaxTankPlatoonSize(10);
		var5.SetNumberOfDefensiveTankPlatoons(4);
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
		
		var3 = 0;
		SetTimer(0, 20);
		
		return State3, 60;
	}
	
	state State3
	{
		if (var3 == 0)
		{
			var6.LookAt(GetPointX(0), GetPointY(0), 20, 0, 10, 0);
			var6.DelayedLookAt(GetPointX(1), GetPointY(1), 20, 0, 10, 0, 150, 1);
			var3 = 1;
			return State3, 150;
		}
		if (var3 == 1)
		{
			var6.DelayedLookAt(GetPointX(2), GetPointY(2), 20, 0, 10, 0, 150, 1);
			var3 = 2;
			return State3, 150;
		}
		if (var3 == 2)
		{
			var6.DelayedLookAt(GetPointX(3), GetPointY(3), 20, 0, 10, 0, 150, 1);
			var3 = 3;
			return State3, 150;
		}
		if (var3 == 3)
		{
			SetTimer(0, 0);
			var6.LookAt(var6.GetStartingPointX(), var6.GetStartingPointY(), 20, 0, 10, 0);
			ShowVideo("ED_M04");
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
		AddBriefing("translateBriefingLS_ED_M04_buildBase", var6.GetName());
		
		return State4, 1;
	}
	
	state State4
	{
		if (var6.GetNumberOfBuildings() >= 8)
		{
			SetGoalState(0, 1);
			var5.EnableAIFeatures(aiControlOffense, 1);
			var5.EnableAIFeatures(aiBuildTanks, 1);
			AddBriefing("translateBriefingLS_ED_M04_destroyEnemy", var6.GetName());
			SetTimer(1, var2 + GetMissionTime());
			
			return State5, 100;
		}
		return State4, 100;
	}
	
	state State5
	{
		if (var0 == 1)
		{
			var0 = 0;
			if (var5.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 1);
				AddBriefing("translateAccomplishedLS_ED_M04_destroyEnemy", var6.GetName());
				EnableNextMission(4, 1);
				EndMission(1);
				return State6, 20;
			}
		}
		return State5, 100;
	}
	
	state State7
	{
		EnableNextMission(4, 2);
		EndMission(0);
	}
	
	state State6
	{
		return State6, 500;
	}
	
	event Timer0()
	{
		int loc0;
		
		for (loc0 = 0; loc0 < 4; loc0 = loc0 + 1)
		{
			ShowArea(var6.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 7, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		
		loc2 = Rand(4) + 6;
		
		loc1 = var6.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc1 = loc1 - var5.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc1 < 4)
		{
			loc1 = 4;
		}
		
		loc1 = loc1 + var1;
		
		for (loc0 = 0; loc0 < loc1 / 2; loc0 = loc0 + 1)
		{
			var5.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
			var5.CreateUnitEx(GetPointX(7), GetPointY(7), 0, null, "UCSUA32", "UCSWAMR2", null, null, null, 1);
		}
		
		var5.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		SetTimer(1, var2 + GetMissionTime());
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
		if (var6.GetNumberOfBuildings() == 0 && var6.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_ED_M04_lostAll", var6.GetName());
			state State7;
			return;
		}
		var0 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var6.GetNumberOfBuildings() == 0 && var6.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_ED_M04_lostAll", var6.GetName());
			state State7;
			return;
		}
		var0 = 1;
	}

}