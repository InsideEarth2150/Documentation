mission "translateCampaign_ED_BaseUCS"
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
		
		var0.EnableCommand(commandSoldBuilding, 1);
		var0.AddResearch("RES_MISSION_PACK1_ONLY");
		var0.AddResearch("RES_UCS_UOH2");
		var0.AddResearch("RES_UCS_UOH3");
		var0.AddResearch("RES_UCS_USL2");
		var0.AddResearch("RES_UCS_USL3");
		var0.AddResearch("RES_UCS_UML1");
		var0.AddResearch("RES_UCS_UML2");
		var0.AddResearch("RES_UCS_UML3");
		var0.EnableResearch("RES_UCS_UHL1", 0);
		var0.AddResearch("RES_UCS_GARG1");
		var0.AddResearch("RES_UCS_GARG2");
		var0.AddResearch("RES_UCS_GARG3");
		var0.AddResearch("RES_UCS_WCH2");
		var0.AddResearch("RES_UCS_WACH2");
		var0.AddResearch("RES_MCH2");
		var0.AddResearch("RES_MCH3");
		var0.AddResearch("RES_MCH4");
		var0.AddResearch("RES_UCS_WSR1");
		var0.AddResearch("RES_UCS_WSR2");
		var0.AddResearch("RES_UCS_WSR3");
		var0.AddResearch("RES_MSR2");
		var0.AddResearch("RES_MSR3");
		var0.AddResearch("RES_MSR4");
		var0.AddResearch("RES_UCS_WASR1");
		var0.AddResearch("RES_UCS_WASR2");
		var0.AddResearch("RES_UCS_WMR1");
		var0.AddResearch("RES_UCS_WMR2");
		var0.AddResearch("RES_UCS_WMR3");
		var0.AddResearch("RES_MMR2");
		var0.AddResearch("RES_MMR3");
		var0.AddResearch("RES_MMR4");
		var0.AddResearch("RES_UCS_WSP1");
		var0.AddResearch("RES_UCS_WSP2");
		var0.AddResearch("RES_UCSCAA1");
		var0.AddResearch("RES_UCSCAA2");
		var0.AddResearch("RES_UCSWAP1");
		var0.AddResearch("RES_UCSWAP2");
		var0.EnableResearch("RES_UCS_WHP1", 0);
		var0.AddResearch("RES_UCS_SGen");
		var0.AddResearch("RES_UCS_MGen");
		var0.AddResearch("RES_UCS_HGen");
		var0.AddResearch("RES_UCS_RepHand");
		var0.AddResearch("RES_UCS_RepHand2");
		var0.EnableResearch("RES_UCS_BMD", 0);
		var0.EnableResearch("RES_UCS_BHD", 0);
		var0.AddResearch("RES_UCS_USS1");
		var0.AddResearch("RES_UCS_USS2");
		var0.AddResearch("RES_UCS_UMI1");
		var0.AddResearch("RES_UCS_UMI2");
		var0.AddResearch("RES_UCS_SHD");
		var0.EnableResearch("RES_UCS_UBL1", 0);
		var0.EnableResearch("RES_UCS_UBS1", 0);
		var0.EnableResearch("RES_UCS_UAH1", 0);
		var0.EnableResearch("RES_UCS_BOMBER21", 0);
		var0.EnableResearch("RES_UCS_BOMBER31", 0);
		var0.EnableResearch("RES_UCS_WAMR1", 0);
		var0.EnableResearch("RES_UCS_RepHand", 0);
		var0.EnableResearch("RES_UCS_RepHand2", 0);
		var0.EnableResearch("RES_UCSWAN1", 0);
		var0.EnableResearch("RES_UCS_WSG2", 0);
		var0.EnableResearch("RES_UCSWTSC1", 0);
		var0.EnableResearch("RES_UCSWEQ1", 0);
		var0.EnableResearch("RES_UCS_ART", 0);
		var0.EnableResearch("RES_UCS_BC1", 0);
		var0.EnableResearch("RES_UCS_MSC2", 0);
		var0.EnableResearch("RES_UCS_USM1", 0);
		var0.EnableResearch("RES_UCSUUT", 0);
		var0.EnableResearch("RES_UCSUCS", 0);
		var0.EnableResearch("RES_UCS_PC", 0);
		var0.EnableResearch("RES_UCS_MG2", 0);
		var0.EnableResearch("RES_UCS_MB2", 0);
		var0.EnableResearch("RES_UCS_SHD2", 0);
		var0.EnableResearch("RES_UCS_WSD", 0);
		var0.EnableResearch("RES_UCS_WAPB1", 0);
		var0.EnableResearch("RES_UCSBHT", 0);
		
		var0.EnableBuilding("UCSBBA", 1);
		var0.EnableBuilding("UCSBFA", 1);
		var0.EnableBuilding("UCSBPP", 1);
		var0.EnableBuilding("UCSBPR", 1);
		var0.EnableBuilding("UCSBET", 1);
		var0.EnableBuilding("UCSBRF", 1);
		var0.EnableBuilding("UCSBAB", 1);
		var0.EnableBuilding("UCSBST", 1);
		var0.EnableBuilding("UCSBBT", 1);
		var0.EnableBuilding("UCSBFO", 1);
		var0.EnableBuilding("UCSBEN1", 0);
		var0.EnableBuilding("UCSBEN2", 0);
		var0.EnableBuilding("UCSBLZ", 1);
		var0.EnableBuilding("UCSBUC", 1);
		var0.EnableBuilding("UCSBET", 1);
		var0.EnableBuilding("UCSBHQ", 1);
		var0.EnableBuilding("UCSBHT", 1);
		var0.EnableBuilding("UCSBSH", 1);
		var0.EnableBuilding("Teleport", 0);
		var0.EnableBuilding("UCSBWB", 0);
		var0.EnableBuilding("UCSBPB", 0);
		var0.EnableBuilding("UCSBPC", 0);
		var0.EnableBuilding("UCSBSD", 0);
		var0.EnableBuilding("UCSBSS", 0);
		var0.EnableBuilding("UCSBART", 0);
		
		return State1, 20;
	}
	
	state State1
	{
	}
}