mission "translatemissionLS_UCS_M04"
{
	unitex var0;
	unitex var1;
	unitex var2;
	unitex var3;
	int var4;
	int var5;
	
	player var6;
	player var7;
	player var8;
	player var9;
	player var10;
	
	
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
	
	state State0
	{
		unitex loc0;
		int loc1;
		
		var7 = GetPlayer(5);
		var8 = GetPlayer(8);
		var6 = GetPlayer(3);
		var9 = GetPlayer(2);
		var10 = GetPlayer(1);
		
		RegisterGoal(0, "translateGoalLS_UCS_M04_buildBase");
		RegisterGoal(1, "translateGoalLS_UCS_M04_destroyEnemy");
		
		var6.EnableStatistics(0);
		var8.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var7.LoadScript("single\\singleEasy");
			var9.LoadScript("single\\singleEasy");
			var10.SetMoney(20000);
		}
		if (GetDifficultyLevel() == 1)
		{
			var7.LoadScript("single\\singleMedium");
			var9.LoadScript("single\\singleMedium");
			var10.SetMoney(15000);
		}
		if (GetDifficultyLevel() == 2)
		{
			var7.LoadScript("single\\singleHard");
			var9.LoadScript("single\\singleHard");
			var10.SetMoney(10000);
		}
		
		var10.EnableAIFeatures(aiEnabled, 0);
		var10.EnableCommand(commandSoldBuilding, 1);
		
		var7.SetMoney(0);
		var9.SetMoney(100000);
		
		var10.EnableResearch("RES_UCS_SHD2", 1);
		var10.EnableResearch("RES_UCS_BOMBER21", 1);
		
		var10.EnableBuilding("UCSBBA", 1);
		var10.EnableBuilding("UCSBFA", 1);
		var10.EnableBuilding("UCSBPP", 1);
		var10.EnableBuilding("UCSBPR", 1);
		var10.EnableBuilding("UCSBET", 1);
		var10.EnableBuilding("UCSBRF", 1);
		var10.EnableBuilding("UCSBAB", 1);
		var10.EnableBuilding("UCSBST", 1);
		var10.EnableBuilding("UCSBBT", 1);
		var10.EnableBuilding("UCSBFO", 1);
		var10.EnableBuilding("UCSBSH", 1);
		var10.EnableBuilding("UCSBLZ", 1);
		var10.EnableBuilding("UCSBTB", 0);
		var10.EnableBuilding("UCSBEN1", 0);
		var10.EnableBuilding("UCSBEN2", 0);
		var10.EnableBuilding("UCSBTE", 0);
		var10.EnableBuilding("UCSBET", 0);
		var10.EnableBuilding("UCSBWB", 0);
		var10.EnableBuilding("UCSBPB", 0);
		var10.EnableBuilding("UCSBPC", 0);
		var10.EnableBuilding("UCSBHQ", 0);
		var10.EnableBuilding("UCSBSD", 0);
		var10.EnableBuilding("UCSBSS", 0);
		var10.EnableBuilding("UCSBUC", 0);
		var10.EnableBuilding("UCSBHT", 0);
		var10.EnableBuilding("UCSBART", 0);
		
		var9.AddResearch("RES_ED_WCH2");
		var9.AddResearch("RES_ED_ACH2");
		var9.AddResearch("RES_ED_WCA2");
		var9.AddResearch("RES_ED_WSL1");
		var9.AddResearch("RES_ED_WSL2");
		var9.AddResearch("RES_ED_WSL3");
		var9.AddResearch("RES_ED_WSI1");
		var9.AddResearch("RES_ED_WSI2");
		var9.AddResearch("RES_ED_WSR1");
		var9.AddResearch("RES_ED_WSR1");
		var9.AddResearch("RES_ED_WSR1");
		var9.AddResearch("RES_ED_ASR1");
		var9.AddResearch("RES_ED_ASR1");
		var9.AddResearch("RES_EDWAA1");
		var9.AddResearch("RES_EDWAN1");
		var9.EnableResearch("RES_EDWEQ1", 0);
		var9.AddResearch("RES_ED_WHC1");
		var9.AddResearch("RES_ED_WHC2");
		var9.AddResearch("RES_ED_WMR1");
		var9.AddResearch("RES_ED_WMR2");
		var9.AddResearch("RES_ED_WMR3");
		var9.AddResearch("RES_ED_AMR1");
		var9.AddResearch("RES_ED_AMR2");
		var9.EnableResearch("RES_ED_WHR1", 0);
		var9.AddResearch("RES_ED_WHL1");
		var9.AddResearch("RES_ED_WHL2");
		var9.AddResearch("RES_ED_WHL3");
		var9.AddResearch("RES_ED_WHI1");
		var9.AddResearch("RES_ED_WHI2");
		var9.EnableResearch("RES_ED_AB1", 0);
		var9.EnableResearch("RES_ED_ART", 0);
		var9.AddResearch("RES_MCH2");
		var9.AddResearch("RES_MCH3");
		var9.AddResearch("RES_MCH4");
		var9.AddResearch("RES_ED_MSC2");
		var9.AddResearch("RES_ED_MSC3");
		var9.AddResearch("RES_ED_MSC4");
		var9.AddResearch("RES_ED_MHC2");
		var9.AddResearch("RES_ED_MHC3");
		var9.AddResearch("RES_ED_MHC4");
		var9.AddResearch("RES_MSR2");
		var9.AddResearch("RES_MSR3");
		var9.AddResearch("RES_MSR4");
		var9.AddResearch("RES_MSR2");
		var9.AddResearch("RES_MSR3");
		var9.AddResearch("RES_MSR4");
		var9.EnableResearch("RES_ED_MHR2", 0);
		var9.EnableResearch("RES_ED_MB2", 0);
		var9.AddResearch("RES_ED_UST2");
		var9.AddResearch("RES_ED_UST3");
		var9.AddResearch("RES_ED_UMT1");
		var9.AddResearch("RES_ED_UMT2");
		var9.AddResearch("RES_ED_UMT3");
		var9.AddResearch("RES_ED_UA11");
		var9.AddResearch("RES_ED_UA12");
		var9.AddResearch("RES_ED_UA21");
		var9.AddResearch("RES_ED_UA22");
		var9.EnableResearch("RES_ED_UMW1", 0);
		var9.EnableResearch("RES_ED_UMI1", 0);
		var9.EnableResearch("RES_EDUUT", 0);
		var9.EnableResearch("RES_EDUSTEALTH", 0);
		var9.EnableResearch("RES_ED_UOH2", 0);
		var9.EnableResearch("RES_ED_BC1", 0);
		var9.EnableResearch("RES_ED_USM1", 0);
		var9.EnableResearch("RES_ED_USM2", 0);
		var9.EnableResearch("RES_ED_USS2", 0);
		var9.EnableResearch("RES_ED_USS3", 0);
		var9.EnableResearch("RES_ED_UHW1", 0);
		var9.AddResearch("RES_ED_UHT1");
		var9.AddResearch("RES_ED_UHT2");
		var9.AddResearch("RES_ED_UHT3");
		var9.AddResearch("RES_ED_UBT1");
		var9.AddResearch("RES_ED_UBT2");
		var9.EnableResearch("RES_ED_UHS1", 0);
		var9.AddResearch("RES_ED_UA31");
		var9.AddResearch("RES_ED_UA32");
		var9.AddResearch("RES_ED_UA41");
		var9.AddResearch("RES_ED_UA42");
		var9.AddResearch("RES_ED_BMD");
		var9.AddResearch("RES_ED_BHD");
		var9.AddResearch("RES_ED_RepHand");
		var9.AddResearch("RES_ED_RepHand2");
		var9.AddResearch("RES_ED_SCR");
		var9.AddResearch("RES_ED_SCR2");
		var9.AddResearch("RES_ED_SCR3");
		var9.AddResearch("RES_ED_SGen");
		var9.AddResearch("RES_ED_MGen");
		var9.AddResearch("RES_ED_HGen");
		var9.EnableResearch("RES_EDBHT", 0);
		
		var9.EnableBuilding("EDBBPP", 1);
		var9.EnableBuilding("EDBBA", 1);
		var9.EnableBuilding("EDBFA", 1);
		var9.EnableBuilding("EDBWB", 0);
		var9.EnableBuilding("EDBAB", 1);
		var9.EnableBuilding("EDBBRE", 1);
		var9.EnableBuilding("EDBMI", 1);
		var9.EnableBuilding("EDBTC", 0);
		var9.EnableBuilding("EDBST", 1);
		var9.EnableBuilding("EDBPB", 1);
		var9.EnableBuilding("EDBBT", 1);
		var9.EnableBuilding("EDBRC", 0);
		var9.EnableBuilding("EDBHQ", 0);
		var9.EnableBuilding("EDBRA", 1);
		var9.EnableBuilding("EDBEN1", 0);
		var9.EnableBuilding("EDBLZ", 0);
		
		var7.AddResearch("RES_MISSION_PACK1_ONLY");
		var7.AddResearch("RES_UCS_UOH2");
		var7.AddResearch("RES_UCS_UOH3");
		var7.AddResearch("RES_UCS_USL2");
		var7.AddResearch("RES_UCS_USL3");
		var7.AddResearch("RES_UCS_UML1");
		var7.AddResearch("RES_UCS_UML2");
		var7.AddResearch("RES_UCS_UML3");
		var7.AddResearch("RES_UCS_UHL1");
		var7.AddResearch("RES_UCS_UHL2");
		var7.AddResearch("RES_UCS_UHL3");
		var7.AddResearch("RES_UCS_GARG1");
		var7.AddResearch("RES_UCS_GARG2");
		var7.AddResearch("RES_UCS_GARG3");
		var7.AddResearch("RES_UCS_WCH2");
		var7.AddResearch("RES_UCS_WACH2");
		var7.AddResearch("RES_MCH2");
		var7.AddResearch("RES_MCH3");
		var7.AddResearch("RES_MCH4");
		var7.AddResearch("RES_UCS_WSR1");
		var7.AddResearch("RES_UCS_WSR2");
		var7.AddResearch("RES_UCS_WSR3");
		var7.AddResearch("RES_MSR2");
		var7.AddResearch("RES_MSR3");
		var7.AddResearch("RES_MSR4");
		var7.AddResearch("RES_UCS_WASR1");
		var7.AddResearch("RES_UCS_WASR2");
		var7.AddResearch("RES_UCS_WMR1");
		var7.AddResearch("RES_UCS_WMR2");
		var7.AddResearch("RES_UCS_WMR3");
		var7.AddResearch("RES_MMR2");
		var7.AddResearch("RES_MMR3");
		var7.AddResearch("RES_MMR4");
		var7.AddResearch("RES_UCS_WSP1");
		var7.AddResearch("RES_UCS_WSP2");
		var7.AddResearch("RES_UCS_WHP1");
		var7.AddResearch("RES_UCS_WHP2");
		var7.AddResearch("RES_UCS_WHP3");
		var7.AddResearch("RES_UCS_SGen");
		var7.AddResearch("RES_UCS_MGen");
		var7.AddResearch("RES_UCS_HGen");
		var7.AddResearch("RES_UCS_RepHand");
		var7.AddResearch("RES_UCS_RepHand2");
		var7.AddResearch("RES_UCS_BMD");
		var7.AddResearch("RES_UCS_BHD");
		var7.AddResearch("RES_UCS_UBL1");
		var7.AddResearch("RES_UCS_UBL2");
		var7.AddResearch("RES_UCS_RepHand");
		var7.AddResearch("RES_UCS_RepHand2");
		var7.AddResearch("RES_UCS_WSG2");
		var7.AddResearch("RES_UCS_HSG1");
		var7.AddResearch("RES_UCS_HSG2");
		var7.AddResearch("RES_UCS_MG2");
		var7.AddResearch("RES_UCS_MG3");
		var7.AddResearch("RES_UCS_MG4");
		var7.AddResearch("RES_UCS_SHD");
		var7.AddResearch("RES_UCSBHT");
		var7.AddResearch("RES_UCS_PC");
		var7.AddResearch("RES_UCSUCS");
		var7.AddResearch("RES_UCSWTSC1");
		var7.AddResearch("RES_UCSWTSC2");
		var7.AddResearch("RES_UCSWBHC1");
		var7.AddResearch("RES_UCSWBHC2");
		var7.AddResearch("RES_UCS_MSC2");
		var7.AddResearch("RES_UCS_MSC3");
		var7.AddResearch("RES_UCS_MSC4");
		var7.AddResearch("RES_UCS_MHC2");
		var7.AddResearch("RES_UCS_MHC3");
		var7.AddResearch("RES_UCS_MHC4");
		var7.AddResearch("RES_UCSWAP1");
		var7.AddResearch("RES_UCSWAP2");
		var7.AddResearch("RES_UCSCAA1");
		var7.AddResearch("RES_UCSCAA2");
		
		var7.EnableResearch("RES_UCS_UMI1", 0);
		var7.EnableResearch("RES_UCS_USS2", 0);
		var7.EnableResearch("RES_UCS_UBS1", 0);
		var7.EnableResearch("RES_UCS_UAH1", 0);
		var7.EnableResearch("RES_UCS_BOMBER21", 0);
		var7.EnableResearch("RES_UCS_BOMBER31", 0);
		var7.EnableResearch("RES_UCS_WAMR1", 0);
		var7.EnableResearch("RES_UCSWAN1", 0);
		var7.EnableResearch("RES_UCSWEQ1", 0);
		var7.EnableResearch("RES_UCS_ART", 0);
		var7.EnableResearch("RES_UCS_BC1", 0);
		var7.EnableResearch("RES_UCS_USM1", 0);
		var7.EnableResearch("RES_UCSUUT", 0);
		var7.EnableResearch("RES_UCS_MB2", 0);
		var7.EnableResearch("RES_UCS_SHD2", 0);
		var7.EnableResearch("RES_UCS_WSD", 0);
		var7.EnableResearch("RES_UCS_WAPB1", 0);
		
		var7.EnableBuilding("UCSBBA", 1);
		var7.EnableBuilding("UCSBFA", 1);
		var7.EnableBuilding("UCSBPP", 1);
		var7.EnableBuilding("UCSBPR", 1);
		var7.EnableBuilding("UCSBET", 1);
		var7.EnableBuilding("UCSBRF", 1);
		var7.EnableBuilding("UCSBAB", 1);
		var7.EnableBuilding("UCSBST", 1);
		var7.EnableBuilding("UCSBBT", 1);
		var7.EnableBuilding("UCSBFO", 1);
		var7.EnableBuilding("UCSBSH", 1);
		var7.EnableBuilding("UCSBLZ", 1);
		var7.EnableBuilding("UCSBPB", 1);
		var7.EnableBuilding("UCSBPC", 1);
		var7.EnableBuilding("UCSBHT", 1);
		var7.EnableBuilding("UCSBEN1", 0);
		var7.EnableBuilding("UCSBEN2", 0);
		var7.EnableBuilding("Teleport", 0);
		var7.EnableBuilding("UCSBET", 0);
		var7.EnableBuilding("UCSBWB", 0);
		var7.EnableBuilding("UCSBHQ", 0);
		var7.EnableBuilding("UCSBSD", 0);
		var7.EnableBuilding("UCSBSS", 0);
		var7.EnableBuilding("UCSBUC", 0);
		var7.EnableBuilding("UCSBART", 0);
		
		var4 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var10.LookAt(var10.GetStartingPointX(), var10.GetStartingPointY() - 5, 20, 128, 10, 0);
		var10.DelayedLookAt(var10.GetStartingPointX(), var10.GetStartingPointY(), 20, 0, 10, 0, 60, 1);
		return State1, 1;
	}
	
	state State1
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		var9.EnableAIFeatures(aiEnabled, 0);
		var9.EnableAI(0);
		
		var9.SetNeutral(var7);
		var7.SetNeutral(var9);
		var7.SetNeutral(var8);
		var9.SetNeutral(var8);
		var8.SetNeutral(var7);
		var8.SetNeutral(var9);
		
		var8.EnableAI(0);
		
		var7.SetNumberOfOffensiveTankPlatoons(0);
		var7.SetNumberOfOffensiveHelicopterPlatoons(0);
		var7.SetMaxTankPlatoonSize(10);
		var7.SetNumberOfDefensiveTankPlatoons(4);
		var7.SetMaxAttackFrequency(0);
		var7.SetMaxHelicopterPlatoonSize(6);
		
		var7.EnableAIFeatures(aiRejectAlliance, 1);
		var7.EnableAIFeatures(aiUpgradeCannons, 1);
		var7.EnableAIFeatures(aiBuildBuilders, 1);
		var7.EnableAIFeatures(aiBuildRepairers, 1);
		var7.EnableAIFeatures(aiEnabled, 1);
		var7.EnableAIFeatures(aiBuildBuildings, 1);
		var7.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var7.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var7.EnableAIFeatures(aiControlSupplyUnits, 1);
		var7.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var7.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var7.EnableAIFeatures(aiDefenseTowers, 1);
		var7.EnableAIFeatures(aiControlDefense, 1);
		var7.EnableAIFeatures(aiControlMiningUnits, 1);
		var7.EnableAIFeatures(aiBuildMiningUnits, 1);
		var7.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var7.EnableAIFeatures(aiBuildHelicopters, 0);
		var7.EnableAIFeatures(aiControlOffense, 0);
		var7.EnableAIFeatures(aiBuildTanks, 1);
		var7.EnableAI(0);
		
		var9.SetNumberOfOffensiveTankPlatoons(6);
		var9.SetNumberOfOffensiveHelicopterPlatoons(2);
		var9.SetMaxTankPlatoonSize(10);
		var9.SetNumberOfDefensiveTankPlatoons(2);
		var9.SetMaxAttackFrequency(0);
		var9.SetMaxHelicopterPlatoonSize(6);
		
		var9.EnableAIFeatures(aiRejectAlliance, 1);
		var9.EnableAIFeatures(aiUpgradeCannons, 1);
		var9.EnableAIFeatures(aiBuildBuilders, 1);
		var9.EnableAIFeatures(aiBuildRepairers, 1);
		var9.EnableAIFeatures(aiEnabled, 1);
		var9.EnableAIFeatures(aiBuildBuildings, 1);
		var9.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var9.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var9.EnableAIFeatures(aiControlSupplyUnits, 1);
		var9.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var9.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var9.EnableAIFeatures(aiDefenseTowers, 1);
		var9.EnableAIFeatures(aiControlDefense, 1);
		var9.EnableAIFeatures(aiControlMiningUnits, 0);
		var9.EnableAIFeatures(aiBuildMiningUnits, 0);
		var9.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var9.EnableAIFeatures(aiBuildHelicopters, 1);
		var9.EnableAIFeatures(aiControlOffense, 1);
		var9.EnableAIFeatures(aiBuildTanks, 1);
		var9.EnableAI(0);
		
		for (loc0 = 0; loc0 < 2; loc0 = loc0 + 1)
		{
			loc1 = loc0 * 5;
			loc2 = GetUnit(GetPointX(loc1 + 3), GetPointY(loc1 + 3));
			loc2.CommandSetContainerSource(GetUnit(GetPointX(loc1), GetPointY(loc1)));
			loc2.CommandSetContainerSource(GetUnit(GetPointX(loc1), GetPointY(loc1)));
			loc2.CommandSetContainerDestination(GetUnit(GetPointX(loc1 + 2), GetPointY(loc1 + 2)));
			loc2 = GetUnit(GetPointX(loc1 + 4), GetPointY(loc1 + 4));
			loc2.CommandSetContainerSource(GetUnit(GetPointX(loc1 + 1), GetPointY(loc1 + 1)));
			loc2.CommandSetContainerSource(GetUnit(GetPointX(loc1 + 1), GetPointY(loc1 + 1)));
			loc2.CommandSetContainerDestination(GetUnit(GetPointX(loc1 + 2), GetPointY(loc1 + 2)));
		}
		
		ShowVideo("UCS_M04");
		
		return State2, 60;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_UCS_M04_buildBase", var10.GetName());
		
		return State7, 1;
	}
	
	state State7
	{
		if (var10.GetNumberOfBuildings() >= 5)
		{
			SetGoalState(0, 1);
			var9.EnableAI(0);
			var7.EnableAI(0);
			EnableGoal(1, 1);
			AddBriefing("translateBriefingLS_UCS_M04_destroyEnemy", var10.GetName());
			SetTimer(1, 4000 + GetMissionTime());
			var9.EnableAI(1);
			var7.EnableAI(1);
			
			return State8, 100;
		}
		return State7, 100;
	}
	
	state State8
	{
		if (var4 == 1)
		{
			var4 = 0;
			if (var9.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 1);
				KillArea(var9.GetIFF(), GetRight() / 2, GetBottom() / 2, 0, 200);
				AddBriefing("translateAccomplishedLS_UCS_M04_all", var10.GetName());
				return State3, 20;
			}
		}
		return State8, 100;
	}
	
	state State10
	{
		EnableNextMission(4, 2);
		EndMission(0);
	}
	
	state State3
	{
		int loc0;
		unitex loc1;
		unitex loc2;
		
		loc2 = GetUnit(GetPointX(11), GetPointY(11), 0);
		
		for (loc0 = 0; loc0 < 3; loc0 = loc0 + 1)
		{
			loc1 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
			loc1.CommandEnter(loc2);
			loc1 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
			loc1.CommandEnter(loc2);
			loc1 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSMR1", null, 3);
			loc1.CommandEnter(loc2);
			loc1 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSMR1", null, 3);
			loc1.CommandEnter(loc2);
		}
		var0 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
		var0.CommandEnter(loc2);
		var1 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
		var1.CommandEnter(loc2);
		var2 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSMR1", null, 3);
		var2.CommandEnter(loc2);
		var3 = var10.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSMR1", null, 3);
		var3.CommandEnter(loc2);
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var10.LookAt(GetPointX(10), GetPointY(10), 20, 0, 10, 0);
		var10.DelayedLookAt(GetPointX(11), GetPointY(11), 20, 128, 10, 0, 500, 1);
		return State4, 300;
	}
	
	state State4
	{
		int loc0;
		int loc1;
		
		loc1 = 200;
		if (var0 != null)
		{
			loc0 = Distance(GetPointX(11), GetPointY(11), var0.GetLocationX(), var0.GetLocationY());
			if (loc0 < loc1)
			{
				loc1 = loc0;
			}
		}
		if (var1 != null)
		{
			loc0 = Distance(GetPointX(11), GetPointY(11), var1.GetLocationX(), var1.GetLocationY());
			if (loc0 < loc1)
			{
				loc1 = loc0;
			}
		}
		if (var2 != null)
		{
			loc0 = Distance(GetPointX(11), GetPointY(11), var2.GetLocationX(), var2.GetLocationY());
			if (loc0 < loc1)
			{
				loc1 = loc0;
			}
		}
		if (var3 != null)
		{
			loc0 = Distance(GetPointX(11), GetPointY(11), var3.GetLocationX(), var3.GetLocationY());
			if (loc0 < loc1)
			{
				loc1 = loc0;
			}
		}
		
		if (loc1 <= 12)
		{
			KillArea(var7.GetIFF(), var7.GetStartingPointX(), var7.GetStartingPointY(), 0, 30);
			return State5, 20;
		}
		return State4, 30;
	}
	
	state State5
	{
		if (var10.IsPointLocated(GetPointX(11), GetPointY(11), 1))
		{
			return State6, 200;
		}
		return State5, 50;
	}
	
	state State6
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingLS_UCS_M04_FinalBriefing", var10.GetName());
		EnableNextMission(4, 1);
		EndMission(1);
		
		return State9, 20;
	}
	
	state State9
	{
		return State9, 500;
	}
	event Timer1()
	{
		int loc0;
		
		loc0 = Rand(4) + 12;
		var9.Attack(GetPointX(loc0), GetPointY(loc0), 0);
		
		SetTimer(1, GetMissionTime() + 4000);
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var10.GetMoney();
		var10.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var10.GetNumberOfBuildings() == 0 && var10.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M04_lostAll", var10.GetName());
			state State10;
			return;
		}
		var4 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var10.GetNumberOfBuildings() == 0 && var10.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M04_lostAll", var10.GetName());
			state State10;
			return;
		}
		var4 = 1;
	}

}