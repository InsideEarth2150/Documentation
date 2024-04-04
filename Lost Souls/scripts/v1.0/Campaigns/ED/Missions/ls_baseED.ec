mission "translateCampaignLS_BaseED"
{
	player var0;
	
	state State0;
	state State1;
	state State2;
	state State3;
	state State4;
	
	state State0
	{
		var0 = GetPlayer(2);
		var0.SetMoney(30000);
		
		
		RegisterGoal(0, "translateCampaignGoal_LS_ED_supportStartSpaceShuttle");
		RegisterGoal(1, "translateCampaignGoal_LS_ED_preventStartSpaceShuttle");
		RegisterGoal(2, "translateCampaignGoal_LS_ED_spyLc");
		
		var0.SetMilitaryUnitsLimit(200000);
		var0.EnableCommand(commandSoldBuilding, 1);
		var0.AddResearch("RES_MISSION_PACK1_ONLY");
		var0.AddResearch("RES_ED_WCH2");
		var0.AddResearch("RES_ED_ACH2");
		var0.AddResearch("RES_ED_WCA2");
		var0.AddResearch("RES_ED_WSL1");
		var0.AddResearch("RES_ED_WSL2");
		var0.AddResearch("RES_ED_WSL3");
		var0.EnableResearch("RES_ED_WSI1", 0);
		var0.EnableResearch("RES_ED_WSR1", 0);
		var0.EnableResearch("RES_EDWAA1", 0);
		var0.EnableResearch("RES_EDWAN1", 0);
		var0.EnableResearch("RES_EDWEQ1", 0);
		var0.EnableResearch("RES_ED_WHC1", 0);
		var0.EnableResearch("RES_ED_WMR1", 0);
		var0.EnableResearch("RES_ED_AMR1", 0);
		var0.EnableResearch("RES_ED_WHR1", 0);
		var0.EnableResearch("RES_ED_WHL1", 0);
		var0.EnableResearch("RES_ED_WSI1", 0);
		var0.EnableResearch("RES_ED_AB1", 0);
		var0.EnableResearch("RES_ED_ART", 0);
		var0.AddResearch("RES_MCH2");
		var0.AddResearch("RES_MCH3");
		var0.AddResearch("RES_MCH4");
		var0.AddResearch("RES_ED_MSC2");
		var0.AddResearch("RES_ED_MSC3");
		var0.AddResearch("RES_ED_MSC4");
		var0.EnableResearch("RES_ED_MHC2", 0);
		var0.EnableResearch("RES_MSR2", 0);
		var0.EnableResearch("RES_MMR2", 0);
		var0.EnableResearch("RES_ED_MHR2", 0);
		var0.EnableResearch("RES_ED_MB2", 0);
		var0.AddResearch("RES_ED_UST2");
		var0.AddResearch("RES_ED_UST3");
		var0.AddResearch("RES_ED_UMT1");
		var0.AddResearch("RES_ED_UMT2");
		var0.AddResearch("RES_ED_UMT3");
		var0.EnableResearch("RES_ED_UA11", 0);
		var0.EnableResearch("RES_ED_UA21", 0);
		var0.EnableResearch("RES_ED_UA22", 0);
		var0.EnableResearch("RES_ED_UMW1", 0);
		var0.EnableResearch("RES_ED_UMI1", 0);
		var0.EnableResearch("RES_EDUUT", 0);
		var0.EnableResearch("RES_EDUSTEALTH", 0);
		var0.EnableResearch("RES_ED_UOH2", 0);
		var0.EnableResearch("RES_ED_BC1", 0);
		var0.EnableResearch("RES_ED_USM1", 0);
		var0.EnableResearch("RES_ED_USM2", 0);
		var0.EnableResearch("RES_ED_USS2", 0);
		var0.EnableResearch("RES_ED_USS3", 0);
		var0.EnableResearch("RES_ED_UHW1", 0);
		var0.EnableResearch("RES_ED_UHT1", 0);
		var0.EnableResearch("RES_ED_UBT1", 0);
		var0.EnableResearch("RES_ED_UHS1", 0);
		var0.EnableResearch("RES_ED_UHS1", 0);
		var0.EnableResearch("RES_ED_UA31", 0);
		var0.EnableResearch("RES_ED_UA41", 0);
		var0.EnableResearch("RES_ED_BMD", 0);
		var0.EnableResearch("RES_ED_BHD", 0);
		var0.EnableResearch("RES_ED_RepHand", 0);
		var0.EnableResearch("RES_ED_RepHand2", 0);
		var0.EnableResearch("RES_ED_SCR", 0);
		var0.AddResearch("RES_ED_SGen");
		var0.AddResearch("RES_ED_MGen");
		var0.EnableResearch("RES_ED_HGen", 0);
		var0.EnableResearch("RES_ED_BC1", 0);
		var0.EnableResearch("RES_EDBHT", 0);
		
		var0.EnableBuilding("EDBBPP", 1);
		var0.EnableBuilding("EDBBA", 1);
		var0.EnableBuilding("EDBFA", 1);
		var0.EnableBuilding("EDBWB", 0);
		var0.EnableBuilding("EDBAB", 1);
		var0.EnableBuilding("EDBBRE", 1);
		var0.EnableBuilding("EDBMI", 1);
		var0.EnableBuilding("EDBTC", 0);
		var0.EnableBuilding("EDBST", 1);
		var0.EnableBuilding("EDBPB", 1);
		var0.EnableBuilding("EDBBT", 1);
		var0.EnableBuilding("EDBRC", 1);
		var0.EnableBuilding("EDBHQ", 0);
		var0.EnableBuilding("EDBRA", 1);
		var0.EnableBuilding("EDBEN1", 0);
		var0.EnableBuilding("EDBLZ", 0);
		
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		var0.LookAt(var0.GetStartingPointX() - 5, var0.GetStartingPointY() + 5, 20, 128, 10, 0);
		var0.DelayedLookAt(var0.GetStartingPointX(), var0.GetStartingPointY(), 20, 0, 10, 0, 100, 1);
		
		return State2, 100;
	}
	
	state State2
	{
		EnableGoal(0, 1);
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateCampaign_DS_LC_supportStartSpaceShuttle", var0.GetName());
		
		return State1, 10;
	}
	
	state State3
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		CallCamera();
		SetGoalState(0, 1);
		EnableGoal(1, 1);
		AddBriefing("translateCampaign_DS_LC_preventStartSpaceShuttle", var0.GetName());
		
		return State1, 10;
	}
	
	state State4
	{
		EnableInterface(1);
		EnableCameraMovement(1);
		CallCamera();
		SetGoalState(1, 2);
		EnableGoal(2, 1);
		AddBriefing("translateCampaign_DS_LC_spyLC", var0.GetName());
		
		return State1, 10;
	}
	
	state State1
	{
		return State1, 50;
	}
	
	event CustomEvent0(int nParam1, int nParam2, int nParam3, int nParam4)
	{
		if (nParam1 == 3)
		{
			var0.AddMoney(nParam2);
		}
		if (nParam1 == 1)
		{
			state State3;
		}
		if (nParam1 == 2)
		{
			state State4;
		}
	}
}