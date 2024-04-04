mission "translatemissionLS_UCS_M01"
{
	unitex var0;
	
	player var1;
	player var2;
	player var3;
	player var4;
	
	int var5;
	
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
		var2 = GetPlayer(3);
		var3 = GetPlayer(1);
		var4 = GetPlayer(6);
		var1 = GetPlayer(2);
		
		var5 = 10;
		RegisterGoal(0, "translateGoalLS_UCS_M01_getToTunnelEast");
		RegisterGoal(1, "translateGoalLS_UCS_M01_fleeThroughTunnel");
		RegisterGoal(2, "translateGoalLS_UCS_M01_survivePC");
		var2.EnableStatistics(1);
		var3.EnableStatistics(1);
		var1.EnableStatistics(0);
		var4.EnableStatistics(0);
		
		var2.LoadScript("single\\singleMedium");
		
		var3.SetMoney(4000);
		var3.EnableAIFeatures(aiEnabled, 0);
		var3.EnableCommand(commandSoldBuilding, 1);
		
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
		var2.EnableBuilding("LCBEN1", 0);
		var2.EnableBuilding("LCBRC", 0);
		var2.EnableBuilding("LCBEN2", 0);
		var2.EnableBuilding("LCBUC", 0);
		var2.EnableBuilding("LCBCC", 0);
		var2.EnableBuilding("LCBLZ", 0);
		var2.EnableBuilding("LCBART", 0);
		var2.EnableBuilding("LCBSD", 0);
		var2.EnableBuilding("LCBWC", 0);
		var2.EnableBuilding("LCBSS", 0);
		var2.EnableBuilding("LCBSR", 0);
		
		var3.EnableBuilding("UCSBBA", 1);
		var3.EnableBuilding("UCSBFA", 1);
		var3.EnableBuilding("UCSBPP", 1);
		var3.EnableBuilding("UCSBPR", 1);
		var3.EnableBuilding("UCSBET", 1);
		var3.EnableBuilding("UCSBRF", 1);
		var3.EnableBuilding("UCSBAB", 1);
		var3.EnableBuilding("UCSBST", 1);
		var3.EnableBuilding("UCSBBT", 1);
		var3.EnableBuilding("UCSBFO", 1);
		var3.EnableBuilding("UCSBTB", 0);
		var3.EnableBuilding("UCSBEN1", 0);
		var3.EnableBuilding("UCSBEN2", 0);
		var3.EnableBuilding("UCSBSH", 0);
		var3.EnableBuilding("UCSBTE", 0);
		var3.EnableBuilding("UCSBRC", 0);
		var3.EnableBuilding("UCSBWB", 0);
		var3.EnableBuilding("UCSBPB", 0);
		var3.EnableBuilding("UCSBPC", 0);
		var3.EnableBuilding("UCSBHQ", 0);
		var3.EnableBuilding("UCSBSD", 0);
		var3.EnableBuilding("UCSBSS", 0);
		var3.EnableBuilding("UCSBLZ", 0);
		var3.EnableBuilding("UCSBUC", 0);
		var3.EnableBuilding("UCSBHT", 0);
		var3.EnableBuilding("UCSBART", 0);
		
		var0 = var3.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "UCSU4L1", "UCSWDHP2", "UCSBANNER", null, null, 3);
		var0.SetUnitName("translateHeroName");
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var3.LookAt(var3.GetStartingPointX(), var3.GetStartingPointY() - 30, 20, 128, 10, 0);
		var3.DelayedLookAt(var3.GetStartingPointX(), var3.GetStartingPointY(), 20, 0, 10, 0, 80, 1);
		return State1, 1;
	}
	
	state State1
	{
		var2.SetNumberOfOffensiveTankPlatoons(10);
		var2.SetNumberOfOffensiveHelicopterPlatoons(2);
		var2.SetMaxTankPlatoonSize(10);
		var2.SetNumberOfDefensiveTankPlatoons(0);
		var2.SetMaxAttackFrequency(0);
		var2.SetMaxHelicopterPlatoonSize(6);
		
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
		var2.EnableAIFeatures(aiControlOffense, 1);
		var2.EnableAIFeatures(aiControlMiningUnits, 0);
		var2.EnableAIFeatures(aiBuildMiningUnits, 0);
		var2.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var2.EnableAI(1);
		
		var4.EnableAIFeatures(aiEnabled, 0);
		var4.EnableAI(0);
		
		var4.SetNeutral(var2);
		var4.SetNeutral(var3);
		var3.SetNeutral(var4);
		var2.SetNeutral(var4);
		
		ShowVideo("UCS_M01");
		return State2, 80;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		EnableGoal(2, 1);
		AddBriefing("translateBriefingLS_UCS_M01_getToTunnelEast", var3.GetName());
		SetTimer(0, 6000);
		SetTimer(1, 200);
		SetTimer(2, 54000);
		
		return State3, 1;
	}
	
	state State3
	{
		int loc0;
		
		if (var0 != null)
		{
			loc0 = Distance(var0.GetLocationX(), var0.GetLocationY(), GetPointX(1), GetPointY(1));
			if (loc0 < 4)
			{
				EnableGoal(1, 1);
				SetGoalState(0, 1);
				AddBriefing("translateBriefingLS_UCS_M01_fleeThroughTunnel", var3.GetName());
				var5 = 12;
				return State5, 100;
			}
		}
		return State3, 100;
	}
	
	state State5
	{
		int loc0;
		
		loc0 = Distance(var0.GetLocationX(), var0.GetLocationY(), GetPointX(3), GetPointY(3));
		if (loc0 < 4)
		{
			return State6, 10;
		}
		
		if (var3.IsPointLocated(GetPointX(2), GetPointY(2), GetPointZ(2)))
		{
			AddBriefing("translateBriefingLS_UCS_M01_digTunnel", var3.GetName());
			return State6, 100;
		}
		return State5, 100;
	}
	
	state State6
	{
		int loc0;
		
		if (var0 != null && var0.GetLocationZ() == 0)
		{
			loc0 = Distance(var0.GetLocationX(), var0.GetLocationY(), GetPointX(3), GetPointY(3));
			if (loc0 < 4)
			{
				SetGoalState(1, 1);
				SetGoalState(2, 1);
				AddBriefing("translateAccomplishedLS_UCS_M01_all", var3.GetName());
				EnableNextMission(1, 1);
				EndMission(1);
				return State4, 20;
			}
		}
		return State6, 100;
	}
	
	state State7
	{
		EnableNextMission(1, 2);
		EndMission(0);
	}
	
	state State4
	{
		return State4, 500;
	}
	
	event Timer2()
	{
		int loc0;
		unitex loc1;
		
		var2.EnableAI(0);
		
		for (loc0 = 0; loc0 < 10; loc0 = loc0 + 1)
		{
			loc1 = var2.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
			loc1.CommandMove(GetPointX(10), GetPointY(10), 0);
			loc1 = var2.CreateUnitEx(GetPointX(4), GetPointY(4), 0, null, "LCUFG3", "LCWCH2", "LCWCH2", "LCWCH2", "LCWCH2", 3);
			loc1.CommandMove(GetPointX(11), GetPointY(11), 0);
			loc1 = var2.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "LCUCR3", "LCWHL2", null, "LCBANNER", null, 3);
			loc1.CommandMove(GetPointX(12), GetPointY(12), 0);
			loc1 = var2.CreateUnitEx(GetPointX(5), GetPointY(5), 0, null, "LCUFG3", "LCWCH2", "LCWCH2", "LCWCH2", "LCWCH2", 3);
			loc1.CommandMove(GetPointX(13), GetPointY(13), 0);
		}
		
		SetTimer(2, 0);
		SetTimer(0, GetMissionTime() + 10000);
	}
	
	event Timer1()
	{
		int loc0;
		
		SetConsoleText("");
		
		loc0 = 54000 - GetMissionTime();
		if (loc0 > 0)
		{
			SetConsoleText("translateBigAttack", loc0 / 16383, loc0 % 16383 / 683);
		}
	}
	
	event Timer0()
	{
		int loc0;
		
		loc0 = Rand(2) + var5;
		
		var2.EnableAI(1);
		var2.Attack(GetPointX(loc0), GetPointY(loc0), 0);
	}
	
	event EndMission()
	{
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var0 == uUnit || var0 == null)
		{
			var0 = null;
			AddBriefing("translateFailedLS_UCS_M0101_survivePC", var3.GetName());
			state State7;
		}
	}

}