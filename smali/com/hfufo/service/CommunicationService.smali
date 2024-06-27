.class public Lcom/hfufo/service/CommunicationService;
.super Landroid/app/Service;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/util/ICommon;
.implements Lcom/fh/util/IConstants;
.implements Lcom/fh/util/IActions;
.implements Lcom/fh/util/FlyCommand;
.implements Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;
    }
.end annotation


# static fields
.field public static isVga:Z

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final tag:Ljava/lang/String;


# instance fields
.field private appVersion:I

.field private createDeviceSocket:Ljava/lang/Runnable;

.field private getDeviceVersionInfo:Ljava/lang/Runnable;

.field private isRequest:Z

.field private mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

.field private mCommandManager:Lcom/micro/util/CommandManager;

.field private final mHandler:Landroid/os/Handler;

.field private udpDeviceListener:Lcom/jieli/lib/stream/udp/UdpDeviceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/hfufo/service/CommunicationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hfufo/service/CommunicationService;->isVga:Z

    .line 439
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy MM dd HH mm ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/hfufo/service/CommunicationService;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->mHandler:Landroid/os/Handler;

    .line 42
    iput-boolean v1, p0, Lcom/hfufo/service/CommunicationService;->isRequest:Z

    .line 43
    iput v1, p0, Lcom/hfufo/service/CommunicationService;->appVersion:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->mCommandManager:Lcom/micro/util/CommandManager;

    .line 103
    new-instance v0, Lcom/hfufo/service/CommunicationService$1;

    invoke-direct {v0, p0}, Lcom/hfufo/service/CommunicationService$1;-><init>(Lcom/hfufo/service/CommunicationService;)V

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->udpDeviceListener:Lcom/jieli/lib/stream/udp/UdpDeviceListener;

    .line 121
    new-instance v0, Lcom/hfufo/service/CommunicationService$2;

    invoke-direct {v0, p0}, Lcom/hfufo/service/CommunicationService$2;-><init>(Lcom/hfufo/service/CommunicationService;)V

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->createDeviceSocket:Ljava/lang/Runnable;

    .line 531
    new-instance v0, Lcom/hfufo/service/CommunicationService$3;

    invoke-direct {v0, p0}, Lcom/hfufo/service/CommunicationService$3;-><init>(Lcom/hfufo/service/CommunicationService;)V

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->getDeviceVersionInfo:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/service/CommunicationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;

    .prologue
    .line 38
    iget v0, p0, Lcom/hfufo/service/CommunicationService;->appVersion:I

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/service/CommunicationService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/hfufo/service/CommunicationService;->appVersion:I

    return p1
.end method

.method static synthetic access$100(Lcom/hfufo/service/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/service/CommunicationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/hfufo/service/CommunicationService;->requestDeviceVersionMsg()V

    return-void
.end method

.method static synthetic access$200(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/tools/CommandHub;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/udp/UdpDeviceListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService;->udpDeviceListener:Lcom/jieli/lib/stream/udp/UdpDeviceListener;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/hfufo/service/CommunicationService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/hfufo/service/CommunicationService;->isRequest:Z

    return p1
.end method

.method private closeSocket()V
    .locals 3

    .prologue
    .line 95
    const-string v1, "52123"

    const-string v2, "closeSocket: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/micro/util/CommandManager;->getInstance()Lcom/micro/util/CommandManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micro/util/CommandManager;->clearDeviceStatus()V

    .line 97
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/CommandHub;->closeClient()V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dvflying_device_connection_error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device_connection_error"

    const/16 v2, 0x1048

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method private formatDateSplitSpace(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 441
    sget-object v0, Lcom/hfufo/service/CommunicationService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 172
    const-string v0, "52123"

    const-string v1, "release: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0034"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->closeClient()V

    .line 175
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->getInstance()Lcom/jieli/lib/stream/udp/UdpClientImpl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->unregisterUdpDeviceListener(Lcom/jieli/lib/stream/udp/UdpDeviceListener;)Z

    .line 177
    invoke-static {}, Lcom/micro/util/CommandManager;->getInstance()Lcom/micro/util/CommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micro/util/CommandManager;->clearDeviceStatus()V

    .line 178
    iput v5, p0, Lcom/hfufo/service/CommunicationService;->appVersion:I

    .line 179
    return-void
.end method

.method private requestDeviceVersionMsg()V
    .locals 4

    .prologue
    .line 523
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/ParseHelper;->getDeviceVersionMsg()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "deviceVersionMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_version_msg"

    invoke-static {v1, v2, v0}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v2, "1"

    const-string v3, "0037"

    invoke-virtual {v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method


# virtual methods
.method public getConnectedWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    const-string v3, ""

    .line 571
    .local v3, "strIp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 572
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 573
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 575
    .local v2, "ip":I
    invoke-direct {p0, v2}, Lcom/hfufo/service/CommunicationService;->intToIp(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 582
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v2    # "ip":I
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 578
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected()V
    .locals 3

    .prologue
    .line 183
    const-string v1, "52123"

    const-string v2, "onConnected: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dvflying_init_ctp_socket_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    sget-object v0, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    const-string v1, "=====CommunicationService==onCreate====="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    .line 60
    invoke-static {}, Lcom/micro/util/CommandManager;->getInstance()Lcom/micro/util/CommandManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->mCommandManager:Lcom/micro/util/CommandManager;

    .line 61
    invoke-virtual {p0}, Lcom/hfufo/service/CommunicationService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/hfufo/rxdrone/MainApplication;

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 65
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    const-string v1, "onDestroy============="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/hfufo/service/CommunicationService;->release()V

    .line 160
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 161
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "errorType"    # I

    .prologue
    .line 190
    const-string v1, "52123"

    const-string v2, "onError: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dvflying_device_connection_error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device_connection_error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public onReceive(Lcom/jieli/lib/stream/beans/StateInfo;)V
    .locals 32
    .param p1, "stateInfo"    # Lcom/jieli/lib/stream/beans/StateInfo;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-gtz v26, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v13, v26, v27

    .line 204
    .local v13, "param1":Ljava/lang/String;
    invoke-static {}, Lcom/micro/util/CommandManager;->getInstance()Lcom/micro/util/CommandManager;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lcom/micro/util/CommandManager;->setDeviceStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v26, "52123"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "service-onReceive: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v27

    const/16 v26, -0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v26, :pswitch_data_0

    .line 227
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v27

    const/16 v26, -0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_1

    :cond_4
    :goto_3
    packed-switch v26, :pswitch_data_1

    .line 431
    new-instance v6, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_generic_data"

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v6, "currMode":Landroid/content/Intent;
    const-string v26, "generic_state"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 433
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lcom/jieli/lib/stream/tools/ParseHelper;->updateState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v6    # "currMode":Landroid/content/Intent;
    :sswitch_0
    const-string v28, "0014"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const/16 v26, 0x0

    goto :goto_1

    :sswitch_1
    const-string v28, "0015"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const/16 v26, 0x1

    goto :goto_1

    :sswitch_2
    const-string v28, "0030"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const/16 v26, 0x2

    goto :goto_1

    :sswitch_3
    const-string v28, "0001"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const/16 v26, 0x3

    goto :goto_1

    .line 209
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandManager:Lcom/micro/util/CommandManager;

    move-object/from16 v26, v0

    const-string v27, "0027"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lcom/micro/util/CommandManager;->setDeviceStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 212
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandManager:Lcom/micro/util/CommandManager;

    move-object/from16 v26, v0

    const-string v27, "0027"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lcom/micro/util/CommandManager;->setDeviceStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_device_wifi_disabled"

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v10, "deviceWifiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 219
    .end local v10    # "deviceWifiIntent":Landroid/content/Intent;
    :pswitch_3
    const-string v26, "10"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 220
    new-instance v9, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_device_in_usb_mode"

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v9, "deviceInUsbMode":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 227
    .end local v9    # "deviceInUsbMode":Landroid/content/Intent;
    :sswitch_4
    const-string v28, "0011"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x0

    goto/16 :goto_3

    :sswitch_5
    const-string v28, "0063"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1

    goto/16 :goto_3

    :sswitch_6
    const-string v28, "0029"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2

    goto/16 :goto_3

    :sswitch_7
    const-string v28, "0026"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x3

    goto/16 :goto_3

    :sswitch_8
    const-string v28, "0037"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x4

    goto/16 :goto_3

    :sswitch_9
    const-string v28, "0033"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x5

    goto/16 :goto_3

    :sswitch_a
    const-string v28, "0005"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x6

    goto/16 :goto_3

    :sswitch_b
    const-string v28, "0006"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x7

    goto/16 :goto_3

    :sswitch_c
    const-string v28, "0010"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x8

    goto/16 :goto_3

    :sswitch_d
    const-string v28, "0004"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x9

    goto/16 :goto_3

    :sswitch_e
    const-string v28, "0041"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0xa

    goto/16 :goto_3

    :sswitch_f
    const-string v28, "0064"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0xb

    goto/16 :goto_3

    :sswitch_10
    const-string v28, "0052"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0xc

    goto/16 :goto_3

    :sswitch_11
    const-string v28, "0034"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0xd

    goto/16 :goto_3

    :sswitch_12
    const-string v28, "0042"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0xe

    goto/16 :goto_3

    :sswitch_13
    const-string v28, "0065"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0xf

    goto/16 :goto_3

    :sswitch_14
    const-string v28, "0001"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x10

    goto/16 :goto_3

    :sswitch_15
    const-string v28, "0007"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x11

    goto/16 :goto_3

    :sswitch_16
    const-string v28, "0008"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x12

    goto/16 :goto_3

    :sswitch_17
    const-string v28, "0009"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x13

    goto/16 :goto_3

    :sswitch_18
    const-string v28, "0012"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x14

    goto/16 :goto_3

    :sswitch_19
    const-string v28, "0013"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x15

    goto/16 :goto_3

    :sswitch_1a
    const-string v28, "0014"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x16

    goto/16 :goto_3

    :sswitch_1b
    const-string v28, "0015"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x17

    goto/16 :goto_3

    :sswitch_1c
    const-string v28, "0018"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x18

    goto/16 :goto_3

    :sswitch_1d
    const-string v28, "0019"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x19

    goto/16 :goto_3

    :sswitch_1e
    const-string v28, "0024"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1a

    goto/16 :goto_3

    :sswitch_1f
    const-string v28, "0025"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1b

    goto/16 :goto_3

    :sswitch_20
    const-string v28, "0027"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1c

    goto/16 :goto_3

    :sswitch_21
    const-string v28, "0028"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1d

    goto/16 :goto_3

    :sswitch_22
    const-string v28, "0031"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1e

    goto/16 :goto_3

    :sswitch_23
    const-string v28, "0032"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x1f

    goto/16 :goto_3

    :sswitch_24
    const-string v28, "0040"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x20

    goto/16 :goto_3

    :sswitch_25
    const-string v28, "0043"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x21

    goto/16 :goto_3

    :sswitch_26
    const-string v28, "0066"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x22

    goto/16 :goto_3

    :sswitch_27
    const-string v28, "0050"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x23

    goto/16 :goto_3

    :sswitch_28
    const-string v28, "0051"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x24

    goto/16 :goto_3

    :sswitch_29
    const-string v28, "0046"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x25

    goto/16 :goto_3

    :sswitch_2a
    const-string v28, "0069"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x26

    goto/16 :goto_3

    :sswitch_2b
    const-string v28, "0054"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x27

    goto/16 :goto_3

    :sswitch_2c
    const-string v28, "0057"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x28

    goto/16 :goto_3

    :sswitch_2d
    const-string v28, "0056"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x29

    goto/16 :goto_3

    :sswitch_2e
    const-string v28, "0061"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2a

    goto/16 :goto_3

    :sswitch_2f
    const-string v28, "0062"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2b

    goto/16 :goto_3

    :sswitch_30
    const-string v28, "0129"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2c

    goto/16 :goto_3

    :sswitch_31
    const-string v28, "0130"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2d

    goto/16 :goto_3

    :sswitch_32
    const-string v28, "0131"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2e

    goto/16 :goto_3

    :sswitch_33
    const-string v28, "0132"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x2f

    goto/16 :goto_3

    :sswitch_34
    const-string v28, "0133"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x30

    goto/16 :goto_3

    :sswitch_35
    const-string v28, "0134"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x31

    goto/16 :goto_3

    :sswitch_36
    const-string v28, "0136"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x32

    goto/16 :goto_3

    :sswitch_37
    const-string v28, "0137"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x33

    goto/16 :goto_3

    :sswitch_38
    const-string v28, "0138"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x34

    goto/16 :goto_3

    :sswitch_39
    const-string v28, "0139"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x35

    goto/16 :goto_3

    :sswitch_3a
    const-string v28, "0140"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x36

    goto/16 :goto_3

    :sswitch_3b
    const-string v28, "0141"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x37

    goto/16 :goto_3

    :sswitch_3c
    const-string v28, "0142"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v26, 0x38

    goto/16 :goto_3

    .line 229
    :pswitch_4
    const-string v26, "52123"

    const-string v27, "CMD_SDCARD_STATE: "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v20, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_sdcard_state"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v20, "sdcardIntent":Landroid/content/Intent;
    const-string v26, "sdcard_state"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 235
    .end local v20    # "sdcardIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v14, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_rear_camera_plug_state"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v14, "plugStateIntent":Landroid/content/Intent;
    const-string v26, "rear_camera_plug_state"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 240
    .end local v14    # "plugStateIntent":Landroid/content/Intent;
    :pswitch_6
    const-string v26, "-1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "-2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 241
    :cond_5
    new-instance v16, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_reject_connection"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v16, "requestConnection":Landroid/content/Intent;
    const-string v26, "reject_connection"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 244
    .end local v16    # "requestConnection":Landroid/content/Intent;
    :cond_6
    const-string v26, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/service/CommunicationService;->isRequest:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 247
    new-instance v26, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->getDeviceVersionInfo:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 253
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/hfufo/rxdrone/MainApplication;->setDeviceUUID(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :pswitch_8
    new-instance v17, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_request_ui_description"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v17, "requestIntent":Landroid/content/Intent;
    const-string v26, "request_ui_description"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    new-instance v26, Ljava/util/Date;

    invoke-direct/range {v26 .. v26}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/hfufo/service/CommunicationService;->formatDateSplitSpace(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "dateParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    move-object/from16 v26, v0

    const-string v27, "1"

    const-string v28, "0040"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v8, v29, v30

    invoke-virtual/range {v26 .. v29}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    move-object/from16 v26, v0

    const-string v27, "1"

    const-string v28, "0012"

    invoke-virtual/range {v26 .. v28}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v8    # "dateParam":Ljava/lang/String;
    .end local v17    # "requestIntent":Landroid/content/Intent;
    :pswitch_9
    new-instance v12, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_allow_firmware_upgrade"

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v12, "intent":Landroid/content/Intent;
    const-string v26, "sdcard_state"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 276
    .end local v12    # "intent":Landroid/content/Intent;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v23, v26, v27

    .line 277
    .local v23, "ssid":Ljava/lang/String;
    sget-object v26, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CMD_AP_SSID============ssid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/hfufo/rxdrone/MainApplication;->isModifySSID()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/hfufo/rxdrone/MainApplication;->setModifySSID(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    move-object/from16 v26, v0

    const-string v27, "1"

    const-string v28, "0035"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "1"

    aput-object v31, v29, v30

    invoke-virtual/range {v26 .. v29}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->closeSocket()V

    .line 287
    const-string v26, "5213socket"

    const-string v27, "CMD_AP_SSID: "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v26, Landroid/content/Intent;

    const-string v27, "com.jieli.dvflying_change_ssid_success"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 291
    .local v21, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v26, "current_wifi_ssid"

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 292
    .local v19, "saveSSID":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 293
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 294
    .local v18, "savePwd":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, "current_wifi_ssid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v18    # "savePwd":Ljava/lang/String;
    .end local v19    # "saveSSID":Ljava/lang/String;
    .end local v21    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, "current_wifi_ssid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    move-object/from16 v26, v0

    const-string v27, "1"

    const-string v28, "0006"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, " "

    aput-object v31, v29, v30

    invoke-virtual/range {v26 .. v29}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .end local v23    # "ssid":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v15, v26, v27

    .line 310
    .local v15, "pwd":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/hfufo/rxdrone/MainApplication;->isModifyPWD()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/hfufo/rxdrone/MainApplication;->setModifyPWD(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    move-object/from16 v26, v0

    const-string v27, "1"

    const-string v28, "0035"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "1"

    aput-object v31, v29, v30

    invoke-virtual/range {v26 .. v29}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->closeSocket()V

    .line 320
    const-string v26, "5213socket"

    const-string v27, "CMD_AP_PASSWORD: "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v26, Landroid/content/Intent;

    const-string v27, "com.jieli.dvflying_change_pwd_success"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 323
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 324
    .restart local v21    # "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v26, "current_wifi_ssid"

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "currSSID":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 327
    const-string v26, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v7, v1}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v7, v15}, Lcom/micro/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    .end local v7    # "currSSID":Ljava/lang/String;
    .end local v15    # "pwd":Ljava/lang/String;
    .end local v21    # "sharedPreferences":Landroid/content/SharedPreferences;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 338
    new-instance v26, Landroid/content/Intent;

    const-string v27, "com.jieli.dvflying_format_sdcard"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 342
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mCommandManager:Lcom/micro/util/CommandManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/micro/util/CommandManager;->clearDeviceStatus()V

    .line 343
    new-instance v26, Landroid/content/Intent;

    const-string v27, "com.jieli.dvflying_reset_device"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 347
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v24, v26, v27

    .line 348
    .local v24, "state":Ljava/lang/String;
    const-string v26, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v25, v26, v27

    .line 350
    .local v25, "videoListFileName":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 351
    new-instance v26, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-virtual/range {p0 .. p0}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/hfufo/rxdrone/MainApplication;->getCaptureSize()I

    move-result v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual/range {v26 .. v26}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->start()V

    goto/16 :goto_0

    .line 356
    .end local v24    # "state":Ljava/lang/String;
    .end local v25    # "videoListFileName":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 357
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 358
    .local v4, "captureSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/hfufo/rxdrone/MainApplication;->setCaptureSize(I)V

    goto/16 :goto_0

    .line 362
    .end local v4    # "captureSize":I
    :pswitch_10
    new-instance v5, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_close_dev_wifi"

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v5, "closeDevWifi":Landroid/content/Intent;
    const-string v26, "close_dev_wifi"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 407
    .end local v5    # "closeDevWifi":Landroid/content/Intent;
    :pswitch_11
    const-string v26, "52123"

    const-string v27, "service-notify: "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v22, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_special_data"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v22, "special":Landroid/content/Intent;
    const-string v26, "special_state"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 426
    .end local v22    # "special":Landroid/content/Intent;
    :pswitch_12
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.jieli.dvflying_flying_data"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v11, "flyIntent":Landroid/content/Intent;
    const-string v26, "special_state"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/hfufo/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x168c01 -> :sswitch_3
        0x168c23 -> :sswitch_0
        0x168c24 -> :sswitch_1
        0x168c5d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 227
    :sswitch_data_1
    .sparse-switch
        0x168c01 -> :sswitch_14
        0x168c04 -> :sswitch_d
        0x168c05 -> :sswitch_a
        0x168c06 -> :sswitch_b
        0x168c07 -> :sswitch_15
        0x168c08 -> :sswitch_16
        0x168c09 -> :sswitch_17
        0x168c1f -> :sswitch_c
        0x168c20 -> :sswitch_4
        0x168c21 -> :sswitch_18
        0x168c22 -> :sswitch_19
        0x168c23 -> :sswitch_1a
        0x168c24 -> :sswitch_1b
        0x168c27 -> :sswitch_1c
        0x168c28 -> :sswitch_1d
        0x168c42 -> :sswitch_1e
        0x168c43 -> :sswitch_1f
        0x168c44 -> :sswitch_7
        0x168c45 -> :sswitch_20
        0x168c46 -> :sswitch_21
        0x168c47 -> :sswitch_6
        0x168c5e -> :sswitch_22
        0x168c5f -> :sswitch_23
        0x168c60 -> :sswitch_9
        0x168c61 -> :sswitch_11
        0x168c64 -> :sswitch_8
        0x168c7c -> :sswitch_24
        0x168c7d -> :sswitch_e
        0x168c7e -> :sswitch_12
        0x168c7f -> :sswitch_25
        0x168c82 -> :sswitch_29
        0x168c9b -> :sswitch_27
        0x168c9c -> :sswitch_28
        0x168c9d -> :sswitch_10
        0x168c9f -> :sswitch_2b
        0x168ca1 -> :sswitch_2d
        0x168ca2 -> :sswitch_2c
        0x168cbb -> :sswitch_2e
        0x168cbc -> :sswitch_2f
        0x168cbd -> :sswitch_5
        0x168cbe -> :sswitch_f
        0x168cbf -> :sswitch_13
        0x168cc0 -> :sswitch_26
        0x168cc3 -> :sswitch_2a
        0x169008 -> :sswitch_30
        0x16901e -> :sswitch_31
        0x16901f -> :sswitch_32
        0x169020 -> :sswitch_33
        0x169021 -> :sswitch_34
        0x169022 -> :sswitch_35
        0x169024 -> :sswitch_36
        0x169025 -> :sswitch_37
        0x169026 -> :sswitch_38
        0x169027 -> :sswitch_39
        0x16903d -> :sswitch_3a
        0x16903e -> :sswitch_3b
        0x16903f -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x1

    .line 69
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return v6

    .line 72
    :cond_0
    const-string v1, "52123"

    const-string v2, "onStartCommand: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v1, "service_command"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "cmd":I
    sget-object v1, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand==========cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService;->createDeviceSocket:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService;->createDeviceSocket:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    const-string v1, "52123"

    const-string v2, "SERVICE_CMD_INIT_SOCKET: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0}, Lcom/hfufo/service/CommunicationService;->closeSocket()V

    .line 84
    const-string v1, "52123"

    const-string v2, "SERVICE_CMD_CLOSE_SOCKET: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v1, "52123"

    const-string v2, "SERVICE_CMD_CLEAR_DEVICE_STATUS: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/micro/util/CommandManager;->getInstance()Lcom/micro/util/CommandManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micro/util/CommandManager;->clearDeviceStatus()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 165
    sget-object v0, Lcom/hfufo/service/CommunicationService;->tag:Ljava/lang/String;

    const-string v1, "onTaskRemoved============="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/hfufo/service/CommunicationService;->release()V

    .line 167
    invoke-virtual {p0}, Lcom/hfufo/service/CommunicationService;->stopSelf()V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 169
    return-void
.end method
