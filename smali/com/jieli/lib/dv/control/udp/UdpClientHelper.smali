.class public Lcom/jieli/lib/dv/control/udp/UdpClientHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/jieli/lib/dv/control/udp/UdpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/jieli/lib/dv/control/udp/UdpClient;->getInstance()Lcom/jieli/lib/dv/control/udp/UdpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->a:Lcom/jieli/lib/dv/control/udp/UdpClient;

    return-void
.end method

.method public static getUdpClient()Lcom/jieli/lib/dv/control/udp/UdpClient;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/jieli/lib/dv/control/udp/UdpClient;->getInstance()Lcom/jieli/lib/dv/control/udp/UdpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public tryToAccessDevice(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "APP_ACCESS"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "0"

    const-string v3, "ver"

    .line 4
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToChangePlaybackState(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_PLAY_CTRL"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "CLOSE_PULL_RT_STREAM"

    .line 8
    :goto_0
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v0, "PUT"

    .line 9
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v0, "status"

    const-string v2, "1"

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 1
    :cond_0
    const-string v0, "CLOSE_RT_STREAM"

    goto :goto_0
.end method

.method public tryToCollisionVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_BUMPING"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToControlThumbnails(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "THUMBNAILS_CTRL"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jieli/lib/dv/control/connect/response/SendResponse;",
            ")V"
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    .line 9
    :goto_0
    return-void

    .line 1
    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v2, "FILES_DELETE"

    .line 6
    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v2, "PUT"

    .line 7
    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0
.end method

.method public tryToFactoryReset(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "SYSTEM_DEFAULT"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v1, "def"

    const-string v2, "1"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFastForward(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_FAST_PLAY"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFileLock(Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v0, "FILE_LOCK"

    .line 3
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v0, "PUT"

    .line 4
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v0, "0"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :cond_0
    const-string v2, "path"

    const-string v3, "status"

    .line 10
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_1
    return-void
.end method

.method public tryToFormatTFCard(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FORMAT"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GET"

    .line 2
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->a:Lcom/jieli/lib/dv/control/udp/UdpClient;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToKeepAlive(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "CTP_KEEP_ALIVE"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToOpenRTStream(IIIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "OPEN_PULL_RT_STREAM"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    .line 5
    :goto_0
    const-string v1, "PUT"

    .line 7
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 14
    invoke-virtual {p0, v0, p6}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 3
    :cond_0
    const-string v1, "OPEN_RT_STREAM"

    .line 5
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PUT"

    .line 2
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->a:Lcom/jieli/lib/dv/control/udp/UdpClient;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRTIntercom(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "RT_TALK_CTL"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "status"

    const-string v2, "1"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 5
    :cond_0
    const-string v1, "status"

    const-string v2, "0"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_CTRL"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "status"

    const-string v3, "1"

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 6
    :cond_0
    const-string v2, "status"

    const-string v3, "0"

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public tryToRequestDevDate(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "DATE_TIME"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestDevUUID(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "UUID"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestMediaFiles(IILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 5

    .prologue
    if-gtz p2, :cond_0

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 20
    :goto_0
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string v1, "BEHIND_MEDIA_FILES_LIST"

    .line 14
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    .line 16
    :goto_1
    const-string v1, "PUT"

    .line 18
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 19
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "1"

    const-string v4, "num"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 14
    :cond_1
    const-string v1, "FORWARD_MEDIA_FILES_LIST"

    .line 16
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "BEHIND_MEDIA_FILES_LIST"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    .line 5
    :goto_0
    const-string v1, "PUT"

    .line 7
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "1"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 3
    :cond_0
    const-string v1, "FORWARD_MEDIA_FILES_LIST"

    .line 5
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToRequestPictureFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "BEHIND_MEDIA_FILES_LIST"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    .line 5
    :goto_0
    const-string v1, "PUT"

    .line 7
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "3"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 3
    :cond_0
    const-string v1, "FORWARD_MEDIA_FILES_LIST"

    .line 5
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToRequestRearVideoStatus(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "PULL_VIDEO_STATUS"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestRecordState(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "VIDEO_CTRL"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestTFCardCapacity(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TF_CAP"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestVideoContentThumbnail(Ljava/lang/String;IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p4, :cond_1

    const/4 p4, 0x1

    .line 7
    :cond_1
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 8
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v2, "THUMBNAILS"

    .line 9
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v2, "PUT"

    .line 10
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v2, "path"

    .line 11
    invoke-virtual {v0, v2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timeinv"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 16
    invoke-virtual {p0, v1, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Param path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryToRequestVideoCover(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jieli/lib/dv/control/connect/response/SendResponse;",
            ")V"
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_1

    .line 1
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v2, "MULTI_COVER_FIGURE"

    .line 6
    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v2, "PUT"

    .line 7
    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Param list is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryToRequestVideoFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "BEHIND_MEDIA_FILES_LIST"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    .line 5
    :goto_0
    const-string v1, "PUT"

    .line 7
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "2"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 3
    :cond_0
    const-string v1, "FORWARD_MEDIA_FILES_LIST"

    .line 5
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToResetDev(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "RESET"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToResetSystem(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "SYSTEM_DEFAULT"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "def"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSaveCycVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_CYC_SAVEFILE"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToScreenShotTask(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "APP_SET_PROJECTION"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "status"

    const-string v3, "1"

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 16
    :goto_0
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 12
    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "status"

    const-string v3, "0"

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0
.end method

.method public tryToSetApAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v0, "AP_SSID_INFO"

    .line 2
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v0, "PUT"

    .line 3
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v3, "status"

    if-eqz p3, :cond_0

    const-string v0, "1"

    .line 5
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pwd"

    .line 6
    invoke-virtual {v2, v0, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ssid"

    .line 7
    invoke-virtual {v2, v0, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 9
    invoke-virtual {p0, v1, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 4
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public tryToSetFrontVideoParams(IIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PARAM"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 10
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetGravitySenor(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "GRA_SEN"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gra"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetLanguage(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "LANGUAGE"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lag"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetPhotoQuality(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PHOTO_QUALITY"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qua"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetRearVideoParams(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PULL_VIDEO_PARAM"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 9
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetRecordParam(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PARAM"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 10
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetSTAAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v0, "STA_SSID_INFO"

    .line 2
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v0, "PUT"

    .line 3
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v3, "status"

    if-eqz p3, :cond_0

    const-string v0, "1"

    .line 5
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pwd"

    .line 6
    invoke-virtual {v2, v0, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ssid"

    .line 7
    invoke-virtual {v2, v0, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 9
    invoke-virtual {p0, v1, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 4
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public tryToSetTimeWatermark(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_DATE"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "dat"

    const-string v2, "1"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 5
    :cond_0
    const-string v1, "dat"

    const-string v2, "0"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToSetVideoMic(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_MIC"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "mic"

    const-string v2, "1"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 5
    :cond_0
    const-string v1, "mic"

    const-string v2, "0"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tryToSetVideoParkCar(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PAR_CAR"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "par"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToStartPlayback(Ljava/lang/String;ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_PLAY"

    .line 6
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 7
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "path"

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 12
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "param path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "NET_SCR"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "status"

    const-string v3, "1"

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 16
    :goto_0
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 12
    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "status"

    const-string v3, "0"

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0
.end method

.method public tryToSyncDevDate(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "DATE_TIME"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 4
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v1, "date"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_0
    return-void
.end method

.method public tryToTakePhoto(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PHOTO_CTRL"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToToggleBootSound(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "BOARD_VOICE"

    .line 2
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 3
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "bvo"

    const-string v2, "1"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 5
    :cond_0
    const-string v1, "bvo"

    const-string v2, "0"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
