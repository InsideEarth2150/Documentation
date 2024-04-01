mission "translateMissionDS_LC_M0701"
{
	player var0;
	player var1;
	player var2;
	
	int var3;
	int var4;
	
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
		
		var2 = GetPlayer(0);
		var0 = GetPlayer(2);
		var1 = GetPlayer(3);
	
		RegisterGoal(0, "translateGoalDS_LC_M0701_destroyEDBase");
		RegisterGoal(1, "translateGoalDS_LC_M0701_getArtefact");
		RegisterGoal(2, "translateGoalDS_LC_M0701_researchAlive");
		
		var1.SetMoney(30000);
		var0.SetMoney(120000);
		var2.SetMoney(300000);
		
		if(GetDifficultyLevel() == 0)
		{
			var0.LoadScript("single\\singleEasy");
		}
		if(GetDifficultyLevel() == 1)
		{
			var0.LoadScript("single\\singleMedium");
		}
		if(GetDifficultyLevel() == 2)
		{
			var0.LoadScript("single\\singleHard");
		}
		
		var1.EnableCommand(commandSoldBuilding, 1);
		var1.EnableAIFeatures(aiEnabled, 0);
		var1.EnableBuilding("LCBBF", 1);
		var1.EnableBuilding("LCBMR", 1);
		var1.EnableBuilding("LCBPP", 1);
		var1.EnableBuilding("LCBBA", 1);
		var1.EnableBuilding("LCBAB", 1);
		var1.EnableBuilding("LCBDE", 1);
		var1.EnableBuilding("LCBHQ", 1);
		var1.EnableBuilding("LCBSB", 1);
		var1.EnableBuilding("LCBLZ", 0);
		var1.EnableBuilding("WLASER", 1);
		var1.EnableBuilding("LCBNE", 1);
		var1.EnableBuilding("LCBUC", 1);
		var1.EnableBuilding("LCBCC", 1);
		var1.EnableBuilding("LCBEN1", 1);
		var1.EnableBuilding("LCBEN2", 1);
		var1.EnableBuilding("LCBART", 0);
		var1.EnableBuilding("LCBRC", 0);
		var1.EnableBuilding("LCBSR", 0);
		var1.EnableBuilding("LCBGA", 1);
		var1.EnableBuilding("LCBSD", 0);
		var1.EnableBuilding("LCBWC", 0);
		var1.EnableBuilding("LCBSS", 0);
		var1.EnableBuilding("LCBPP2", 1);
		var1.EnableResearch("RES_LCWEQ1", 1);
		var1.EnableResearch("RES_LCWEQ2", 1);
		var1.EnableResearch("RES_LC_ART", 1);

		var0.AddResearch("RES_ED_UHW1");
		var0.AddResearch("RES_ED_UHW2");
		var0.AddResearch("RES_ED_UHT1");
		var0.AddResearch("RES_ED_UHT2");
		var0.AddResearch("RES_ED_UHT3");
		var0.AddResearch("RES_ED_UBT1");
		var0.AddResearch("RES_ED_UBT2");
		var0.AddResearch("RES_ED_UA31");
		var0.AddResearch("RES_ED_UA32");
		var0.AddResearch("RES_ED_WHC1");
		var0.AddResearch("RES_ED_WHC2");
		var0.AddResearch("RES_ED_WMR1");
		var0.AddResearch("RES_ED_WMR2");
		var0.AddResearch("RES_ED_WMR3");
		var0.AddResearch("RES_ED_AMR1");
		var0.AddResearch("RES_ED_AMR2");
		var0.AddResearch("RES_ED_WHL1");
		var0.AddResearch("RES_ED_WHL2");
		var0.AddResearch("RES_ED_WHL3");
		var0.AddResearch("RES_ED_WSI1");
		var0.AddResearch("RES_ED_WSI2");
		var0.AddResearch("RES_ED_WHI1");
		var0.AddResearch("RES_ED_WHI2");
		var0.AddResearch("RES_ED_BMD");
		var0.AddResearch("RES_ED_BHD");
		var0.AddResearch("RES_EDBHT");
		var0.AddResearch("RES_ED_ART");
		var0.AddResearch("RES_ED_RepHand");
		var0.AddResearch("RES_ED_RepHand2");
		var0.AddResearch("RES_ED_SCR2");
		var0.AddResearch("RES_ED_SCR3");
		var0.AddResearch("RES_ED_MHC2");
		var0.AddResearch("RES_ED_MHC3");
		var0.AddResearch("RES_ED_MHC4");
		
		CreateArtefact("NEASPECIAL1", var2.GetStartingPointX(), var2.GetStartingPointY(), 0, 0, 0);
		
		CallCamera();
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		
		ShowArea(var1.GetIFF(), var1.GetStartingPointX(), var1.GetStartingPointY(), 0, 10);
		
		var1.LookAt(var1.GetStartingPointX(), var1.GetStartingPointY() - 10, 10, 0, 10, 0);
		var1.DelayedLookAt(var1.GetStartingPointX(), var1.GetStartingPointY(), 15, 0, 30, 0, 30, 1);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		
		var0.SetNumberOfOffensiveHelicopterPlatoons(0);
		var0.SetNumberOfOffensiveTankPlatoons(4);
		var0.SetMaxHelicopterPlatoonSize(6);
		var0.SetMaxTankPlatoonSize(8);
		var0.SetNumberOfDefensiveTankPlatoons(4);
		var0.SetNumberOfDefensiveHelicopterPlatoons(4);
		
		var0.EnableAIFeatures(aiRejectAlliance, 1);
		var0.EnableAIFeatures(aiUpgradeCannons, 1);
		var0.EnableAIFeatures(aiBuildBuilders, 1);
		var0.EnableAIFeatures(aiBuildRepairers, 1);
		var0.EnableAIFeatures(aiEnabled, 1);
		var0.EnableAIFeatures(aiBuildBuildings, 1);
		var0.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var0.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var0.EnableAIFeatures(aiControlSupplyUnits, 1);
		var0.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var0.EnableAIFeatures(aiBuildTanks, 1);
		var0.EnableAIFeatures(aiBuildHelicopters, 1);
		var0.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var0.EnableAIFeatures(aiDefenseTowers, 1);
		var0.EnableAIFeatures(aiControlDefense, 1);
		var0.EnableAIFeatures(aiControlOffense, 1);
		var0.EnableAIFeatures(aiControlMiningUnits, 0);
		var0.EnableAIFeatures(aiBuildMiningUnits, 0);
		var0.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var0.EnableAI(0);
		
		var2.AddResearch("RES_MSR2");
		var2.AddResearch("RES_MSR3");
		var2.AddResearch("RES_MSR4");
		var2.AddResearch("RES_ED_WSR1");
		var2.AddResearch("RES_ED_WSR1");
		var2.AddResearch("RES_ED_WSR1");
		var2.AddResearch("RES_MCH2");
		var2.AddResearch("RES_MCH3");
		var2.AddResearch("RES_MCH4");
		var2.AddResearch("RES_ED_HGen");
		var2.AddResearch("RES_EDWAN1");
		var2.AddResearch("RES_EDWAA1");
		
		var2.EnableAIFeatures(aiRejectAlliance, 1);
		var2.EnableAIFeatures(aiUpgradeCannons, 1);
		var2.EnableAIFeatures(aiBuildBuilders, 1);
		var2.EnableAIFeatures(aiBuildRepairers, 1);
		var2.EnableAIFeatures(aiEnabled, 1);
		var2.EnableAIFeatures(aiBuildBuildings, 1);
		var2.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var2.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var2.EnableAIFeatures(aiControlSupplyUnits, 1);
		var2.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var2.EnableAIFeatures(aiBuildTanks, 1);
		var2.EnableAIFeatures(aiBuildHelicopters, 1);
		var2.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var2.EnableAIFeatures(aiDefenseTowers, 1);
		var2.EnableAIFeatures(aiControlDefense, 1);
		var2.EnableAI(1);
		
		var4 = 0;
		
		for (loc1 = 0; loc1 < 2; loc1 = loc1 + 1)
		{
			loc2 = loc1 * 5 + 20;
			
			loc0 = GetUnit(GetPointX(loc2), GetPointY(loc2));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			
			loc0 = GetUnit(GetPointX(loc2 + 3), GetPointY(loc2 + 3));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
		}
		
		SetTimer(0, 6000);
		SetTimer(2, 65000);
		
		ShowVideo("LC_M07");
		
		return State2, 30;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(1, 1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingDS_LC_M0701_allInOne", var1.GetName());
		
		var3 = 0;
		
		var0.SetAlly(var2);
		var2.SetAlly(var0);
		
		return State3, 10;
	}
	
	state State3
	{
		unitex loc0;
		
		if (var3 == 1)
		{
			EnableInterface(0);
			EnableCameraMovement(0);
			SetConsoleText("translateIncomingEvent");
			
			loc0 = var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "EDUA22", "EDWAR2", null, null, null);
			var0.SetScriptUnit(0, loc0);
			loc0.CommandMove(GetPointX(5), GetPointY(5), 0);
			loc0.BeginQuickRecord();
			loc0.CommandMove(GetPointX(5), GetPointY(5), 0);
			loc0.CommandMove(GetPointX(2), GetPointY(2), 0);
			loc0.EndQuickRecord();
			
			var1.DelayedLookAt(loc0.GetLocationX(), loc0.GetLocationY() - 3, 10, 0, 0, 0, 40, 1);
			
			return State4, 40;
		}
		
		return State3, 200;
	}
	
	state State4
	{
		unitex loc0;
		
		loc0 = var0.GetScriptUnit(0);
		
		ShowArea(var1.GetIFF(), loc0.GetLocationX(), loc0.GetLocationY(), 0, 1, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		if (loc0 == null || loc0.GetLocationX() == GetPointX(2) && loc0.GetLocationY() == GetPointY(2))
		{
			var1.DelayedLookAt(GetPointX(5), GetPointY(5), 10, 64, 30, 0, 20, 1);
			return State5, 20;
		}
		
		var1.DelayedLookAt(loc0.GetLocationX(), loc0.GetLocationY() - 3, 10, 0, 0, 0, 35, 1);
		return State4, 20;
	}
	
	state State5
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		
		AddBriefing("translateBriefingDS_LC_M0701_discovered", var1.GetName());
		
		SetTimer(1, 600);
		SetTimer(3, 12000 + GetMissionTime());
		
		var0.EnableAI(1);
		
		return State6, 200;
	}
	
	state State6
	{
		unitex loc0;
		unitex loc1;
		unitex loc2;
		
		loc1 = GetUnit(GetPointX(10), GetPointY(10));
		loc2 = GetUnit(GetPointX(12), GetPointY(12));
		loc0 = GetUnit(GetPointX(11), GetPointY(11));
		
		if (loc1 == null || !loc1.IsBuilding() || loc2 == null || !loc2.IsBuilding() || loc0 == null || !loc0.IsBuilding())
		{
			SetGoalState(2, 2);
			AddBriefing("translateFailedDS_LC_M0701_researchAlive", var1.GetName());
			return State9, 50;
		}
		
		if (var4 == 1)
		{
			var4 = 0;
			
			if (var1.GetNumberOfBuildings() == 0 && var1.GetNumberOfUnits() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M0701_stayAlive", var1.GetName());
				return State9, 50;
			}
			
			if (GetGoalState(0) == 0 && var0.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 1);
				if (GetGoalState(1) == 1)
				{
					AddBriefing("translateAccomplishedDS_LC_M0701_all", var1.GetName());
					EnableNextMission(6, 1);
					EnableEndMissionButton(1);
					return State8, 20;
				}
				AddBriefing("translateAccomplishedDS_LC_M0701_destroyEDBase", var1.GetName());
				SetTimer(3, 0);
			}
		}
		return State6, 200;
	}
	
	state State7
	{
		if (var4 == 1)
		{
			var4 = 0;
			
			if (var1.GetNumberOfBuildings() == 0 && var1.GetNumberOfUnits() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M0701_stayAlive", var1.GetName());
				return State9, 50;
			}
			
			if (var0.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedDS_LC_M0701_all", var1.GetName());
				EnableNextMission(6, 1);
				EnableEndMissionButton(1);
				return State8, 20;
			}
		}
		return State7, 200;
	}
	
	state State8
	{
		return State8, 500;
	}
	
	state State9
	{
		EnableNextMission(6, 2);
		EndMission(0);
	}
	
	event Timer0()
	{
		if (var1.GetNumberOfBuildings() == 0 && var1.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedDS_LC_M0701_nothingDone", var1.GetName());
			state State9;
			return;
		}
		var3 = 1;
		SetTimer(0, 0);
	}
	
	event Timer1()
	{
		if (var0.GetMoney() < 2000)
		{
			var0.AddMoney(4000);
		}
	}
	
	event Timer2()
	{
		var1.EnableBuilding("LCBART", 1);
		AddBriefing("translateInfoDS_LC_M0701_allowAri", var1.GetName());
		SetTimer(2, 0);
	}
	
	event Timer3()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		int loc5;
		unitex loc6;
		
		loc4 = Rand(3);
		loc3 = loc4 + 3;
		loc5 = 6;
		
		if (loc3 == 3)
		{
			loc5 = 0;
		}
		
		loc0 = var1.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed) - var0.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		
		if (loc0 < 0)
		{
			loc0 = 3;
		}
		loc2 = loc0 / 3;
		
		if (GetDifficultyLevel() == 1)
		{
			loc2 = loc0 / 2;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc2 = loc0;;
		}
		
		if (loc2 > 20)
		{
			loc2 = 20;
		}
		
		for (loc1 = 0; loc1 < loc2; loc1 = loc1 + 1)
		{
			loc4 = Rand(2);
			
			if(loc4 == 0)
			{
				var0.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "EDUBT2", "EDWHC1", "EDBANNER", "EDWSR3", null, 3);
			}
			else
			{
				var0.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "EDUBT2", "EDWHC1", "EDWHC1", "EDWSR3", "EDSCREAMER3", 3);
			}
		}
		var0.Attack(GetPointX(loc3), GetPointY(loc3), 0);
		SetTimer(3, 12000 + GetMissionTime());
	}
	
	event Artefact(int nArtefactNum, player pPlayerOnArtefact)
	{
		if (pPlayerOnArtefact != var1)
		{
			return 0;
		}
		SetGoalState(1, 1);
		SetGoalState(2, 1);
		
		if (GetGoalState(0) == 0)
		{
			AddBriefing("translateAccomplishedDS_LC_M0701_getArtefact", var1.GetName());
			state State7;
			return 1;
		}
		AddBriefing("translateAccomplishedDS_LC_M0701_all", var1.GetName());
		EnableNextMission(6, 1);
		EnableEndMissionButton(1);
		
		state State8;
		return 1;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var4 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var4 = 1;
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var1.GetMoney();
		var1.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}