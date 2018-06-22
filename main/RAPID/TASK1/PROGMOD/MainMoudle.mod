MODULE MainMoudle
VAR string Restring:="";
VAR socketdev socket1;
CONST robtarget p10:=[[349.34,-19.66,247.63],[0.00895683,0.706644,0.707114,0.0237615],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pRed:=[[-88.76,273.44,341.01],[0.0190092,-0.0180115,-0.999388,-0.0231854],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pBlue:=[[-88.76,378.35,341.02],[0.0190151,-0.0180115,-0.999388,-0.0231739],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pBlack:=[[-75.57,484.19,341.01],[0.0190143,-0.0179829,-0.999389,-0.0231502],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!yi shang shi jue fen jian de dian 
    
CONST robtarget pWork_Home:=[[-177.41,-319.37,553.40],[0.0300276,0.999482,-0.00883611,-0.00751684],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST jointtarget PHome:=[[-0.000138229,0.000139105,4.511E-05,-0.0685903,51.8446,-7.29127],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pSafe:=[[213.35,-239.65,470.53],[0.0115816,-0.32928,-0.943386,0.038245],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pTool1:=[[-124.28,-483.85,271.68],[0.00478182,0.706407,0.706617,-0.0407368],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pTool2:=[[-248.02,-404.85,270.58],[0.00629953,0.710143,0.702929,-0.0393519],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pTool3:=[[-371.39,-319.64,270.53],[0.00611413,0.705035,0.708048,-0.0394486],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pPickT:=[[-371.39,-319.64,270.53],[0.00611413,0.705035,0.708048,-0.0394486],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pPlaceT:=[[-371.39,-319.64,270.53],[0.00611413,0.705035,0.708048,-0.0394486],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pPick:=[[347.44,-132.16,135.67],[0.00915442,0.706581,0.70717,0.023901],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

CONST robtarget pMb1:=[[33.46,375.16,240.29],[0.0247752,-0.00312502,-0.999326,-0.0269053],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMb2:=[[31.51,335.78,237.39],[0.00980751,0.0216368,-0.999385,-0.0257762],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMb3:=[[14.15,382.1,265.32],[0.0169315,-0.693096,-0.720387,-0.0193142],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMb4:=[[-27.64,382.29,264.58],[0.0163389,-0.693089,-0.72039,-0.0199758],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM:=[[23.38,436.71,202.6],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM1:=[[72.36,452.29,264.58],[0.0163389,-0.693089,-0.72039,-0.0199758],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM2:=[[23.38,393.71,177.4],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM3:=[[23.38,423.71,177.4],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM4:=[[23.38,453.71,177.4],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM5:=[[23.38,376.71,202.6],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM6:=[[23.38,406.71,202.6],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM7:=[[23.38,436.71,202.6],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM8:=[[23.38,389.71,227.8],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM9:=[[23.38,419.71,227.8],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PERS robtarget pM10:=[[23.38,402.21,253],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

CONST robtarget pB0:=[[121.34,537.72,280.34],[0.00770817,0.281921,-0.959062,-0.0257186],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pB1:=[[19.55,-268.43,280.01],[0.0063053,0.710122,0.702945,-0.0394322],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pB2:=[[-80.81,-269.02,279.19],[0.00634312,0.710115,0.702948,-0.0394933],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pB3:=[[-178.32,-263.36,279.96],[0.00633868,0.710148,0.702919,-0.0394285],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];


PERS num nTool:=3;
VAR num nCount:=0;
VAR num nCycles:=3;
CONST speeddata va:=[300,500,5000,1000];
CONST speeddata vb:=[200,500,5000,1000];
CONST speeddata vc:=[150,500,5000,1000];
CONST speeddata vd:=[80,500,5000,1000];
CONST speeddata ve:=[10,300,5000,1000];
CONST speeddata vf:=[5,200,5000,1000];
CONST speeddata vh:=[1,200,5000,1000];
CONST speeddata vz:=[0.6,200,5000,1000];
CONST speeddata speedweld:=[6,500,5000,1000];

CONST robtarget pH10:=[[199.62,-225.14,473.06],[0.136277,-0.331554,-0.933208,-0.0249637],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH20:=[[279.61,-15.17,519.73],[0.208188,-0.406698,-0.886796,0.0696276],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH30:=[[187.89,207.63,519.73],[0.157987,0.0143875,-0.9755,0.152425],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH40:=[[-8.40,279.89,519.73],[0.0896309,0.377675,-0.899537,0.200404],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH50:=[[-139.14,398.68,524.53],[0.13773,0.400229,-0.901929,-0.0858632],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH60:=[[-159.57,413.28,466.21],[0.137744,0.400149,-0.901954,-0.085945],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH70:=[[-207.28,306.17,434.05],[0.137716,0.399501,-0.902238,-0.0860174],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH80:=[[-162.20,413.28,423.51],[0.13773,0.400125,-0.901964,-0.0859724],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH90:=[[-78.02,413.27,423.50],[0.137753,0.40014,-0.901956,-0.0859481],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH100:=[[-78.01,413.27,501.12],[0.137749,0.400138,-0.90196,-0.0859219],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH110:=[[-132.60,402.74,521.69],[0.169978,0.405088,-0.892279,-0.104157],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH120:=[[-137.21,402.74,473.47],[0.170061,0.405071,-0.892266,-0.104203],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH130:=[[-132.60,402.74,524.10],[0.169982,0.405097,-0.892273,-0.104175],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH140:=[[-201.95,385.39,479.83],[0.00148213,0.323668,-0.915178,-0.24018],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH150:=[[-201.96,385.39,542.18],[0.00150083,0.323667,-0.915182,-0.240167],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH160:=[[-201.95,385.38,519.73],[0.00149134,0.323666,-0.915162,-0.240242],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH170:=[[-186.89,353.98,528.50],[0.0301691,-0.372721,0.901036,0.219778],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH180:=[[269.95,51.08,525.49],[0.155898,0.318007,-0.932954,0.0645362],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pH190:=[[259.31,-160.97,495.19],[0.223663,-0.744406,-0.616432,0.125886],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
VAR bool X_pos:=FALSE;
VAR bool Y_pos:=FALSE;
PERS num X_pose:=395;
VAR num Y_pose:=0;
CONST robtarget pMs1:=[[23.38,363.71,177.40],[0.0220865,-0.99975,0.00294052,-0.00157652],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMs2:=[[65.08,301.61,234.74],[0.0198248,-0.704428,0.709325,0.01568],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMx:=[[34.22,413.29,234.41],[0.0250303,-0.999664,0.00604394,-0.00286317],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMy:=[[45.06,403.78,235.37],[0.0199052,-0.704454,0.709297,0.0157169],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pM14:=[[-177.41,-319.36,553.39],[0.0300047,0.999482,-0.00887497,-0.00747816],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pZ:=[[-230.79,402.22,511.20],[0.0075388,0.281671,-0.959133,-0.0258621],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pMy10:=[[-230.79,402.22,511.20],[0.0075388,0.281671,-0.959133,-0.0258621],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
CONST robtarget pRed10:=[[208.78,213.03,329.15],[0.0106601,-0.617101,-0.786395,-0.0256012],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];


PROC Main()
    WaitTime 0.2;
	IF GiCtrl = 1 THEN
		rHanjie;
	ELSEIF GiCtrl = 2 THEN
		rBanyun;
	ELSEIF GiCtrl = 3 THEN
		rPalletize;
	ELSEIF GiCtrl = 4 THEN
		Visual_sorting;
	ELSEIF GiCtrl = 5 THEN
		rZhuangP;
	!ELSEIF GiCtrl = 6 THEN
		!<YuLiu>
	ELSEIF GiCtrl = 7 THEN
		!<Li ti ku>
		!ChenYiFa;
	ENDIF
ENDPROC
    
PROC Visual_sorting()
	SocketClose socket1;
	SocketCreate socket1;
	SocketConnect socket1, "192.168.10.6", 1050;
	WaitTime 0.2;
	nTool := 3;
	rCheck_Tool;
	rPickT;
WHILE TRUE DO
	MoveJ p10, v300, z50, tool0;
	MoveJ p10, v300, fine, tool0;
	PulseDO\PLength:=1.5, DO5;
	!SocketSend socket1\Str:="opencamera";
	SocketReceive socket1\Str:=Restring\Time:=WAIT_MAX;
	IF Restring = "Red" THEN
        MoveJ p10, v300, fine, tool0;
        rPick;
        MoveJ [[97.24,-271.10,335.63],[0.0169239,0.701286,0.712608,0.0100875],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
		!MoveJ pRed, v300, fine, tool0;
		MoveJ Offs(pB1,-40,0,30), vb, fine, tool0;
        Reset DO4;
        Waittime 0.5;
        MoveJ [[97.24,-271.10,335.63],[0.0169239,0.701286,0.712608,0.0100875],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, z20, tool0;
        MoveJ p10, v300, fine, tool0;
		Restring := "";
		WaitTime 1;
	    ELSEIF Restring = "Blue" THEN
		MoveJ p10, v500, fine, tool0;
        rPick;
        MoveJ [[97.24,-271.10,335.63],[0.0169231,0.701286,0.712608,0.010088],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
		!MoveJ pBlue, v300, fine, tool0;
		MoveJ Offs(pB2,-40,0,30), vb, fine, tool0;
        Reset DO4;
        Waittime 0.5;
        MoveJ [[97.24,-271.10,335.63],[0.0169231,0.701286,0.712608,0.010088],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, z20, tool0;
        MoveJ p10, v300, fine, tool0;
		Restring := "";
		WaitTime 1;
	    ELSEIF Restring = "Black" THEN
		MoveJ p10, v300, fine, tool0;
        rPick;
        MoveJ [[97.24,-271.10,335.63],[0.0169231,0.701286,0.712608,0.010088],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
        MoveJ [[97.24,-271.10,335.63],[0.0169231,0.701286,0.712608,0.010088],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
		!MoveJ pBlack, v300, fine, tool0;
		MoveJ Offs(pB3,-40,0,30), vb, fine, tool0;
        Reset DO4;
        Waittime 0.5;
        MoveJ [[97.24,-271.10,335.63],[0.0169231,0.701286,0.712608,0.010088],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
        MoveJ [[97.24,-271.10,335.63],[0.0169231,0.701286,0.712608,0.010088],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, z20, tool0;
        MoveJ p10, v300, fine, tool0;
		Restring := "";
		WaitTime 1;
     	ELSEIF Restring = "End" THEN
        Reset DO5;
	    rPlaceT;
	    IF DOutput(Do_State) = 0 THEN
	    	Stop;
	    ENDIF
	    RETURN;
	ENDIF
ENDWHILE
ENDPROC
    
PROC rInitialize()
    CheckHomePos;
    nTool:=0;
    Reset DO5;
    ConfL\Off ;
    ConfJ\Off ;
    TPErase ;
ENDPROC

PROC CheckHomePos()
    WaitTime 0.2;
ENDPROC

PROC rPalletize()
    rInitialize;
    nCount := 1;
    nTool := 3;
    rCheck_Tool;
    rPickT;
    PulseDO\PLength:=1.5, DO5;
    MoveJ [[349.31,-81.92,338.18],[0.00895381,0.707178,0.706579,0.0237651],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v50, z15, tool0;
WHILE TRUE DO 
    !rCalculatPos;
    rdasaiPos1;
    !rdasaiPos2;
    !rdasaiPos3;
    rPick;
    IF nCount <= 9 THEN
    	PulseDO\PLength:=1.5, DO5;
    ENDIF
    MoveJ [[149.32,258.53,328.15],[0.0200223,-0.710518,0.703223,0.0155434],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveL Offs (pM,0,0,100),vb,fine,tool0;
    MoveL Offs (pM,0,0,20),vb,fine,tool0;
    MoveL Offs (pM,0,0,1), ve, fine, tool0;
    Reset DO4;
    WAITTIME 0.5;
    MoveL Offs (pM,0,0,50),vb,fine,tool0;
    MoveJ [[149.32,224.89,348.93],[0.0197121,-0.69828,0.715377,0.0158569],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    nCount:=nCount+1;
    IF nCount > 10 THEN 
        nCount:=1;
        MoveJ [[232.24,153.79,272.60],[0.00341345,-0.706494,-0.70718,-0.0274095],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
        MoveJ [[270.01,-68.42,272.59],[0.00795925,0.932209,0.360865,0.0264366],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
        MoveJ Psafe,vb,z5,tool0;
        rPlaceT;
        TPErase ;
        TPWrite "The program is completed!";
        TPWrite "Now the robot is going to perform the playback program!";
        WaitTime 0.2;
        IF DOutput(Do_State) = 0 THEN
        	Stop;
        ENDIF
        RETURN;
    ENDIF
ENDWHILE 
ENDPROC 
    
PROC rCalculatPos()
 TEST nCount 
    CASE 1:
    pM:=pMb1;
    CASE 2:
    pM:=pMb2;
    CASE 3:
    pM:=pMb3;
    CASE 4:
    pM:=pMb4;

    DEFAULT :
    TPErase ;
    TPWrite"The CountNumber is error,please check it!";
    Stop ;
    ENDTEST
ENDPROC
    
PROC rdasaiPos1()
        TEST nCount
        CASE 1:
            pM:=pMs1;
        CASE 2:
            pM2:=Offs(pMs1,0,30,0);
            pM:=pM2;
        CASE 3:
            pM3:=Offs(pM2,0,30,0);
            pM:=pM3;
        CASE 4:
            pM4:=Offs(pM3,0,30,0);
            pM:=pM4;

        CASE 5:
            pM5:=Offs(pMs1,0,13,25.2);
            pM:=pM5;
        CASE 6:
            pM6:=Offs(pM5,0,30,0);
            pM:=pM6;
        CASE 7:
            pM7:=Offs(pM6,0,30,0);
            pM:=pM7;

        CASE 8:
            pM8:=Offs(pM5,0,13,25.2);
            pM:=pM8;
        CASE 9:
            pM9:=Offs(pM8,0,30,0);
            pM:=pM9;

        CASE 10:
            pM10:=Offs(pM8,0,12.5,25.2);
            pM:=pM10;

        DEFAULT:
            TPErase;
            TPWrite "The CountNumber is error,please check it!";
            Stop;
        ENDTEST
    ENDPROC

    PROC rdasaiPos2()
        TEST nCount
        CASE 1:
            pM:=pMs2;
        CASE 2:
            pM2:=Offs(pMs2,0,70,0);
            pM:=pM2;
        CASE 3:
            pM3:=Offs(pM2,0,70,0);
            pM:=pM3;
        CASE 4:
            pM4:=Offs(pM3,0,70,0);
            pM:=pM4;

        CASE 5:
            pM5:=Offs(pMs2,0,33,25.2);
            pM:=pM5;
        CASE 6:
            pM6:=Offs(pM5,0,70,0);
            pM:=pM6;
        CASE 7:
            pM7:=Offs(pM6,0,70,0);
            pM:=pM7;

        CASE 8:
            pM8:=Offs(pM5,0,33,25.2);
            pM:=pM8;
        CASE 9:
            pM9:=Offs(pM8,0,70,0);
            pM:=pM9;

        CASE 10:
            pM10:=Offs(pM8,0,32.5,25.2);
            pM:=pM10;

        DEFAULT:
            TPErase;
            TPWrite "The CountNumber is error,please check it!";
            Stop;
        ENDTEST
    ENDPROC

    PROC rdasaiPos3()
        TEST nCount
        CASE 1:
            pM:=pMx;
        CASE 2:
            pM2:=Offs(pMx,0,40,0);
            pM:=pM2;

        CASE 3:
            pM3:=Offs(pMy,0,0,25.2);
            pM:=pM3;
        CASE 4:
            pM4:=Offs(pM3,40,0,0);
            pM:=pM4;

        CASE 5:
            pM5:=Offs(pMx,0,0,50);
            pM:=pM5;
        CASE 6:
            pM6:=Offs(pM2,0,0,50);
            pM:=pM6;

        CASE 7:
            pM7:=Offs(pM3,0,0,50);
            pM:=pM7;
        CASE 8:
            pM8:=Offs(pM4,0,0,50);
            pM:=pM8;

        CASE 9:
            pM9:=Offs(pM5,0,0,50);
            pM:=pM9;
        CASE 10:
            pM10:=Offs(pM6,0,0,50);
            pM:=pM10;

        DEFAULT:
            TPErase;
            TPWrite "The CountNumber is error,please check it!";
            Stop;
        ENDTEST
    ENDPROC
    
PROC rPickT()
    Set DO1;
    MoveL Offs (pPickT,0,0,200),vb,z5,tool0;
    MoveL Offs(pPickT,0,0,20),vb,fine,tool0;
    MoveL Offs (pPickT,0,0,1), ve, fine, tool0;
    Reset DO1;
    waittime 0.5;
    MoveL Offs(pPickT,0,0,15),ve,fine,tool0;
    MoveL Offs (pPickT,0,80,20), vd, fine, tool0;
    MoveL Offs (pPickT,0,80,200),vb,z5,tool0;
    MoveJ [[-92.91,-254.78,471.66],[0.00178217,-0.584033,-0.810695,0.0409397],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveJ pSafe, vb, z5, tool0;
ENDPROC

PROC rPlaceT()
    MoveJ Psafe,vb,z5,tool0;
    MoveJ [[-92.91,-254.78,471.66],[0.00177245,-0.584016,-0.810707,0.0409467],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveL Offs (pPickT,0,80,200), vb, z5, tool0;
    MoveL Offs(pPickT,0,80,15), vb, fine, tool0;
    MoveL Offs(pPickT,0,0,15), vd, fine, tool0;
    MoveL Offs (pPickT,0,0,2), ve, fine, tool0;
    Set DO1;
    waittime 0.5;
    MoveL Offs (pPickT,0,0,20), ve, fine, tool0;
    MoveL Offs (pPickT,0,0,200),vb,z5,tool0;
    MoveL pWork_Home, va, z10, tool0;
ENDPROC

PROC rCheck_Tool()
    TEST nTool
    CASE 1:
    pPickT:=pTool1;
    pPlaceT:=pTool1;
    CASE 2:
    pPickT:=pTool2;
    pPlaceT:=pTool2;
    CASE 3:
    pPickT:=pTool3;
    pPlaceT:=pTool3;
    DEFAULT :
    TPErase ;
    TPWrite"The Tool Number is error,please check it!";
    Stop ;
    ENDTEST
ENDPROC

PROC rPick()
    MoveJ Offs (pPick,0,0,200),vb,z5,tool0;
    MoveL Offs (pPick,0,0,20),vb,z5,tool0;
    MoveL Offs (pPick,0,0,1), vf, fine, tool0;
    Set DO4;
    waittime 0.5;
    MoveL Offs (pPick,0,0,20),vb,z5,tool0;
    MoveJ Offs (pPick,0,0,200),vb,z5,tool0;
ENDPROC

PROC rBanyun()
    rInitialize;
    nTool:=2;
    nCycles:=0;
    rCheck_Tool;
    rPickT;
WHILE TRUE DO 
    Set DO7;
    WaitTime 1;
    Reset DO7;
    MoveJ [[104.59,-260.65,470.51],[0.0289931,0.686697,0.726106,-0.0194063],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z50, tool0;
    MoveJ Offs(pB1,0,0,100),vb,z5,tool0;
    MoveL Offs(pB1,2,-2,2), vd, fine, tool0;
    Set DO7;
    WaitTime 1;
    MoveL Offs (pB1,0,0,50),vb,z5,tool0;
    MoveJ [[263.23,-56.10,330.01],[0.0287096,0.145787,0.98851,-0.0277378],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveJ [[122.97,239.40,359.08],[0.0396323,-0.484889,0.873665,-0.00457718],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveJ Offs (pB0,0,0,50),vb,z5,tool0;
    MoveL Offs(pB0,2,0,1),va,fine,tool0;
    Reset DO7;
    WaitTime 1;
    MoveL Offs(pB0,0,0,100),va,z5,tool0;
    MoveL [[121.35,312.35,380.33],[0.00770765,0.281914,-0.959064,-0.0257111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveJ [[122.97,239.40,359.08],[0.0396596,-0.484904,0.873655,-0.00456897],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], va, z5, tool0;
    MoveJ [[263.23,-56.10,330.00],[0.0287119,0.145785,0.98851,-0.0277393],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], va, z5, tool0;
    MoveJ [[90.31,-253.53,366.45],[0.0115436,0.609294,0.791941,-0.0381842],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], va, z5, tool0;
    
    MoveJ Offs(pB2,0,0,100), va, z5, tool0;
    MoveL Offs (pB2,0,0,2), vd, fine, tool0;
    Set DO7;
    WaitTime 1;
    MoveL Offs (pB2,0,0,50),vb,z5,tool0;
    MoveL Offs(pB1,2,0,50),vb,z5,tool0;
    MoveL Offs(pB1,4,-2,2), vd, fine, tool0;
    Reset DO7;
    WaitTime 1;
    MoveL Offs(pB1,0,0,100),vb,z5,tool0;
    
    MoveL Offs(pB3,0,0,100),vb,z5,tool0;
    MoveL Offs (pB3,0,0,2), vd, fine, tool0;
    Set DO7;
    WaitTime 1;
    MoveL Offs (pB3,0,0,50),vb,z5,tool0;
    MoveL Offs (pB2,0,0,50),vb,z5,tool0;
    MoveL Offs (pB2,0,0,2), vd, fine, tool0;
    Reset DO7;
    WaitTime 1;
    MoveL Offs(pB2,0,0,100),vb,z5,tool0;
    MoveL [[159.99,-249.79,379.19],[0.00631134,0.710102,0.70296,-0.0395135],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveJ [[263.23,-56.10,330.01],[0.0287096,0.145787,0.98851,-0.0277378],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    MoveJ [[122.97,239.40,359.08],[0.0396323,-0.484889,0.873665,-0.00457718],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z5, tool0;
    
    MoveJ Offs(pB0,0,0,100), va, z10, tool0;
    MoveL Offs (pB0,0,0,2), vd, fine, tool0;
    Set DO7;
    WaitTime 1;
    MoveJ Offs (pB0,0,0,50), vb, z10, tool0;
    MoveL [[122.97,239.40,359.08],[0.0396596,-0.484904,0.873655,-0.00456897],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], va, z5, tool0;
    MoveJ [[263.23,-56.10,330.00],[0.0287119,0.145785,0.98851,-0.0277393],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], va, z5, tool0;
    MoveJ [[109.23,-263.36,392.92],[0.0063227,0.710184,0.702883,-0.0394274],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], va, z5, tool0;
    !MoveJ pB00,vb ,z50,tool0 ;
    MoveJ Offs(pB3,0,2,100), va, z5, tool0;
    MoveL Offs(pB3,0,2,2), vd, fine, tool0;
    Reset DO7;
    WaitTime 1;
    MoveJ Offs(pB3,0,0,100),vb,z5,tool0;
    nCycles:=nCycles+1;
    
    IF nCycles > 0 THEN 
        nCycles:=1;
        !MoveJ [[139.43,260.43,435.06],[0.00967201,-0.804241,0.593683,0.0253572],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z50, tool0;
        !MoveJ [[278.80,97.64,435.06],[0.0182121,-0.53413,0.844966,0.0201218],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z50, tool0;
        !MoveJ [[337.73,-63.71,470.53],[0.0167659,-0.455452,-0.889362,0.0362948],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z50, tool0;
        MoveJ Psafe,vb,z5,tool0;
        rPlaceT;
        TPErase ;
        TPWrite "The program is completed!";
        TPWrite "Now the robot is going to perform the playback program!";
        WaitTime 2;
        IF DOutput(Do_State) = 0 THEN
        	Stop;
        ENDIF
        RETURN;
    ENDIF
ENDWHILE 
ENDPROC 

PROC rHanjie()
    rInitialize;
    nTool:=1;
    rCheck_Tool;
    rPickT;
    WaitGI GiCtrl, 0;
WHILE TRUE DO 
    MoveJ pH10,vb,z50,tool0;
    MoveJ pH20, vb, fine, tool0;
    Set DO8;
    MoveJ pH30, vb, z50, tool0;
    MoveJ pH40, vb, z50, tool0;
    MoveJ pH50, vb, z50, tool0;
    MoveJ pH60, vb, z50, tool0;
    MoveL pH80, vd, fine, tool0;
    PulseDO\PLength:=0.5, DO6;
    MoveL pH90, speedweld, fine, tool0;
    MoveL pH100, vd, fine, tool0;
    Reset DO8;
    WaitTime 0.5;
    MoveL pH110, vd, fine, tool0;
    MoveL pH120, ve, fine, tool0;
    PulseDO\PLength:=0.5, DO6;
    WaitTime 4;
    MoveL pH130, vb, fine, tool0;
    MoveJ pH150, vb, fine, tool0;
    MoveL pH140, vd, fine, tool0;
    WaitTime 3;
    MoveL pH160, vb, z10, tool0;
    MoveJ pH170, vb, z10, tool0;
    MoveJ [[-160.62,308.51,525.51],[0.00382567,0.771087,-0.613968,0.168683],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ [[155.52,226.49,525.49],[0.119527,0.649594,-0.741323,0.119082],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ pH180, vb, z10, tool0;
    MoveJ pH190, vb, z10, tool0;
    MoveJ pSafe, vb, z10, tool0;
    rPlaceT;
    IF DOutput(Do_State) = 0 THEN
    	Stop;
    ENDIF
    RETURN;
ENDWHILE 
ENDPROC 

PROC rModPos()
MoveL pWork_Home,v10,fine,tool0;
MoveL pPick,v10,fine,tool0;
MoveL pTool1, v10, fine, tool0;
MoveL pTool2, v10, fine, tool0;
MoveL pTool3,v10,fine,tool0;
MoveL pM1,v10,fine,tool0;
MoveL pM2,v10,fine,tool0;
MoveL pM3,v10,fine,tool0;
MoveL pM4,v10,fine,tool0;
MoveJ pMs1, v10, fine, tool0;
MoveJ pMs2, v10, fine, tool0;
MoveJ pMx, v10, fine, tool0;
MoveJ pMy, v10, fine, tool0;
MoveL pZ, v10, fine, tool0;
MoveL pB0,v10,fine,tool0;
!Handling placement point
MoveL pB1,v10,fine,tool0;
MoveL pB2,v10,fine,tool0;
MoveL pB3, v10, fine, tool0;


ENDPROC

PROC rZhuangP()
    rInitialize;
    nTool := 2;
    nCycles:=0;
    rCheck_Tool;
    rPickT;
    WaitGI GiCtrl, 0;
    MoveJ [[320.62,12.12,470.52],[0.00577737,-0.104463,0.993726,-0.0395314],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z15, tool0;
    MoveJ [[189.49,258.92,470.51],[0.0145715,-0.701011,0.712031,-0.0371916],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z15, tool0;
    MoveJ [[64.41,319.19,489.21],[0.0453377,0.000388377,0.998527,0.0298078],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z15, tool0;
    WHILE TRUE DO 
    PulseDO\PLength:=0.5, DO7;
    MoveJ Offs(pB3,0,0,100),vb,z5,tool0;
    MoveL Offs(pB3,0,0,2), vd, fine, tool0;
    Set DO7;
    WaitTime 1;
    MoveL Offs(pB3,0,0,150),vb,z5,tool0;
    MoveJ [[-83.32,299.23,526.85],[0.007524,0.281617,-0.959147,-0.0259492],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ [[-83.33,399.39,529.14],[0.00754599,0.281671,-0.959132,-0.0259001],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ [[-230.54,399.38,529.14],[0.00754866,0.281661,-0.959135,-0.0259046],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ [[-231.87,403.96,523.05],[0.00754876,0.281732,-0.959114,-0.0258841],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveL [[-231.87,403.96,511.24],[0.00756239,0.281724,-0.959116,-0.0259046],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vf, fine, tool0;
FOR i FROM 1TO 6 DO
    PulseDO\PLength:=0.5, DO6;
    Set DO7;
    WaitTime 0.5;
    MoveL Offs(pZ,0,0,-8), vz, fine, tool0;
    Reset DO7;
    WaitTime 0.5;
    MoveL Offs(pZ,0,0,0), vf, fine, tool0;
ENDFOR
    MoveL Offs(pZ,0,0,50), vb, fine, tool0;
    MoveJ [[-73.85,402.22,561.19],[0.00754583,0.281669,-0.959134,-0.0258454],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, z10, tool0;
    MoveJ [[-18.34,231.05,561.19],[0.00757441,0.281674,-0.959133,-0.0258244],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ [[159.40,168.27,561.19],[0.0192427,-0.505213,0.862575,0.0188149],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    MoveJ [[231.25,-15.76,561.18],[0.0254195,-0.0894198,0.995631,0.00882088],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z10, tool0;
    !Stop;
IF TRUE THEN 
    MoveJ Psafe,vb,z5,tool0;
    rPlaceT;
    TPErase ;
    TPWrite "The program is completed!";
    TPWrite "Now the robot is going to perform the playback program!";
    WaitTime 0.2;
    IF DOutput(Do_State) = 0 THEN
    	Stop;
    ENDIF
    RETURN;
ENDIF
ENDWHILE
ENDPROC
	PROC pickup()
		MoveJ [[373.70,-30.72,280.33],[0.00200984,0.999484,-0.019488,0.0254375],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		MoveL [[373.73,-30.74,240.79],[0.00201781,0.999482,-0.0195289,0.0255031],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		MoveL [[373.73,-30.74,143.07],[0.00201489,0.999482,-0.019524,0.0255126],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		Set DO4;
		WaitTime 0.3;
		MoveL [[373.73,-30.74,240.79],[0.00201781,0.999482,-0.0195289,0.0255031],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		MoveJ [[33.71,342.51,359.07],[0.00856681,-0.727125,-0.68637,-0.0105479],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		MoveL [[33.71,342.55,188.93],[0.00864409,-0.727124,-0.686369,-0.0106321],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		Reset DO4;
		MoveL [[33.71,342.54,319.02],[0.00865615,-0.727126,-0.686367,-0.0106232],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		MoveJ [[300.36,168.09,319.02],[0.00275195,-0.962243,-0.271845,-0.0134221],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
		MoveJ [[373.71,-30.73,280.33],[0.00201268,0.999484,-0.0194994,0.025456],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, z20, tool0;
	ENDPROC
	PROC DaSai()
		CONST robtarget p400:=[[285.09,30.64,226.96],[8.55865E-05,0.000394702,-1,4.03534E-05],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
		VAR robtarget p500:=[[270.18,112.80,226.97],[8.05854E-05,0.00036996,-1,4.13115E-05],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
		CONST robtarget p510:=[[349.12,362.24,140.89],[0.0270629,3.95102E-05,0.999634,-0.000138697],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	SocketClose socket1;
	SocketCreate socket1;
	SocketConnect socket1, "192.168.10.6", 1025;
	WaitTime 0.2;
	nTool := 3;
	rCheck_Tool;
	rPickT;
	MoveJ p400, v300, z50, tool0;
WHILE TRUE DO
	SocketSend socket1\Str:="opencamera";
	SocketReceive socket1\Str:=Restring\Time:=WAIT_MAX;
	IF Restring <> "" THEN
		IF Restring <> "END" THEN
        X_pos := StrToVal(StrPart(Restring,1,3),X_pose);
        Y_pos := StrToVal(StrPart(Restring,4,3),Y_pose);
        p500.trans.x := X_pose;
        p500.trans.y := Y_pose;
        MoveJ p500, v300, fine, tool0;
        MoveL Offs(p500,0,0,-99), v100, fine, tool0;
        Set DO4;
        WaitTime 0.5;
        MoveL p500, v300, fine, tool0;
        MoveJ [[275.19,268.99,227.69],[0.000100283,0.584357,-0.811497,-4.98449E-06],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
        MoveJ [[154.02,268.99,347.77],[0.000107354,0.702661,-0.711524,-1.7576E-05],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
        MoveJ [[-66.80,285.35,347.76],[0.000157066,0.7027,-0.711486,5.65573E-05],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
        Reset DO4;
        Waittime 0.5;
        MoveJ [[154.02,268.99,347.77],[0.000107354,0.702661,-0.711524,-1.7576E-05],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v300, fine, tool0;
        MoveJ p400, v300, fine, tool0;
			Restring := "";
			WaitTime 1;
		ELSE
        rPlaceT;
        IF DOutput(Do_State) = 0 THEN
        	Stop;
        ENDIF
        RETURN;
		ENDIF
	ENDIF
ENDWHILE
	ENDPROC
	PROC ChenYiFa()
    rInitialize;
    nTool:=1;
    rCheck_Tool;
    rPickT;
    WHILE TRUE DO
    	MoveJ [[320.54,14.43,470.52],[0.033613,0.674326,0.737351,-0.0216106],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveJ [[320.64,135.55,384.68],[0.0117462,0.677256,0.735322,0.0220862],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveJ [[218.74,251.79,245.74],[0.0117453,0.677272,0.735307,0.0220779],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveL [[218.73,410.29,245.73],[0.00414448,-0.67639,-0.735267,-0.0431377],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveL [[166.32,397.69,220.44],[0.0040979,-0.676557,-0.735109,-0.0432323],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, fine, tool0;
    	FOR yifa FROM 1 TO 1 DO
    	MoveL [[166.32,397.69,220.44],[0.0040979,-0.676557,-0.735109,-0.0432323],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[130.02,398.11,221.48],[0.00411102,-0.676378,-0.735274,-0.0432199],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[128.57,409.37,221.48],[0.00409648,-0.676429,-0.735229,-0.043189],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[123.96,416.80,221.47],[0.00405947,-0.676447,-0.735214,-0.0431741],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[-24.21,491.79,223.31],[0.00405666,-0.676457,-0.735206,-0.043153],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveC [[-56.10,491.80,221.67],[0.0040339,-0.676491,-0.735172,-0.0431947],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], [[-64.41,471.23,224.42],[0.00402477,-0.676475,-0.735187,-0.0431873],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, z10, tool0;
    	MoveL [[-31.63,414.32,220.47],[0.00403817,-0.676457,-0.735204,-0.0431823],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveC [[-30.00,406.45,220.47],[0.0040616,-0.67645,-0.735209,-0.0431952],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], [[-32.94,389.55,220.46],[0.00408055,-0.676443,-0.735214,-0.0432369],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, z10, tool0;
    	MoveL [[-68.14,338.31,219.17],[0.00408692,-0.676461,-0.735197,-0.043236],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveC [[-65.46,316.70,216.82],[0.00409957,-0.676466,-0.735191,-0.0432521],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], [[-33.78,312.22,219.04],[0.00410002,-0.676462,-0.735194,-0.0432792],[1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, z10, tool0;
    	MoveL [[117.17,377.54,219.90],[0.00408177,-0.676497,-0.735159,-0.0433168],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[126.95,386.13,220.45],[0.00408574,-0.676511,-0.735146,-0.043324],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[130.43,398.78,220.45],[0.00409473,-0.676569,-0.735097,-0.0432507],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vc, fine, tool0;
    	MoveL [[166.32,397.69,220.44],[0.00410351,-0.676557,-0.735108,-0.0432368],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, fine, tool0;
    	ENDFOR
    	MoveL [[166.32,397.69,220.44],[0.00410351,-0.676557,-0.735108,-0.0432368],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, fine, tool0;
    	MoveL [[218.73,410.29,245.73],[0.00414448,-0.67639,-0.735267,-0.0431377],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveJ [[218.74,251.79,245.74],[0.0117453,0.677272,0.735307,0.0220779],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveJ [[320.64,135.55,384.68],[0.0117462,0.677256,0.735322,0.0220862],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	MoveJ [[320.54,14.43,470.52],[0.033613,0.674326,0.737351,-0.0216106],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], vb, z20, tool0;
    	rPlaceT;
    	IF DOutput(Do_State) = 0 THEN
    		Stop;
    	ENDIF
    	RETURN;
    ENDWHILE
	ENDPROC

ENDMODULE
