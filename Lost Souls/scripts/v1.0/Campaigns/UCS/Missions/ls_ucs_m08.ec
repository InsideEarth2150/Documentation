mission "translatemissionLS_UCS_M08"
{
	int var0;
	int var1;
	unitex var2;
	unitex var3;
	int var4;
	player var5;
	player var6;
	player var7;
	player var8;
	player var9;
	
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
	
	state State0
	{
		unitex loc0;
		int loc1;
		unitex loc2;
		
		var6 = GetPlayer(2);
		var5 = GetPlayer(3);
		var7 = GetPlayer(5);
		var8 = GetPlayer(1);
		var9 = GetPlayer(7);
		
		RegisterGoal(0, "translateGoalLS_UCS_M08_waitForLC");
		RegisterGoal(1, "translateGoalLS_UCS_M08_survivePC");
		RegisterGoal(2, "translateGoalLS_UCS_M08_surviveFang");
		RegisterGoal(3, "translateGoalLS_UCS_M08_destroyGolan");
		
		var6.EnableStatistics(0);
		var9.EnableStatistics(0);
		
		var5.LoadScript("single\\singleMedium");
		var7.LoadScript("single\\singleHard");
		
		var8.SetMoney(20000);
		var8.EnableMilitaryUnitsLimit(0);
		var8.EnableAIFeatures(aiEnabled, 0);
		var9.EnableAIFeatures(aiEnabled, 0);
		var8.EnableCommand(commandSoldBuilding, 1);
		
		var5.SetMoney(150000);
		var7.SetMoney(9999999);
		
		var8.AddResearch("RES_UCS_ART");
		var8.AddResearch("RES_UCSUUT");
		
		var8.EnableBuilding("UCSBBA", 1);
		var8.EnableBuilding("UCSBFA", 1);
		var8.EnableBuilding("UCSBPP", 1);
		var8.EnableBuilding("UCSBPR", 1);
		var8.EnableBuilding("UCSBET", 1);
		var8.EnableBuilding("UCSBRF", 1);
		var8.EnableBuilding("UCSBAB", 1);
		var8.EnableBuilding("UCSBST", 1);
		var8.EnableBuilding("UCSBBT", 1);
		var8.EnableBuilding("UCSBFO", 1);
		var8.EnableBuilding("UCSBSH", 1);
		var8.EnableBuilding("UCSBHT", 1);
		var8.EnableBuilding("UCSBSD", 1);
		var8.EnableBuilding("UCSBLZ", 0);
		var8.EnableBuilding("UCSBEN1", 0);
		var8.EnableBuilding("UCSBEN2", 0);
		var8.EnableBuilding("UCSBTB", 0);
		var8.EnableBuilding("UCSBTE", 0);
		var8.EnableBuilding("UCSBRC", 0);
		var8.EnableBuilding("UCSBWB", 0);
		var8.EnableBuilding("UCSBPB", 0);
		var8.EnableBuilding("UCSBPC", 0);
		var8.EnableBuilding("UCSBHQ", 0);
		var8.EnableBuilding("UCSBSS", 0);
		var8.EnableBuilding("UCSBUC", 1);
		var8.EnableBuilding("UCSBART", 0);
		
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
		var7.EnableBuilding("UCSBSH", 1);
		var7.EnableBuilding("UCSBLZ", 1);
		var7.EnableBuilding("UCSBHT", 1);
		var7.EnableBuilding("UCSBHQ", 1);
		var7.EnableBuilding("UCSBSD", 1);
		var7.EnableBuilding("UCSBUC", 1);
		var7.EnableBuilding("UCSBART", 1);
		var7.EnableBuilding("UCSBPB", 0);
		var7.EnableBuilding("UCSBPC", 0);
		var7.EnableBuilding("UCSBEN1", 0);
		var7.EnableBuilding("UCSBEN2", 0);
		var7.EnableBuilding("UCSBTB", 0);
		var7.EnableBuilding("UCSBTE", 0);
		var7.EnableBuilding("UCSBRC", 0);
		var7.EnableBuilding("UCSBWB", 0);
		var7.EnableBuilding("UCSBSS", 0);
		
		var9.CopyResearches(var5);
		
		var5.EnableBuilding("LCBBF", 1);
		var5.EnableBuilding("LCBPP", 1);
		var5.EnableBuilding("LCBBA", 1);
		var5.EnableBuilding("LCBAB", 1);
		var5.EnableBuilding("LCBDE", 1);
		var5.EnableBuilding("LCBHQ", 1);
		var5.EnableBuilding("LCBSB", 1);
		var5.EnableBuilding("WLASER", 1);
		var5.EnableBuilding("LCBNE", 1);
		var5.EnableBuilding("LCBGA", 1);
		var5.EnableBuilding("LCBPP2", 1);
		var5.EnableBuilding("LCBART", 1);
		var5.EnableBuilding("LCBSD", 1);
		var5.EnableBuilding("LCBEN1", 0);
		var5.EnableBuilding("LCBRC", 0);
		var5.EnableBuilding("LCBEN2", 0);
		var5.EnableBuilding("LCBUC", 0);
		var5.EnableBuilding("LCBCC", 0);
		var5.EnableBuilding("LCBLZ", 0);
		var5.EnableBuilding("LCBWC", 0);
		var5.EnableBuilding("LCBSS", 0);
		var5.EnableBuilding("LCBSR", 0);
		
		var2 = var8.CreateUnitEx(var8.GetStartingPointX() - 1, var8.GetStartingPointY(), 0, null, "UCSU4L1", "UCSWDHP2", "UCSBANNER", null, null, 3);
		var2.CommandMove(var8.GetStartingPointX(), var8.GetStartingPointY(), 0);
		var2.SetUnitName("translateHeroName");
		
		var0 = 0;
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var8.LookAt(var8.GetStartingPointX(), var8.GetStartingPointY() + 5, 20, 0, 10, 0);
		var8.DelayedLookAt(var8.GetStartingPointX(), var8.GetStartingPointY(), 20, 0, 10, 0, 50, 1);
		return State1, 1;
	}
	
	state State1
	{
		var5.SetNumberOfOffensiveTankPlatoons(2);
		var5.SetNumberOfOffensiveHelicopterPlatoons(0);
		var5.SetMaxTankPlatoonSize(10);
		var5.SetNumberOfDefensiveTankPlatoons(4);
		var5.SetMaxAttackFrequency(0);
		var5.SetMaxHelicopterPlatoonSize(6);
		
		var5.EnableAIFeatures(aiRejectAlliance, 0);
		var5.EnableAIFeatures(aiUpgradeCannons, 1);
		var5.EnableAIFeatures(aiBuildBuilders, 1);
		var5.EnableAIFeatures(aiBuildRepairers, 1);
		var5.EnableAIFeatures(aiEnabled, 1);
		var5.EnableAIFeatures(aiBuildBuildings, 1);
		var5.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var5.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var5.EnableAIFeatures(aiControlSupplyUnits, 1);
		var5.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var5.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var5.EnableAIFeatures(aiDefenseTowers, 1);
		var5.EnableAIFeatures(aiControlDefense, 0);
		var5.EnableAIFeatures(aiControlMiningUnits, 0);
		var5.EnableAIFeatures(aiBuildMiningUnits, 0);
		var5.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var5.EnableAIFeatures(aiBuildHelicopters, 1);
		var5.EnableAIFeatures(aiControlOffense, 0);
		var5.EnableAIFeatures(aiBuildTanks, 0);
		var5.EnableAI(1);
		
		var7.SetNumberOfOffensiveTankPlatoons(10);
		var7.SetNumberOfOffensiveHelicopterPlatoons(0);
		var7.SetMaxTankPlatoonSize(10);
		var7.SetNumberOfDefensiveTankPlatoons(5);
		var7.SetMaxAttackFrequency(0);
		var7.SetMaxHelicopterPlatoonSize(6);
		
		var7.EnableAIFeatures(aiRejectAlliance, 1);
		var7.EnableAIFeatures(aiUpgradeCannons, 1);
		var7.EnableAIFeatures(aiBuildBuilders, 1);
		var7.EnableAIFeatures(aiBuildRepairers, 1);
		var7.EnableAIFeatures(aiEnabled, 1);
		var7.EnableAIFeatures(aiBuildBuildings, 1);
		var7.EnableAIFeatures(aiBuildSupplyBuildings, 1);
		var7.EnableAIFeatures(aiBuildSupplyUnits, 1);
		var7.EnableAIFeatures(aiControlSupplyUnits, 1);
		var7.EnableAIFeatures(aiBuildPowerBuildings, 1);
		var7.EnableAIFeatures(aiBuildMilitaryFactory, 1);
		var7.EnableAIFeatures(aiDefenseTowers, 1);
		var7.EnableAIFeatures(aiControlDefense, 1);
		var7.EnableAIFeatures(aiControlMiningUnits, 1);
		var7.EnableAIFeatures(aiBuildMiningUnits, 1);
		var7.EnableAIFeatures(aiBuildMiningBuildings, 1);
		var7.EnableAIFeatures(aiBuildHelicopters, 1);
		var7.EnableAIFeatures(aiControlOffense, 0);
		var7.EnableAIFeatures(aiBuildTanks, 0);
		var7.EnableAI(0);
		
		var5.SetEnemy(var7);
		var5.ChooseEnemy(var7);
		var5.SetNeutral(var8);
		var9.SetNeutral(var8);
		var7.SetNeutral(var9);
		var9.SetNeutral(var7);
		var8.SetNeutral(var5);
		var8.SetNeutral(var9);
		var7.SetEnemy(var8);
		var7.SetEnemy(var5);
		
		ShowVideo("UCS_M08");
		
		return State2, 50;
	}
	
	state State2
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		EnableGoal(0, 1);
		AddBriefing("translateBriefingLS_UCS_M08_waitForLC", var8.GetName());
		
		return State5, 1;
	}
	
	state State5
	{
		int loc0;
		unitex loc1;
		
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		var3 = var9.CreateUnitEx(GetPointX(0), GetPointY(0), 0, null, "LCUHERO", "LCWHC1", null, null, null, 3);
		var3.SetUnitName("translateFangName");
		var3.BeginRecord();
		var3.CommandHoldPosition();
		var3.CommandMove(GetPointX(0) - 1, GetPointY(0), 0);
		var3.CommandMove(GetPointX(0) - 3, GetPointY(0), 0);
		var3.CommandMove(GetPointX(0) - 8, GetPointY(0), 0);
		var3.CommandMove(GetPointX(0) - 12, GetPointY(0), 0);
		var3.EndRecord();
		var3.ExecuteRecord();
		
		for (loc0 = 1; loc0 < 8; loc0 = loc0 + 1)
		{
			loc1 = var9.CreateUnitEx(GetPointX(loc0), GetPointY(loc0), 0, null, "LCUCU3", "LCWHL2", "LCWHS2", "LCBANNER", null, 3);
			loc1.BeginRecord();
			loc1.CommandHoldPosition();
			loc1.CommandMove(GetPointX(loc0) - 1, GetPointY(loc0), 0);
			loc1.CommandMove(GetPointX(loc0) - 12, GetPointY(loc0), 0);
			loc1.EndRecord();
			loc1.ExecuteRecord();
		}
		var8.LookAt(GetPointX(0), GetPointY(0), 20, 192, 10, 0);
		var8.DelayedLookAt(var8.GetStartingPointX(), var8.GetStartingPointY(), 20, 192, 10, 0, 250, 1);
		ShowArea(var8.GetIFF(), GetPointX(0), GetPointY(0), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		return State3, 250;
	}
	
	state State3
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		SetGoalState(0, 1);
		AddBriefing("translateAccomplishedLS_UCS_M08_waitForLC", var8.GetName());
		var3.CommandHoldPosition();
		var2.CommandHoldPosition();
		
		return State6, 1;
	}
	
	state State6
	{
		int loc0;
		unitex loc1;
		
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		
		for (loc0 = 1; loc0 < 6; loc0 = loc0 + 1)
		{
			loc1 = var7.CreateUnitEx(GetPointX(9), GetPointY(9) - 1, 1, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 1);
			loc1.CommandMove(GetPointX(10), GetPointY(10), 0);
		}
		var8.LookAt(GetPointX(9), GetPointY(9), 20, 128, 10, 0);
		ShowArea(var8.GetIFF(), GetPointX(9), GetPointY(9), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
		var1 = 0;
		
		return State7, 20;
	}
	
	state State7
	{
		int loc0;
		unitex loc1;
		unitex loc2;
		
		var1 = var1 + 1;
		ShowArea(var8.GetIFF(), GetPointX(9), GetPointY(9), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
		if (var1 < 15)
		{
			return State7, 20;
		}
		for (loc0 = 1; loc0 < 10; loc0 = loc0 + 1)
		{
			loc1 = var7.CreateUnitEx(GetPointX(11), GetPointY(11), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 1);
			loc1.BeginRecord();
			loc1.CommandHoldPosition();
			loc2 = GetUnit(GetPointX(14), GetPointY(14), 0);
			loc1.CommandAttack(loc2);
			loc2 = GetUnit(GetPointX(15), GetPointY(15), 0);
			loc1.CommandAttack(loc2);
			loc2 = GetUnit(GetPointX(16), GetPointY(16), 0);
			loc1.CommandAttack(loc2);
			loc1.EndRecord();
			loc1.ExecuteRecord();
		}
		var8.LookAt(GetPointX(11), GetPointY(11), 20, 128, 10, 0);
		var8.DelayedLookAt(GetPointX(13), GetPointY(13), 20, 128, 10, 0, 500, 1);
		ShowArea(var8.GetIFF(), GetPointX(11), GetPointY(11), 0, 20, showAreaPassives |showAreaBuildings | showAreaUnits);
		var1 = 0;
		
		return State8, 20;
	}
	
	state State8
	{
		int loc0;
		unitex loc1;
		
		var1 = var1 + 1;
		ShowArea(var8.GetIFF(), GetPointX(11), GetPointY(11), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var8.GetIFF(), GetPointX(12), GetPointY(12), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		ShowArea(var8.GetIFF(), GetPointX(13), GetPointY(13), 0, 15, showAreaPassives |showAreaBuildings | showAreaUnits);
		
		if (var1 > 50)
		{
			for (loc0 = 1; loc0 < 6; loc0 = loc0 + 1)
			{
				loc1 = var7.CreateUnitEx(GetPointX(8), GetPointY(8), 0, null, "UCSUHL3", "UCSWBHC2", null, "UCSBANNER", null, 1);
				loc1.CommandMove(var8.GetStartingPointX(), var8.GetStartingPointY(), 0);
			}
			var8.LookAt(GetPointX(8), GetPointY(8), 20, 128, 10, 0);
			var8.DelayedLookAt(var8.GetStartingPointX(), var8.GetStartingPointY(), 20, 0, 10, 0, 400, 1);
			ShowArea(var8.GetIFF(), GetPointX(8), GetPointY(8), 0, 10, showAreaPassives |showAreaBuildings | showAreaUnits);
			
			return State4, 400;
		}
		
		return State8, 20;
	}
	
	state State4
	{
		unitex loc0;
		
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		
		var5.EnableAIFeatures(aiControlDefense, 1);
		var5.EnableAI(1);
		var7.EnableAI(1);
		
		var5.SetEnemy(var7);
		var5.ChooseEnemy(var7);
		var8.SetAlly(var5);
		var7.SetEnemy(var8);
		var7.SetEnemy(var5);
		
		loc0 = var3;
		var5.GiveTo(var8, loc0);
		var3 = loc0;
		
		var9.GiveAllUnitsTo(var8);
		
		EnableGoal(1, 1);
		EnableGoal(2, 1);
		EnableGoal(3, 1);
		AddBriefing("translateBriefingLS_UCS_M08_All", var8.GetName());
		
		var4 = 1;
		SetTimer(1, 6000);
		SetTimer(0, 8000);
		SetTimer(3, 60000);
		
		return State9, 1;
	}
	
	state State9
	{
		if (var0 == 1)
		{
			if (var8.GetNumberOfBuildings() == 0 && var8.GetNumberOfUnits() == 0)
			{
				SetGoalState(1, 2);
				AddBriefing("translateFailedLS_UCS_M08_PlayerLostAll", var8.GetName());
				return State11, 20;
			}
		
			if (var4 == 1 && var5.GetNumberOfBuildings() == 0)
			{
				var4 = 0;
				AddBriefing("translateInfoLS_UCS_M08_LcDead", var8.GetName());
			}
			
			if (var7.GetNumberOfBuildings() + var7.GetNumberOfUnits() < 10)
			{
				SetTimer(0, 0);
				SetGoalState(1, 1);
				SetGoalState(2, 1);
				SetGoalState(3, 1);
				AddBriefing("translateAccomplishedLS_UCS_M08_All", var8.GetName());
				SetConsoleText("");
				EnableNextMission(8, 1);
				EndMission(1);
			}
		}
		
		return State9, 100;
	}
	
	state State11
	{
		EnableNextMission(8, 2);
		EndMission(0);
	}
	
	state State10
	{
		return State10, 500;
	}
	
	
	event Timer0()
	{
		int loc0;
		int loc1;
		int loc2;
		int loc3;
		int loc4;
		
		loc0 = Rand(2) + 1;
		
		loc1 = var7.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = var6.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc2 = loc2 + var8.GetNumberOfUnits(chassisTank | chassisAmphibianTank | chassisShip | chassisHelicopter | unitArmed);
		loc3 = loc2 - loc1;
		
		if (loc3 <= 8)
		{
			loc3 = 8;
		}
		
		loc3 = loc3 / 4;
		
		for (loc4 = 0; loc4 < loc3; loc4 = loc4 + 1)
		{
			var7.CreateUnitEx(GetPointX(21), GetPointY(21), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSBANNER", null, 3);
			var7.CreateUnitEx(GetPointX(21), GetPointY(21), 0, null, "UCSUBL2", "UCSWBHP3", "UCSBANNER", "UCSWSH3", null, 3);
			var7.CreateUnitEx(GetPointX(22), GetPointY(22), 0, null, "UCSUBL2", "UCSWBHC2", "UCSWSSR3", "UCSBANNER", null, 3);
			var7.CreateUnitEx(GetPointX(22), GetPointY(22), 0, null, "UCSUBL2", "UCSWBHG2", "UCSWSSR3", "UCSWSH3", null, 3);
		}
		
		var7.Attack(GetPointX(loc0), GetPointY(loc0), 0);
		SetTimer(0, 6000);
	}
	
	event Timer1()
	{
		SetTimer(1, 0);
		var5.EnableAIFeatures(aiControlOffense, 1);
		var5.EnableAIFeatures(aiBuildTanks, 1);
		var7.EnableAIFeatures(aiControlOffense, 1);
		var7.EnableAIFeatures(aiBuildTanks, 1);
	}
	
	event Timer3()
	{
		SetTimer(3, 0);
		AddBriefing("translateBriefingLS_UCS_M08_allowAriGolanMdw", var8.GetName());
		
		var8.EnableBuilding("UCSBART", 1);
		var7.EnableBuilding("UCSBPB", 1);
		var7.EnableBuilding("UCSBPC", 1);
	}
	
	event EndMission()
	{
	}
	
	event BuildingDestroyed(unit uBuilding)
	{
		var0 = 1;
	}
	
	event UnitDestroyed(unit uUnit)
	{
		if (var2 == uUnit || var2 == null)
		{
			var2 = null;
			SetGoalState(1, 2);
			AddBriefing("translateFailedLS_UCS_M08_survivePC", var8.GetName());
			state State11;
			return;
		}
		if (var4 == 1 && (var3 == uUnit || var3 == null))
		{
			var3 = null;
			SetGoalState(2, 2);
			AddBriefing("translateFailedLS_UCS_M08_surviveFang", var8.GetName());
			state State11;
			return;
		}
		var0 = 1;
	}

}