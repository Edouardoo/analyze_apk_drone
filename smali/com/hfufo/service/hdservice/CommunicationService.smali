.class public Lcom/hfufo/service/hdservice/CommunicationService;
.super Landroid/app/Service;
.source "CommunicationService.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;
.implements Lcom/fh/hdutil/IActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;,
        Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECT_DEVICE:Ljava/lang/String; = "ACTION_CONNECT_DEVICE"

.field public static final ACTION_DISCONNECT_DEVICE:Ljava/lang/String; = "ACTION_DISCONNECT_DEVICE"

.field public static final ACTION_RE_DEVICE:Ljava/lang/String; = "ACTION_RE_DEVICE"

.field private static final MSG_CONNECTFAIL_CTP:I = 0x14

.field private static final MSG_CONNECT_CTP:I = 0x11

.field private static final MSG_DISCONNECT_CTP:I = 0x12

.field public static final MSG_HEARTBEAT_CONNECTION_TIMEOUT:I = 0x10

.field private static final MSG_RECONNECT_CTP:I = 0x13

.field private static final tag:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private change5G:Z

.field private clearThumbTask:Lcom/task/ClearThumbTask;

.field private connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private fRunning:Z

.field i:I

.field private isReceiveBumpingData:Z

.field private loadDeviceDesTxt:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

.field private mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mCrashVideoListener:Lcom/task/VideoServer$CrashVideoListener;

.field private mFrameRate:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeartbeatTask:Lcom/task/HeartbeatTask;

.field private mSampleRate:I

.field private mServer1:Lcom/task/SDPServer;

.field private mServer2:Lcom/task/SDPServer;

.field private final onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private pictureSize:I

.field private release:Z

.field resetRe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hfufo/service/hdservice/CommunicationService;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    const-string v0, "CommunicationService"

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;

    invoke-direct {v0, v3}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;-><init>(Lcom/hfufo/service/hdservice/CommunicationService$1;)V

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v3, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    .line 83
    iput-boolean v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->change5G:Z

    .line 84
    iput-boolean v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->fRunning:Z

    .line 90
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mFrameRate:I

    .line 91
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mSampleRate:I

    .line 140
    iput-boolean v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->resetRe:Z

    .line 243
    new-instance v0, Lcom/hfufo/service/hdservice/CommunicationService$1;

    invoke-direct {v0, p0}, Lcom/hfufo/service/hdservice/CommunicationService$1;-><init>(Lcom/hfufo/service/hdservice/CommunicationService;)V

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 806
    iput v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->i:I

    .line 807
    new-instance v0, Lcom/hfufo/service/hdservice/CommunicationService$2;

    invoke-direct {v0, p0}, Lcom/hfufo/service/hdservice/CommunicationService$2;-><init>(Lcom/hfufo/service/hdservice/CommunicationService;)V

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 898
    iput-boolean v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->release:Z

    .line 1011
    new-instance v0, Lcom/hfufo/service/hdservice/CommunicationService$3;

    invoke-direct {v0, p0}, Lcom/hfufo/service/hdservice/CommunicationService$3;-><init>(Lcom/hfufo/service/hdservice/CommunicationService;)V

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mCrashVideoListener:Lcom/task/VideoServer$CrashVideoListener;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/hfufo/service/hdservice/CommunicationService;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/service/hdservice/CommunicationService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->isReceiveBumpingData:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->isReceiveBumpingData:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/hfufo/service/hdservice/CommunicationService;->cachePlaybackVideoParam(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/hfufo/service/hdservice/CommunicationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getRtsFormat()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/hfufo/service/hdservice/CommunicationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mFrameRate:I

    return v0
.end method

.method static synthetic access$1400(Lcom/hfufo/service/hdservice/CommunicationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mSampleRate:I

    return v0
.end method

.method static synthetic access$1500(Lcom/hfufo/service/hdservice/CommunicationService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/hfufo/service/hdservice/CommunicationService;->initSdpServer(III)V

    return-void
.end method

.method static synthetic access$1700()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->setDefautParam()V

    return-void
.end method

.method static synthetic access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/service/hdservice/CommunicationService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->change5G:Z

    return v0
.end method

.method static synthetic access$302(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->change5G:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hfufo/service/hdservice/CommunicationService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->fRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->fRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/task/HeartbeatTask;)Lcom/task/HeartbeatTask;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Lcom/task/HeartbeatTask;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hfufo/service/hdservice/CommunicationService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/ClearThumbTask;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->clearThumbTask:Lcom/task/ClearThumbTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/task/ClearThumbTask;)Lcom/task/ClearThumbTask;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Lcom/task/ClearThumbTask;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->clearThumbTask:Lcom/task/ClearThumbTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->loadDeviceDesTxt:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    return-object v0
.end method

.method static synthetic access$802(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;
    .param p1, "x1"    # Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->loadDeviceDesTxt:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    return-object p1
.end method

.method static synthetic access$900(Lcom/hfufo/service/hdservice/CommunicationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->releaseSdp()V

    return-void
.end method

.method private cachePlaybackVideoParam(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;Ljava/lang/String;)V
    .locals 15
    .param p1, "data"    # Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .param p2, "preferencesName"    # Ljava/lang/String;

    .prologue
    .line 1254
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1255
    sget-object v13, Lcom/hfufo/service/hdservice/CommunicationService;->tag:Ljava/lang/String;

    const-string v14, "cachePlaybackVideoParam is null"

    invoke-static {v13, v14}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    const-string v14, "w"

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1259
    .local v11, "strWidth":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    const-string v14, "h"

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1260
    .local v9, "strHeight":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    const-string v14, "format"

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1261
    .local v7, "strFormat":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    const-string v14, "fps"

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1262
    .local v8, "strFrameRate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    const-string v14, "rate"

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1263
    .local v10, "strSampleRate":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1264
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1265
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1266
    .local v12, "width":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1267
    .local v4, "height":I
    const-string v13, "playback_v_width"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v12}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1268
    const-string v13, "playback_a_height"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1269
    invoke-static {v12, v4}, Lcom/fh/hdutil/AppUtils;->adjustRtsResolution(II)I

    move-result v5

    .line 1270
    .local v5, "resolutionLevel":I
    const-string v13, "VIDEO_PARAM"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1271
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/hfufo/bean/DeviceSettingInfo;->setFrontRecordLevel(I)V

    .line 1272
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/hfufo/bean/DeviceSettingInfo;->setFrontLevel(I)V

    .line 1278
    .end local v4    # "height":I
    .end local v5    # "resolutionLevel":I
    .end local v12    # "width":I
    :cond_2
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1279
    const/4 v2, 0x1

    .line 1281
    .local v2, "format":I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1285
    :goto_2
    const-string v13, "VIDEO_PARAM"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1286
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/hfufo/bean/DeviceSettingInfo;->setFrontFormat(I)V

    .line 1287
    const-string v13, "playback_v_format"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v2}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1293
    .end local v2    # "format":I
    :cond_3
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1294
    const/16 v3, 0x1e

    .line 1296
    .local v3, "frameRate":I
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1300
    :goto_4
    const-string v13, "VIDEO_PARAM"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1301
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/hfufo/bean/DeviceSettingInfo;->setFrontRate(I)V

    .line 1302
    const-string v13, "playback_v_fps"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v3}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1308
    .end local v3    # "frameRate":I
    :cond_4
    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1309
    const/16 v6, 0x1f40

    .line 1311
    .local v6, "sampleRate":I
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 1315
    :goto_6
    const-string v13, "VIDEO_PARAM"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1316
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/hfufo/bean/DeviceSettingInfo;->setFrontSampleRate(I)V

    .line 1317
    const-string v13, "playback_a_sample"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v6}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1274
    .end local v6    # "sampleRate":I
    .restart local v4    # "height":I
    .restart local v5    # "resolutionLevel":I
    .restart local v12    # "width":I
    :cond_5
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearRecordLevel(I)V

    .line 1275
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearLevel(I)V

    goto/16 :goto_1

    .line 1282
    .end local v4    # "height":I
    .end local v5    # "resolutionLevel":I
    .end local v12    # "width":I
    .restart local v2    # "format":I
    :catch_0
    move-exception v1

    .line 1283
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 1289
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearFormat(I)V

    .line 1290
    const-string v13, "playback_v_format"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v2}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1297
    .end local v2    # "format":I
    .restart local v3    # "frameRate":I
    :catch_1
    move-exception v1

    .line 1298
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 1304
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearRate(I)V

    .line 1305
    const-string v13, "playback_v_format"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v3}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 1312
    .end local v3    # "frameRate":I
    .restart local v6    # "sampleRate":I
    :catch_2
    move-exception v1

    .line 1313
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_6

    .line 1319
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    iget-object v13, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v13}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearSampleRate(I)V

    .line 1320
    const-string v13, "playback_a_sample"

    move-object/from16 v0, p2

    invoke-static {v0, v13, v6}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private getRtsFormat()I
    .locals 3

    .prologue
    .line 996
    const/4 v0, 0x1

    .line 997
    .local v0, "format":I
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontFormat()I

    move-result v0

    .line 1002
    if-nez v0, :cond_0

    .line 1003
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainApplication;->setJPEG(Z)V

    .line 1007
    :goto_0
    return v0

    .line 1005
    :cond_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainApplication;->setJPEG(Z)V

    goto :goto_0
.end method

.method private initSdpServer(III)V
    .locals 4
    .param p1, "frameRate"    # I
    .param p2, "sampleRate"    # I
    .param p3, "mRTSType"    # I

    .prologue
    .line 949
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    if-nez v1, :cond_0

    .line 951
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSdpServer1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v1, Lcom/task/SDPServer;

    const/16 v2, 0x1a85

    invoke-direct {v1, v2, p3}, Lcom/task/SDPServer;-><init>(II)V

    iput-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    .line 955
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    const/16 v2, 0x1a0a

    invoke-virtual {v1, v2}, Lcom/task/SDPServer;->setRtpVideoPort(I)V

    .line 956
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    const/16 v2, 0x4d2

    invoke-virtual {v1, v2}, Lcom/task/SDPServer;->setRtpAudioPort(I)V

    .line 957
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    invoke-virtual {v1}, Lcom/task/SDPServer;->start()V

    .line 958
    invoke-virtual {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 961
    :cond_0
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    if-nez v1, :cond_1

    .line 962
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSdpServer2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    new-instance v1, Lcom/task/SDPServer;

    const/16 v2, 0x1ae0

    invoke-direct {v1, v2, p3}, Lcom/task/SDPServer;-><init>(II)V

    iput-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    .line 966
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    const/16 v2, 0x1a0c

    invoke-virtual {v1, v2}, Lcom/task/SDPServer;->setRtpVideoPort(I)V

    .line 967
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    const/16 v2, 0x4d4

    invoke-virtual {v1, v2}, Lcom/task/SDPServer;->setRtpAudioPort(I)V

    .line 968
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    invoke-virtual {v1}, Lcom/task/SDPServer;->start()V

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    .line 971
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 972
    .local v0, "openRTS":Landroid/content/Intent;
    const-string v1, "openrts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/hdutil/DeviceClientCmd;->TryToGetCameraType()V

    .line 975
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/hdutil/DeviceClientCmd;->getWifiChange()V

    .line 976
    return-void
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 901
    const-string v0, "123456"

    const-string v1, "release: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->release:Z

    .line 903
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    .line 904
    sget-object v0, Lcom/hfufo/service/hdservice/CommunicationService;->tag:Ljava/lang/String;

    const-string v1, "======= (( release )) ====="

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 906
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 907
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 908
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->clearThumbTask:Lcom/task/ClearThumbTask;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->clearThumbTask:Lcom/task/ClearThumbTask;

    invoke-virtual {v0}, Lcom/task/ClearThumbTask;->stopClear()V

    .line 910
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->clearThumbTask:Lcom/task/ClearThumbTask;

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->loadDeviceDesTxt:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->loadDeviceDesTxt:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-virtual {v0}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->interrupt()V

    .line 914
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->loadDeviceDesTxt:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    invoke-virtual {v0}, Lcom/task/HeartbeatTask;->stopRunning()V

    .line 918
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    invoke-virtual {v0}, Lcom/task/SDPServer;->stopRunning()V

    .line 926
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    if-eqz v0, :cond_4

    .line 929
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    invoke-virtual {v0}, Lcom/task/SDPServer;->stopRunning()V

    .line 930
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    .line 932
    :cond_4
    return-void
.end method

.method private releaseSdp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 935
    const-string v0, "123456"

    const-string v1, "releaseSdp -"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    .line 937
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    invoke-virtual {v0}, Lcom/task/SDPServer;->stopRunning()V

    .line 939
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    invoke-virtual {v0}, Lcom/task/SDPServer;->stopRunning()V

    .line 943
    iput-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer2:Lcom/task/SDPServer;

    .line 945
    :cond_1
    return-void
.end method

.method private sdpConnected()Z
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    invoke-virtual {v0}, Lcom/task/SDPServer;->isConnected()Z

    move-result v0

    return v0
.end method

.method private static setDefautParam()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x438

    const/16 v6, 0x2d0

    const/4 v5, 0x1

    .line 1326
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v0

    .line 1327
    .local v0, "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v0, :cond_2

    .line 1328
    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getPhoto_size()Ljava/lang/String;

    move-result-object v1

    .line 1329
    .local v1, "photoSize":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getVidec_save()Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, "videoSaveSize":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getStream_size()Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "streamSize":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1335
    const/16 v4, 0x500

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 1336
    sput v6, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 1337
    sput v8, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    .line 1355
    :cond_0
    :goto_0
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1356
    const/16 v4, 0x1e0

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 1368
    :cond_1
    :goto_1
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1369
    invoke-static {v8}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    .line 1378
    .end local v1    # "photoSize":Ljava/lang/String;
    .end local v2    # "streamSize":Ljava/lang/String;
    .end local v3    # "videoSaveSize":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 1338
    .restart local v1    # "photoSize":Ljava/lang/String;
    .restart local v2    # "streamSize":Ljava/lang/String;
    .restart local v3    # "videoSaveSize":Ljava/lang/String;
    :cond_3
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1339
    const/16 v4, 0x780

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 1340
    sput v7, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 1341
    sput v5, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 1342
    :cond_4
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1343
    const/16 v4, 0xcc0

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 1344
    const/16 v4, 0x990

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 1345
    sput v9, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 1346
    :cond_5
    const-string v4, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1347
    const/16 v4, 0x1000

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 1348
    const/16 v4, 0xc00

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 1349
    const/4 v4, 0x3

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 1350
    :cond_6
    const-string v4, "-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1351
    const/16 v4, 0x780

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 1352
    sput v7, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 1353
    sput v5, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 1357
    :cond_7
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1358
    sput v6, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    goto :goto_1

    .line 1359
    :cond_8
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1360
    sput v7, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    goto :goto_1

    .line 1361
    :cond_9
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1362
    const/16 v4, 0x800

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    goto :goto_1

    .line 1363
    :cond_a
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1364
    const/16 v4, 0xc18

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    goto/16 :goto_1

    .line 1365
    :cond_b
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1366
    sput v6, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    goto/16 :goto_1

    .line 1370
    :cond_c
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1371
    invoke-static {v5}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    goto/16 :goto_2

    .line 1372
    :cond_d
    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1373
    invoke-static {v9}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    goto/16 :goto_2

    .line 1374
    :cond_e
    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1375
    invoke-static {v5}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    goto/16 :goto_2
.end method

.method private startSdpServer(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .param p2, "preferencesName"    # Ljava/lang/String;

    .prologue
    .line 1224
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1225
    sget-object v6, Lcom/hfufo/service/hdservice/CommunicationService;->tag:Ljava/lang/String;

    const-string v7, "cachePlaybackVideoParam is null"

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :goto_0
    return-void

    .line 1229
    :cond_0
    const/16 v1, 0x1e

    .line 1230
    .local v1, "frameRate":I
    const/16 v5, 0x1f40

    .line 1231
    .local v5, "sampleRate":I
    const/4 v0, -0x1

    .line 1233
    .local v0, "format":I
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    const-string v7, "format"

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1234
    .local v2, "rtsFormat":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    const-string v7, "fps"

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1235
    .local v3, "rtsFrameRate":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    const-string v7, "rate"

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1236
    .local v4, "rtsSampleRate":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1238
    const-string v6, "live_a_sample"

    invoke-static {p2, v6, v5}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1240
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1242
    const-string v6, "live_v_fps"

    invoke-static {p2, v6, v1}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1244
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1246
    const-string v6, "live_v_format"

    invoke-static {p2, v6, v0}, Lcom/micro/util/PreferencesHelper;->putIntValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1249
    :cond_3
    invoke-direct {p0, v1, v5, v0}, Lcom/hfufo/service/hdservice/CommunicationService;->initSdpServer(III)V

    goto :goto_0
.end method

.method private stopHeart()V
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    invoke-virtual {v1}, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    invoke-virtual {v1}, Lcom/task/HeartbeatTask;->stopRunning()V

    .line 864
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHeartbeatTask:Lcom/task/HeartbeatTask;

    .line 867
    :cond_1
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->release()V

    .line 868
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 869
    .local v0, "intentNet":Landroid/content/Intent;
    const-string v1, "net_lost"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const-string v1, "Heartbeat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 871
    invoke-virtual {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 878
    return-void
.end method


# virtual methods
.method public connectDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1203
    const-string v0, "123456"

    const-string v1, "connectDevice-service: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v0, "CommunicationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second, connect device IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v3}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(I)V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v3, p1}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getConnectedWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1381
    const-string v3, ""

    .line 1384
    .local v3, "strIp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1385
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1386
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 1388
    .local v2, "ip":I
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->intToIp(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1395
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v2    # "ip":I
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 1391
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->release:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "123456"

    const-string v1, "release init"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->release:Z

    .line 138
    :cond_0
    return-void
.end method

.method public isConnceted1()Z
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    if-nez v0, :cond_0

    .line 1217
    const/4 v0, 0x0

    .line 1219
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    invoke-virtual {v0}, Lcom/task/SDPServer;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 111
    const-string v1, "123456"

    const-string v2, "onCreate-service: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 114
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 123
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/hfufo/service/hdservice/CommunicationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "share":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService;->editor:Landroid/content/SharedPreferences$Editor;

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 883
    const-string v0, "123456"

    const-string v1, "Communication-onDestroy"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->release()V

    .line 885
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->release()V

    .line 886
    invoke-static {}, Lcom/fh/util/ClientManager;->release()V

    .line 887
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 888
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v9, 0x11

    const/4 v6, 0x1

    .line 145
    if-nez p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v6

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 150
    const-string v7, "123456"

    const-string v8, "onStartCommand-action != null: "

    invoke-static {v7, v8}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 152
    const-string v7, "service_command"

    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 153
    .local v1, "cmd":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    const-string v4, "123456"

    const-string v7, "ACTION_CONNECT_DEVICE: "

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "connect_ip"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "ip":Ljava/lang/String;
    iget-object v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    iget-boolean v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->resetRe:Z

    if-eqz v4, :cond_0

    .line 162
    iput-boolean v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->resetRe:Z

    .line 163
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v4, v5}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 164
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v4, v5}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    goto :goto_0

    .line 153
    .end local v2    # "ip":Ljava/lang/String;
    :sswitch_0
    const-string v7, "ACTION_CONNECT_DEVICE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v7, "ACTION_DISCONNECT_DEVICE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v7, "ACTION_RE_DEVICE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    .line 169
    :pswitch_1
    const-string v4, "123456"

    const-string v5, "ACTION_DISCONNECT_DEVICE: "

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->releaseSdp()V

    .line 171
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    goto/16 :goto_0

    .line 175
    :pswitch_2
    const-string v4, "123456"

    const-string v5, "ACTION_RE_DEVICE: "

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-boolean v6, p0, Lcom/hfufo/service/hdservice/CommunicationService;->resetRe:Z

    .line 177
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v4, v5}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 178
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v4, v5}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 179
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/lib/dv/control/DeviceClient;->release()V

    .line 180
    invoke-static {}, Lcom/fh/util/ClientManager;->release()V

    goto/16 :goto_0

    .line 187
    .end local v1    # "cmd":I
    :cond_3
    const-string v7, "service_command"

    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 190
    .restart local v1    # "cmd":I
    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_0

    .line 193
    :sswitch_3
    const-string v4, "123456"

    const-string v5, "SERVICE_CMD_CONNECT_CTP "

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "connect_ip"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .restart local v2    # "ip":Ljava/lang/String;
    iget-object v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 200
    .end local v2    # "ip":Ljava/lang/String;
    :sswitch_4
    const-string v4, "123456"

    const-string v7, "SERVICE_CMD_DISCONNECT_CTP "

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/lib/dv/control/DeviceClient;->disconnect()V

    .line 203
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 204
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 206
    :cond_4
    iget-object v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v4, v5}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    goto/16 :goto_0

    .line 209
    :sswitch_5
    iget-object v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mServer1:Lcom/task/SDPServer;

    invoke-virtual {v4}, Lcom/task/SDPServer;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->releaseSdp()V

    .line 211
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getRtsFormat()I

    move-result v3

    .line 212
    .local v3, "mRTSType":I
    iget v4, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mFrameRate:I

    iget v5, p0, Lcom/hfufo/service/hdservice/CommunicationService;->mSampleRate:I

    invoke-direct {p0, v4, v5, v3}, Lcom/hfufo/service/hdservice/CommunicationService;->initSdpServer(III)V

    goto/16 :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x6ab4836c -> :sswitch_0
        -0x199aa8e7 -> :sswitch_2
        0x5e071d90 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 190
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0xf -> :sswitch_5
    .end sparse-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->release()V

    .line 894
    invoke-virtual {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->stopSelf()V

    .line 895
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 896
    return-void
.end method

.method public sendCommandToService(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    const-string v1, "connect_ip"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    return-void
.end method
