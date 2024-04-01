mission "translatemissionLS_UCS_M02"
{
	unitex var0;
	
	int var1;
	int var2;
	int var3;
	int var4;
	
	player var5;
	player var6;
	player var7;
	
	
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
		unitex loc0;
		int loc1;
		
		var5 = GetPlayer(3);
		var6 = GetPlayer(2);
		var7 = GetPlayer(1);
		
		var4 = 10;
		RegisterGoal(0, "translateGoalLS_UCS_M02_survivePC");
		
		var6.EnableStatistics(0);
		var5.LoadScript("single\\singleMedium");
		
		var7.SetMoney(4000);
		var7.EnableAIFeatures(aiEnabled, 0);
		var7.EnableCommand(commandSoldBuilding, 1);
		
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
		var7.EnableBuilding("UCSBEN1", 1);
		var7.EnableBuilding("UCSBEN2", 1);
		var7.EnableBuilding("UCSBTB", 0);
		var7.EnableBuilding("UCSBSH", 0);
		var7.EnableBuilding("UCSBTE", 0);
		var7.EnableBuilding("UCSBRC", 0);
		var7.EnableBuilding("UCSBWB", 0);
		var7.EnableBuilding("UCSBPB", 0);
		var7.EnableBuilding("UCSBPC", 0);
		var7.EnableBuilding("UCSBHQ", 0);
		var7.EnableBuilding("UCSBSD", 0);
		var7.EnableBuilding("UCSBSS", 0);
		var7.EnableBuilding("UCSBLZ", 0);
		var7.EnableBuilding("UCSBUC", 0);
		var7.EnableBuilding("UCSBHT", 0);
		var7.EnableBuilding("UCSBART", 0);
		
		var5.EnableBuilding("LCBBF", 1);
		var5.EnableBuilding("LCBPP2", 1);
		var5.EnableBuilding("LCBAB", 1);
		var5.EnableBuilding("LCBDE", 0);
		var5.EnableBuilding("LCBHQ", 0);
		var5.EnableBuilding("LCBSB", 0);
		var5.EnableBuilding("WLASER", 0);
		var5.EnableBuilding("LCBLZ", 0);
		var5.EnableBuilding("LCBNE", 0);
		var5.EnableBuilding("LCBUC", 0);
		var5.EnableBuilding("LCBCC", 0);
		var5.EnableBuilding("LCBRC", 0);
		var5.EnableBuilding("LCBGA", 0);
		var5.EnableBuilding("LCBPP", 0);
		var5.EnableBuilding("LCBBA", 0);
		var5.EnableBuilding("LCBART", 0);
		var5.EnableBuilding("LCBEN1", 0);
		var5.EnableBuilding("LCBEN2", 0);
		var5.EnableBuilding("LCBSD", 0);
		var5.EnableBuilding("LCBWC", 0);
		var5.EnableBuilding("LCBSS", 0);
		var5.EnableBuilding("LCBSR", 0);
		
		var5.AddResearch("RES_LC_WARTILLERY");
		var5.AddResearch("RES_LC_WAS1");
		var5.AddResearch("RES_LC_WAS2");
		
		var0 = var7.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSU4L1", "UCSWDHP2", "UCSBANNER", null, null, 3);
		var0.SetUnitName("translateHeroName");
		
		var2 = 0;
		var1 = 0;
		var3 = 0;
		
		for (loc1 = 0; loc1 < 7; loc1 = loc1 + 1)
		{
			loc0 = var5.CreateUnitEx(GetPointX(1), GetPointY(1), 0, null, "LCUCR3", "LCWMR3", null, null, null, 1);
			loc0.CommandMove(GetPointX(2), GetPointY(2), 0);
		}
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var7.LookAt(var7.GetStartingPointX(), var7.GetStartingPointY(), 20, 128, 10, 0);
		var7.DelayedLookAt(GetPointX(2), GetPointY(2) + 5, 20, 128, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		var5.SetNumberOfOffensiveTankPlatoons(10);
		var5.SetNumberOfOffensiveHelicopterPlatoons(2);
		var5.SetMaxTankPlatoonSize(10);
		var5.SetNumberOfDefensiveTankPlatoons(0);
		var5.SetMaxAttackFrequency(0);
		var5.SetMaxHelicopterPlatoonSize(6);
		
		var5.EnableAIFeatures(aiRejectAlliance, 1);
		var5.EnableAIFeatures(aiUpgradeCannons, 0);
		var5.EnableAIFeatures(aiBuildBuilders, 0);
		var5.EnableAIFeatures(aiBuildRepairers, 0);
		var5.EnableAIFeatures(aiEnabled, 1);
		var5.EnableAIFeatures(aiBuildBuildings, 1);
		var5.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var5.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var5.EnableAIFeatures(aiControlSupplyUnits, 1);
		var5.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var5.EnableAIFeatures(aiBuildTanks, 0);
		var5.EnableAIFeatures(aiBuildHelicopters, 0);
		var5.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var5.EnableAIFeatures(aiDefenseTowers, 1);
		var5.EnableAIFeatures(aiControlDefense, 0);
		var5.EnableAIFeatures(aiControlOffense, 0);
		var5.EnableAIFeatures(aiControlMiningUnits, 0);
		var5.EnableAIFeatures(aiBuildMiningUnits, 0);
		var5.EnableAIFeatures(aiBuildMiningBuildings, 0);
		var5.EnableAI(0);
		
		return State2, 400;
	}
	
	state State2
	{
		var7.DelayedLookAt(var7.GetStartingPointX(), var7.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State3, 80;
	}
	
	state State3
	{
		ShowVideo("UCS_M02");
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_UCS_M02_survivePC", var7.GetName());
		SetTimer(0, 20000);
		SetTimer(1, 25000);
		SetTimer(2, 40000);
		SetTimer(3, 60000);
		SetTimer(4, 6000);
		
		return State4, 1;
	}
	
	state State4
	{
		int loc0;
		
		SetConsoleText("");
		
		loc0 = 60000 - GetMissionTime();
		if (var1 == 1 && var5.GetNumberOfUnits() > 0)
		{
			AddBriefing("translateBriefingLS_UCS_M02_killAllEnemies", var7.GetName());
			return State5, 20;
		}
		
		if (var1 == 1 && var5.GetNumberOfUnits() == 0)
		{
			AddBriefing("translateAccomplishedLS_UCS_M02_all", var7.GetName());
			EnableNextMission(2, 1);
			EndMission(1);
		}
		
		if (loc0 > 0)
		{
			SetConsoleText("translateDefendNPC", loc0 / 16383, loc0 % 16383 / 683);
		}
		return State4, 100;
	}
	
	state State5
	{
		if (var1 == 1 && var2 == 1)
		{
			var1 = 0;
			if (var5.GetNumberOfUnits() <= 10)
			{
				SetGoalState(0, 1);
				AddBriefing("translateAccomplishedLS_UCS_M02_all", var7.GetName());
				EnableNextMission(2, 1);
				EndMission(1);
				return State6, 100;
			}
		}
		return State5, 100;
	}
	
	state State7
	{
		EnableNextMission(2, 2);
		EndMission(0);
	}
	
	state State6
	{
		return State6, 500;
	}
	
	event Timer0()
	{
		AddBriefing("translateInfoLS_UCS_M02_earthquake", var7.GetName());
		SetTimer(0, 0);
	}
	
	event Timer1()
	{
		int loc0;
		unitex loc1;
		
		for (loc0 = 0; loc0 < 6; loc0 = loc0 + 1)
		{
			loc1 = var5.CreateUnitEx(GetPointX(5), GetPointY(5), 1, null, "LCUCR3", "LCWEQ2", null, null, null, 1);
			loc1.CommandAttackOnPoint(GetPointX(6), GetPointY(6), 1);
		}
		for (loc0 = 0; loc0 < 6; loc0 = loc0 + 1)
		{
			loc1 = var5.CreateUnitEx(GetPointX(5), GetPointY(5), 1, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 1);
			loc1.CommandMove(GetPointX(6), GetPointY(6), 1);
		}
		SetTimer(1, 0);
	}
	
	event Timer2()
	{
		var5.EnableBuilding("LCBART", 1);
		var5.SetMoney(200000);
		SetTimer(2, 0);
	}
	
	event Timer3()
	{
		var1 = 1;
		SetTimer(3, 0);
		SetTimer(4, 0);
	}
	
	event Timer4()
	{
		int loc0;
		int loc1;
		int loc2;
		unitex loc3;
		
		var3 = var3 + 1;
		
		loc0 = var7.GetNumberOfUnits() - 25;
		
		if (loc0 < 0)
		{
			loc0 = 3 + var3;
		}
		loc1 = loc0 / 2 + var3;
		
		if (var3 < 3)
		{
			for (loc2 = 0; loc2 < loc1; loc2 = loc2 + 1)
			{
				loc3 = var5.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
				loc3.CommandMove(GetPointX(4), GetPointY(4), 0);
			}
		}
		else if (var3 >= 3 && var3 < 8)
		{
			for (loc2 = 0; loc2 < loc1 / 2; loc2 = loc2 + 1)
			{
				loc3 = var5.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
				loc3.CommandMove(GetPointX(4), GetPointY(4), 0);
				loc3 = var5.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUBO2", "LCWAMR2", null, null, null, 3);
				loc3.CommandMove(GetPointX(4), GetPointY(4), 0);
			}
		}
		else
		{
			for (loc2 = 0; loc2 < loc1 / 2; loc2 = loc2 + 1)
			{
				loc3 = var5.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
				loc3.CommandMove(GetPointX(4), GetPointY(4), 0);
				loc3 = var5.CreateUnitEx(GetPointX(3), GetPointY(3), 0, null, "LCUHT1", "LCWHC1", null, null, null, 3);
				loc3.CommandMove(GetPointX(4), GetPointY(4), 0);
			}
		}
	}
	
	event EndMission()
	{
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var0 == uUnit || var0 == null)
		{
			var0 = null;
			AddBriefing("translateFailedLS_UCS_M02_survivePC", var7.GetName());
			state State7;
			return;
		}
		if (var1 == 1)
		{
			var2 = 1;
		}
	}

}