.class public Lcom/fh/lib/FHSDK;
.super Ljava/lang/Object;
.source "FHSDK.java"


# static fields
.field public static final PLAY_TYPE_LOCATE_PLAYBACK:I = 0x3

.field public static final PLAY_TYPE_PREVIEW:I = 0x0

.field public static final PLAY_TYPE_REMOTE_PLAYBACK:I = 0x2

.field public static final PLAY_TYPE_UDP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "SDL"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    const-string v0, "FHDEV_Discover"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    const-string v0, "FHDEV_Net"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    const-string v0, "main"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native TestWifiConfig(ILcom/fh/lib/Define$WifiConfig;)I
.end method

.method public static native apiCleanup()I
.end method

.method public static native apiInit()I
.end method

.method public static native changeStreamType(II)Z
.end method

.method public static native closeAudio(I)I
.end method

.method public static native closeSearchRecord(I)I
.end method

.method public static native continuePBPlay()Z
.end method

.method public static native getCurrentPts()J
.end method

.method public static native getDevStatus()I
.end method

.method public static native getEncodeVideoConfig(IILcom/fh/lib/Define$VideoEncode;)I
.end method

.method public static native getEncodeVideoConfig2(IILcom/fh/lib/Define$VideoEncode;)I
.end method

.method public static native getIPConfig(ILcom/fh/lib/Define$IpConfig;)I
.end method

.method public static native getInterruptFlag()Z
.end method

.method public static native getMDAlarm()I
.end method

.method public static native getRealAudioState()Z
.end method

.method public static native getRecProgress()I
.end method

.method public static native getRecTimeInfo(Lcom/fh/lib/Define$PBRecTime;)Z
.end method

.method public static native getRemoteRecordState(I)Z
.end method

.method public static native getSDCardFormatState(Lcom/fh/lib/Define$SDCardFormat;)Z
.end method

.method public static native getSDCardInfo(ILcom/fh/lib/Define$SDCardInfo;)Z
.end method

.method public static native getTalkUnitSize(I)I
.end method

.method public static native getVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z
.end method

.method public static native getWifiConfig(ILcom/fh/lib/Define$WifiConfig;)I
.end method

.method public static native jumpPlayBack(J)I
.end method

.method public static native loadSDCard(I)Z
.end method

.method public static native locateContinuePBPlay()Z
.end method

.method public static native locateJumpPlayBack(I)Z
.end method

.method public static native locatePausePBPlay()Z
.end method

.method public static native login(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native logout(I)I
.end method

.method public static native mirrorCtrl(II)Z
.end method

.method public static native nativeCallBack()V
.end method

.method public static native openAudio(I)I
.end method

.method public static native pausePBPlay()Z
.end method

.method public static native playFrame()I
.end method

.method public static native quitVideoPlay()I
.end method

.method public static native registerDevNotifyFun()I
.end method

.method public static native registerDevStateFun()I
.end method

.method public static native resetDev(I)I
.end method

.method public static native restartDev(I)I
.end method

.method public static native searchCleanup()I
.end method

.method public static native searchDev()I
.end method

.method public static native searchDevClose(I)I
.end method

.method public static native searchInit()I
.end method

.method public static native searchNextDev(ILcom/fh/lib/Define$DevSearch;)I
.end method

.method public static native searchNextRecord(ILcom/fh/lib/Define$Record;)I
.end method

.method public static native searchRecord(ILcom/fh/lib/Define$RecSearch;)I
.end method

.method public static native sendSerial(I[BI)Z
.end method

.method public static native sendTalkData([BIII)I
.end method

.method public static native sendToSerialPort(III[BI)Z
.end method

.method public static native setCryptKey([B)I
.end method

.method public static native setDevName(ILjava/lang/String;)I
.end method

.method public static native setEncodeVideoConfig2(IILcom/fh/lib/Define$VideoEncode;)I
.end method

.method public static native setIPConfig(ILcom/fh/lib/Define$IpConfig;)I
.end method

.method public static native setLocatePBSpeed(I)Z
.end method

.method public static native setPBSpeed(I)Z
.end method

.method public static native setPlayInfo(Lcom/fh/lib/PlayInfo;)I
.end method

.method public static native setShowRect(Landroid/graphics/Rect;Z)I
.end method

.method public static native setShowRect3D(Landroid/graphics/Rect;)I
.end method

.method public static native setVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z
.end method

.method public static native setWifiConfig(ILcom/fh/lib/Define$WifiConfig;)I
.end method

.method public static native shot(ILjava/lang/String;Z)Z
.end method

.method public static native startLocalRecord(Ljava/lang/String;)Z
.end method

.method public static native startRemoteRecord(I)Z
.end method

.method public static native startSDCardFormat(II)Z
.end method

.method public static native startSerial(IIILcom/fh/lib/Define$SerialDataCallBackInterface;)I
.end method

.method public static native startTalk(I)I
.end method

.method public static native stopLocalRecord()Z
.end method

.method public static native stopRemoteRecord(I)Z
.end method

.method public static native stopSDCardFormat()Z
.end method

.method public static native stopSerial(I)Z
.end method

.method public static native stopTalk()I
.end method

.method public static native timeConvert(IJ)Ljava/lang/String;
.end method

.method public static native unLoadSDCard(I)Z
.end method
