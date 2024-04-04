mission "translateMissionDS_LC_M0101"
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
	
	
	state State0
	{
		var0 = GetPlayer(1);
		var0.EnableStatistics(0);
		
		
		var2 = GetPlayer(3);
		var1 = GetPlayer(2);
		
		RegisterGoal(0, "translateGoalDS_LC_M0101_stopAttack");
		RegisterGoal(1, "translateGoalDS_LC_M0101_defendBase");
		
		if(GetDifficultyLevel() == 0)
		{
			var1.LoadScript("single\\singleEasy");
			var2.SetMoney(6000);
		}
		if(GetDifficultyLevel() == 1)
		{
			var1.LoadScript("single\\singleMedium");
			var2.SetMoney(3000);
		}
		if(GetDifficultyLevel() == 2)
		{
			var1.LoadScript("single\\singleHard");
			var2.SetMoney(1000);
		}
		
		var2.EnableAIFeatures(aiEnabled, 0);
		var2.EnableResearch("RES_LC_ULU3", 1);
		var2.EnableResearch("RES_LC_UMO3", 1);
		var2.EnableResearch("RES_LC_UME3", 1);
		var2.EnableResearch("RES_LC_ACH2", 1);
		var2.EnableResearch("RES_LC_WSR3", 1);
		var2.EnableResearch("RES_LC_ASR2", 1);
		var2.EnableResearch("RES_LC_WSL2", 1);
		var2.EnableResearch("RES_LC_WSS2", 1);
		var2.EnableResearch("RES_LC_MGen", 1);
		var2.EnableResearch("RES_LC_HGen", 1);
		var2.EnableResearch("RES_LC_REG2", 1);
		var2.EnableResearch("RES_LC_REG3", 1);
		var2.EnableResearch("RES_LCUFG1", 1);
		var2.EnableResearch("RES_LCUFG2", 0);
		var2.EnableResearch("RES_LCUUT", 1);
		var2.EnableResearch("RES_MCH2", 1);
		var2.EnableResearch("RES_MSR2", 1);
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
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBSR", 0);
		var2.EnableBuilding("LCBGA", 0);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBPP2", 0);
		var2.EnableBuilding("LCBART", 0);
		var2.EnableBuilding("LCBEN1", 0);
		var2.EnableBuilding("LCBEN2", 0);
		
		var3 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var2.LookAt(var2.GetStartingPointX(), var2.GetStartingPointY() - 30, 20, 128, 10, 0);
		var2.DelayedLookAt(var2.GetStartingPointX(), var2.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		var1.SetNumberOfOffensiveTankPlatoons(10);
		var1.SetMaxTankPlatoonSize(10);
		var1.SetNumberOfDefensiveTankPlatoons(0);
		var1.SetMaxAttackFrequency(0);
		
		ShowVideo("LC_M01");
		return State2, 90;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingDS_LC_M0101_stopAttack", var2.GetName());
		var1.EnableAIFeatures(aiControlOffense, 1);
		var1.EnableAI(1);
		var1.AddToPreferenceList(2);
		var5 = 2;
		var1.RussianAttack(GetPointX(var5), GetPointY(var5), 0);
		return State3, 100;
	}
	
	state State3
	{
		int loc0;
		
		if (var2.GetNumberOfBuildings(12) < 3)
		{
			SetGoalState(0, 2);
			AddBriefing("translateFailedDS_LC_M0101_stopAttack", var2.GetName());
			return State6, 50;
		}
		if (var1.GetNumberOfUnits() == 0)
		{
			SetGoalState(0, 1);
			EnableGoal(1, 1);
			AddBriefing("translateBriefingDS_LC_M0101_defendBase", var2.GetName());
			loc0 = 6000;
			SetTimer(0, GetMissionTime() + loc0);
			return State5, 200;
		}
		return State3, 200;
	}
	
	state State5
	{
		if (var2.GetNumberOfBuildings(12) == 3)
		{
			if(var3 && var1.GetNumberOfUnits(chassisTank) == 0)
			{
				KillArea(var1.GetIFF(), GetRight() / 2, GetBottom() / 2, 0, 200);
				SetGoalState(1, 1);
				AddBriefing("translateAccomplishedDS_LC_M0101_defendBase", var2.GetName());
				EnableNextMission(0, 1);
				EnableEndMissionButton(1);
				return State4;
			}
			return State5, 200;
		}
		SetGoalState(1, 2);
		AddBriefing("translateFailedDS_LC_M0101_defendBase", var2.GetName());
		return State6, 50;
	}
	
	state State6
	{
		EnableNextMission(0, 2);
		EndMission(0);
	}
	
	state State4
	{
		return State4, 500;
	}
	
	event Timer1()
	{
		SetConsoleText("");
		SetTimer(1, 0);
	}
	
	event Timer0()
	{
		int loc0;
		int loc1;
		unitex loc2;
		int loc3;
		
		var5 = Rand(3);
		var4 = var4 + 1;
		
		SetConsoleText("translateAttackWave", var4);
		SetTimer(1, 2000);
		
		if(var4 == 6)
		{
			var3 = 1;
			SetTimer(0, 0);
		}
		
		loc1 = 3;
		if (var4 == 3 || var4 == 6)
		{
			loc1 = 6;
		}
		
		for (loc0 = 0; loc0 < loc1; loc0 = loc0 + 1)
		{
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUOH1", "EDWSL3", null, null, null, 2);
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUOH1", "EDWSR3", null, null, null, 2);
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUST3", "EDWSR3", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUST3", "EDWCA2", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUST3", "EDWCA2", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUST3", "EDWCA2", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "EDUA11", "EDWAR2", null, null, null);
			
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUOH1", "EDWSL3", null, null, null, 2);
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUOH1", "EDWSR3", null, null, null, 2);
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUST3", "EDWSR3", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUST3", "EDWCA2", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUST3", "EDWCA2", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUST3", "EDWCA2", null, null, null);
			loc2 = var1.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "EDUA11", "EDWAR2", null, null, null);
		}
		
		var1.ClearPreferenceList();
		if(var5 == 0)
			var1.AddToPreferenceList(9);
		if(var5 == 1)
			var1.AddToPreferenceList(12);
		if(var5 == 2)
			var1.AddToPreferenceList(23);
		
		var1.RussianAttack(GetPointX(var5), GetPointY(var5), 0);
		loc3 = 6000;
		SetTimer(0, GetMissionTime() + loc3);
	}
	
	event EndMission()
	{
		int loc0;
		loc0 = var2.GetMoney();
		var2.SetMoney(0);
		SendCustomEvent(0, 3, loc0, 0, 0);
	}
}