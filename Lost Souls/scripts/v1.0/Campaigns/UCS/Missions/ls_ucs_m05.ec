mission "translatemissionLS_UCS_M05"
{
	int var0;
	int var1;
	int var2;
	int var3;
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
	state State11;
	state State12;
	state State13;
	
	state State0
	{
		unitex loc0;
		int loc1;
		unitex loc2;
		
		var7 = GetPlayer(5);
		var8 = GetPlayer(8);
		var6 = GetPlayer(3);
		var9 = GetPlayer(2);
		var10 = GetPlayer(1);
		
		RegisterGoal(0, "translateGoalLS_UCS_M05_destroyUCS");
		RegisterGoal(1, "translateGoalLS_UCS_M05_destroyLC");
		
		var9.EnableStatistics(0);
		var8.EnableStatistics(0);
		
		var7.LoadScript("single\\singleMedium");
		var6.LoadScript("single\\singleMedium");
		var10.SetMoney(15000);
		
		var10.EnableAIFeatures(aiEnabled, 0);
		var10.EnableCommand(commandSoldBuilding, 1);
		
		var7.SetMoney(100000);
		var6.SetMoney(100000);
		
		var10.EnableResearch("RES_UCSBHT", 1);
		var10.EnableResearch("RES_UCS_RepHand2", 1);
		var10.EnableResearch("RES_UCS_WAPB1", 1);
		var10.EnableResearch("RES_UCS_WAPB1", 1);
		
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
		var10.EnableBuilding("UCSBHT", 1);
		var10.EnableBuilding("UCSBEN1", 0);
		var10.EnableBuilding("UCSBEN2", 0);
		var10.EnableBuilding("UCSBLZ", 0);
		var10.EnableBuilding("UCSBTB", 0);
		var10.EnableBuilding("UCSBTE", 0);
		var10.EnableBuilding("UCSBRC", 0);
		var10.EnableBuilding("UCSBWB", 0);
		var10.EnableBuilding("UCSBPB", 0);
		var10.EnableBuilding("UCSBPC", 0);
		var10.EnableBuilding("UCSBHQ", 0);
		var10.EnableBuilding("UCSBSD", 0);
		var10.EnableBuilding("UCSBSS", 0);
		var10.EnableBuilding("UCSBUC", 0);
		var10.EnableBuilding("UCSBART", 0);
		
		var6.EnableBuilding("LCBBF", 1);
		var6.EnableBuilding("LCBPP", 1);
		var6.EnableBuilding("LCBBA", 1);
		var6.EnableBuilding("LCBAB", 1);
		var6.EnableBuilding("LCBDE", 1);
		var6.EnableBuilding("LCBHQ", 1);
		var6.EnableBuilding("LCBSB", 1);
		var6.EnableBuilding("WLASER", 1);
		var6.EnableBuilding("LCBNE", 1);
		var6.EnableBuilding("LCBGA", 1);
		var6.EnableBuilding("LCBPP2", 1);
		var6.EnableBuilding("LCBEN1", 0);
		var6.EnableBuilding("LCBRC", 0);
		var6.EnableBuilding("LCBEN2", 0);
		var6.EnableBuilding("LCBUC", 0);
		var6.EnableBuilding("LCBCC", 0);
		var6.EnableBuilding("LCBLZ", 0);
		var6.EnableBuilding("LCBART", 0);
		var6.EnableBuilding("LCBSD", 0);
		var6.EnableBuilding("LCBWC", 0);
		var6.EnableBuilding("LCBSS", 0);
		var6.EnableBuilding("LCBSR", 0);
		
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
		var7.AddResearch("RES_UCS_RepHand2");
		var7.AddResearch("RES_UCS_SHD2");
		var7.AddResearch("RES_UCS_SHD3");
		var7.AddResearch("RES_UCS_SHD4");
		
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
		
		var1 = 0;
		var4 = 0;
		
		loc2 = GetUnit(GetPointX(0), GetPointY(0), 1);
		
		for (loc1 = 0; loc1 < 2; loc1 = loc1 + 1)
		{
			loc0 = var10.CreateUnitEx(GetPointX(1), GetPointY(1), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
			loc0.CommandEnter(loc2);
			loc0 = var10.CreateUnitEx(GetPointX(1), GetPointY(1), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
			loc0.CommandEnter(loc2);
			loc0 = var10.CreateUnitEx(GetPointX(1), GetPointY(1), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSMR1", null, 3);
			loc0.CommandEnter(loc2);
			loc0 = var10.CreateUnitEx(GetPointX(1), GetPointY(1), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSMR1", null, 3);
			loc0.CommandEnter(loc2);
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var10.LookAt(GetPointX(1), GetPointY(1), 20, 0, 10, 1);
		var10.DelayedLookAt(GetPointX(0), GetPointY(0), 20, 0, 10, 1, 400, 1);
		return State1, 1;
	}
	
	state State1
	{
		var7.SetNeutral(var8);
		var8.SetNeutral(var7);
		var10.SetNeutral(var8);
		var8.SetNeutral(var10);
		var6.SetNeutral(var8);
		var8.SetNeutral(var6);
		var7.SetEnemy(var6);
		var6.SetEnemy(var7);
		
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
		var7.EnableAIFeatures(aiControlOffense, 1);
		var7.EnableAIFeatures(aiBuildTanks, 1);
		var7.EnableAI(0);
		
		var6.SetNumberOfOffensiveTankPlatoons(6);
		var6.SetNumberOfOffensiveHelicopterPlatoons(2);
		var6.SetMaxTankPlatoonSize(10);
		var6.SetNumberOfDefensiveTankPlatoons(2);
		var6.SetMaxAttackFrequency(0);
		var6.SetMaxHelicopterPlatoonSize(6);
		
		var6.EnableAIFeatures(aiRejectAlliance, 1);
		var6.EnableAIFeatures(aiUpgradeCannons, 1);
		var6.EnableAIFeatures(aiBuildBuilders, 1);
		var6.EnableAIFeatures(aiBuildRepairers, 1);
		var6.EnableAIFeatures(aiEnabled, 1);
		var6.EnableAIFeatures(aiBuildBuildings, 1);
		var6.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var6.EnableAIFeatures(aiBuildSupplyUnits, 0);
		var6.EnableAIFeatures(aiControlSupplyUnits, 1);
		var6.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var6.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var6.EnableAIFeatures(aiDefenseTowers, 1);
		var6.EnableAIFeatures(aiControlDefense, 1);
		var6.EnableAIFeatures(aiControlMiningUnits, 0);
		var6.EnableAIFeatures(aiBuildMiningUnits, 0);
		var6.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var6.EnableAIFeatures(aiBuildHelicopters, 0);
		var6.EnableAIFeatures(aiControlOffense, 0);
		var6.EnableAIFeatures(aiBuildTanks, 1);
		var6.EnableAI(0);
		
		return State4, 400;
	}
	
	state State4
	{
		int loc0;
		unitex loc1;
		
		if (var10.IsPointLocated(GetPointX(0), GetPointY(0), 0))
		{
			for (loc0 = 0; loc0 < 6; loc0 = loc0 + 1)
			{
				loc1 = var7.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUBL2", "UCSWBHP3", "UCSWSSP2", "UCSBANNER", null, 3);
				loc1.BeginRecord();
				loc1.CommandHoldPosition();
				loc1.CommandMove(GetPointX(2), GetPointY(2), 0);
				loc1.CommandMove(GetPointX(4), GetPointY(4), 0);
				loc1.EndRecord();
				loc1.ExecuteRecord();
				loc1 = var7.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUBL2", "UCSWBHP3", "UCSWSSP2", "UCSWSMR1", null, 3);
				loc1.BeginRecord();
				loc1.CommandHoldPosition();
				loc1.CommandMove(GetPointX(2), GetPointY(2), 0);
				loc1.CommandMove(GetPointX(4), GetPointY(4), 0);
				loc1.EndRecord();
				loc1.ExecuteRecord();
			}
			var10.LookAt(GetPointX(0), GetPointY(0), 20, 0, 10, 0);
			
			return State5, 300;
		}
		return State4, 20;
	}
	
	state State5
	{
		if (var7.IsPointLocated(GetPointX(7), GetPointY(7), 0))
		{
			var3 = 7;
			var10.DelayedLookAt(GetPointX(5), GetPointY(5), 20, 0, 10, 0, 150, 1);
			return State6, 20;
		}
		ShowArea(var10.GetIFF(), GetPointX(0), GetPointY(0), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		return State5, 20;
	}
	
	state State6
	
	{
		int loc0;
		
		for (loc0 = 4; loc0 < 15; loc0 = loc0 + 1)
		{
			if (var7.IsPointLocated(GetPointX(loc0), GetPointY(loc0), 0))
			{
				ShowArea(var10.GetIFF(), GetPointX(loc0), GetPointY(loc0), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
			}
		}
		if (var7.IsPointLocated(GetPointX(var3), GetPointY(var3), 0))
		{
			if (var3 == 4)
			{
				var3 = 0;
				var6.EnableAI(1);
				ShowArea(var10.GetIFF(), GetPointX(4), GetPointY(4) + 8, 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
				var10.DelayedLookAt(GetPointX(4), GetPointY(4) + 8, 20, 0, 10, 0, 150, 1);
				return State7, 20;
			}
			var10.DelayedLookAt(GetPointX(var3 - 1), GetPointY(var3 - 1), 20, 0, 10, 0, 150, 1);
			var3 = var3 + 1;
			if (var3 == 15)
			{
				var3 = 4;
			}
			return State6, 20;
		}
		return State6, 20;
	}
	
	state State7
	{
		if (var1 == 1)
		{
			var3 = var3 + 1;
		}
		if (var3 > 35)
		{
			return State2, 10;
		}
		
		ShowArea(var10.GetIFF(), GetPointX(4), GetPointY(4) + 8, 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		return State7, 20;
	}
	
	state State2
	{
		ShowVideo("UCS_M05");
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		
		var10.LookAt(var10.GetStartingPointX(), var10.GetStartingPointY(), 20, 0, 10, 0);
		var10.CreateUnitEx(var10.GetStartingPointX(), var10.GetStartingPointY(), 0, null, "UCSUBU1", null, null, null, null, 3);
		var1 = 0;
		var4 = 1;
		
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_UCS_M05_destroyUCS", var10.GetName());
		
		var7.EnableAI(1);
		var6.EnableAI(1);
		
		var0 = 0;
		SetTimer(0, 1000 + GetMissionTime());
		SetTimer(1, 18000 + GetMissionTime());
		SetTimer(2, 3000 + GetMissionTime());
		
		return State11, 1;
	}
	
	state State11
	{
		int loc0;
		unitex loc1;
		
		if (var0 == 0)
		{
			if (var1 == 1)
			{
				var1 = 0;
				if (var7.GetNumberOfBuildings() == 0)
				{
					SetTimer(1, 0);
					SetTimer(2, 0);
					var0 = 1;
				}
			}
			return State11, 100;
		}
		else
		{
			KillArea(var7.GetIFF(), GetRight() / 2, GetBottom() / 2, 0, 200);
			EnableInterface(0);
			EnableCameraMovement(0);
			SetConsoleText("translateIncomingEvent");
			var10.LookAt(GetPointX(17), GetPointY(17), 20, 0, 10, 0);
			
			for (loc0 = 0; loc0 < 3; loc0 = loc0 + 1)
			{
				loc1 = var6.CreateUnitEx(GetPointX(17), GetPointY(17), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
				loc1.CommandMove(GetPointX(18), GetPointY(18), 0);
				loc1 = var6.CreateUnitEx(GetPointX(17), GetPointY(17), 0, null, "LCUHT1", "LCWHC1", null, null, null, 3);
				loc1.CommandMove(GetPointX(19), GetPointY(19), 0);
			}
			var3 = 0;
			SetTimer(3, GetMissionTime() + 20);
			ShowArea(var10.GetIFF(), GetPointX(17), GetPointY(17), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
			return State3, 20;
		}
	}
	
	state State8
	{
		int loc0;
		unitex loc1;
		
		var6.EnableAIFeatures(aiEnabled, 0);
		var6.EnableAI(0);
		
		for (loc0 = 0; loc0 < 10; loc0 = loc0 + 1)
		{
			loc1 = var6.CreateUnitEx(GetPointX(15), GetPointY(15), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
			loc1.CommandMove(GetPointX(16), GetPointY(16), 0);
			loc1 = var6.CreateUnitEx(GetPointX(15), GetPointY(15), 0, null, "LCUHT1", "LCWHC1", null, null, null, 3);
			loc1.CommandMove(GetPointX(16), GetPointY(16), 0);
		}
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		var10.LookAt(GetPointX(15), GetPointY(15), 20, 128, 10, 0);
		var10.DelayedLookAt(GetPointX(16), GetPointY(16) - 8, 20, 0, 10, 0, 500, 1);
		ShowArea(var10.GetIFF(), GetPointX(16), GetPointY(16), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		var3 = 0;
		var0 = 1;
		
		return State9, 20;
	}
	
	state State9
	{
		var3 = var3 + 1;
		
		if (var3 < 60)
		{
			ShowArea(var10.GetIFF(), GetPointX(16), GetPointY(16), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
			return State9, 20;
		}
		ShowArea(var10.GetIFF(), GetPointX(16), GetPointY(16), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		var10.LookAt(GetPointX(17), GetPointY(17), 20, 0, 10, 0);
		
		return State11, 20;
	}
	
	state State3
	{
		ShowArea(var10.GetIFF(), GetPointX(17), GetPointY(17), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		
		var6.SetMoney(100000);
		
		EnableGoal(1, 1);
		SetGoalState(0, 1);
		AddBriefing("translateAccomplishedLS_UCS_M05_destroyUCS", var10.GetName());
		
		return State10, 20;
	}
	
	state State10
	{
		if (var1 == 1)
		{
			var1 = 0;
			if (var5 == 0 && var6.GetNumberOfBuildings() < 5)
			{
				var6.EnableAIFeatures(aiBuildBuildings, 0);
				var5 = 1;
			}
			if (var6.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 1);
				AddBriefing("translateAccomplishedLS_UCS_M05_destroyLC", var10.GetName());
				EnableNextMission(5, 1);
				EndMission(1);
				
				return State12, 20;
			}
		}
		
		return State10, 100;
	}
	
	state State13
	{
		EnableNextMission(5, 2);
		EndMission(0);
	}
	
	state State12
	{
		return State12, 500;
	}
	
	event Timer0()
	{
		Wind(0, 1000, 0, 9, 0);
		SetTimer(0, GetMissionTime() + 1000);
	}
	
	event Timer1()
	{
		state State8;
		var0 = 1;
		
		SetTimer(1, 0);
		SetTimer(2, 0);
	}
	
	event Timer2()
	{
	}
	
	event Timer3()
	{
		var3 = var3 + 1;
		if (var3 == 50)
		{
			SetTimer(3, 0);
		}
		else
		{
			var6.EnableAIFeatures(aiEnabled, 1);
			var6.EnableAI(1);
			SetTimer(3, GetMissionTime() + 20);
			ShowArea(var10.GetIFF(), GetPointX(17), GetPointY(17), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		}
	}
	
	event EndMission()
	{
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var4 == 1 && var10.GetNumberOfBuildings() == 0 && var10.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M05_lostAll", var10.GetName());
			state State13;
			return;
		}
		var1 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var4 == 1 && var10.GetNumberOfBuildings() == 0 && var10.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M05_lostAll", var10.GetName());
			state State13;
			return;
		}
		var1 = 1;
	}

}