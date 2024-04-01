mission "translatemissionLS_UCS_M07"
{
	player var0;
	player var1;
	player var2;
	int var3;
	int var4;
	int var5;
	int var6;
	int var7;
	int var8;
	int var9;
	int var10;
	int var11;
	int var12;
	
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
		var0 = GetPlayer(1);
		var1 = GetPlayer(2);
		var2 = GetPlayer(3);
		var3 = 0;
		var4 = 0;
		var5 = 0;
		
		RegisterGoal(0, "translateGoalLS_UCS_M07_destroyED");
		RegisterGoal(1, "translateGoalLS_UCS_M07_destroyLC");
		RegisterGoal(2, "translateGoalLS_UCS_M07_destroyEDships");
		
		if (GetDifficultyLevel() == 0)
		{
			var1.LoadScript("single\\singleEasy");
			var2.LoadScript("single\\singleEasy");
			var0.SetMoney(8000);
			var8 = 2;
		}
		if (GetDifficultyLevel() == 1)
		{
			var1.LoadScript("single\\singleMedium");
			var2.LoadScript("single\\singleMedium");
			var0.SetMoney(5000);
			var8 = 3;
		}
		if (GetDifficultyLevel() == 2)
		{
			var1.LoadScript("single\\singleHard");
			var2.LoadScript("single\\singleHard");
			var0.SetMoney(2500);
			var8 = 4;
		}
		
		var1.SetMoney(100000);
		var2.SetMoney(100000);
		
		var0.AddResearch("RES_UCS_WSD");
		
		var0.EnableBuilding("UCSBBA", 1);
		var0.EnableBuilding("UCSBFA", 1);
		var0.EnableBuilding("UCSBPP", 1);
		var0.EnableBuilding("UCSBPR", 1);
		var0.EnableBuilding("UCSBET", 1);
		var0.EnableBuilding("UCSBRF", 1);
		var0.EnableBuilding("UCSBAB", 1);
		var0.EnableBuilding("UCSBST", 1);
		var0.EnableBuilding("UCSBBT", 1);
		var0.EnableBuilding("UCSBFO", 1);
		var0.EnableBuilding("UCSBSH", 1);
		var0.EnableBuilding("UCSBHT", 1);
		var0.EnableBuilding("UCSBLZ", 1);
		var0.EnableBuilding("UCSBWB", 1);
		var0.EnableBuilding("UCSBSD", 1);
		var0.EnableBuilding("UCSBEN1", 0);
		var0.EnableBuilding("UCSBEN2", 0);
		var0.EnableBuilding("UCSBTB", 0);
		var0.EnableBuilding("UCSBTE", 0);
		var0.EnableBuilding("UCSBRC", 0);
		var0.EnableBuilding("UCSBPB", 0);
		var0.EnableBuilding("UCSBPC", 0);
		var0.EnableBuilding("UCSBHQ", 0);
		var0.EnableBuilding("UCSBSS", 0);
		var0.EnableBuilding("UCSBUC", 1);
		var0.EnableBuilding("UCSBART", 0);
		
		var1.AddResearch("RES_ED_WHR1");
		var1.AddResearch("RES_ED_MHR2");
		var1.AddResearch("RES_ED_MHR3");
		var1.AddResearch("RES_ED_MHR4");
		var1.AddResearch("RES_ED_AB1");
		var1.AddResearch("RES_ED_AB2");
		var1.AddResearch("RES_ED_ART");
		var1.AddResearch("RES_ED_MB2");
		var1.AddResearch("RES_ED_MB3");
		var1.AddResearch("RES_ED_MB4");
		var1.AddResearch("RES_ED_UMW1");
		var1.AddResearch("RES_ED_UMW2");
		var1.AddResearch("RES_ED_UMW3");
		var1.AddResearch("RES_ED_UMI1");
		var1.AddResearch("RES_ED_UMI2");
		var1.AddResearch("RES_EDUSTEALTH");
		var1.AddResearch("RES_ED_UOH2");
		var1.AddResearch("RES_ED_BC1");
		var1.AddResearch("RES_ED_USM1");
		var1.AddResearch("RES_ED_USM2");
		var1.AddResearch("RES_ED_USS2");
		var1.AddResearch("RES_ED_USS3");
		var1.AddResearch("RES_ED_UHS1");
		var1.AddResearch("RES_ED_UHS2");
		var1.AddResearch("RES_ED_UHW1");
		var1.AddResearch("RES_ED_UHW2");
		var1.AddResearch("RES_EDBHT");
		
		var1.EnableBuilding("EDBBPP", 1);
		var1.EnableBuilding("EDBBA", 1);
		var1.EnableBuilding("EDBFA", 1);
		var1.EnableBuilding("EDBWB", 1);
		var1.EnableBuilding("EDBAB", 1);
		var1.EnableBuilding("EDBBRE", 1);
		var1.EnableBuilding("EDBMI", 1);
		var1.EnableBuilding("EDBTC", 0);
		var1.EnableBuilding("EDBST", 1);
		var1.EnableBuilding("EDBPB", 1);
		var1.EnableBuilding("EDBBT", 1);
		var1.EnableBuilding("EDBBC", 1);
		var1.EnableBuilding("EDBSI", 1);
		var1.EnableBuilding("EDBHT", 1);
		var1.EnableBuilding("EDBART", 1);
		var1.EnableBuilding("EDBRC", 0);
		var1.EnableBuilding("EDBHQ", 0);
		var1.EnableBuilding("EDBRA", 1);
		var1.EnableBuilding("EDBEN1", 0);
		var1.EnableBuilding("EDBLZ", 0);
		
		var2.EnableBuilding("LCBBF", 1);
		var2.EnableBuilding("LCBPP", 1);
		var2.EnableBuilding("LCBBA", 1);
		var2.EnableBuilding("LCBAB", 1);
		var2.EnableBuilding("LCBDE", 1);
		var2.EnableBuilding("LCBHQ", 1);
		var2.EnableBuilding("LCBSB", 1);
		var2.EnableBuilding("WLASER", 1);
		var2.EnableBuilding("LCBNE", 1);
		var2.EnableBuilding("LCBGA", 1);
		var2.EnableBuilding("LCBPP2", 1);
		var2.EnableBuilding("LCBART", 1);
		var2.EnableBuilding("LCBSD", 1);
		var2.EnableBuilding("LCBEN1", 0);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBEN2", 0);
		var2.EnableBuilding("LCBUC", 0);
		var2.EnableBuilding("LCBCC", 0);
		var2.EnableBuilding("LCBLZ", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBSR", 0);
		
		var0.EnableAIFeatures(aiEnabled, 0);
		
		var6 = 0;
		var7 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		
		var0.LookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 20, 0, 10, 0);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		
		var1.SetMaxTankPlatoonSize(10);
		var1.SetMaxShipPlatoonSize(10);
		var1.SetNumberOfDefensiveTankPlatoons(5);
		var1.SetNumberOfDefensiveShipPlatoons(5);
		var1.SetMaxAttackFrequency(7 * 60 * 20);
		var1.SetNumberOfOffensiveTankPlatoons(8);
		
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
		var1.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var1.EnableAIFeatures(aiDefenseTowers, 1);
		var1.EnableAIFeatures(aiControlDefense, 1);
		var1.EnableAIFeatures(aiControlMiningUnits, 0);
		var1.EnableAIFeatures(aiBuildMiningUnits, 0);
		var1.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var1.EnableAIFeatures(aiBuildHelicopters, 0);
		var1.EnableAIFeatures(aiControlOffense, 0);
		var1.EnableAIFeatures(aiBuildTanks, 0);
		var1.EnableAI(1);
		
		var2.SetMaxTankPlatoonSize(10);
		var2.SetNumberOfDefensiveTankPlatoons(5);
		var2.SetMaxAttackFrequency(7 * 60 * 20);
		var2.SetNumberOfOffensiveTankPlatoons(8);
		
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
		var2.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var2.EnableAIFeatures(aiDefenseTowers, 1);
		var2.EnableAIFeatures(aiControlDefense, 1);
		var2.EnableAIFeatures(aiControlMiningUnits, 1);
		var2.EnableAIFeatures(aiBuildMiningUnits, 1);
		var2.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var2.EnableAIFeatures(aiBuildHelicopters, 1);
		var2.EnableAIFeatures(aiControlOffense, 0);
		var2.EnableAIFeatures(aiBuildTanks, 0);
		var2.EnableAI(1);
		
		for (loc1 = 0; loc1 < 5; loc1 = loc1 + 1)
		{
			var9 = loc1 * 5 + 20;
			loc0 = GetUnit(GetPointX(var9), GetPointY(var9));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(var9 + 1), GetPointY(var9 + 1)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(var9 + 1), GetPointY(var9 + 1)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(var9 + 2), GetPointY(var9 + 2)));
			loc0 = GetUnit(GetPointX(var9 + 3), GetPointY(var9 + 3));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(var9 + 4), GetPointY(var9 + 4)));
			loc0.CommandSetContainerSource(GetUnit(GetPointX(var9 + 4), GetPointY(var9 + 4)));
			loc0.CommandSetContainerDestination(GetUnit(GetPointX(var9 + 2), GetPointY(var9 + 2)));
		}
		
		SetTimer(0, 10 * 60 * 20);
		SetTimer(1, 20 * 60 * 20);
		
		return State2, 20;
	}
	
	state State2
	{
		int loc0;
		
		if (var7 == 0)
		{
			SetConsoleText("translateIncomingEvent");
			ShowArea(var0.GetIFF(), var1.GetStartingPointX(), var1.GetStartingPointY(), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
			ShowArea(var0.GetIFF(), var2.GetStartingPointX(), var2.GetStartingPointY(), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
			var0.DelayedLookAt(var1.GetStartingPointX(), var1.GetStartingPointY(), 20, 128, 10, 0, 80, 1);
			var7 = 1;
			return State2, 120;
		}
		if (var7 == 1)
		{
			var0.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 64, 10, 0, 80, 1);
			var7 = 2;
			return State2, 100;
		}
		if (var7 == 2)
		{
			var0.DelayedLookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
			var7 = 3;
			return State2, 80;
		}
		if (var7 == 3)
		{
			EnableInterface(1);
			EnableCameraMovement(1);
			ShowArea(var0.GetIFF(), GetPointX(0), GetPointY(0), 0, 20, showAreaPassives);
			
			for (loc0 = 0; loc0 < var8; loc0 = loc0 + 1)
			{
				var2.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCU3", "LCWHL2", "LCWHL2", "LCWSL2", "LCWSL2", 2);
				var2.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCR3", "LCWHL2", null, "LCWSL2", null, 2);
				var2.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCR3", "LCWMR3", null, null, null, 2);
				
				var1.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDWCA2", "EDWCA2", 2);
				var1.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "EDUHT3", "EDWHC2", null, "EDWCA2", null, 2);
				var1.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "EDUHT3", "EDWMR3", null, null, null, 2);
			}
			SetConsoleText("");
			ShowVideo("UCS_M07");
			return State3, 20;
		}
	}
	
	state State3
	{
		if (var6 == 1)
		{
			AddBriefing("translateBriefingLS_UCS_M07_failed");
			
			return State8, 20;
		}
		
		if (var3 == 0 && var4 == 0)
		{
			EnableGoal(1, 1);
			EnableGoal(0, 1);
			AddBriefing("translateBriefingLS_UCS_M07_DestroyBases");
			
			return State4, 20;
		}
		
		if (var3 == 1 && var4 == 0)
		{
			SetGoalState(1, 1);
			AddBriefing("translateBriefingLS_UCS_M07_destroyedLC");
			
			return State4, 20;
		}
		
		if (var3 == 0 && var4 == 1)
		{
			SetGoalState(0, 1);
			AddBriefing("translateBriefingLS_UCS_M07_destroyedED");
			
			return State4, 20;
		}
		
		if (var3 == 1 && var4 == 1 && var5 == 0)
		{
			SetGoalState(0, 1);
			SetGoalState(1, 1);
			EnableGoal(2, 1);
			AddBriefing("translateBriefingLS_UCS_M07_DestroyShips");
			
			return State5, 20;
		}
		
		if (var5 == 1)
		{
			SetGoalState(2, 1);
			AddBriefing("translateBriefingLS_UCS_M07_finished");
			var7 = 0;
			return State7, 20;
		}
	}
	
	state State4
	{
		if (var11 == 1)
		{
			var11 = 0;
			if (var2.GetNumberOfBuildings() == 0 && var3 == 0)
			{
				var3 = 1;
				return State3, 20;
			}
			if (var1.GetNumberOfBuildings() == 0 && var4 == 0)
			{
				var4 = 1;
				return State3, 20;
			}
		}
		return State4, 20;
	}
	
	state State5
	{
		int loc0;
		
		for (loc0 = 0; loc0 < 15; loc0 = loc0 + 1)
		{
			var1.CreateUnitEx(GetPointX(7), GetPointY(7), 0, null, "EDUSS3", "EDWSR3", null, null, null, 2);
			var1.CreateUnitEx(GetPointX(7), GetPointY(7), 0, null, "EDUSS3", "EDWSR3", null, null, null, 2);
			var1.CreateUnitEx(GetPointX(7), GetPointY(7), 0, null, "EDUBS2", "EDWHC3", "EDWSR3", "EDSCREAMER3", null, 2);
		}
		ShowArea(var0.GetIFF(), GetPointX(7), GetPointY(7), 0, 20);
		return State6, 20;
	}
	
	state State6
	{
		if (var12 == 1)
		{
			var12 = 0;
			if (var1.GetNumberOfUnits(chassisShip | unitArmed) == 0)
			{
				var5 = 1;
				return State3, 20;
			}
		}
		return State6, 20;
	}
	
	state State7
	{
		int loc0;
		unitex loc1;
		
		if (var7 == 0)
		{
			SetConsoleText("translateIncomingEvent");
			EnableCameraMovement(0);
			EnableInterface(0);
			var0.DelayedLookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
			var7 = 1;
			var9 = 0;
			var10 = 0;
			
			return State7, 100;
		}
		if (var7 == 1)
		{
			if (var10 == 0)
			{
				var0.LookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 18, 0, 10, 0);
				var10 = 1;
			}
			else if (var10 == 1)
			{
				var0.LookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 19, 0, 10, 0);
				var10 = 0;
				var9 = var9 + 1;
			}
			if (var9 == 20)
			{
				KillArea(var0.GetIFF(), var0.GetStartingPointX(), var0.GetStartingPointY(), 0, 20);
			}
			if (var9 == 25)
			{
				var7 = 2;
			}
			return State7, 1;
		}
		if (var7 == 2) {}
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingLS_UCS_M07_Earthquake");
		
		return State8, 20;
	}
	
	state State8
	{
		if (var6 == 1)
		{
			return State10, 20;
		}
		if (var6 == 0)
		{
			EnableNextMission(7, 1);
			EndMission(1);
		}
	}
	
	state State9
	{
		return State9, 20;
	}
	
	state State10
	{
		EnableNextMission(7, 2);
		EndMission(0);
	}
	
	event Timer0()
	{
		int loc0;
		
		for (loc0 = 0; loc0 < var8; loc0 = loc0 + 1)
		{
			if (var3 == 0)
			{
				var2.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCU3", "LCWHL2", "LCWHL2", "LCWSL2", "LCWSL2", 2);
				var2.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCR3", "LCWHL2", null, "LCWSL2", null, 2);
				var2.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCR3", "LCWMR3", null, null, null, 2);
			}
			
			if (var4 == 0)
			{
				var1.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDWCA2", "EDWCA2", 2);
				var1.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "EDUHT3", "EDWHC2", null, "EDWCA2", null, 2);
				var1.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "EDUHT3", "EDWMR3", null, null, null, 2);
			}
		}
	}
	
	event Timer1()
	{
		int loc0;
		unitex loc1;
		
		for (loc0 = 0; loc0 < var8; loc0 = loc0 + 1)
		{
			if (var3 == 0)
			{
				loc1 = var2.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "LCUCU3", "LCWHL2", "LCWHL2", "LCWSL2", "LCWSL2", 2);
				loc1.CommandMove(GetPointX(1), GetPointY(1), 0);
				loc1 = var2.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "LCUCR3", "LCWHL2", null, "LCWSL2", null, 2);
				loc1.CommandMove(GetPointX(1), GetPointY(1), 0);
				loc1 = var2.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "LCUCR3", "LCWMR3", null, null, null, 2);
				loc1.CommandMove(GetPointX(1), GetPointY(1), 0);
			}
			
			if (var4 == 0)
			{
				loc1 = var1.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDWCA2", "EDWCA2", 2);
				loc1.CommandMove(GetPointX(2), GetPointY(2), 0);
				loc1 = var1.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "EDUHT3", "EDWHC2", null, "EDWCA2", null, 2);
				loc1.CommandMove(GetPointX(2), GetPointY(2), 0);
				loc1 = var1.CreateUnitEx(GetPointX(6), GetPointY(6), 0, null, "EDUHT3", "EDWMR3", null, null, null, 2);
				loc1.CommandMove(GetPointX(2), GetPointY(2), 0);
			}
		}
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var12 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var0.GetNumberOfBuildings() == 0)
		{
			var6 = 1;
			state State3;
			return;
		}
		var11 = 1;
	}

}