mission "translateCampaignLS_BaseUCS"
{
	player var0;
	
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
	
	state State0
	{
		var0 = GetPlayer(1);
		var0.SetMoney(20000);
		var0.SetMilitaryUnitsLimit(200000);
		
		var0.EnableCommand(commandSoldBuilding, 1);
		var0.AddResearch("RES_MISSION_PACK1_ONLY");
		var0.AddResearch("RES_UCS_UOH2");
		var0.AddResearch("RES_UCS_UOH3");
		var0.AddResearch("RES_UCS_USL2");
		var0.AddResearch("RES_UCS_USL3");
		var0.AddResearch("RES_UCS_UML1");
		var0.AddResearch("RES_UCS_UML2");
		var0.AddResearch("RES_UCS_UML3");
		var0.AddResearch("RES_UCS_UHL1");
		var0.AddResearch("RES_UCS_UHL2");
		var0.AddResearch("RES_UCS_UHL3");
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
		var0.AddResearch("RES_UCS_WHP1");
		var0.AddResearch("RES_UCS_WHP2");
		var0.AddResearch("RES_UCS_WHP3");
		var0.AddResearch("RES_UCS_SGen");
		var0.AddResearch("RES_UCS_MGen");
		var0.AddResearch("RES_UCS_HGen");
		var0.AddResearch("RES_UCS_RepHand");
		var0.AddResearch("RES_UCS_RepHand2");
		var0.AddResearch("RES_UCS_BMD");
		var0.AddResearch("RES_UCS_BHD");
		var0.EnableResearch("RES_UCS_UBL1", 0);
		var0.EnableResearch("RES_UCS_UMI1", 0);
		var0.EnableResearch("RES_UCS_USS2", 0);
		var0.EnableResearch("RES_UCS_UBS1", 0);
		var0.EnableResearch("RES_UCS_UAH1", 0);
		var0.EnableResearch("RES_UCS_BOMBER21", 0);
		var0.EnableResearch("RES_UCS_BOMBER31", 0);
		var0.EnableResearch("RES_UCS_WAMR1", 0);
		var0.EnableResearch("RES_UCS_RepHand", 0);
		var0.EnableResearch("RES_UCS_RepHand2", 0);
		var0.EnableResearch("RES_UCSWAN1", 0);
		var0.EnableResearch("RES_UCSCAA1", 0);
		var0.EnableResearch("RES_UCS_WSG2", 0);
		var0.EnableResearch("RES_UCSWAP1", 0);
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
		var0.EnableResearch("RES_UCS_SHD", 0);
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
		
		return State8, 10;
	}
	
	state State9
	{
		CallCamera();
		EnableInterface(0);
		EnableCameraMovement(0);
		SetConsoleText("translateIncomingEvent");
		var0.DelayedLookAt(GetPointX(0), GetPointY(0), 25, 0, 10, 0, 50, 1);
		return State1, 50;
		
	}
	
	state State1
	{
		var0.DelayedLookAt(GetPointX(1), GetPointY(1), 25, 0, 10, 0, 50, 1);
		return State2, 50;
	}
	
	state State2
	{
		var0.DelayedLookAt(GetPointX(2), GetPointY(2), 25, 0, 10, 0, 50, 1);
		return State3, 50;
	}
	
	state State3
	{
		SetConsoleText("");
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingLS_Base_Introduction", var0.GetName());
		var0.EnableResearch("RES_UCS_RepHand", 1);
		var0.EnableResearch("RES_UCS_UBL1", 1);
		var0.EnableResearch("RES_UCS_WSG2", 1);
		var0.EnableResearch("RES_UCS_MG2", 1);
		var0.EnableResearch("RES_UCS_SHD", 1);
		var0.EnableResearch("RES_UCS_SHD2", 0);
		return State7, 20;
	}
	
	state State4
	{
		CallCamera();
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingLS_Base_Story2", var0.GetName());
		return State7, 20;
	}
	
	state State5
	{
		CallCamera();
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingLS_Base_GolanPlans", var0.GetName());
		return State7, 20;
	}
	
	state State6
	{
		CallCamera();
		EnableInterface(1);
		EnableCameraMovement(1);
		AddBriefing("translateBriefingLS_Base_LeaveBase", var0.GetName());
		return State7, 20;
	}
	
	state State7
	{
		return State7, 50;
	}
	
	state State8
	{
		return State8, 50;
	}
	
	event CustomEvent0(int nParam1, int nParam2, int nParam3, int nParam4)
	{
		if (nParam1 == 1)
		{
			state State9;
		}
		if (nParam1 == 3)
		{
			var0.AddMoney(nParam2);
		}
		if (nParam1 == 2)
		{
			state State4;
		}
		if (nParam1 == 4)
		{
			state State5;
		}
		if (nParam1 == 5)
		{
			state State6;
		}
	}
}