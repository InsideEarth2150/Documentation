mission "translateCampaignDS_BaseLC"
{
	player var0;

	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	
	state State0
	{
		player loc0;
		player loc1;
		
		loc0 = GetPlayer(1);
		loc1 = GetPlayer(2);
		
		RegisterGoal(0, "translateCampaign_DS_LC_goal_secretProject");
		RegisterGoal(1, "translateCampaign_DS_LC_goal_getTechnic");
		RegisterGoal(2, "translateCampaign_DS_LC_goal_protectTechnic");
		
		var0 = GetPlayer(3);
		var0.SetMoney(5000);
		var0.SetMilitaryUnitsLimit(20000);
		var0.EnableCommand(commandSoldBuilding, 1);
		var0.AddResearch("RES_MISSION_PACK1_ONLY");
		loc0.AddResearch("RES_MISSION_PACK1_ONLY");
		loc1.AddResearch("RES_MISSION_PACK1_ONLY");
		var0.AddResearch("RES_LC_ULU1");
		var0.AddResearch("RES_LC_ULU2");
		var0.EnableResearch("RES_LC_ULU3", 0);
		var0.AddResearch("RES_LC_UMO1");
		var0.AddResearch("RES_LC_UMO2");
		var0.EnableResearch("RES_LC_UMO3", 0);
		var0.EnableResearch("RES_LC_UCR1", 0);
		var0.AddResearch("RES_LC_UME1");
		var0.AddResearch("RES_LC_UME2");
		var0.EnableResearch("RES_LC_UME3", 0);
		var0.EnableResearch("RES_LC_UBO1", 0);
		var0.AddResearch("RES_LC_WCH2");
		var0.EnableResearch("RES_LC_ACH2", 0);
		var0.AddResearch("RES_LC_WSR1");
		var0.AddResearch("RES_LC_WSR2");
		var0.EnableResearch("RES_LC_WSR3", 0);
		var0.AddResearch("RES_LC_ASR1");
		var0.EnableResearch("RES_LC_ASR2", 0);
		var0.EnableResearch("RES_LC_WMR1", 0);
		var0.EnableResearch("RES_LC_AMR1", 0);
		var0.AddResearch("RES_LC_WSL1");
		var0.EnableResearch("RES_LC_WSL2", 0);
		var0.EnableResearch("RES_LC_WHL1", 0);
		var0.AddResearch("RES_LC_WSS1");
		var0.EnableResearch("RES_LC_WSS2", 0);
		var0.EnableResearch("RES_LC_WHS1", 0);
		var0.EnableResearch("RES_LC_WAS1", 0);
		var0.AddResearch("RES_LC_BMD");
		var0.EnableResearch("RES_LC_BHD", 0);
		var0.EnableResearch("RES_LC_SOB1", 0);
		var0.AddResearch("RES_LC_SHR1");
		var0.EnableResearch("RES_LC_SHR2", 0);
		var0.AddResearch("RES_LC_SGen");
		var0.EnableResearch("RES_LC_MGen", 0);
		var0.EnableResearch("RES_LC_HGen", 0);
		var0.AddResearch("RES_LC_REG1");
		var0.EnableResearch("RES_LC_REG2", 0);
		var0.EnableResearch("RES_LC_REG3", 0);
		var0.EnableResearch("RES_LCUFG1", 0);
		var0.EnableResearch("RES_LCUSF1", 0);
		var0.EnableResearch("RES_LCUNH", 0);
		var0.EnableResearch("RES_LCUUT", 0);
		var0.EnableResearch("RES_LCCAA1", 0);
		var0.EnableResearch("RES_LCWAN1", 0);
		var0.EnableResearch("RES_LCWAA1", 0);
		var0.EnableResearch("RES_LCWEQ1", 0);
		var0.EnableResearch("RES_LCBPP2", 0);
		var0.AddResearch("RES_LCBNE");
		var0.EnableResearch("RES_LC_ART", 0);
		var0.EnableResearch("RES_LC_BC1", 0);
		var0.EnableResearch("RES_LC_SDIDEF", 0);
		var0.EnableResearch("RES_MCH2", 0);
		var0.EnableResearch("RES_MSR2", 0);
		var0.EnableResearch("RES_MMR2", 0);
		
		var0.EnableBuilding("LCBBF", 1);
		var0.EnableBuilding("LCBPP", 1);
		var0.EnableBuilding("LCBBA", 1);
		var0.EnableBuilding("LCBAB", 1);
		var0.EnableBuilding("LCBDE", 1);
		var0.EnableBuilding("LCBHQ", 1);
		var0.EnableBuilding("LCBSB", 1);
		var0.EnableBuilding("WLASER", 1);
		var0.EnableBuilding("LCBLZ", 1);
		var0.EnableBuilding("LCBNE", 1);
		var0.EnableBuilding("LCBUC", 1);
		var0.EnableBuilding("LCBCC", 1);
		var0.EnableBuilding("LCBRC", 1);
		var0.EnableBuilding("LCBSR", 0);
		var0.EnableBuilding("LCBGA", 0);
		var0.EnableBuilding("LCBSD", 0);
		var0.EnableBuilding("LCBWC", 0);
		var0.EnableBuilding("LCBSS", 0);
		var0.EnableBuilding("LCBPP2", 0);
		var0.EnableBuilding("LCBART", 0);
		var0.EnableBuilding("LCBEN1", 0);
		var0.EnableBuilding("LCBEN2", 0);
		
		CallCamera();
		var0.LookAt(GetPointX(0), GetPointY(0), 20, 0, 10, 0);
		var0.DelayedLookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 20, 128, 10, 0, 80, 1);
		
		return State2, 100;
	}
	
	state State2
	{
		EnableGoal(0, 1);
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateCampaign_DS_LC_introduction", var0.GetName());
		
		return State1, 10;
	}
	
	state State4
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		CallCamera();
		SetGoalState(0, 1);
		EnableGoal(1, 1);
		AddBriefing("translateCampaign_DS_LC_getTechnic", var0.GetName());
		
		return State1, 10;
	}
	
	state State3
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		CallCamera();
		SetGoalState(1, 1);
		EnableGoal(2, 1);
		AddBriefing("translateCampaign_DS_LC_protectTechnic", var0.GetName());
		
		return State1, 10;
	
	}
	
	state State1
	{
		return State1, 50;
	}
	
	event CustomEvent0(int nParam1, int nParam2, int nParam3, int nParam4)
	{
		if (nParam1 == 1)
		{
			state State4;
		}
		if (nParam1 == 2)
		{
			state State3;
		}
		if (nParam1 == 3)
		{
			var0.AddMoney(nParam2);
		}
	}
}