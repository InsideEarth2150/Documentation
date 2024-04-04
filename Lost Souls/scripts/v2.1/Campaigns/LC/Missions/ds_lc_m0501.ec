mission "translateMissionDS_LC_M0501"
{
	player var0;
	player var1;
	player var2;
	int var3;
	int var4;
	int var5;
	int var6;
	
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
	
	
	state State0
	{
		var1 = GetPlayer(0);
		var0 = GetPlayer(1);
		var2 = GetPlayer(3);
	
		RegisterGoal(0, "translateGoalDS_LC_M0501_findNeutralUCSBase");
		RegisterGoal(1, "translateGoalDS_LC_M0501_buildBase");
		RegisterGoal(2, "translateGoalDS_LC_M0501_defendAndDestroy");
		
		if(GetDifficultyLevel() == 0)
		{
			var0.LoadScript("single\\singleEasy");
			var2.SetMoney(8000);
			var6 = 5;
		}
		if(GetDifficultyLevel() == 1)
		{
			var0.LoadScript("single\\singleMedium");
			var2.SetMoney(5000);
			var6 = 10;
		}
		if(GetDifficultyLevel() == 2)
		{
			var0.LoadScript("single\\singleHard");
			var6 = 15;
			var2.SetMoney(3000);
		}
		var1.SetMoney(40000);
		var0.SetMoney(80000);
		var1.LoadScript("single\\singleHard");
		
		var2.EnableCommand(commandSoldBuilding, 1);
		var2.EnableAIFeatures(aiEnabled, 0);
		var2.EnableMilitaryUnitsLimit(0);
		var2.EnableBuilding("LCBBF", 0);
		var2.EnableBuilding("LCBMR", 0);
		var2.EnableBuilding("LCBPP", 0);
		var2.EnableBuilding("LCBBA", 0);
		var2.EnableBuilding("LCBAB", 0);
		var2.EnableBuilding("LCBDE", 0);
		var2.EnableBuilding("LCBHQ", 0);
		var2.EnableBuilding("LCBSB", 0);
		var2.EnableBuilding("LCBLZ", 0);
		var2.EnableBuilding("WLASER", 0);
		var2.EnableBuilding("LCBNE", 0);
		var2.EnableBuilding("LCBUC", 0);
		var2.EnableBuilding("LCBCC", 0);
		var2.EnableBuilding("LCBEN1", 0);
		var2.EnableBuilding("LCBEN2", 0);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBSR", 0);
		var2.EnableBuilding("LCBGA", 1);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 1);
		var2.EnableBuilding("LCBART", 0);
		var2.AddResearch("RES_LC_UCU1");
		var2.EnableResearch("RES_LC_UCU2", 1);
		var2.EnableResearch("RES_LC_UCU3", 1);
		var2.AddResearch("RES_LCUSF1");
		var2.EnableResearch("RES_LCUSF2", 1);
		var2.EnableResearch("RES_LCBPP2", 1);
		var2.AddResearch("RES_LC_AMR1");
		var2.EnableResearch("RES_LC_AMR2", 1);
		var2.AddResearch("RES_LC_WHS1");
		var2.EnableResearch("RES_LC_WHS2", 1);
		var2.EnableResearch("RES_LC_UBO2", 1);
		
		var0.AddResearch("RES_UCS_USL2");
		var0.AddResearch("RES_UCS_USL3");
		var0.AddResearch("RES_UCS_UML1");
		var0.AddResearch("RES_UCS_UML2");
		var0.AddResearch("RES_UCS_UML3");
		var0.AddResearch("RES_UCS_UHL1");
		var0.AddResearch("RES_UCS_UHL2");
		var0.AddResearch("RES_UCS_UHL3");
		var0.AddResearch("RES_UCS_UMI1");
		var0.AddResearch("RES_UCS_UMI2");
		var0.AddResearch("RES_UCS_USS1");
		var0.AddResearch("RES_UCS_USS2");
		var0.AddResearch("RES_UCS_UOH2");
		var0.AddResearch("RES_UCS_UOH3");
		var0.AddResearch("RES_UCS_GARG1");
		var0.AddResearch("RES_UCS_GARG2");
		var0.AddResearch("RES_UCS_GARG3");
		var0.AddResearch("RES_UCS_BOMBER21");
		var0.AddResearch("RES_UCS_BOMBER22");
		var0.AddResearch("RES_UCS_WCH2");
		var0.AddResearch("RES_UCS_WACH2");
		var0.AddResearch("RES_UCS_WSG1");
		var0.AddResearch("RES_UCS_WSG2");
		var0.AddResearch("RES_UCS_WSR1");
		var0.AddResearch("RES_UCS_WSR2");
		var0.AddResearch("RES_UCS_WSR3");
		var0.AddResearch("RES_UCS_WASR1");
		var0.AddResearch("RES_UCS_WASR2");
		var0.AddResearch("RES_UCS_WMR1");
		var0.AddResearch("RES_UCS_WMR2");
		var0.AddResearch("RES_UCS_WMR3");
		var0.AddResearch("RES_UCS_WAMR1");
		var0.AddResearch("RES_UCS_WAMR2");
		var0.AddResearch("RES_UCS_WSP1");
		var0.AddResearch("RES_UCS_WSP2");
		var0.AddResearch("RES_UCS_WHP1");
		var0.AddResearch("RES_UCS_WHP2");
		var0.AddResearch("RES_UCS_WHP3");
		var0.AddResearch("RES_UCS_BMD");
		var0.AddResearch("RES_UCS_RepHand");
		var0.AddResearch("RES_UCS_RepHand2");
		var0.AddResearch("RES_UCS_SGen");
		var0.AddResearch("RES_UCS_MGen");
		var0.AddResearch("RES_UCS_HGen");
		var0.AddResearch("RES_UCS_SHD");
		var0.AddResearch("RES_UCS_SHD2");
		var0.AddResearch("RES_UCS_MG2");
		var0.AddResearch("RES_UCS_MG3");
		var0.AddResearch("RES_UCS_MG4");
		var0.AddResearch("RES_MCH2");
		var0.AddResearch("RES_MCH3");
		var0.AddResearch("RES_MCH4");
		var0.AddResearch("RES_MSR2");
		var0.AddResearch("RES_MSR3");
		var0.AddResearch("RES_MSR4");
		var0.AddResearch("RES_MMR2");
		var0.AddResearch("RES_MMR3");
		var0.AddResearch("RES_MMR4");
		
		var1.AddResearch("RES_UCS_USL2");
		var1.AddResearch("RES_UCS_USL3");
		var1.AddResearch("RES_UCS_UML1");
		var1.AddResearch("RES_UCS_UML2");
		var1.AddResearch("RES_UCS_UML3");
		var1.AddResearch("RES_UCS_UHL1");
		var1.AddResearch("RES_UCS_UHL2");
		var1.AddResearch("RES_UCS_UHL3");
		var1.AddResearch("RES_UCS_UOH2");
		var1.AddResearch("RES_UCS_UOH3");
		var1.AddResearch("RES_UCS_WCH2");
		var1.AddResearch("RES_UCS_WACH2");
		var1.AddResearch("RES_UCSWTSC1");
		var1.AddResearch("RES_UCSWTSC2");
		var1.AddResearch("RES_UCS_MSC2");
		var1.AddResearch("RES_UCS_MSC3");
		var1.AddResearch("RES_UCS_MSC4");
		var1.AddResearch("RES_UCS_WSG1");
		var1.AddResearch("RES_UCS_WSG2");
		var1.AddResearch("RES_UCS_WSR1");
		var1.AddResearch("RES_UCS_WSR2");
		var1.AddResearch("RES_UCS_WSR3");
		var1.AddResearch("RES_UCS_WMR1");
		var1.AddResearch("RES_UCS_WMR2");
		var1.AddResearch("RES_UCS_WMR3");
		var1.AddResearch("RES_UCS_WSP1");
		var1.AddResearch("RES_UCS_WSP2");
		var1.AddResearch("RES_UCS_WHP1");
		var1.AddResearch("RES_UCS_WHP2");
		var1.AddResearch("RES_UCS_WHP3");
		var1.AddResearch("RES_UCS_BMD");
		var1.AddResearch("RES_UCS_RepHand");
		var1.AddResearch("RES_UCS_RepHand2");
		var1.AddResearch("RES_UCS_SGen");
		var1.AddResearch("RES_UCS_MGen");
		var1.AddResearch("RES_UCS_HGen");
		var1.AddResearch("RES_UCS_MG2");
		var1.AddResearch("RES_UCS_MG3");
		var1.AddResearch("RES_UCS_MG4");
		var1.AddResearch("RES_MCH2");
		var1.AddResearch("RES_MCH3");
		var1.AddResearch("RES_MCH4");
		var1.AddResearch("RES_MSR2");
		var1.AddResearch("RES_MSR3");
		var1.AddResearch("RES_MSR4");
		var1.AddResearch("RES_MMR2");
		var1.AddResearch("RES_MMR3");
		var1.AddResearch("RES_MMR4");
		var1.AddResearch("RES_UCSCAA1");
		var1.AddResearch("RES_UCSCAA1");
		var1.AddResearch("RES_UCSUCS");
		
		var0.EnableBuilding("UCSBBA", 1);
		var0.EnableBuilding("UCSBFA", 1);
		var0.EnableBuilding("UCSBPP", 1);
		var0.EnableBuilding("UCSBPR", 1);
		var0.EnableBuilding("UCSBET", 0);
		var0.EnableBuilding("UCSBRF", 1);
		var0.EnableBuilding("UCSBAB", 1);
		var0.EnableBuilding("UCSBST", 0);
		var0.EnableBuilding("UCSBBT", 1);
		var0.EnableBuilding("UCSBSH", 1);
		var0.EnableBuilding("Teleport", 1);
		
		var3 = 0;
		
		CallCamera();
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		
		var2.LookAt(var2.GetStartingPointX() + 30, var2.GetStartingPointY(), 20, 192, 10, 0);
		var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 2;
	}
	
	state State1
	{
		int loc1;
		unitex loc0;
		
		
		for (loc1 = 0; loc1 < 4; loc1 = loc1 + 1)
		{
			loc0 = var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUCR1", "LCWHL2", null, "LCWSL2", null, 0);
		}
		loc0 = var2.CreateUnitEx(var2.GetStartingPointX(), var2.GetStartingPointY(), 0, null, "LCUCR1", "LCWHL2", null, "LCBANNER", null, 0);
		
		var0.SetNumberOfOffensiveHelicopterPlatoons(5);
		var0.SetNumberOfOffensiveTankPlatoons(5);
		var0.SetMaxHelicopterPlatoonSize(5);
		var0.SetMaxTankPlatoonSize(6);
		var0.SetNumberOfDefensiveTankPlatoons(0);
		var0.SetNumberOfDefensiveHelicopterPlatoons(0);
		
		var0.EnableAIFeatures(aiRejectAlliance, 0);
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
		var0.EnableAIFeatures(aiControlMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var0.EnableAI(0);
		
		var1.SetNumberOfOffensiveHelicopterPlatoons(5);
		var1.SetNumberOfOffensiveTankPlatoons(5);
		var1.SetMaxHelicopterPlatoonSize(5);
		var1.SetMaxTankPlatoonSize(6);
		var1.SetNumberOfDefensiveTankPlatoons(2);
		var1.SetNumberOfDefensiveHelicopterPlatoons(2);
		
		var1.EnableAIFeatures(aiRejectAlliance, 0);
		var1.EnableAIFeatures(aiUpgradeCannons, 1);
		var1.EnableAIFeatures(aiBuildBuilders, 1);
		var1.EnableAIFeatures(aiBuildRepairers, 1);
		var1.EnableAIFeatures(aiEnabled, 1);
		var1.EnableAIFeatures(aiBuildBuildings, 1);
		var1.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var1.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var1.EnableAIFeatures(aiControlSupplyUnits, 1);
		var1.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var1.EnableAIFeatures(aiBuildTanks, 1);
		var1.EnableAIFeatures(aiBuildHelicopters, 1);
		var1.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var1.EnableAIFeatures(aiDefenseTowers, 1);
		var1.EnableAIFeatures(aiControlDefense, 1);
		var1.EnableAIFeatures(aiControlOffense, 1);
		var1.EnableAIFeatures(aiControlMiningUnits, 1);
		var1.EnableAIFeatures(aiBuildMiningUnits, 1);
		var1.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var1.EnableAI(0);
		
		var3 = 0;
		ShowVideo("LC_M05");
		
		return State2, 90;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M0501_findNeutralUCSBase", var2.GetName());
		
		var1.ChooseEnemy(var0);
		var1.SetEnemy(var0);
		var1.SetNeutral(var2);
		var2.SetNeutral(var1);
		
		return State3, 10;
	}
	
	state State3
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		if (var2.IsPointLocated(GetPointX(0), GetPointY(0)) || var2.IsPointLocated(GetPointX(1), GetPointY(1)) || var2.IsPointLocated(GetPointX(2), GetPointY(2)))
		{
			SetGoalState(0, 1);
			
			for (loc1 = 0; loc1 < 3; loc1 = loc1 + 1)
			{
				loc0 = var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSP1", null, 0);
				loc0.CommandMove(GetPointX(4), GetPointY(4), 0);
			}
			loc0 = var0.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 0);
			loc0.CommandMove(GetPointX(4), GetPointY(4), 0);
			
			SetConsoleText("translateIncomingEvent");
			EnableInterface(0);
			EnableCameraMovement(0);
			ShowArea(var2.GetIFF(), GetPointX(4), GetPointY(4), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
			var2.DelayedLookAt(GetPointX(4), GetPointY(4) - 8, 20, 0, 10, 0, 100, 1);
			
			loc2 = 500;
			SetTimer(3, GetMissionTime() + loc2);
			var1.EnableAI(1);
			var4 = 0;
			var1.ChooseEnemy(var0);
			var1.SetEnemy(var0);
			var2.SetAlly(var1);
			var0.ChooseEnemy(var1);
			var0.SetEnemy(var1);
			
			return State4, 20;
		}
		
		return State3, 40;
	}
	
	state State4
	{
		if (var4 == 1)
		{
			SetTimer(0, 100);
			return State5, 2;
		}
		
		ShowArea(var2.GetIFF(), GetPointX(4), GetPointY(4), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		return State4, 20;
	}
	
	state State5
	{
		int loc0;
		
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(1, 1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingDS_LC_M0501_defendAndDestroy", var2.GetName());
		
		loc0 = 2400;
		SetTimer(2, GetMissionTime() + loc0);
		
		ShowArea(var2.GetIFF(), GetPointX(5), GetPointY(5), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var2.GetIFF(), GetPointX(6), GetPointY(6), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		var2.EnableBuilding("LCBBF", 1);
		var2.EnableBuilding("LCBMR", 1);
		var2.EnableBuilding("LCBPP", 1);
		var2.EnableBuilding("LCBBA", 1);
		var2.EnableBuilding("LCBAB", 1);
		var2.EnableBuilding("LCBDE", 1);
		var2.EnableBuilding("LCBHQ", 1);
		var2.EnableBuilding("LCBSB", 1);
		var2.EnableBuilding("LCBLZ", 1);
		var2.EnableBuilding("WLASER", 1);
		var2.EnableBuilding("LCBNE", 1);
		var2.EnableBuilding("LCBUC", 1);
		var2.EnableBuilding("LCBCC", 1);
		var2.EnableBuilding("LCBEN1", 1);
		var2.EnableBuilding("LCBEN2", 1);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBSR", 0);
		var2.EnableBuilding("LCBGA", 1);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 1);
		var2.EnableBuilding("LCBART", 0);
		
		return State6, 2;
	}
	
	state State6
	{
		EnableInterface(0);
		EnableCameraMovement(0);
		var2.DelayedLookAt(GetPointX(5), GetPointY(5), 20, 0, 10, 0, 80, 0);
		return State7, 80;
	}
	
	state State7
	{
		var2.DelayedLookAt(GetPointX(6), GetPointY(6), 20, 192, 10, 0, 80, 0);
		return State8, 80;
	}
	
	state State8
	{
		var2.DelayedLookAt(GetPointX(4), GetPointY(4), 20, 128, 10, 0, 40, 0);
		return State9, 40;
	}
	
	state State9
	{
		int loc0;
		
		EnableInterface(1);
		EnableCameraMovement(1);
		
		loc0 = 10000;
		SetTimer(1, GetMissionTime() + loc0);
		
		var5 = 1;
		
		return State12, 20;
	}
	
	state State10
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		SetGoalState(2, 1);
		SetGoalState(0, 1);
		SetGoalState(1, 1);
		EnableNextMission(4, 1);
		AddBriefing("translateAccomplishedDS_LC_M0501_all", var2.GetName());
		EnableEndMissionButton(1);
		return State12, 500;
	}
	
	state State12
	{
		return State12, 500;
	}
	
	state State11
	{
		EnableNextMission(4, 2);
		EndMission(0);
		return State12, 20;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var3 = 1;
	}
	
	event Timer0()
	{
		if (var3)
		{
			var3 = 0;
			if (var1.GetNumberOfBuildings() < var6 || !var2.GetNumberOfBuildings() && !var2.GetNumberOfUnits())
			{
				SetGoalState(2, 2);
				AddBriefing("translateFailedDS_LC_M0501_defendAndDestroy", var2.GetName());
				SetTimer(0, 0);
				SetTimer(1, 0);
				state State11;
				return;
			}
			if (var0.GetNumberOfBuildings() == 0)
			{
				SetTimer(0, 0);
				SetTimer(1, 0);
				state State10;
			}
		}
	}
	
	event Timer1()
	{
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		int loc5;
		int loc6;
		
		loc4 = Rand(2);
		loc5 = loc4 + 10;
		loc6 = Rand(3) + 4;
		
		
		loc2 = var2.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc2 - 5;
		if (GetDifficultyLevel() == 1)
		{
			loc3 = loc2;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc3 = loc2 + 5;
		}
		
		if (loc3 < 6)
		{
			loc3 = 6;
		}
		
		if (loc3 > 40)
		{
			loc3 = 40;
		}
		
		loc3 = loc3 / 2;
		
		if (IsGoalEnabled(2) && var5 == 1)
		{
			for (loc1 = 0; loc1 < loc3 - 1; loc1 = loc1 + 1)
			{
				var0.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSP2", null, 0);
				var0.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "UCSUA31", "UCSWAPB2", null, null, null, 0);
			}
			var0.CreateUnitEx(GetPointX(10), GetPointY(10), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 0);
			var5 = 2;
		}
		if (IsGoalEnabled(2) && var5 == 2)
		{
			var5 = 1;
			for (loc1 = 0; loc1 < loc3 + 2; loc1 = loc1 + 1)
			{
				var0.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "UCSUBL2", "UCSWBHP3", "UCSWSSP2", "UCSWSSP2", null, 0);
			}
			var0.CreateUnitEx(GetPointX(loc5), GetPointY(loc5), 0, null, "UCSUBL2", "UCSWBHP3", "UCSWSSP2", "UCSBANNER", null, 0);
		}
		var0.Attack(GetPointX(loc6), GetPointY(loc6), 0);
		SetTimer(1, 10000 + GetMissionTime());
	}
	
	event Timer2()
	{
		var0.EnableAI(1);
		SetTimer(2, 0);
	}
	
	event Timer3()
	{
		var4 = 1;
		SetTimer(3, 0);
	}
	event EndMission()
	{
		int loc0;
		loc0 = var2.GetMoney();
		var2.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}