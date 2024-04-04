campaign "translateCampaign_LS_ED"
{
	int var0;
	
	state State0;
	state State1;
	state State2;
	state State3;
	
	state State0
	{
		var0 = 1;
		
		RegisterMission(30, "!ds_ucsmainbase2", "ED\\Missions\\LS_baseUCSscript", "", 255, -84, 41, 0, 0, 0);
		RegisterMission(31, "!ds_edmainbase", "ED\\Missions\\LS_baseED", "", 255, 50, 60, 0, 0, 0);
		RegisterMission(32, "!ds_lcmainbase2", "ED\\Missions\\LS_baseLCscript", "", 255, 120, 8, 0, 0, 0);
		
		RegisterMission(1, "!dS_EDmission1", "ED\\Missions\\LS_ED_M01", "translatePreBriefingLS_ED_M01", 0, 26, 62, 60, 60, 60);
		RegisterMission(2, "!dS_EDmission2", "ED\\Missions\\LS_ED_M02", "translatePreBriefingLS_ED_M02", 0, 128, 46, 60, 60, 60);
		RegisterMission(3, "!dS_EDmission3", "ED\\Missions\\LS_ED_M03", "translatePreBriefingLS_ED_M03", 0, 50, 23, 60, 60, 60);
		RegisterMission(4, "!dS_EDmission4", "ED\\Missions\\LS_ED_M04", "translatePreBriefingLS_ED_M04", 0, 33, 43, 60, 60, 60);
		RegisterMission(5, "!dS_EDmission5", "ED\\Missions\\LS_ED_M05", "translatePreBriefingLS_ED_M05", 0, 50, 60, 60, 60, 60);
		RegisterMission(6, "!dS_EDmission6", "ED\\Missions\\LS_ED_M06", "translatePreBriefingLS_ED_M06", 0, 80, 60, 60, 60, 60);
		RegisterMission(7, "!dS_EDmission7", "ED\\Missions\\LS_ED_M07", "translatePreBriefingLS_ED_M07", 0, 80, 60, 60, 60, 60);
		RegisterMission(8, "!dS_EDmission8", "ED\\Missions\\LS_ED_M08", "translatePreBriefingLS_ED_M08", 0, 100, 35, 60, 60, 60);
		RegisterMission(9, "!dS_EDmission9", "ED\\Missions\\LS_ED_M09", "translatePreBriefingLS_ED_M09", 0, 3, 45, 60, 60, 60);
		RegisterMission(10, "!dS_EDmission10", "ED\\Missions\\LS_ED_M10", "translatePreBriefingLS_ED_M10", 0, 15, 50, 60, 60, 60);
		
		
		CreateGamePlayer(1, 1, 1, null);
		CreateGamePlayer(2, 2, 0, null);
		CreateGamePlayer(3, 3, 1, null);
		
		LoadBase(1, 30, 1);
		LoadBase(2, 31, 2);
		LoadBase(3, 32, 3);
		
		SetActivePlayerAndWorld(2, 2);
		SetAvailableWorlds(1|4);
		EnableMission(1, 1);
		ActivateMission(1, 1);
		
		return State2, 100;
	}
	state State2
	{
		EnableChooseMissionButton(1);
		return State1, 200;
	}
	
	state State1
	{
		return State1, 0;
	}
	
	
	state State3
	{
		LoadMission(0, var0);
		SetAvailableWorlds(1);
		return State1, 20;
	}
	
	event StartMission(int nMissionNum)
	{
		EnableChooseMissionButton(0);
		if (nMissionNum == 7)
		{
			SetAvailableWorlds(1);
		}
		LoadMission(0, nMissionNum);
		EnableMission(nMissionNum, 0);
	}
	
	event EnableNextMission(int nMissionNum, int nNextMissionNum, int nEnable)
	{
		if (nEnable < 2)
		{
			EnableMission(nMissionNum + 1, 1);
			ActivateMission(nMissionNum + 1, 1);
		}
		
		if (nEnable == 2)
		{
			EndGame("Video\\OutroEDLost.wd1");
		}
		if (nEnable == 4)
		{
			EndGame("Video\\OutroEDWin.wd1");
		}
	}
	
	event EndMission(int nMissionNum, int nResult)
	{
		if (nResult == 1)
		{
			SetMissionState(nMissionNum, 1);
			var0 = nMissionNum + 1;
		}
		else
		{
			SetMissionState(nMissionNum, 2);
		}
		if (nMissionNum == 6)
		{
			ForceKeepBitmapAfterStatistic();
			var0 = 7;
			state State3;
		}
		else
		{
			EnableChooseMissionButton(1);
		}
		
		if (nMissionNum == 5)
		{
			SendCustomEvent(0, 1, 0, 0, 0);
		}
		
		if (nMissionNum == 8)
		{
			SendCustomEvent(0, 2, 0, 0, 0);
		}
	}
	
	event EndingMission(int nMissionNum, int nResult)
	{
		SetAvailableWorlds(1|4);
	}
}
