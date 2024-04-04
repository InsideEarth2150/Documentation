mission "translateMissionLC_BaseUCS"
{
	player var0;
	
	state State0;
	state State1;
	
	state State0
	{
		var0 = GetPlayer(1);
		var0.SetMoney(10000);
		var0.EnableAIFeatures(aiBuildTanks,false);
		var0.EnableAIFeatures(aiBuildShips,false);
		var0.EnableAIFeatures(aiBuildHelicopters,false);
		var0.EnableAIFeatures(aiBuildSpecialUnits,false);
		
		var0.EnableResearch("RES_UCS_WCH2", 0);
		var0.EnableResearch("RES_UCS_WSR1", 0);
		var0.EnableResearch("RES_UCS_WASR1", 0);
		var0.EnableResearch("RES_UCS_WSG1", 0);
		var0.EnableResearch("RES_UCS_WHG1", 0);
		var0.EnableResearch("RES_UCS_WMR1", 0);
		var0.EnableResearch("RES_UCS_WSP1", 0);
		var0.EnableResearch("RES_UCS_WHP1", 0);
		var0.EnableResearch("RES_UCS_WAPB1", 0);
		var0.EnableResearch("RES_UCS_WSD", 0);
		var0.EnableResearch("RES_UCS_UML1", 0);
		var0.EnableResearch("RES_UCS_UHL1", 0);
		var0.EnableResearch("RES_UCS_UBL1", 0);
		var0.EnableResearch("RES_UCS_UMI1", 0);
		var0.EnableResearch("RES_UCS_UBS1", 0);
		var0.EnableResearch("RES_UCS_USM1", 0);
		var0.EnableResearch("RES_UCS_UOH2", 0);
		var0.EnableResearch("RES_UCS_UAH1", 0);
		var0.EnableResearch("RES_UCS_GARG1", 0);
		var0.EnableResearch("RES_UCS_BOMBER21", 0);
		var0.EnableResearch("RES_UCS_BOMBER31", 0);
		var0.EnableResearch("RES_MCH2", 0);
		var0.EnableResearch("RES_MSR2", 0);
		var0.EnableResearch("RES_MMR2", 0);
		var0.EnableResearch("RES_UCS_MB2", 0);
		var0.EnableResearch("RES_UCS_MG2", 0);
		var0.EnableResearch("RES_UCS_BMD", 0);
		var0.EnableResearch("RES_UCS_BHD", 0);
		var0.EnableResearch("RES_UCS_RepHand", 0);
		var0.EnableResearch("RES_UCS_SGen", 0);
		var0.EnableResearch("RES_UCS_SHD", 0);
		
		return State1, 20;
	}
	
	state State1
	{
	}
}