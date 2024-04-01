mission "translateCampaign_ED_BaseLC"
{
	player var0;
	
	state State0;
	state State1;
	
	state State0
	{
		var0 = GetPlayer(3);
		var0.SetMoney(10000);
		var0.EnableAIFeatures(aiBuildTanks,false);
		var0.EnableAIFeatures(aiBuildShips,false);
		var0.EnableAIFeatures(aiBuildHelicopters,false);
		var0.EnableAIFeatures(aiBuildSpecialUnits,false);
		
		var0.AddResearch("RES_MISSION_PACK1_ONLY");
		var0.AddResearch("RES_LC_ULU1");
		var0.AddResearch("RES_LC_ULU2");
		var0.AddResearch("RES_LC_ULU3");
		var0.AddResearch("RES_LC_UMO1");
		var0.AddResearch("RES_LC_UMO2");
		var0.EnableResearch("RES_LC_UMO3", 0);
		var0.AddResearch("RES_LC_UCR1");
		var0.AddResearch("RES_LC_UCR2");
		var0.AddResearch("RES_LC_UCR3");
		var0.EnableResearch("RES_LC_UCU1", 0);
		var0.EnableResearch("RES_LC_UME1", 0);
		var0.AddResearch("RES_LC_WCH2");
		var0.AddResearch("RES_LC_ACH2");
		var0.AddResearch("RES_MCH2");
		var0.AddResearch("RES_MCH3");
		var0.AddResearch("RES_MCH4");
		var0.AddResearch("RES_LC_WSR1");
		var0.AddResearch("RES_LC_WSR2");
		var0.AddResearch("RES_LC_WSR3");
		var0.AddResearch("RES_LC_ASR1");
		var0.AddResearch("RES_LC_ASR2");
		var0.AddResearch("RES_MSR2");
		var0.AddResearch("RES_MSR3");
		var0.AddResearch("RES_MSR4");
		var0.AddResearch("RES_LC_SOB1");
		var0.AddResearch("RES_LC_SOB2");
		var0.AddResearch("RES_LC_SHR1");
		var0.AddResearch("RES_LC_SHR2");
		var0.AddResearch("RES_LC_SHR3");
		var0.AddResearch("RES_LC_SGen");
		var0.AddResearch("RES_LC_MGen");
		var0.AddResearch("RES_LC_HGen");
		var0.AddResearch("RES_LC_REG1");
		var0.AddResearch("RES_LC_REG2");
		var0.AddResearch("RES_LC_REG3");
		var0.EnableResearch("RES_LCUUT", 0);
		var0.EnableResearch("RES_LCWAA1", 0);
		var0.EnableResearch("RES_LCWEQ1", 0);
		
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
		var0.EnableBuilding("LCBGA", 1);
		var0.EnableBuilding("LCBPP2", 1);
		var0.EnableBuilding("LCBEN1", 1);
		var0.EnableBuilding("LCBEN2", 1);
		var0.EnableBuilding("LCBART", 0);
		var0.EnableBuilding("LCBSD", 0);
		var0.EnableBuilding("LCBWC", 0);
		var0.EnableBuilding("LCBSS", 0);
		var0.EnableBuilding("LCBSR", 0);
		
		return State1, 20;
	}
	
	state State1
	{
	}
}