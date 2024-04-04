mission "translateMissionDS_LC_M0801"
{
	player var0;
	player var1;
	
	int var2;
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
	
	
	state State0
	{
		var0 = GetPlayer(1);
		var1 = GetPlayer(3);
	
		RegisterGoal(0, "translateGoalDS_LC_M0801_defendBase");
		RegisterGoal(1, "translateGoalDS_LC_M0801_destroyAll");
		
		if(GetDifficultyLevel() == 0)
		{
			var1.SetMoney(20000);
			var0.LoadScript("single\\singleHard");
		}
		if(GetDifficultyLevel() == 1)
		{
			var1.SetMoney(10000);
			var0.LoadScript("single\\singleHard");
		}
		if(GetDifficultyLevel() == 2)
		{
			var1.SetMoney(5000);
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
		var1.EnableBuilding("LCBLZ", 1);
		var1.EnableBuilding("WLASER", 1);
		var1.EnableBuilding("LCBNE", 1);
		var1.EnableBuilding("LCBUC", 1);
		var1.EnableBuilding("LCBCC", 1);
		var1.EnableBuilding("LCBEN1", 1);
		var1.EnableBuilding("LCBEN2", 1);
		var1.EnableBuilding("LCBRC", 0);
		var1.EnableBuilding("LCBSR", 0);
		var1.EnableBuilding("LCBGA", 1);
		var1.EnableBuilding("LCBSD", 0);
		var1.EnableBuilding("LCBWC", 0);
		var1.EnableBuilding("LCBSS", 0);
		var1.EnableBuilding("LCBPP2", 1);
		var1.EnableBuilding("LCBART", 1);
		
		CallCamera();
		SetConsoleText("translateIncomingEvent");
		EnableInterface(0);
		EnableCameraMovement(0);
		
		var1.LookAt(var1.GetStartingPointX(), var1.GetStartingPointY() - 10, 10, 0, 10, 0);
		var1.DelayedLookAt(var1.GetStartingPointX(), var1.GetStartingPointY(), 15, 0, 30, 0, 30, 1);
		return State1, 1;
	}
	
	state State1
	{
		unitex loc0;
		int loc1;
		int loc2;
		
		
		var0.SetNumberOfOffensiveHelicopterPlatoons(2);
		var0.SetNumberOfOffensiveTankPlatoons(10);
		var0.SetMaxHelicopterPlatoonSize(8);
		var0.SetMaxTankPlatoonSize(10);
		var0.SetNumberOfDefensiveTankPlatoons(0);
		var0.SetNumberOfDefensiveHelicopterPlatoons(0);
		var0.SetMaxAttackFrequency(0);
		
		var3 = 0;
		var2 = 0;
		var4 = 1;
		var6 = 0;
		
		ShowVideo("LC_M08");
		
		return State2, 30;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M0801_defendBase", var1.GetName());
		
		var0.EnableAIFeatures(aiControlOffense, 1);
		var0.EnableAI(1);
		var5 = 3;
		
		var0.RussianAttack(GetPointX(var5), GetPointY(var5), 0);
		
		var6 = var6 + 1;
		SetTimer(1, 8000);
		SetTimer(2, 20000);
		SetTimer(4, 90000);
		
		return State3, 10;
	}
	
	state State3
	{
		int loc0;
		
		SetConsoleText("");
		loc0 = 90000 - GetMissionTime();
		
		if (var2 == 1)
		{
			var2 = 0;
			
			if (var1.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedDS_LC_M0801_defendBase", var1.GetName());
				return State7, 50;
			}
		}
		
		if (loc0 > 0)
		{
			SetConsoleText("translateDurationOfAttack", loc0 / 16383, loc0 % 16383 / 683);
		}
		
		return State3, 200;
	}
	
	state State4
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingDS_LC_M0801_destroyAll", var1.GetName());
		return State5, 200;
	}
	
	state State5
	{
		if (var2 == 1)
		{
			var2 = 0;
			
			if (var1.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 2);
				AddBriefing("translateFailedDS_LC_M0801_defendBase", var1.GetName());
				return State7, 50;
			}
			
			if (var0.GetNumberOfUnits() < 5 && var0.GetNumberOfBuildings() == 0)
			{
				SetGoalState(0, 1);
				SetGoalState(1, 1);
				AddBriefing("translateAccomplishedDS_LC_M0801_all", var1.GetName());
				EnableNextMission(7, 1);
				EnableEndMissionButton(1);
				return State6, 100;
			}
		}
	}
	
	state State6
	{
		return State6, 500;
	}
	
	state State7
	{
		EnableNextMission(7, 2);
		EndMission(0);
	}
	
	event Timer1()
	{
		unitex loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		
		if (var3 == 1)
		{
			SetTimer(1, 0);
			return;
		}
		
		SetTimer(1, 20000 + GetMissionTime());
		
		if (var4 == 1)
		{
			var4 = 0;
			AddBriefing("translateInfoDS_LC_M0801_earthQuake", var1.GetName());
			SetTimer(3, 15000 + GetMissionTime());
		}
		
		loc1 = Rand(2);
		loc3 = loc1 + 10;
		loc2 = loc1 + 12;
		
		for (loc4 = 0; loc4 < 10; loc4 = loc4 + 1)
		{
			loc0 = var0.CreateUnitEx(GetPointX(loc3), GetPointY(loc3), 1, null, "UCSUBL2", "UCSWEQ2", "UCSBANNER", null, null, 3);
			loc0.CommandAttackOnPoint(GetPointX(loc2), GetPointY(loc2), 1);
		}
	}
	
	event Timer2()
	{
		int loc0;
		unitex loc1;
		
		if (var3 == 1)
		{
			SetTimer(2, 0);
			return;
		}
		
		for (loc0 = 0; loc0 < 4; loc0 = loc0 + 1)
		{
			loc1 = var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSUA32", "UCSWAPB2", null, null, null, 0);
			loc1.CommandAttackOnPoint(GetPointX(7), GetPointY(7), 0);
		}
	}
	
	event Timer3()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		unitex loc5;
		
		if (var3 == 1)
		{
			SetTimer(3, 0);
			return;
		}
		
		loc3 = Rand(3);
		loc2 = loc3 + 3;
		loc4 = loc3;
		
		loc1 = var1.GetNumberOfUnits() - var0.GetNumberOfUnits();
		
		if (loc1 < 3)
		{
			loc1 = 3;
		}
		
		if (GetDifficultyLevel() == 0)
		{
			loc1 = loc1 / 3 + var6 / 3;
		}
		if (GetDifficultyLevel() == 1)
		{
			loc1 = loc1 / 2 + var6 / 2;
		}
		if (GetDifficultyLevel() == 2)
		{
			loc1 = loc1 * 3 / 2 + var6;
		}
		
		if (loc4 == 0)
		{
			for (loc0 = 0; loc0 < loc1 / 4; loc0 = loc0 + 1)
			{
				var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSBANNER", null, 3);
				var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUHL3", "UCSWBHP3", null, "UCSWSSR3", null, 3);
				var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUBL2", "UCSWBHP3", "UCSWSH3", "UCSBANNER", null, 3);
				var0.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSUBL2", "UCSWBHP3", "UCSWSH3", "UCSWSSR3", null, 3);
			}
		}
		
		if (loc4 == 1)
		{
			for (loc0 = 0; loc0 < loc1 / 8; loc0 = loc0 + 1)
			{
				var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSU4L3", "UCSWDHP2", "UCSBANNER", null, null, 3);
				var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSU4L3", "UCSWDHP2", "UCSWSSR3", null, null, 3);
				var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSU4L3", "UCSWDHP2", "UCSWSSP2", null, null, 3);
				var0.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "UCSU4L3", "UCSWDHP2", "UCSWSSR3", null, null, 3);
			}
		}
		
		if (loc4 == 2)
		{
			for (loc0 = 0; loc0 < loc1 / 4; loc0 = loc0 + 1)
			{
				var0.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 3);
				var0.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSWSH3", null, 3);
				var0.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", null, null, 3);
				var0.CreateUnitEx(GetPointX(2), GetPointY(2), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", null, null, 3);
			}
		}
		
		var0.Attack(GetPointX(loc2), GetPointY(loc2), 0);
		var6 = var6 + 1;
		
		SetTimer(3, 15000 + GetMissionTime());
	}
	
	event Timer4()
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(1, 1);
		AddBriefing("translateBriefingDS_LC_M0801_destroyAll", var1.GetName());
		var3 = 1;
		
		state State5;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		var2 = 1;
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var2 = 1;
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var1.GetMoney();
		var1.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}