.class public Lcom/fh/hdutil/DeviceClientCmd;
.super Ljava/lang/Object;
.source "DeviceClientCmd.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static deviceClientCmd:Lcom/fh/hdutil/DeviceClientCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "DeviceClientCmd"

    sput-object v0, Lcom/fh/hdutil/DeviceClientCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fh/hdutil/DeviceClientCmd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/fh/hdutil/DeviceClientCmd;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/fh/hdutil/DeviceClientCmd;->deviceClientCmd:Lcom/fh/hdutil/DeviceClientCmd;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/fh/hdutil/DeviceClientCmd;

    invoke-direct {v0}, Lcom/fh/hdutil/DeviceClientCmd;-><init>()V

    sput-object v0, Lcom/fh/hdutil/DeviceClientCmd;->deviceClientCmd:Lcom/fh/hdutil/DeviceClientCmd;

    .line 24
    :cond_0
    sget-object v0, Lcom/fh/hdutil/DeviceClientCmd;->deviceClientCmd:Lcom/fh/hdutil/DeviceClientCmd;

    return-object v0
.end method


# virtual methods
.method public TryToGetCameraType()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 171
    .local v0, "var3":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "CAMERA_TYPE"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 172
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$8;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$8;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 182
    return-void
.end method

.method public changeFixRTS(IIIII)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "rate"    # I

    .prologue
    .line 132
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 133
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v2, "CHG_FIX_RT_STREAM"

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 134
    const-string v2, "PUT"

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 135
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 136
    .local v1, "var8":Landroid/support/v4/util/ArrayMap;
    const-string v2, "format"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "w"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "h"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "fps"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "rate"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    new-instance v3, Lcom/fh/hdutil/DeviceClientCmd$6;

    invoke-direct {v3, p0}, Lcom/fh/hdutil/DeviceClientCmd$6;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v2, v0, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 151
    return-void
.end method

.method public changeWifiOn5G(Z)V
    .locals 3
    .param p1, "is5G"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 213
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "WIFI_MODE"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 214
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 215
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$11;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$11;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 242
    :goto_0
    return-void

    .line 227
    .end local v0    # "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 228
    .restart local v0    # "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "WIFI_MODE"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 229
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 230
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$12;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$12;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0
.end method

.method public checkFixRTS()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 155
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "CLOSE_FIX_RT_STREAM"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 156
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 157
    const-string v1, "status"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$7;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$7;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 167
    return-void
.end method

.method public closeFixRTS()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 116
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "CLOSE_FIX_RT_STREAM"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 117
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 118
    const-string v1, "status"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$5;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$5;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 129
    return-void
.end method

.method public exchangeRev(I)V
    .locals 3
    .param p1, "revstate"    # I

    .prologue
    .line 32
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 33
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "FLIGHT_FLIP"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 34
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 35
    if-nez p1, :cond_0

    .line 36
    sget-object v1, Lcom/fh/hdutil/DeviceClientCmd;->TAG:Ljava/lang/String;

    const-string v2, "\u503c\u4e3a1"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "FLIP_VALUE"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$1;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$1;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 52
    return-void

    .line 39
    :cond_0
    sget-object v1, Lcom/fh/hdutil/DeviceClientCmd;->TAG:Ljava/lang/String;

    const-string v2, "\u503c\u4e3a0"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "FLIP_VALUE"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWifiChange()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    .line 199
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/RequestCmd;
    const-string v1, "WIFI_MODE"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$10;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$10;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 208
    return-void
.end method

.method public openFixRTS(IIIII)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "rate"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 89
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v2, "OPEN_FIX_RT_STREAM"

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 90
    const-string v2, "PUT"

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 91
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 92
    .local v1, "var8":Landroid/support/v4/util/ArrayMap;
    const-string v2, "format"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, "w"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "h"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "fps"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "rate"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 99
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    new-instance v3, Lcom/fh/hdutil/DeviceClientCmd$4;

    invoke-direct {v3, p0}, Lcom/fh/hdutil/DeviceClientCmd$4;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v2, v0, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 112
    :cond_0
    return-void
.end method

.method public requestWifiHz()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    .line 186
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/RequestCmd;
    const-string v1, "WIFI_RUN_MODE"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$9;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$9;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 195
    return-void
.end method

.method public requstFlip()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    .line 56
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/RequestCmd;
    const-string v1, "FLIGHT_FLIP"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    .line 57
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$2;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$2;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 68
    return-void
.end method

.method public sendControlCmd(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 72
    .local v0, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v1, "FLIGHT_CONTROL"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 73
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 75
    const-string v1, "DRONE_DATA"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/fh/hdutil/DeviceClientCmd$3;

    invoke-direct {v2, p0}, Lcom/fh/hdutil/DeviceClientCmd$3;-><init>(Lcom/fh/hdutil/DeviceClientCmd;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 85
    return-void
.end method
