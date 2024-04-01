mission "translatemissionLS_UCS_M06"
{
	int var0;
	int var1;
	int var2;
	int var3;
	int var4;
	int var5;
	int var6;
	int var7;
	
	player var8;
	player var9;
	player var10;
	player var11;
	
	
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
		unitex loc2;
		
		var9 = GetPlayer(5);
		var8 = GetPlayer(3);
		var10 = GetPlayer(2);
		var11 = GetPlayer(1);
		
		RegisterGoal(0, "translateGoalLS_UCS_M06_captureTrucks");
		RegisterGoal(1, "translateGoalLS_UCS_M06_buildArmy");
		RegisterGoal(2, "translateGoalLS_UCS_M06_avoidContact");
		RegisterGoal(3, "translateGoalLS_UCS_M06_destroyED");
		RegisterGoal(4, "translateGoalLS_UCS_M06_protect3Trucks");
		RegisterGoal(5, "translateGoalLS_UCS_M06_destroyLC");
		
		var9.EnableStatistics(0);
		
		if (GetDifficultyLevel() == 0)
		{
			var3 = 42000;
			var6 = 25 * 60 * 20;
			var8.LoadScript("single\\singleEasy");
			var10.LoadScript("single\\singleEasy");
			var11.SetMoney(30000);
		}
		if (GetDifficultyLevel() == 1)
		{
			var3 = 38000;
			var6 = 20 * 60 * 20;
			var8.LoadScript("single\\singleMedium");
			var10.LoadScript("single\\singleMedium");
			var11.SetMoney(20000);
		}
		if (GetDifficultyLevel() == 2)
		{
			var3 = 35000;
			var6 = 15 * 60 * 20;
			var8.LoadScript("single\\singleHard");
			var10.LoadScript("single\\singleHard");
			var11.SetMoney(15000);
		}
		
		var11.EnableAIFeatures(aiEnabled, 0);
		var9.EnableAIFeatures(aiEnabled, 0);
		var11.EnableCommand(commandSoldBuilding, 1);
		
		var10.SetMoney(50000);
		var8.SetMoney(100000);
		
		var11.EnableResearch("RES_UCS_BOMBER31", 1);
		var11.EnableResearch("RES_UCSWAP1", 1);
		var11.EnableResearch("RES_UCSCAA1", 1);
		var11.EnableResearch("RES_UCSUCS", 1);
		
		var11.EnableBuilding("UCSBBA", 1);
		var11.EnableBuilding("UCSBFA", 1);
		var11.EnableBuilding("UCSBPP", 1);
		var11.EnableBuilding("UCSBPR", 1);
		var11.EnableBuilding("UCSBET", 1);
		var11.EnableBuilding("UCSBRF", 1);
		var11.EnableBuilding("UCSBAB", 1);
		var11.EnableBuilding("UCSBST", 1);
		var11.EnableBuilding("UCSBBT", 1);
		var11.EnableBuilding("UCSBFO", 1);
		var11.EnableBuilding("UCSBSH", 1);
		var11.EnableBuilding("UCSBLZ", 1);
		var11.EnableBuilding("UCSBHT", 1);
		var11.EnableBuilding("UCSBEN1", 0);
		var11.EnableBuilding("UCSBEN2", 0);
		var11.EnableBuilding("UCSBTB", 0);
		var11.EnableBuilding("UCSBTE", 0);
		var11.EnableBuilding("UCSBRC", 0);
		var11.EnableBuilding("UCSBWB", 0);
		var11.EnableBuilding("UCSBPB", 0);
		var11.EnableBuilding("UCSBPC", 0);
		var11.EnableBuilding("UCSBHQ", 0);
		var11.EnableBuilding("UCSBSD", 0);
		var11.EnableBuilding("UCSBSS", 0);
		var11.EnableBuilding("UCSBUC", 0);
		var11.EnableBuilding("UCSBART", 0);
		
		var10.AddResearch("RES_EDWEQ1");
		var10.AddResearch("RES_EDWEQ2");
		
		var8.AddResearch("RES_LC_UCU1");
		var8.AddResearch("RES_LC_UCU2");
		var8.AddResearch("RES_LC_UCU3");
		var8.AddResearch("RES_LC_UBO1");
		var8.AddResearch("RES_LC_UBO2");
		var8.AddResearch("RES_LC_WAS1");
		var8.AddResearch("RES_LC_WAS2");
		var8.AddResearch("RES_LCUNH");
		var8.AddResearch("RES_LC_ART");
		var8.AddResearch("RES_LC_SDIDEF");
		var8.AddResearch("RES_LCWAA1");
		
		var8.EnableBuilding("LCBBF", 1);
		var8.EnableBuilding("LCBPP", 1);
		var8.EnableBuilding("LCBBA", 1);
		var8.EnableBuilding("LCBAB", 1);
		var8.EnableBuilding("LCBDE", 1);
		var8.EnableBuilding("LCBHQ", 1);
		var8.EnableBuilding("LCBSB", 1);
		var8.EnableBuilding("WLASER", 1);
		var8.EnableBuilding("LCBNE", 1);
		var8.EnableBuilding("LCBGA", 1);
		var8.EnableBuilding("LCBPP2", 1);
		var8.EnableBuilding("LCBEN1", 0);
		var8.EnableBuilding("LCBRC", 0);
		var8.EnableBuilding("LCBEN2", 0);
		var8.EnableBuilding("LCBUC", 0);
		var8.EnableBuilding("LCBCC", 0);
		var8.EnableBuilding("LCBLZ", 0);
		var8.EnableBuilding("LCBART", 0);
		var8.EnableBuilding("LCBSD", 0);
		var8.EnableBuilding("LCBWC", 0);
		var8.EnableBuilding("LCBSS", 0);
		var8.EnableBuilding("LCBSR", 0);
		
		var0 = 0;
		var5 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var11.LookAt(var11.GetStartingPointX(), var11.GetStartingPointY() + 5, 20, 128, 10, 0);
		var11.DelayedLookAt(var11.GetStartingPointX(), var11.GetStartingPointY(), 20, 0, 10, 0, 200, 1);
		return State1, 1;
	}
	
	state State1
	{
		var9.EnableAI(0);
		
		var10.SetNumberOfOffensiveTankPlatoons(0);
		var10.SetNumberOfOffensiveHelicopterPlatoons(0);
		var10.SetMaxTankPlatoonSize(10);
		var10.SetNumberOfDefensiveTankPlatoons(4);
		var10.SetMaxAttackFrequency(0);
		var10.SetMaxHelicopterPlatoonSize(6);
		
		var10.EnableAIFeatures(aiRejectAlliance, 1);
		var10.EnableAIFeatures(aiUpgradeCannons, 1);
		var10.EnableAIFeatures(aiBuildBuilders, 1);
		var10.EnableAIFeatures(aiBuildRepairers, 1);
		var10.EnableAIFeatures(aiEnabled, 1);
		var10.EnableAIFeatures(aiBuildBuildings, 1);
		var10.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var10.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var10.EnableAIFeatures(aiControlSupplyUnits, 1);
		var10.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var10.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var10.EnableAIFeatures(aiDefenseTowers, 1);
		var10.EnableAIFeatures(aiControlDefense, 1);
		var10.EnableAIFeatures(aiControlMiningUnits, 1);
		var10.EnableAIFeatures(aiBuildMiningUnits, 1);
		var10.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var10.EnableAIFeatures(aiBuildHelicopters, 0);
		var10.EnableAIFeatures(aiControlOffense, 0);
		var10.EnableAIFeatures(aiBuildTanks, 1);
		var10.EnableAI(1);
		
		var8.SetNumberOfOffensiveTankPlatoons(6);
		var8.SetNumberOfOffensiveHelicopterPlatoons(2);
		var8.SetMaxTankPlatoonSize(10);
		var8.SetNumberOfDefensiveTankPlatoons(2);
		var8.SetMaxAttackFrequency(0);
		var8.SetMaxHelicopterPlatoonSize(6);
		
		var8.EnableAIFeatures(aiRejectAlliance, 1);
		var8.EnableAIFeatures(aiUpgradeCannons, 1);
		var8.EnableAIFeatures(aiBuildBuilders, 1);
		var8.EnableAIFeatures(aiBuildRepairers, 1);
		var8.EnableAIFeatures(aiEnabled, 1);
		var8.EnableAIFeatures(aiBuildBuildings, 1);
		var8.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var8.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var8.EnableAIFeatures(aiControlSupplyUnits, 1);
		var8.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var8.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var8.EnableAIFeatures(aiDefenseTowers, 1);
		var8.EnableAIFeatures(aiControlDefense, 1);
		var8.EnableAIFeatures(aiControlMiningUnits, 0);
		var8.EnableAIFeatures(aiBuildMiningUnits, 0);
		var8.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var8.EnableAIFeatures(aiBuildHelicopters, 0);
		var8.EnableAIFeatures(aiControlOffense, 0);
		var8.EnableAIFeatures(aiBuildTanks, 1);
		var8.EnableAI(1);
		
		var10.SetNeutral(var8);
		var8.SetNeutral(var10);
		var9.SetNeutral(var11);
		var11.SetNeutral(var9);
		var9.SetNeutral(var8);
		var8.SetNeutral(var9);
		var10.SetNeutral(var9);
		var9.SetNeutral(var10);
		
		ShowVideo("UCS_M06");
		
		return State2, 200;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(2, 1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingLS_UCS_M06_buildArmy", var11.GetName(), var2);
		
		var7 = GetMissionTime();
		
		return State6, 1;
	}
	
	state State6
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		for (loc0 = 10; loc0 < 50; loc0 = loc0 + 1)
		{
			if (var11.IsPointLocated(GetPointX(loc0), GetPointY(loc0)) == 1)
			{
				SetGoalState(2, 2);
				SetGoalState(0, 2);
				AddBriefing("translateFailedLS_UCS_M06_avoidContact", var11.GetName());
				
				return State10, 20;
			}
		}
		
		if(GetMissionTime() - var7 > var6)
		{
			EnableInterface(0);
			EnableCameraMovement(0);
			var10.SetEnemy(var8);
			var8.SetEnemy(var10);
			var11.SetEnemy(var8);
			var11.SetEnemy(var10);
			var10.SetEnemy(var11);
			var8.SetEnemy(var11);
			SetConsoleText("translateIncomingEvent");
			
			for (loc0 = 1; loc0 < 6; loc0 = loc0 + 1)
			{
				loc2 = var9.CreateUnitEx(GetPointX(6) + loc0, GetPointY(6), 0, null, "EDUMM11", null, null, null, null, 0);
				loc2.CommandMove(GetPointX(7), GetPointY(7), 0);
				var9.SetScriptUnit(loc0, loc2);
			}
			for (loc0 = 0; loc0 < 8; loc0 = loc0 + 1)
			{
				loc2 = var10.CreateUnitEx(GetPointX(6) + loc0, GetPointY(6) + 3, 0, null, "EDUHT3", "EDWHC2", null, "EDWSR3", null, 3);
				loc2.CommandMove(GetPointX(7), GetPointY(7), 0);
			}
			for (loc0 = 0; loc0 < 8; loc0 = loc0 + 1)
			{
				loc2 = var10.CreateUnitEx(GetPointX(6) + loc0, GetPointY(6) - 3, 0, null, "EDUHT3", "EDWHC2", null, "EDBANNER", null, 3);
				loc2.CommandMove(GetPointX(7), GetPointY(7), 0);
			}
			
			var11.LookAt(GetPointX(6), GetPointY(6), 20, 192, 10, 0);
			ShowArea(var11.GetIFF(), GetPointX(6), GetPointY(6), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
			
			return State3, 10;
		}
		
		loc1 = var6 - (GetMissionTime() - var7);
		SetConsoleText("translateTimeUntilArrival", loc1 / 16383, loc1 % 16383 / 683);
		
		return State6, 100;
	}
	
	state State3
	{
		unitex loc0;
		int loc1;
		
		loc0 = var9.GetScriptUnit(3);
		ShowArea(var11.GetIFF(), loc0.GetLocationX(), loc0.GetLocationY(), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		var11.DelayedLookAt(loc0.GetLocationX(), loc0.GetLocationY(), 5, 192, 30, 0, 40, 1);
		
		loc1 = Distance(loc0.GetLocationX(), loc0.GetLocationY(), GetPointX(7), GetPointY(7));
		
		if (loc1 < 5)
		{
			SetConsoleText("");
			EnableInterface(1);
			EnableCameraMovement(1);
			var4 = GetMissionTime();
			SetGoalState(2, 1);
			SetGoalState(1, 1);
			EnableGoal(3, 1);
			AddBriefing("translateBriefingLS_UCS_M06_destroyED", var11.GetName());
			
			return State8, 20;
		}
		
		return State3, 20;
	}
	
	state State8
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		SetConsoleText("");
		loc0 = var3 - (GetMissionTime() - var4);
		if (loc0 < 0)
		{
			SetGoalState(0, 2);
			SetGoalState(3, 2);
			AddBriefing("translateFailedLS_UCS_M06_destroyEDInTime", var11.GetName());
			
			return State10, 20;
		}
		if (var0 == 1)
		{
			var0 = 0;
			if (var10.GetNumberOfBuildings() == 0)
			{
				var11.SetAlly(var9);
				for (loc1 = 1; loc1 < 6; loc1 = loc1 + 1)
				{
					loc2 = var9.GetScriptUnit(loc1);
					var9.GiveTo(var11, loc2);
					var11.SetScriptUnit(loc1, loc2);
				}
				var5 = 1;
				EnableInterface(1);
				EnableCameraMovement(1);
				var11.LookAt(GetPointX(7), GetPointY(7), 20, 0, 10, 0);
				SetGoalState(0, 1);
				SetGoalState(3, 1);
				EnableGoal(4, 1);
				AddBriefing("translateBriefingLS_UCS_M06_protect3Trucks", var11.GetName());
				
				return State4, 20;
			}
		}
		if (loc0 > 0)
		{
			SetConsoleText("translateTimeToDestroyED", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State8, 100;
	}
	
	state State4
	{
		int loc0;
		unitex loc1;
		
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		var8.EnableAIFeatures(aiEnabled, 0);
		var8.EnableAI(0);
		
		for (loc0 = 0; loc0 < 3; loc0 = loc0 + 1)
		{
			loc1 = var8.CreateUnitEx(GetPointX(6) + loc0, GetPointY(6), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
			loc1.CommandMove(GetPointX(7) + 10, GetPointY(7), 0);
			loc1 = var8.CreateUnitEx(GetPointX(6) + loc0, GetPointY(6), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
			loc1.CommandMove(GetPointX(7) + 10, GetPointY(7), 0);
		}
		var11.LookAt(GetPointX(6), GetPointY(6), 20, 64, 10, 0);
		var11.DelayedLookAt(GetPointX(7) + 10, GetPointY(7), 20, 64, 10, 0, 400, 1);
		ShowArea(var11.GetIFF(), GetPointX(6), GetPointY(6), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		return State5, 20;
	}
	
	state State5
	{
		if (var8.IsPointLocated(GetPointX(7) + 10, GetPointY(7)) == 1)
		{
			var8.EnableAIFeatures(aiEnabled, 1);
			var8.EnableAI(1);
			var8.EnableAIFeatures(aiControlOffense, 1);
			SetConsoleText("");
			EnableInterface(1);
			EnableCameraMovement(1);
			var11.LookAt(GetPointX(7), GetPointY(7), 20, 0, 10, 0);
			var4 = GetMissionTime();
			EnableGoal(5, 1);
			AddBriefing("translateBriefingLS_UCS_M06_destroyLC", var11.GetName());
			
			return State7, 20;
		}
		ShowArea(var11.GetIFF(), GetPointX(7), GetPointY(7), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var11.GetIFF(), GetPointX(6), GetPointY(6), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var11.GetIFF(), (GetPointX(6) + GetPointX(7)) / 2, GetPointY(6), 0, 30, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		return State5, 20;
	}
	
	state State7
	{
		int loc0;
		int loc1;
		unitex loc2;
		
		SetConsoleText("");
		loc0 = var3 - (GetMissionTime() - var4);
		if (loc0 < 0)
		{
			SetGoalState(5, 2);
			AddBriefing("translateFailedLS_UCS_M06_destroyLCInTime", var11.GetName());
			
			return State10, 20;
		}
		if (var0 == 1)
		{
			var0 = 0;
			if (var8.GetNumberOfBuildings() == 0)
			{
				SetGoalState(5, 1);
				AddBriefing("translateAccomplishedLS_UCS_M06_all", var11.GetName());
				EnableNextMission(6, 1);
				EnableEndMissionButton(1);
				
				return State9, 100;
			}
		}
		if (loc0 > 0)
		{
			SetConsoleText("translateTimeToDestroyLC", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State7, 100;
	}
	
	state State10
	{
		EnableNextMission(6, 2);
		EndMission(0);
	}
	
	state State9
	{
		return State9, 500;
	}
	
	event Timer1()
	{
		SetTimer(1, 0);
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var11.GetMoney();
		var11.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
	
	event UnitDestroyed(unit uUnit)
	{
		int loc0;
		unitex loc1;
		
		if (var5 == 1)
		{
			var1 = 0;
			for (loc0 = 1; loc0 < 6; loc0 = loc0 + 1)
			{
				loc1 = var11.GetScriptUnit(loc0);
				if (loc1 != null)
				{
					var1 = var1 + 1;
				}
			}
			if (var1 < 3)
			{
				SetGoalState(4, 2);
				AddBriefing("translateFailedLS_UCS_M06_protect3Trucks", var11.GetName());
				state State10;
			}
		}
		if (var11.GetNumberOfBuildings() == 0 && var11.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M06_PlayerLostAll", var11.GetName());
			state State10;
			return;
		}
		var0 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		if (var11.GetNumberOfBuildings() == 0 && var11.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateFailedLS_UCS_M06_PlayerLostAll", var11.GetName());
			state State10;
			return;
		}
		var0 = 1;
	}

}