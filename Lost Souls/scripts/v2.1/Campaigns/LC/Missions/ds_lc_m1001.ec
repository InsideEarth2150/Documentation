mission "translateMissionDS_LC_M1001"
{
	player var0;
	player var1;
	player var2;
	player var3;
	
	int var4;
	int var5;
	int var6;
	int var7;
	int var8;
	int var9;
	int var10;
	int var11;
	
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
	state State14;
	state State15;
	state State16;
	state State17;
	state State18;
		
	function int FUN_00000051(int param1, int param2, int param3)
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		
		loc0 = GetPointX(49 + param3) - 20;
		loc1 = GetPointY(49 + param3) - 20;
		loc2 = GetPointX(49 + param3) + 20;
		loc3 = GetPointY(49 + param3) + 20;
		
		if(param1 >= loc0 && param2 >= loc1 && param1 <= loc2 && param2 <= loc3)
		{
			return 1;
		}
		
		return 0;
	}
	
	function int FUN_0000010B(int param1, int param2)
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		
		loc0 = GetPointX(39) - 3;
		loc1 = GetPointY(39) - 3;
		loc2 = GetPointX(39) + 3;
		loc3 = GetPointY(39) + 3;
		
		if(param1 >= loc0 && param2 >= loc1 && param1 <= loc2 && param2 <= loc3)
		{
			return 1;
		}
		
		return 0;
	}
	
	state State0
	{
		int loc0;
		
		var1 = GetPlayer(1);
		var3 = GetPlayer(2);
		var2 = GetPlayer(3);
		var0 = GetPlayer(0);
	
		RegisterGoal(0, "translateGoalDS_LC_M1001_holdPosition");
		RegisterGoal(1, "translateGoalDS_LC_M1001_holdOneBase");
		
		var3.LoadScript("single\\singleHard");
		var1.LoadScript("single\\singleHard");
		var1.SetMoney(999999);
		
		if(GetDifficultyLevel() == 0)
		{
			var2.SetMoney(10000);
		}
		if(GetDifficultyLevel() == 1)
		{
			var2.SetMoney(5000);
		}
		if(GetDifficultyLevel() == 2)
		{
			var2.SetMoney(2000);
		}
		
		var2.EnableCommand(commandSoldBuilding, 1);
		var2.EnableAIFeatures(aiEnabled, 0);
		var0.EnableAIFeatures(aiEnabled, 0);
		var2.EnableBuilding("LCBBF", 1);
		var2.EnableBuilding("LCBMR", 1);
		var2.EnableBuilding("LCBPP", 1);
		var2.EnableBuilding("LCBBA", 1);
		var2.EnableBuilding("LCBAB", 1);
		var2.EnableBuilding("LCBDE", 1);
		var2.EnableBuilding("LCBHQ", 1);
		var2.EnableBuilding("LCBSB", 1);
		var2.EnableBuilding("LCBLZ", 0);
		var2.EnableBuilding("WLASER", 1);
		var2.EnableBuilding("LCBNE", 1);
		var2.EnableBuilding("LCBUC", 1);
		var2.EnableBuilding("LCBCC", 1);
		var2.EnableBuilding("LCBEN1", 1);
		var2.EnableBuilding("LCBEN2", 1);
		var2.EnableBuilding("LCBART", 0);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBSR", 0);
		var2.EnableBuilding("LCBGA", 1);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 1);
		
		var0.AddResearch("RES_ED_WHR1");
		var0.AddResearch("RES_ED_MHR2");
		var0.AddResearch("RES_ED_MHR3");
		var0.AddResearch("RES_ED_MHR4");
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		var2.LookAt(GetPointX(4), GetPointY(4), 15, 128, 10, 0);
		SetConsoleText("translateIncomingEvent");
		
		return State1, 20;
	}
	
	state State1
	{
		var1.SetNumberOfOffensiveHelicopterPlatoons(2);
		var1.SetNumberOfOffensiveTankPlatoons(8);
		var1.SetMaxHelicopterPlatoonSize(10);
		var1.SetMaxTankPlatoonSize(15);
		var1.SetNumberOfDefensiveTankPlatoons(6);
		var1.SetNumberOfDefensiveHelicopterPlatoons(0);
		
		var1.EnableAIFeatures(aiRejectAlliance, 1);
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
		var1.EnableAIFeatures(aiBuildHelicopters, 0);
		var1.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var1.EnableAIFeatures(aiDefenseTowers, 1);
		var1.EnableAIFeatures(aiControlDefense, 1);
		var1.EnableAIFeatures(aiControlOffense, 1);
		var1.EnableAIFeatures(aiControlMiningUnits, 1);
		var1.EnableAIFeatures(aiBuildMiningUnits, 1);
		var1.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var1.EnableAI(1);
		
		var0.SetNumberOfOffensiveHelicopterPlatoons(0);
		var0.SetNumberOfOffensiveTankPlatoons(0);
		var0.SetMaxHelicopterPlatoonSize(0);
		var0.SetMaxTankPlatoonSize(0);
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
		var0.EnableAIFeatures(aiBuildTanks, 0);
		var0.EnableAIFeatures(aiBuildHelicopters, 0);
		var0.EnableAIFeatures(aiBuildMilitaryFactory, 0);
		var0.EnableAIFeatures(aiDefenseTowers, 1);
		var0.EnableAIFeatures(aiControlDefense, 0);
		var0.EnableAIFeatures(aiControlOffense, 0);
		var0.EnableAIFeatures(aiControlMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningUnits, 1);
		var0.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var0.EnableAI(0);
		
		var3.SetNumberOfOffensiveHelicopterPlatoons(0);
		var3.SetNumberOfOffensiveTankPlatoons(10);
		var3.SetMaxHelicopterPlatoonSize(10);
		var3.SetMaxTankPlatoonSize(10);
		var3.SetNumberOfDefensiveTankPlatoons(0);
		var3.SetNumberOfDefensiveHelicopterPlatoons(0);
		
		var3.EnableAIFeatures(aiRejectAlliance, 0);
		var3.EnableAIFeatures(aiUpgradeCannons, 1);
		var3.EnableAIFeatures(aiBuildBuilders, 1);
		var3.EnableAIFeatures(aiBuildRepairers, 1);
		var3.EnableAIFeatures(aiEnabled, 1);
		var3.EnableAIFeatures(aiBuildBuildings, 1);
		var3.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var3.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var3.EnableAIFeatures(aiControlSupplyUnits, 1);
		var3.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var3.EnableAIFeatures(aiBuildTanks, 1);
		var3.EnableAIFeatures(aiBuildHelicopters, 1);
		var3.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var3.EnableAIFeatures(aiDefenseTowers, 1);
		var3.EnableAIFeatures(aiControlDefense, 1);
		var3.EnableAIFeatures(aiControlOffense, 1);
		var3.EnableAI(1);
		
		var5 = 1;
		var6 = 1;
		var7 = 1;
		var10 = 0;
		var11 = 15;
		var4 = 0;
		var8 = 2;
		
		SetTimer(2, 90000);
		SetTimer(5, 60000);
		SetConsoleText("translateIncomingEvent");
		
		var2.DelayedLookAt(GetPointX(7), GetPointY(7), 15, 128, 10, 0, 120, 1);
		
		return State2, 130;
	}
	
	state State2
	{
		SetConsoleText("translateIncomingEvent");
		var2.DelayedLookAt(GetPointX(9), GetPointY(9), 15, 64, 10, 0, 120, 0);
	
		return State3, 130;
	}
	
	state State3
	{
		SetConsoleText("translateIncomingEvent");
		var2.DelayedLookAt(GetPointX(12), GetPointY(12), 15, 0, 20, 0, 120, 0);
	
		return State4, 120;
	}
	
	state State4
	{
		unitex loc0;
		int loc1;
		
		ShowVideo("LC_M10");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M1001_holdPosition", var2.GetName());
		
		var3.ChooseEnemy(var1);
		var3.SetEnemy(var1);
		var0.ChooseEnemy(var1);
		var0.SetEnemy(var1);
		var2.SetAlly(var0);
		var3.SetAlly(var0);
		var2.SetAlly(var3);
		
		for (loc1 = 0; loc1 < 5; loc1 = loc1 + 1)
		{
			loc0 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
			loc0 = var1.CreateUnitEx(GetPointX(2), GetPointY(2), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSP2", null, 3);
			loc0 = var1.CreateUnitEx(GetPointX(1), GetPointY(1), 1, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSH3", null, 3);
		}
		
		for (loc1 = 0; loc1 < 4; loc1 = loc1 + 1)
		{
			loc0 = var1.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 3);
			loc0.CommandMove(GetPointX(4), GetPointY(4), 0);
			loc0 = var1.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSWSH3", null, 3);
			loc0.CommandMove(GetPointX(4), GetPointY(4), 0);
			loc0 = var1.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", null, null, 3);
			loc0.CommandMove(GetPointX(5), GetPointY(5), 0);
			loc0 = var1.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", null, null, 3);
			loc0.CommandMove(GetPointX(5), GetPointY(5), 0);
		}
		
		SetConsoleText("");
		
		return State5, 10;
	}
	
	state State5
	{
		int loc0;
		
		SetConsoleText("");
		loc0 = 90000 - GetMissionTime();
		if (var4 == 1)
		{
			var4 = 0;
			
			if (var2.GetScriptData(5 + 1) > 10)
			{
				EnableInterface(1);
				EnableCameraMovement(1);
				SetGoalState(0, 2);
				EnableGoal(1, 1);
				AddBriefing("translateBriefingDS_LC_M1001_holdPositionWaitingForED", var2.GetName());
				
				SetTimer(0, GetMissionTime() + 8000);
				SetTimer(1, GetMissionTime() + 15000);
				SetTimer(3, GetMissionTime() + 6000);
				SetTimer(4, GetMissionTime() + 4000);
				
				return State6, 100;
			}
		}
		if (loc0 > 0)
		{
			SetConsoleText("translateEDHelp", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State5, 100;
	}
	
	state State6
	{
		int loc0;
		
		SetConsoleText("");
		loc0 = 90000 - GetMissionTime();
		if (var4 == 1)
		{
			var4 = 0;
			if (var5 == 1 && var2.GetScriptData(5 + 2) > 20)
			{
				var5 = 0;
				AddBriefing("translateBriefingDS_LC_M1001_holdPositionUrgently1", var2.GetName());
			}
			if (var6 == 1 && var2.GetScriptData(5 + 3) > 20)
			{
				var6 = 0;
				AddBriefing("translateBriefingDS_LC_M1001_holdPositionUrgently2", var2.GetName());
			}
			if (var7 == 1 && var2.GetScriptData(5 + 4) > 5)
			{
				var7 = 0;
				AddBriefing("translateBriefingDS_LC_M1001_holdPositionMainBaseUrgently", var2.GetName());
			}
			if (var2.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedDS_LC_M1001_holdOneBase", var2.GetName());
				return State8, 50;
			}
			if (var1.GetNumberOfBuildings() == 0)
			{
				SetGoalState(1, 1);
				AddBriefing("translateAccomplishedDS_LC_M1001_defeatedEnemyWithoutHelp", var2.GetName());
				return State9, 50;
			}
		}
		if (loc0 > 0)
		{
			SetConsoleText("translateEDHelp", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State6, 100;
	}
	
	state State10
	{
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		var2.DelayedLookAt(GetPointX(0), GetPointY(0), 17, 128, 20, 0, 100, 0);
		
		return State11, 100;
	}
	
	state State11
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingDS_LC_M1001_SupportArrived", var2.GetName());
		
		return State12, 100;
	}
	
	state State12
	{
		unitex loc0;
		unitex loc1;
		unitex loc2;
		int loc3;
		int loc4;
		
		loc4 = 0;
		for (loc3 = 0; loc3 < 3; loc3 = loc3 + 1)
		{
			loc0 = var2.GetScriptUnit(loc3);
			if (loc0 != null && FUN_0000010B(loc0.GetLocationX(), loc0.GetLocationY()) == 1)
			{
				loc4 = loc4 + 1;
			}
		}
		if (loc4 > 0)
		{
			return State13, 50;
		}
		return State12, 50;
	}
	
	state State13
	{
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		var2.DelayedLookAt(GetPointX(39) + 3, GetPointY(39), 17, 192, 20, 0, 50, 0);
		return State14, 50;
	}
	
	state State14
	{
		var2.DelayedLookAt(GetPointX(39) - 1, GetPointY(39), 17, 192, 20, 0, 300, 1);
		return State15, 300;
	}
	
	state State15
	{
		var2.DelayedLookAt(GetPointX(16), GetPointY(16) + 5, 17, 192, 20, 0, 100, 1);
		ShowArea(var2.GetIFF(), GetPointX(20), GetPointY(20), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
		var9 = 1;
		return State16, 20;
	}
	
	state State16
	{
		var9 = var9 + 1;
		ShowArea(var2.GetIFF(), GetPointX(20), GetPointY(20), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		if (var9 > 5)
		{
			var9 = -20;
			var2.DelayedLookAt(GetPointX(20), GetPointY(20), 17, 64, 20, 0, 600, 0);
			var9 = 1;
			return State17, 20;
		}
		return State16, 20;
	}
	
	state State17
	{
		var9 = var9 + 1;
		ShowArea(var2.GetIFF(), GetPointX(20), GetPointY(20), 0, 40, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		if (var9 > 30)
		{
			var9 = -20;
			return State18, 20;
		}
		return State17, 20;
	}
	
	state State18
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		SetConsoleText("");
		SetGoalState(1, 1);
		AddBriefing("translateAccomplishedDS_LC_M1001_holdOneBase", var2.GetName());
		return State9, 20;
	}
	
	state State7
	{
		return State7, 500;
	}
	
	state State8
	{
		EnableNextMission(9, 2);
		EndMission(0);
	}
	
	state State9
	{
		SetConsoleText("");
		EnableNextMission(9, 4);
		EndMission(0);
	}
	
	event Timer0()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		
		
		SetTimer(0, GetMissionTime() + 8000);
		
		loc0 = var1.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc1 = var2.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc1 - loc0;
		
		if (loc2 < 0)
		{
			loc2 = 10;
		}
		
		if (GetDifficultyLevel() == 0)
		{
			loc2 = loc2 + 15;
		}
		if (GetDifficultyLevel() == 1)
		{
			loc2 = loc2 + 25;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc2 = loc2 + 45;
		}
		
		loc2 = loc2 / 4;
		
		if (loc2 > 14)
		{
			loc2 = 14;
		}
		
		for (loc3 = 0; loc3 < loc2; loc3 = loc3 + 1)
		{
			var1.CreateUnitEx(GetPointX(var10), GetPointY(var10), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSBANNER", null, 3);
			var1.CreateUnitEx(GetPointX(var10), GetPointY(var10), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSWSH3", null, 3);
			var1.CreateUnitEx(GetPointX(var11), GetPointY(var11), 0, null, "UCSUBL2", "UCSWBHC2", "UCSWSSR3", "UCSBANNER", null, 3);
			var1.CreateUnitEx(GetPointX(var11), GetPointY(var11), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", "UCSWSH3", null, 3);
		}
		
		var1.Attack(GetPointX(var8), GetPointY(var8), 0);
	}
	
	event Timer1()
	{
		int loc0;
		unitex loc1;
		
		SetTimer(1, GetMissionTime() + 15000);
		
		for (loc0 = 0; loc0 < 5; loc0 = loc0 + 1)
		{
			loc1 = var2.CreateUnitEx(var3.GetStartingPointX(), var3.GetStartingPointY(), 0, null, "EDUHT1", "EDWHC2", null, "EDBANNER", null, 2);
			loc1 = var2.CreateUnitEx(var3.GetStartingPointX(), var3.GetStartingPointY(), 0, null, "EDUHT1", "EDWHC2", null, "EDWSR3", null, 2);
			SetConsoleText("translateSupportArrived");
		}
		SetConsoleText("translateSupportArrived");
		
		SetTimer(6, GetMissionTime() + 600);
	}
	
	event Timer2()
	{
		unitex loc0;
		int loc1;
		
		var0.EnableAI(0);
		
		for (loc1 = 0; loc1 < 8; loc1 = loc1 + 1)
		{
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDBANNER", "EDSCREAMER3", 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(40), GetPointY(40), 0);
			loc0.CommandHoldPosition();
			loc0.EndRecord();
			loc0.ExecuteRecord();
			
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUHT3", "EDWHC2", null, "EDWSR3", null, 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(41), GetPointY(41), 0);
			loc0.CommandHoldPosition();
			loc0.EndRecord();
			loc0.ExecuteRecord();
			
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUBT2", "EDWHC2", "EDWHC2", "EDBANNER", "EDSCREAMER3", 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(41), GetPointY(41), 0);
			loc0.CommandHoldPosition();
			loc0.EndRecord();
			loc0.ExecuteRecord();
			
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUHT3", "EDWHC2", null, "EDWSR3", null, 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(41), GetPointY(41), 0);
			loc0.CommandHoldPosition();
			loc0.EndRecord();
			loc0.ExecuteRecord();
		}
		
		SetTimer(2, 0);
		SetTimer(1, 0);
		SetTimer(0, 0);
		SetTimer(3, 0);
		SetTimer(4, 0);
		SetTimer(5, 0);
		SetTimer(7, GetMissionTime() + 400);
	}
	
	event Timer3()
	{
		int loc0;
		
		SetTimer(3, GetMissionTime() + 6000);
		loc0 = Rand(8);
		loc0 = loc0 + 4;
		var8 = loc0;
		
		var1.Attack(GetPointX(loc0), GetPointY(loc0), 0);
	}
	
	event Timer4()
	{
		var1.EnableAI(1);
		var1.Attack(GetPointX(var8), GetPointY(var8), 0);
		SetTimer(4, 0);
	}
	
	event Timer5()
	{
		int loc0;
		
		loc0 = Rand(6);
		loc0 = loc0 + 9;
		var8 = loc0;
		var10 = 15;
		
		var1.Attack(GetPointX(loc0), GetPointY(loc0), 0);
		
		SetTimer(3, 0);
		SetTimer(5, GetMissionTime() + 8000);
	}
	
	event Timer6()
	{
		SetConsoleText("");
		SetTimer(6, 0);
	}
	
	event Timer7()
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		for (loc1 = 0; loc1 < 3; loc1 = loc1 + 1)
		{
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUBT2", "EDWHR1", "EDWHR1", null, null, 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(39), GetPointY(39), 0);
			loc0.CommandHoldPosition();
			loc0.CommandAttackOnPoint(GetPointX(16 + loc1), GetPointY(16 + loc1), 0);
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(0), GetPointY(0), 0);
			loc0.EndRecord();
			loc0.ExecuteRecord();
			
			var2.SetScriptUnit(loc1, loc0);
		}
		
		
		for (loc1 = 1; loc1 < 7; loc1 = loc1 + 1)
		{
			loc2 = loc1 * 3;
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUBT2", "EDWHR1", "EDWHR1", null, null, 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(39) + loc1, GetPointY(39), 0);
			loc0.CommandHoldPosition();
			loc0.CommandAttackOnPoint(GetPointX(16 + loc2), GetPointY(16 + loc2), 0);
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(0), GetPointY(0), 0);
			loc0.EndRecord();
			loc0.ExecuteRecord();
			
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUBT2", "EDWHR1", "EDWHR1", null, null, 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(39), GetPointY(39) + loc1, 0);
			loc0.CommandHoldPosition();
			loc0.CommandAttackOnPoint(GetPointX(16 + loc2 + 1), GetPointY(16 + loc2 + 1), 0);
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(0), GetPointY(0), 0);
			loc0.EndRecord();
			loc0.ExecuteRecord();
			
			loc0 = var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "EDUBT2", "EDWHR1", "EDWHR1", null, null, 3);
			loc0.BeginRecord();
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(39) + loc1, GetPointY(39) + loc1, 0);
			loc0.CommandHoldPosition();
			loc0.CommandAttackOnPoint(GetPointX(16 + loc2 + 2), GetPointY(16 + loc2 + 2), 0);
			loc0.CommandHoldPosition();
			loc0.CommandMove(GetPointX(0), GetPointY(0), 0);
			loc0.EndRecord();
			loc0.ExecuteRecord();
		}
		
		SetTimer(7, 0);
		state State10;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var4 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		int loc0;
		int loc1;
		
		var4 = 1;
		
		loc1 = 0;
		loc0 = 0;
		
		if(uBuilding.GetIFFNumber() == var2.GetIFFNumber())
		{
			while (loc1 == 0 && loc0 < 4)
			{
				loc0 = loc0 + 1;
				loc1 = FUN_00000051(uBuilding.GetLocationX(), uBuilding.GetLocationY(), loc0);
			}
			
			if (loc1 == 1)
			{
				var2.SetScriptData( 5 + loc0, var2.GetScriptData(5 + loc0) + 1);
			}
		}
	}
}