campaign "translateCampaignLC_DS"
{
	int var0;
	
	state State0;
	state State1;
	state State2;
	
	state State0
	{
		int loc0;
	
		RegisterMission(30, "!ds_ucsmainbase2", "LC\\Missions\\DS_baseUCSscript", "", 255, -84, 41, 0, 0, 0);
		RegisterMission(31, "!ds_edmainbase2", "LC\\Missions\\DS_baseEDscript", "", 255, 50, 60, 0, 0, 0);
		RegisterMission(32, "!ds_lcmainbase1", "LC\\Missions\\DS_baseLC", "", 255, 120, 8, 0, 0, 0);
		
		RegisterMission(0, "!ds_lcmission1", "LC\\Missions\\ds_lc_M0101", "translateBriefingDS_LC_M0101", 0, 20, 52, 60, 60, 60);
		RegisterMission(1, "!ds_lcmission2", "LC\\Missions\\ds_lc_M0201", "translateBriefingDS_LC_M0201", 0, 20, 52, 60, 60, 60);
		RegisterMission(2, "!ds_lcmission3", "LC\\Missions\\ds_lc_M0301", "translateBriefingDS_LC_M0301", 0, 30, 50, 60, 60, 60);
		RegisterMission(3, "!ds_lcmission4", "LC\\Missions\\ds_lc_M0401", "translateBriefingDS_LC_M0401", 0, -4, 40, 60, 60, 60);
		RegisterMission(4, "!ds_lcmission5", "LC\\Missions\\ds_lc_M0501", "translateBriefingDS_LC_M0501", 0, -82, 35, 60, 60, 60);
		RegisterMission(5, "!ds_lcmission6", "LC\\Missions\\ds_lc_M0601", "translateBriefingDS_LC_M0601", 0, -82, 25, 60, 60, 60);
		RegisterMission(6, "!ds_lcmission7", "LC\\Missions\\ds_lc_M0701", "translateBriefingDS_LC_M0701", 0, 90, 50, 60, 60, 60);
		RegisterMission(7, "!ds_lcmission8", "LC\\Missions\\ds_lc_M0801", "translateBriefingDS_LC_M0801", 0, -97, 36, 60, 60, 60);
		RegisterMission(8, "!ds_lcmission9", "LC\\Missions\\ds_lc_M0901", "translateBriefingDS_LC_M0901", 0, -111, 42, 60, 60, 60);
		RegisterMission(9, "!ds_lcmission10", "LC\\Missions\\ds_lc_M1001", "translateBriefingDS_LC_M1001", 0, 7, 50, 60, 60, 60);
		
		var0 = 0;
		
		CreateGamePlayer(1, 1, 1, null);
		CreateGamePlayer(2, 2, 1, null);
		CreateGamePlayer(3, 3, 0, null);
		
		LoadBase(1, 30, 1);
		LoadBase(2, 31, 2);
		LoadBase(3, 32, 3);
		
		SetTime(100);
		SetActivePlayerAndWorld(3, 3);
		SetAvailableWorlds(1|8);
		EnableMission(0, 1);
		ActivateMission(0, 1);
		
		return State1, 100;
	}
	
	state State1
	{
		EnableChooseMissionButton(1);
		return State2, 200;
	}
	
	state State2
	{
		return State2, 200;
	}
	
	event StartMission(int nMissionNum)
	{
		EnableChooseMissionButton(0);
		LoadMission(0, nMissionNum);
		EnableMission(nMissionNum, 0);
	}
	
	event EnableNextMission(int nMissionNum, int nNextMissionNum, int nEnable)
	{
		var0 = var0 + 1;
		
		if (nEnable < 2)
		{
			EnableMission(var0, 1);
			ActivateMission(var0, 1);
		}
		
		if (nEnable == 2)
		{
			EndGame("Video\\OutroLCLost.wd1");
		}
		if (nEnable == 4)
		{
			EndGame("Video\\OutroLCWin.wd1");
		}
	}
	
	event EndMission(int nMissionNum, int nResult)
	{
		if (nResult == 1)
		{
			SetMissionState(nMissionNum, 1);
		}
		else
		{
			SetMissionState(nMissionNum, 2);
		}
		
		if (nMissionNum == 2)
		{
			SendCustomEvent(0, 1, 0, 0, 0);
		}
		if (nMissionNum == 8)
		{
			SendCustomEvent(0, 2, 0, 0, 0);
		}
		EnableChooseMissionButton(1);
	}
}
