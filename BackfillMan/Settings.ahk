// This is Run first before else

IniRead, Mode, Settings.ini, BackfillMan, Mode
IniRead, DoIndex, Settings.ini, BackfillMan, DoIndex

IniRead, NowWindowTitle,  Settings.ini, BackfillMan, NowWindowTitle
IniRead, DTWindowTitle,   Settings.ini, BackfillMan, DTWindowTitle
IniRead, VWAPWindowTitle, Settings.ini, BackfillMan, VWAPWindowTitle

IniRead, TradingSymbolColIndex, Settings.ini, BackfillMan, TradingSymbolColIndex

IniRead, BackfillExePath,      Settings.ini, BackfillMan, BackfillExePath
IniRead, BackfillExe,  		   Settings.ini, BackfillMan, BackfillExe
IniRead, DTBackfillFileName,   Settings.ini, BackfillMan, DTBackfillFileName
IniRead, VWAPBackfillFileName, Settings.ini, BackfillMan, VWAPBackfillFileName

IniRead, VWAPSleepTime, Settings.ini, BackfillMan, VWAPSleepTime

VWAPCount = 0
Loop{	
	IniRead, value, Settings.ini, BackfillMan, VWAP%A_Index%
	if value = ERROR 
		break	
	VWAP%A_Index%  :=  value
	VWAPCount 	   :=  A_Index
}

DTCount = 0
Loop{	
	IniRead, value, Settings.ini, BackfillMan, DataTable%A_Index%
	if value = ERROR 
		break	
	DT%A_Index%  :=  value
	DTCount 	 :=  A_Index
}

IndexCount = 0
Loop{	
	IniRead, value, Settings.ini, BackfillMan, Index%A_Index%
	if value = ERROR 
		break	
	Index%A_Index%  := value
	IndexCount 	    := A_Index
}