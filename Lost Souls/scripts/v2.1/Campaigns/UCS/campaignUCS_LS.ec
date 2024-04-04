campaign "translateCampaign_LS_UCS"
{
	int var0;
	
	state State0;
	state State1;
	state State2;
	
	state State0
	{
		RegisterMission(30, "!ds_ucsmainbase", "UCS\\Missions\\LS_baseUCS", "", 255, -84, 41, 0, 0, 0);
		RegisterMission(31, "!ds_edmainbase2", "UCS\\Missions\\LS_baseEDscript", "", 255, 50, 60, 0, 0, 0);
		RegisterMission(32, "!ds_lcmainbase2", "UCS\\Missions\\LS_baseLCscript", "", 255, 120, 8, 0, 0, 0);
		
		RegisterMission(1, "!dS_UCSmission1", "UCS\\Missions\\LS_UCS_M01", "translatePreBriefingLS_UCS_M01", 0, -100, 20, 60, 60, 60);
		RegisterMission(2, "!dS_UCSmission2", "UCS\\Missions\\LS_UCS_M02", "translatePreBriefingLS_UCS_M02", 0, -100, 23, 60, 60, 60);
		RegisterMission(3, "!dS_UCSmission3", "UCS\\Missions\\LS_UCS_M03", "translatePreBriefingLS_UCS_M03", 0, -95, 33, 60, 60, 60);
		RegisterMission(4, "!dS_UCSmission4", "UCS\\Missions\\LS_UCS_M04", "translatePreBriefingLS_UCS_M04", 0, -88, 35, 60, 60, 60);
		RegisterMission(5, "!dS_UCSmission5", "UCS\\Missions\\LS_UCS_M05", "translatePreBriefingLS_UCS_M05", 0, -55, 48, 60, 60, 60);
		RegisterMission(6, "!dS_UCSmission6", "UCS\\Missions\\LS_UCS_M06", "translatePreBriefingLS_UCS_M06", 0, -65, 5, 60, 60, 60);
		RegisterMission(7, "!dS_UCSmission7", "UCS\\Missions\\LS_UCS_M07", "translatePreBriefingLS_UCS_M07", 0, -73, 41, 60, 60, 60);
		RegisterMission(8, "!dS_UCSmission8", "UCS\\Missions\\LS_UCS_M08", "translatePreBriefingLS_UCS_M08", 0, -4, 52, 60, 60, 60);
		RegisterMission(9, "!dS_UCSmission9", "UCS\\Missions\\LS_UCS_M09", "translatePreBriefingLS_UCS_M09", 0, 28, 53, 60, 60, 60);
		RegisterMission(10, "!dS_UCSmission10", "UCS\\Missions\\LS_UCS_M10", "translatePreBriefingLS_UCS_M10", 0, 20, 53, 60, 60, 60);
		
		
		CreateGamePlayer(1, 1, 0, null);
		CreateGamePlayer(2, 2, 1, null);
		CreateGamePlayer(3, 3, 1, null);
		
		ForceKeepLoadProgress(4);
		LoadBase(1, 30, 1);
		LoadBase(2, 31, 2);
		LoadBase(3, 32, 3);
		ForceCloseLoadProgress();
		
		LoadMission(0, 1);
		SetActivePlayerAndWorld(1, 0);
		SetAvailableWorlds(1);
		SetTime(100);
		
		return State1, 20;
	}
	
	state State1
	{
		return State1, 0;
	}
	state State2
	{
		LoadMission(0, var0);
		SetAvailableWorlds(1);
		return State1, 20;
	}
	
	event StartMission(int nMissionNum)
	{
		EnableChooseMissionButton(0);
		if (nMissionNum == 8)
		{
			SetAvailableWorlds(1);
		}
		LoadMission(0, nMissionNum);
		EnableMission(nMissionNum, 0);
	}
	
	event EnableNextMission(int nMissionNum, int nNextMissionNum, int nEnable)
	{
		if (nEnable < 2 && nMissionNum >= 2)
		{
			EnableMission(nMissionNum + 1, 1);
			ActivateMission(nMissionNum + 1, 1);
		}
		
		if (nEnable == 2)
		{
			EndGame("Video\\OutroUCSLost.wd1");
		}
		if (nEnable == 4)
		{
			EndGame("Video\\OutroUCSwin.wd1");
		}
	}
	
	event EndingMission(int nMissionNum, int nResult)
	{
		SetAvailableWorlds(1|2);
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
		if (nMissionNum == 1)
		{
			ForceKeepBitmapAfterStatistic();
			var0 = 2;
			state State2;
		}
		
		if (nMissionNum == 2)
		{
			SendCustomEvent(0, 1, 0, 0, 0);
		}
		
		if (nMissionNum == 4)
		{
			ForceKeepBitmapAfterStatistic();
			var0 = 5;
			state State2;
		}
		
		if (nMissionNum == 5)
		{
			SendCustomEvent(0, 2, 0, 0, 0);
		}
		
		if (nMissionNum == 6)
		{
			SendCustomEvent(0, 4, 0, 0, 0);
		}
		
		if (nMissionNum == 7)
		{
			SendCustomEvent(0, 5, 0, 0, 0);
		}
		if (nMissionNum == 8)
		{
			ForceKeepBitmapAfterStatistic();
			var0 = 9;
			state State2;
		}
		if (nMissionNum == 9)
		{
			ForceKeepBitmapAfterStatistic();
			var0 = 10;
			state State2;
		}
		if (nMissionNum == 2 || nMissionNum == 3 || nMissionNum == 5 || nMissionNum == 6 || nMissionNum == 7)
		{
			EnableChooseMissionButton(1);
		}
	}
}
