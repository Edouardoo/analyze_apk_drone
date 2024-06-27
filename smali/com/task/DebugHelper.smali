.class public Lcom/task/DebugHelper;
.super Ljava/lang/Object;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/task/DebugHelper$SendThread;,
        Lcom/task/DebugHelper$ReceiveThread;
    }
.end annotation


# static fields
.field private static final DEBUG_PACKET_FLAG:Ljava/lang/String; = "MSSDP_NOTIFY "

.field private static final DEBUG_PORT:I = 0xf31

.field private static final DEBUG_RESULT_FLAG:Ljava/lang/String; = "UX_REPORT"

.field private static final DEBUG_SEND_FLAG:Ljava/lang/String; = "UX_DATA"

.field private static final DEBUG_START_FLAG:Ljava/lang/String; = "UX_SEND_LEN"

.field public static final ERROR_DATA_EXCEPTION:I = 0x3

.field public static final ERROR_NETWORK_EXCEPTION:I = 0x2

.field public static final ERROR_UDP_UNINIT:I = 0x1

.field private static lastTimeStamp:J

.field private static lastTotalRxBytes:J

.field private static mSeq:I

.field private static final tag:Ljava/lang/String;


# instance fields
.field private mBroadCastIP:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIDebugListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/task/IDebugListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPort:I

.field private mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

.field private mSendThread:Lcom/task/DebugHelper$SendThread;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    const-class v0, Lcom/task/DebugHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/task/DebugHelper;->tag:Ljava/lang/String;

    .line 377
    sput-wide v2, Lcom/task/DebugHelper;->lastTotalRxBytes:J

    .line 378
    sput-wide v2, Lcom/task/DebugHelper;->lastTimeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xf31

    iput v0, p0, Lcom/task/DebugHelper;->mPort:I

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$1000(Lcom/task/DebugHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/task/DebugHelper;

    .prologue
    .line 19
    iget v0, p0, Lcom/task/DebugHelper;->mPort:I

    return v0
.end method

.method static synthetic access$200(Lcom/task/DebugHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/task/DebugHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/task/DebugHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/task/DebugHelper;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/DebugHelper;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/task/DebugHelper;->code2Msg(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/task/DebugHelper;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/DebugHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/task/DebugHelper;->notifyErrorEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/task/DebugHelper;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/task/DebugHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/task/DebugHelper;->notifyDebugStart(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/task/DebugHelper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/task/DebugHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/task/DebugHelper;->notifyDebugResult(II)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/task/DebugHelper;->mSeq:I

    return v0
.end method

.method static synthetic access$908()I
    .locals 2

    .prologue
    .line 19
    sget v0, Lcom/task/DebugHelper;->mSeq:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/task/DebugHelper;->mSeq:I

    return v0
.end method

.method private closeUDPClient()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    .line 95
    :cond_1
    return-void
.end method

.method private code2Msg(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 362
    const-string v0, ""

    .line 363
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    return-object v0

    .line 365
    :pswitch_0
    const-string v0, "udp socket init failed."

    .line 366
    goto :goto_0

    .line 368
    :pswitch_1
    const-string v0, "network error."

    .line 369
    goto :goto_0

    .line 371
    :pswitch_2
    const-string v0, "receive data is error."

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createUDPClient()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_0

    .line 78
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    iget v2, p0, Lcom/task/DebugHelper;->mPort:I

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    .line 79
    iget-object v1, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 80
    iget-object v1, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    goto :goto_0
.end method

.method public static getNetSpeed(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    invoke-static {p0}, Lcom/task/DebugHelper;->getTotalRxBytes(Landroid/content/Context;)J

    move-result-wide v2

    .line 391
    .local v2, "nowTotalRxBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    .local v0, "nowTimeStamp":J
    sget-wide v6, Lcom/task/DebugHelper;->lastTotalRxBytes:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sget-wide v8, Lcom/task/DebugHelper;->lastTimeStamp:J

    sub-long v8, v0, v8

    div-long v4, v6, v8

    .line 393
    .local v4, "speed":J
    sput-wide v0, Lcom/task/DebugHelper;->lastTimeStamp:J

    .line 394
    sput-wide v2, Lcom/task/DebugHelper;->lastTotalRxBytes:J

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getTotalRxBytes(Landroid/content/Context;)J
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private notifyDebugResult(II)V
    .locals 2
    .param p1, "dropCount"    # I
    .param p2, "dropSum"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/task/DebugHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/task/DebugHelper$2;-><init>(Lcom/task/DebugHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :cond_0
    return-void
.end method

.method private notifyDebugStart(Ljava/lang/String;II)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "interval"    # I

    .prologue
    .line 114
    iput-object p1, p0, Lcom/task/DebugHelper;->mBroadCastIP:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/task/DebugHelper;->mBroadCastIP:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/task/DebugHelper;->startSendThread(Ljava/lang/String;II)V

    .line 116
    iget-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/task/DebugHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/task/DebugHelper$1;-><init>(Lcom/task/DebugHelper;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    return-void
.end method

.method private notifyErrorEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/task/DebugHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/task/DebugHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/task/DebugHelper$3;-><init>(Lcom/task/DebugHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_0
    return-void
.end method

.method private startRecvThread()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    invoke-static {v0}, Lcom/task/DebugHelper$ReceiveThread;->access$000(Lcom/task/DebugHelper$ReceiveThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Lcom/task/DebugHelper$ReceiveThread;

    iget-object v1, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v0, p0, v1}, Lcom/task/DebugHelper$ReceiveThread;-><init>(Lcom/task/DebugHelper;Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    .line 100
    iget-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    invoke-virtual {v0}, Lcom/task/DebugHelper$ReceiveThread;->start()V

    .line 102
    :cond_1
    return-void
.end method

.method private startSendThread(Ljava/lang/String;II)V
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "interval"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    invoke-static {v0}, Lcom/task/DebugHelper$SendThread;->access$800(Lcom/task/DebugHelper$SendThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lcom/task/DebugHelper$SendThread;

    iget-object v2, p0, Lcom/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/task/DebugHelper$SendThread;-><init>(Lcom/task/DebugHelper;Ljava/net/DatagramSocket;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    .line 278
    iget-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    invoke-virtual {v0}, Lcom/task/DebugHelper$SendThread;->start()V

    .line 280
    :cond_1
    return-void
.end method

.method private stopRecvThread()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    invoke-static {v0}, Lcom/task/DebugHelper$ReceiveThread;->access$000(Lcom/task/DebugHelper$ReceiveThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    invoke-static {v0}, Lcom/task/DebugHelper$ReceiveThread;->access$100(Lcom/task/DebugHelper$ReceiveThread;)V

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/DebugHelper;->mReceiveThread:Lcom/task/DebugHelper$ReceiveThread;

    .line 111
    :cond_1
    return-void
.end method

.method private stopSendThread()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    invoke-static {v0}, Lcom/task/DebugHelper$SendThread;->access$800(Lcom/task/DebugHelper$SendThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    invoke-virtual {v0}, Lcom/task/DebugHelper$SendThread;->stopThread()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/DebugHelper;->mSendThread:Lcom/task/DebugHelper$SendThread;

    .line 289
    :cond_1
    return-void
.end method


# virtual methods
.method public closeDebug()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/task/DebugHelper;->stopSendThread()V

    .line 56
    invoke-direct {p0}, Lcom/task/DebugHelper;->stopRecvThread()V

    .line 57
    invoke-direct {p0}, Lcom/task/DebugHelper;->closeUDPClient()V

    .line 58
    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    .line 62
    :cond_0
    return-void
.end method

.method public registerDebugListener(Lcom/task/IDebugListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/task/IDebugListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDebug()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/task/DebugHelper;->createUDPClient()V

    .line 51
    invoke-direct {p0}, Lcom/task/DebugHelper;->startRecvThread()V

    .line 52
    return-void
.end method

.method public unregisterDebugListener(Lcom/task/IDebugListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/task/IDebugListener;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
