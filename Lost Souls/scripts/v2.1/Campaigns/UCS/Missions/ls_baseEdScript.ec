mission "translateCampaign_UCS_BaseED"
{
	player var0;
	
	state State0;
	state State1;
	
	state State0
	{
		var0 = GetPlayer(2);
		var0.SetMoney(10000);
		var0.EnableAIFeatures(aiBuildTanks,false);
		var0.EnableAIFeatures(aiBuildShips,false);
		var0.EnableAIFeatures(aiBuildHelicopters,false);
		var0.EnableAIFeatures(aiBuildSpecialUnits,false);
		
		var0.AddResearch("RES_MISSION_PACK1_ONLY");
		var0.AddResearch("RES_ED_WCH2");
		var0.AddResearch("RES_ED_ACH2");
		var0.AddResearch("RES_ED_WCA2");
		var0.AddResearch("RES_ED_WSL1");
		var0.AddResearch("RES_ED_WSL2");
		var0.AddResearch("RES_ED_WSL3");
		var0.EnableResearch("RES_ED_WSI1", 0);
		var0.AddResearch("RES_ED_WSR1");
		var0.AddResearch("RES_ED_WSR1");
		var0.AddResearch("RES_ED_WSR1");
		var0.AddResearch("RES_ED_ASR1");
		var0.AddResearch("RES_ED_ASR1");
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
		var0.AddResearch("RES_MSR2");
		var0.AddResearch("RES_MSR3");
		var0.AddResearch("RES_MSR4");
		var0.EnableResearch("RES_MSR2", 0);
		var0.EnableResearch("RES_ED_MHR2", 0);
		var0.EnableResearch("RES_ED_MB2", 0);
		var0.AddResearch("RES_ED_UST2");
		var0.AddResearch("RES_ED_UST3");
		var0.AddResearch("RES_ED_UMT1");
		var0.AddResearch("RES_ED_UMT2");
		var0.AddResearch("RES_ED_UMT3");
		var0.AddResearch("RES_ED_UA11");
		var0.AddResearch("RES_ED_UA12");
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
		
		return State1, 20;
	}
	
	state State1
	{
	}
}