mission "translateMissionDS_LC_M0401"
{
	player var0;
	player var1;
	player var2;
	int var3;
	int var4;
	int var5;
	
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
		var0 = GetPlayer(1);
		var2 = GetPlayer(3);
		var1 = GetPlayer(2);
	
		RegisterGoal(0, "translateGoalDS_LC_M0401_destroyEDBase");
		RegisterGoal(1, "translateGoalDS_LC_M0401_destroyUCSBase");
		RegisterGoal(2, "translateGoalDS_LC_M0401_overtakeHeadquarter");
		
		if(GetDifficultyLevel() == 0)
		{
			var1.LoadScript("single\\singleEasy");
			var2.SetMoney(4000);
		}
		if(GetDifficultyLevel() == 1)
		{
			var1.LoadScript("single\\singleMedium");
			var2.SetMoney(2000);
		}
		if(GetDifficultyLevel() == 2)
		{
			var1.LoadScript("single\\singleHard");
		}
		var0.SetMoney(4000);
		
		var2.EnableCommand(commandSoldBuilding, 1);
		var2.EnableAIFeatures(aiEnabled, 0);
		var1.EnableAIFeatures(aiEnabled, 0);
		var0.EnableAIFeatures(aiEnabled, 0);
		var2.SetMilitaryUnitsLimit(60000);
		var2.EnableBuilding("LCBBF", 1);
		var2.EnableBuilding("LCBMR", 1);
		var2.EnableBuilding("LCBPP", 1);
		var2.EnableBuilding("LCBBA", 1);
		var2.EnableBuilding("LCBAB", 1);
		var2.EnableBuilding("LCBDE", 1);
		var2.EnableBuilding("LCBHQ", 0);
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
		var2.EnableBuilding("LCBPP2", 0);
		var2.EnableBuilding("LCBART", 0);
		var2.AddResearch("RES_LC_UCR1");
		var2.EnableResearch("RES_LC_UCR1", 1);
		var2.EnableResearch("RES_LC_UCR2", 1);
		var2.EnableResearch("RES_LC_UCR3", 1);
		var2.EnableResearch("RES_LC_UCU1", 0);
		var2.AddResearch("RES_LC_WMR1");
		var2.EnableResearch("RES_LC_WMR1", 1);
		var2.EnableResearch("RES_LC_WMR2", 1);
		var2.EnableResearch("RES_LC_WMR3", 1);
		var2.AddResearch("RES_LC_AMR1");
		var2.EnableResearch("RES_LC_AMR1", 1);
		var2.EnableResearch("RES_LC_AMR2", 1);
		var2.AddResearch("RES_LC_WHL1");
		var2.EnableResearch("RES_LC_WHL1", 1);
		var2.EnableResearch("RES_LC_WHL2", 1);
		var2.AddResearch("RES_LC_UBO1");
		var2.EnableResearch("RES_LC_UBO1", 1);
		var2.EnableResearch("RES_LC_UBO2", 0);
		var2.EnableResearch("RES_MMR2", 1);
		var2.EnableResearch("RES_MMR3", 1);
		var2.EnableResearch("RES_MMR4", 1);
		var2.EnableResearch("RES_LC_BMD", 1);
		var2.EnableResearch("RES_LC_BHD", 1);
		var2.EnableResearch("RES_LC_BWC", 0);
		
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
		var0.AddResearch("RES_UCSWTSC1");
		var0.AddResearch("RES_UCSWTSC2");
		var0.AddResearch("RES_UCS_MSC2");
		var0.AddResearch("RES_UCS_MSC3");
		var0.AddResearch("RES_UCS_MSC4");
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
		var0.AddResearch("RES_UCSWAP1");
		var0.AddResearch("RES_UCSWAP1");
		var0.AddResearch("RES_UCSCAA1");
		var0.AddResearch("RES_UCSCAA1");
		var0.AddResearch("RES_UCSUCS");
		var0.AddResearch("RES_UCSUUT");
		var0.EnableBuilding("UCSBBA", 1);
		var0.EnableBuilding("UCSBFA", 1);
		var0.EnableBuilding("UCSBPP", 1);
		var0.EnableBuilding("UCSBPR", 1);
		var0.EnableBuilding("UCSBET", 0);
		var0.EnableBuilding("UCSBRF", 1);
		var0.EnableBuilding("UCSBAB", 1);
		var0.EnableBuilding("UCSBST", 1);
		var0.EnableBuilding("UCSBBT", 1);
		var0.EnableBuilding("UCSBSH", 1);
		var0.EnableBuilding("Teleport", 1);
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var2.LookAt(var2.GetStartingPointX() - 30, var2.GetStartingPointY(), 20, 64, 10, 0);
		var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		var0.SetNumberOfOffensiveHelicopterPlatoons(5);
		var0.SetNumberOfOffensiveTankPlatoons(5);
		var0.SetMaxHelicopterPlatoonSize(5);
		var0.SetMaxTankPlatoonSize(6);
		var0.SetNumberOfDefensiveTankPlatoons(2);
		var0.SetNumberOfDefensiveHelicopterPlatoons(2);
		
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
		var0.EnableAIFeatures(aiBuildHelicopters, 0);
		var0.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var0.EnableAIFeatures(aiDefenseTowers, 1);
		var0.EnableAIFeatures(aiControlDefense, 1);
		var0.EnableAIFeatures(aiControlOffense, 0);
		var0.EnableAIFeatures(aiControlMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var0.EnableAI(0);
		
		for (loc1 = 0; loc1 < 4; loc1 = loc1 + 1)
		{
			loc2 = loc1 * 5 + 20;
			
			loc0 = GetUnit(GetPointX(loc2), GetPointY(loc2));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 1), GetPointY(loc2 + 1)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			
			loc0 = GetUnit(GetPointX(loc2 + 3), GetPointY(loc2 + 3));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(loc2 + 4), GetPointY(loc2 + 4)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(loc2 + 2), GetPointY(loc2 + 2)));
			
		}
		ShowVideo("LC_M04");
		
		return State2, 200;
	}
	
	state State2
	{
		unitex loc0;
		int loc1;
		
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M0401_destroyEDBase", var2.GetName());
		
		for (loc1 = 1; loc1 < 4; loc1 = loc1 + 1)
		{
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
			loc0.CommandAttackOnPoint(GetPointX(loc1), GetPointY(loc1), 0);
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
			loc0.CommandAttackOnPoint(GetPointX(loc1), GetPointY(loc1), 0);
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
			loc0.CommandAttackOnPoint(GetPointX(loc1), GetPointY(loc1), 0);
			var4 = 1;
		}
		ShowArea(var2.GetIFF(), var1.GetStartingPointX(), var1.GetStartingPointY(), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		var2.DelayedLookAt(var1.GetStartingPointX(), var1.GetStartingPointY(), 20, 128, 20, 0, 100, 1);
		return State3, 20;
	}
	
	state State3
	{
		unitex loc0;
		int loc1;
		unitex loc2;
		unitex loc3;
		unitex loc4;
		
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		ShowArea(var2.GetIFF(), var1.GetStartingPointX(), var1.GetStartingPointY(), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		loc2 = GetUnit(GetPointX(1), GetPointY(1), 0);
		loc3 = GetUnit(GetPointX(2), GetPointY(2), 0);
		loc4 = GetUnit(GetPointX(3), GetPointY(3), 0);
		
		if((loc2 == null || loc2.IsBuilding() == 0) && (loc3 == null || loc3.IsBuilding() == 0) && (loc4 == null || loc4.IsBuilding() == 0))
		{
			var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 128, 20, 0, 100, 1);
			for (loc1 = 5; loc1 < 8; loc1 = loc1 + 1)
			{
				loc0 = var0.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(loc1), GetPointY(loc1), 0);
				loc0 = var0.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(loc1), GetPointY(loc1), 0);
				loc0 = var0.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(loc1), GetPointY(loc1), 0);
			}
			return State4, 50;
		}
		return State3, 20;
	}
	
	state State4
	{
		unitex loc0;
		unitex loc1;
		unitex loc2;
		
		if (var4)
		{
			KillArea(var1.GetIFF(), GetRight() / 2, GetBottom() / 2, 0, 200);
			KillArea(var0.GetIFF(), var1.GetStartingPointX(), var1.GetStartingPointY(), 0, 20);
			var4 = 0;
		}
		loc0 = GetUnit(GetPointX(5), GetPointY(5), 0);
		loc1 = GetUnit(GetPointX(6), GetPointY(6), 0);
		loc2 = GetUnit(GetPointX(7), GetPointY(7), 0);
		
		if((loc0 == null || loc0.IsBuilding() == 0) && (loc1 == null || loc1.IsBuilding() == 0) && (loc2 == null || loc2.IsBuilding() == 0))
		{
			var2.DelayedLookAt(GetPointX(10), GetPointY(10), 20, 0, 20, 0, 20, 1);
			return State5, 20;
		}
		return State4, 30;
	}
	
	state State5
	{
		int loc0;
		
		KillArea(var2.GetIFF(), var2.GetStartingPointX(), var2.GetStartingPointY(), 0, 12);
		KillArea(var0.GetIFF(), var2.GetStartingPointX(), var2.GetStartingPointY(), 0, 20);
		EnableInterface(1);
		EnableCameraMovement(1);
		SetConsoleText("");
		SetGoalState(0, 1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingDS_LC_M0401_destroyUCSBase", var2.GetName());
		
		loc0 = 11000;
		SetTimer(0, GetMissionTime() + loc0);
		loc0 = 7000;
		SetTimer(1, GetMissionTime() + loc0);
		
		var0.EnableAI(1);
		var3 = 0;
		return State6, 100;
	}
	
	state State6
	{
		if (var2.IsPointLocated(GetPointX(8), GetPointY(8), 0))
		{
			SetConsoleText("translateIncomingEvent");
			EnableInterface(0);
			EnableCameraMovement(0);
			var2.DelayedLookAt(GetPointX(8), GetPointY(8), 20, 0, 10, 0, 50, 1);
			return State11, 50;
		}
		
		if (var3)
		{
			var3 = 0;
			if (var2.GetNumberOfUnits() == 0 && var2.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M0401_destroyUCSBase", var2.GetName());
				return State13, 50;
			}
		}
		
		return State6, 100;
	}
	
	state State11
	{
		SetConsoleText("");
		EnableCameraMovement(1);
		EnableInterface(1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingDS_LC_M0401_overtakeHeadquarter", var2.GetName());
		return State8, 100;
	}
	
	state State8
	{
		unitex loc0;
		unitex loc1;
		
		loc1 = GetUnit(GetPointX(8), GetPointY(8), 0);
		
		if (var3)
		{
			var3 = 0;
			
			if (loc1 == null || loc1.IsBuilding() == 0)
			{
				SetGoalState(2, 2);
				AddBriefing("translateFailedDS_LC_M0401_overtakeHeadquarter", var2.GetName());
				return State13, 50;
			}
			
			if (var2.GetNumberOfUnits() == 0 && var2.GetNumberOfBuildings() == 0)
			{
				SetGoalState(2, 2);
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M0401_destroyUCSBase", var2.GetName());
				return State13, 50;
			}
		}
		
		if (loc1 != null)
		{
			if (loc1.GetIFF() == var2.GetIFF())
			{
				var0.EnableAI(0);
				var2.SetAlly(var0);
				SetTimer(0, 0);
				SetTimer(1, 0);
				SetGoalState(2, 1);
				AddBriefing("translateAccomplishedDS_LC_M0401_overtakeHeadquarter", var2.GetName());
				
				loc0 = var0.CreateUnitEx(GetPointX(9), GetPointY(9), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(8), GetPointY(8), 0);
				loc0 = var0.CreateUnitEx(GetPointX(9), GetPointY(9), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(8), GetPointY(8), 0);
				loc0 = var0.CreateUnitEx(GetPointX(9), GetPointY(9), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(8), GetPointY(8), 0);
				loc0 = var0.CreateUnitEx(GetPointX(9), GetPointY(9), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(8), GetPointY(8), 0);
				loc0 = var0.CreateUnitEx(GetPointX(9), GetPointY(9), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(8), GetPointY(8), 0);
				loc0 = var0.CreateUnitEx(GetPointX(9), GetPointY(9), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
				loc0.CommandAttackOnPoint(GetPointX(8), GetPointY(8), 0);
				return State9, 20;
			}
		}
		if (var0.GetMoney() < 1000)
		{
			if(GetDifficultyLevel() == 0)
			{
				var0.AddMoney(2000);
			}
			if(GetDifficultyLevel() == 1)
			{
				var0.AddMoney(4000);
			}
			if(GetDifficultyLevel() == 2)
			{
				var0.AddMoney(6000);
			}
		}
		return State8, 100;
	}
	
	state State9
	{
		unitex loc0;
		
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		
		loc0 = GetUnit(GetPointX(8), GetPointY(8), 0);
		var2.LookAt(GetPointX(8), GetPointY(8), 10, 128, 30, 0);
		ShowArea(var2.GetIFF(), GetPointX(8), GetPointY(8), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		if(loc0 == null)
		{
			var2.DelayedLookAt(GetPointX(4), GetPointY(4), 20, 0, 10, 0, 50, 1);
			return State12, 50;
		}
		
		return State9, 20;
	}
	
	state State12
	{
		KillArea(var0.GetIFF(), GetRight() / 2, GetBottom() / 2, 0, 200);
		KillArea(var2.GetIFF(), GetPointX(8), GetPointY(8), 0, 10);
		var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY() - 10, 20, 0, 10, 0, 50, 0);
		return State10, 50;
	}
	
	state State10
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		SetGoalState(1, 1);
		EnableNextMission(3, 1);
		AddBriefing("translateAccomplishedDS_LC_M0401_all", var2.GetName());
		EnableEndMissionButton(1);
		return State7, 500;
	}
	
	state State13
	{
		EnableNextMission(2, 2);
		EndMission(0);
	}
	
	state State7
	{
		return State7, 500;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var3 = 1;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var3 = 1;
	}
	event EndMission()
	{
		int loc0;
		loc0 = var2.GetMoney();
		var2.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event Timer0()
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		loc1 = Rand(2);
		if (loc1 == 0)
		{
			loc1 = 5;
		}
		loc0 = var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 1);
		loc0.CommandMove(GetPointX(loc1), GetPointY(loc1), 0);
		loc0 = var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 1);
		loc0.CommandMove(GetPointX(loc1), GetPointY(loc1), 0);
		loc0 = var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 1);
		loc0.CommandMove(GetPointX(loc1), GetPointY(loc1), 0);
		
		loc2 = 11000;
		SetTimer(0, GetMissionTime() + loc2);
	}
	
	event Timer1()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		unitex loc5;
		int loc6;
		
		loc4 = Rand(2);
		loc3 = loc4 + 29;
		loc3 = 5;
		
		if (loc4)
		{
			loc3 = 1;
		}
		
		loc0 = var2.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc0 / 6;
		if (GetDifficultyLevel() == 1)
		{
			loc2 = loc0 / 4;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc2 = loc0 / 3;
		}
		
		if (loc2 > 14)
		{
			loc2 = 14;
		}
		
		if (var2.IsPointLocated(GetPointX(11), GetPointY(11), 0))
		{
			for (loc1 = 0; loc1 < loc2; loc1 = loc1 + 1)
			{
				loc5 = var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSP1", null, 1);
				loc5.CommandMove(GetPointX(loc3), GetPointY(loc3), 0);
				loc5 = var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 1);
				loc5.CommandMove(GetPointX(loc3), GetPointY(loc3), 0);
				loc5 = var0.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUHL3", "UCSWBHC2", null, null, null, 2);
				loc5.CommandMove(GetPointX(loc3), GetPointY(loc3), 0);
			}
		}
		loc6 = 8000;
		SetTimer(1, GetMissionTime() + loc6);
	}
}