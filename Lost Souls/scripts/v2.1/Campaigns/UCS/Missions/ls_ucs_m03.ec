mission "translatemissionLS_UCS_M03"
{
	int var0;
	int var1;
	int var2;
	int var3;
	
	player var4;
	player var5;
	player var6;
	player var7;
	player var8;
	
	
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
		
		var5 = GetPlayer(5);
		var6 = GetPlayer(6);
		var4 = GetPlayer(3);
		var7 = GetPlayer(2);
		var8 = GetPlayer(1);
		
		RegisterGoal(0, "translateGoalLS_UCS_M03_captureBase");
		RegisterGoal(1, "translateGoalLS_UCS_M03_stealUnits");
		RegisterGoal(2, "translateGoalLS_UCS_M03_buildBase");
		RegisterGoal(4, "translateGoalLS_UCS_M03_destroyEnemy");
		RegisterGoal(3, "translateGoalLS_UCS_M03_findUCS");
		
		var4.EnableStatistics(0);
		var6.EnableStatistics(0);
		
		
		if (GetDifficultyLevel() == 0)
		{
			var1 = 20000;
			var5.LoadScript("single\\singleEasy");
			var8.SetMoney(20000);
		}
		if (GetDifficultyLevel() == 1)
		{
			var1 = 15000;
			var5.LoadScript("single\\singleMedium");
			var8.SetMoney(15000);
		}
		if (GetDifficultyLevel() == 2)
		{
			var1 = 10000;
			var5.LoadScript("single\\singleHard");
			var8.SetMoney(10000);
		}
		
		var8.EnableAIFeatures(aiEnabled, 0);
		var8.EnableCommand(commandSoldBuilding, 1);
		
		var5.SetMoney(100000);
		var7.SetMoney(0);
		
		var8.AddResearch("RES_UCSWTSC1");
		var8.AddResearch("RES_UCSWTSC2");
		var8.AddResearch("RES_UCSWBHC1");
		var8.AddResearch("RES_UCSWBHC2");
		var8.AddResearch("RES_UCS_MSC2");
		var8.AddResearch("RES_UCS_MSC3");
		var8.AddResearch("RES_UCS_MSC4");
		var8.AddResearch("RES_UCS_MHC2");
		var8.AddResearch("RES_UCS_MHC3");
		var8.AddResearch("RES_UCS_MHC4");
		
		var8.EnableBuilding("UCSBBA", 1);
		var8.EnableBuilding("UCSBFA", 1);
		var8.EnableBuilding("UCSBPP", 1);
		var8.EnableBuilding("UCSBPR", 1);
		var8.EnableBuilding("UCSBET", 1);
		var8.EnableBuilding("UCSBRF", 1);
		var8.EnableBuilding("UCSBAB", 1);
		var8.EnableBuilding("UCSBST", 1);
		var8.EnableBuilding("UCSBBT", 1);
		var8.EnableBuilding("UCSBFO", 1);
		var8.EnableBuilding("UCSBSH", 1);
		var8.EnableBuilding("UCSBLZ", 1);
		var8.EnableBuilding("UCSBTB", 0);
		var8.EnableBuilding("UCSBEN1", 0);
		var8.EnableBuilding("UCSBEN2", 0);
		var8.EnableBuilding("UCSBTE", 0);
		var8.EnableBuilding("UCSBRC", 0);
		var8.EnableBuilding("UCSBWB", 0);
		var8.EnableBuilding("UCSBPB", 0);
		var8.EnableBuilding("UCSBPC", 0);
		var8.EnableBuilding("UCSBHQ", 0);
		var8.EnableBuilding("UCSBSD", 0);
		var8.EnableBuilding("UCSBSS", 0);
		var8.EnableBuilding("UCSBUC", 0);
		var8.EnableBuilding("UCSBHT", 0);
		var8.EnableBuilding("UCSBART", 0);
		
		var5.AddResearch("RES_MISSION_PACK1_ONLY");
		var5.AddResearch("RES_UCS_UOH2");
		var5.AddResearch("RES_UCS_UOH3");
		var5.AddResearch("RES_UCS_USL2");
		var5.AddResearch("RES_UCS_USL3");
		var5.AddResearch("RES_UCS_UML1");
		var5.AddResearch("RES_UCS_UML2");
		var5.AddResearch("RES_UCS_UML3");
		var5.AddResearch("RES_UCS_UHL1");
		var5.AddResearch("RES_UCS_UHL2");
		var5.AddResearch("RES_UCS_UHL3");
		var5.AddResearch("RES_UCS_GARG1");
		var5.AddResearch("RES_UCS_GARG2");
		var5.AddResearch("RES_UCS_GARG3");
		var5.AddResearch("RES_UCS_WCH2");
		var5.AddResearch("RES_UCS_WACH2");
		var5.AddResearch("RES_MCH2");
		var5.AddResearch("RES_MCH3");
		var5.AddResearch("RES_MCH4");
		var5.AddResearch("RES_UCS_WSR1");
		var5.AddResearch("RES_UCS_WSR2");
		var5.AddResearch("RES_UCS_WSR3");
		var5.AddResearch("RES_MSR2");
		var5.AddResearch("RES_MSR3");
		var5.AddResearch("RES_MSR4");
		var5.AddResearch("RES_UCS_WASR1");
		var5.AddResearch("RES_UCS_WASR2");
		var5.AddResearch("RES_UCS_WMR1");
		var5.AddResearch("RES_UCS_WMR2");
		var5.AddResearch("RES_UCS_WMR3");
		var5.AddResearch("RES_MMR2");
		var5.AddResearch("RES_MMR3");
		var5.AddResearch("RES_MMR4");
		var5.AddResearch("RES_UCS_WSP1");
		var5.AddResearch("RES_UCS_WSP2");
		var5.AddResearch("RES_UCS_WHP1");
		var5.AddResearch("RES_UCS_WHP2");
		var5.AddResearch("RES_UCS_WHP3");
		var5.AddResearch("RES_UCS_SGen");
		var5.AddResearch("RES_UCS_MGen");
		var5.AddResearch("RES_UCS_HGen");
		var5.AddResearch("RES_UCS_RepHand");
		var5.AddResearch("RES_UCS_RepHand2");
		var5.AddResearch("RES_UCS_BMD");
		var5.AddResearch("RES_UCS_BHD");
		var5.AddResearch("RES_UCS_UBL1");
		var5.AddResearch("RES_UCS_UBL2");
		var5.AddResearch("RES_UCS_RepHand");
		var5.AddResearch("RES_UCS_RepHand2");
		var5.AddResearch("RES_UCS_WSG2");
		var5.AddResearch("RES_UCS_HSG1");
		var5.AddResearch("RES_UCS_HSG2");
		var5.AddResearch("RES_UCS_MG2");
		var5.AddResearch("RES_UCS_MG3");
		var5.AddResearch("RES_UCS_MG4");
		var5.AddResearch("RES_UCS_SHD");
		var5.AddResearch("RES_UCSBHT");
		var5.AddResearch("RES_UCS_PC");
		var5.AddResearch("RES_UCSUCS");
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
		var5.AddResearch("RES_UCSWAP1");
		var5.AddResearch("RES_UCSWAP2");
		var5.AddResearch("RES_UCSCAA1");
		var5.AddResearch("RES_UCSCAA2");
		
		var5.EnableResearch("RES_UCS_UMI1", 0);
		var5.EnableResearch("RES_UCS_USS2", 0);
		var5.EnableResearch("RES_UCS_UBS1", 0);
		var5.EnableResearch("RES_UCS_UAH1", 0);
		var5.EnableResearch("RES_UCS_BOMBER21", 0);
		var5.EnableResearch("RES_UCS_BOMBER31", 0);
		var5.EnableResearch("RES_UCS_WAMR1", 0);
		var5.EnableResearch("RES_UCSWAN1", 0);
		var5.EnableResearch("RES_UCSWEQ1", 0);
		var5.EnableResearch("RES_UCS_ART", 0);
		var5.EnableResearch("RES_UCS_BC1", 0);
		var5.EnableResearch("RES_UCS_USM1", 0);
		var5.EnableResearch("RES_UCSUUT", 0);
		var5.EnableResearch("RES_UCS_MB2", 0);
		var5.EnableResearch("RES_UCS_SHD2", 0);
		var5.EnableResearch("RES_UCS_WSD", 0);
		var5.EnableResearch("RES_UCS_WAPB1", 0);
		
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
		var5.EnableBuilding("UCSBPB", 0);
		var5.EnableBuilding("UCSBPC", 0);
		var5.EnableBuilding("UCSBHT", 1);
		var5.EnableBuilding("UCSBEN1", 0);
		var5.EnableBuilding("UCSBEN2", 0);
		var5.EnableBuilding("UCSBTE", 0);
		var5.EnableBuilding("UCSBET", 0);
		var5.EnableBuilding("UCSBWB", 0);
		var5.EnableBuilding("UCSBHQ", 0);
		var5.EnableBuilding("UCSBSD", 0);
		var5.EnableBuilding("UCSBSS", 0);
		var5.EnableBuilding("UCSBUC", 0);
		var5.EnableBuilding("UCSBART", 0);
		
		var2 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var8.LookAt(var8.GetStartingPointX(), var8.GetStartingPointY() - 5, 20, 128, 10, 0);
		var8.DelayedLookAt(var8.GetStartingPointX(), var8.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
		var7.EnableAIFeatures(aiEnabled, 0);
		var7.EnableAI(0);
		var6.EnableAIFeatures(aiEnabled, 0);
		var6.EnableAI(0);
		
		var7.SetNeutral(var5);
		var7.SetNeutral(var6);
		var5.SetNeutral(var7);
		var5.SetNeutral(var6);
		var6.SetNeutral(var5);
		var6.SetNeutral(var7);
		
		var5.SetNumberOfOffensiveTankPlatoons(5);
		var5.SetNumberOfOffensiveHelicopterPlatoons(2);
		var5.SetMaxTankPlatoonSize(10);
		var5.SetNumberOfDefensiveTankPlatoons(1);
		var5.SetMaxAttackFrequency(0);
		var5.SetMaxHelicopterPlatoonSize(6);
		
		var5.EnableAIFeatures(aiRejectAlliance, 1);
		var5.EnableAIFeatures(aiUpgradeCannons, 1);
		var5.EnableAIFeatures(aiBuildBuilders, 1);
		var5.EnableAIFeatures(aiBuildRepairers, 1);
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
		var5.EnableAIFeatures(aiBuildHelicopters, 0);
		var5.EnableAIFeatures(aiControlOffense, 0);
		var5.EnableAIFeatures(aiEnabled, 0);
		var5.EnableAIFeatures(aiBuildTanks, 0);
		var5.EnableAI(0);
		
		ShowVideo("UCS_M03");
		
		return State2, 60;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingLS_UCS_M03_captureBase", var8.GetName());
		
		return State3, 1;
	}
	
	state State3
	{
		if (var8.IsPointLocated(GetPointX(0), GetPointY(0)))
		{
			var8.CreateUnitEx(var8.GetStartingPointX(), var8.GetStartingPointY(), 0, null, "UCSUBU1", null, null, null, null, 3);
			SetGoalState(0, 1);
			SetGoalState(1, 2);
			EnableGoal(2, 1);
			AddBriefing("translateBriefingLS_UCS_M03_buildBase", var8.GetName());
			
			return State4, 100;
		}
		return State3, 100;
	}
	
	state State4
	{
		if (var8.GetNumberOfBuildings() >= 5)
		{
			SetGoalState(2, 1);
			EnableGoal(3, 1);
			SetTimer(0, 600 + GetMissionTime());
			var3 = 0;
			AddBriefing("translateAccomplishedLS_UCS_M03_buildBase", var8.GetName());
			
			return State5, 100;
		}
		return State4, 100;
	}
	
	state State5
	{
		if (var0 == 0 && var5.IsPointLocated(GetPointX(2), GetPointY(2)))
		{
			var0 = 1;
			SetGoalState(3, 1);
			EnableGoal(4, 1);
			AddBriefing("translateBriefingLS_UCS_M03_destroyEnemy", var8.GetName());
			
			var5.EnableAIFeatures(aiBuildHelicopters, 1);
			var5.EnableAIFeatures(aiEnabled, 1);
			var5.EnableAIFeatures(aiControlOffense, 1);
			var5.EnableAIFeatures(aiBuildTanks, 1);
			var5.EnableAI(1);
			SetTimer(1, var1 + GetMissionTime());
		}
		if (var2 == 1)
		{
			var2 = 0;
			if (var5.GetNumberOfUnits() == 0 && var5.GetNumberOfBuildings() == 0)
			{
				SetGoalState(4, 1);
				AddBriefing("translateAccomplishedLS_UCS_M03_all", var8.GetName());
				EnableNextMission(3, 1);
				EnableEndMissionButton(1);
				return State6, 100;
			}
		}
		return State5, 100;
	}
	
	state State7
	{
		EnableNextMission(3, 2);
		EndMission(0);
	}
	
	state State6
	{
		return State6, 500;
	}
	
	event Timer0()
	{
		unitex loc0;
		int loc1;
		
		SetTimer(0, 0);
		
		for (loc1 = 0; loc1 < 2; loc1 = loc1 + 1)
		{
			loc0 = var5.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSUA13", "UCSWACH2", null, null, null, 1);
			loc0.CommandMove(GetPointX(2), GetPointY(2), 0);
			loc0 = var5.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSUA13", "UCSWAP2", null, null, null, 1);
			loc0.CommandMove(GetPointX(2), GetPointY(2), 0);
			loc0 = var5.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSUA13", "UCSWASR2", null, null, null, 1);
			loc0.CommandMove(GetPointX(2), GetPointY(2), 0);
		}
	}
	
	event Timer1()
	{
		unitex loc0;
		int loc1;
		
		var5.EnableBuilding("UCSBPB", 1);
		var5.EnableBuilding("UCSBPC", 1);
		SetTimer(1, 0);
		
		for (loc1 = 10; loc1 <= 12; loc1 = loc1 + 1)
		{
			loc0 = GetUnit(GetPointX(loc1), GetPointY(loc1));
			if (loc0 != null)
			{
				loc0.ChangePlayer(var5);
			}
		}
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var8.GetMoney();
		var8.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var8.GetNumberOfBuildings() == 0 && var8.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M03_lostAll", var8.GetName());
			state State7;
			return;
		}
		var2 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var8.GetNumberOfBuildings() == 0 && var8.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M03_lostAll", var8.GetName());
			state State7;
			return;
		}
		var2 = 1;
	}

}