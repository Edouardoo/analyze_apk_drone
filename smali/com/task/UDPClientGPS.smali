.class public Lcom/task/UDPClientGPS;
.super Ljava/lang/Object;
.source "UDPClientGPS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/task/UDPClientGPS$SendThread;,
        Lcom/task/UDPClientGPS$ReceiveThread;
    }
.end annotation


# static fields
.field private static final DEBUG_PACKET_FLAG:Ljava/lang/String; = "MSSDP_NOTIFY "

.field private static final DEBUG_PORT:I = 0xd80

.field private static final DEBUG_RESULT_FLAG:Ljava/lang/String; = "UX_REPORT"

.field private static final DEBUG_SEND_FLAG:Ljava/lang/String; = "UX_DATA"

.field private static final DEBUG_START_FLAG:Ljava/lang/String; = "UX_SEND_LEN"

.field public static final ERROR_DATA_EXCEPTION:I = 0x3

.field public static final ERROR_NETWORK_EXCEPTION:I = 0x2

.field public static final ERROR_UDP_UNINIT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static lastTimeStamp:J

.field private static lastTotalRxBytes:J

.field private static mSeq:I

.field private static udpClientGPS:Lcom/task/UDPClientGPS;


# instance fields
.field private headBuf:[B

.field private iGpsListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/task/IGpsListener;",
            ">;"
        }
    .end annotation
.end field

.field private isTwice:Z

.field private isYunR:Z

.field private mBroadCastIP:Ljava/lang/String;

.field private mDeviceIP:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPort:I

.field private mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

.field private mSendThread:Lcom/task/UDPClientGPS$SendThread;

.field private mSocket:Ljava/net/DatagramSocket;

.field private onPause:Z

.field public onSend:Z

.field private onUpdate:Z

.field private oneProcess:Z

.field private rockerBuf:[B

.field private still:Z

.field private yunBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    const-class v0, Lcom/task/UDPClientGPS;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/task/UDPClientGPS;->TAG:Ljava/lang/String;

    .line 630
    sput-wide v2, Lcom/task/UDPClientGPS;->lastTotalRxBytes:J

    .line 631
    sput-wide v2, Lcom/task/UDPClientGPS;->lastTimeStamp:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->isYunR:Z

    .line 34
    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->isTwice:Z

    .line 35
    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->onUpdate:Z

    .line 36
    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->oneProcess:Z

    .line 38
    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->onPause:Z

    .line 39
    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->onSend:Z

    .line 40
    const/16 v0, 0xd80

    iput v0, p0, Lcom/task/UDPClientGPS;->mPort:I

    .line 42
    const-string v0, "192.168.80.1"

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mDeviceIP:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->packageGpsMessage()[B

    move-result-object v0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->headBuf:[B

    .line 91
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->packageRocker()[B

    move-result-object v0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->rockerBuf:[B

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$1000(Lcom/task/UDPClientGPS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->oneProcess:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/task/UDPClientGPS;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/task/UDPClientGPS;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/task/UDPClientGPS;->oneProcess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/task/UDPClientGPS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->still:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/task/UDPClientGPS;)[B
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/task/UDPClientGPS;->headBuf:[B

    return-object v0
.end method

.method static synthetic access$1300(Lcom/task/UDPClientGPS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->isYunR:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/task/UDPClientGPS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->isTwice:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/task/UDPClientGPS;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/task/UDPClientGPS;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/task/UDPClientGPS;->isTwice:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/task/UDPClientGPS;)[B
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/task/UDPClientGPS;->yunBuf:[B

    return-object v0
.end method

.method static synthetic access$1600(Lcom/task/UDPClientGPS;)[B
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/task/UDPClientGPS;->rockerBuf:[B

    return-object v0
.end method

.method static synthetic access$1700(Lcom/task/UDPClientGPS;)I
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget v0, p0, Lcom/task/UDPClientGPS;->mPort:I

    return v0
.end method

.method static synthetic access$200(Lcom/task/UDPClientGPS;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/task/UDPClientGPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/task/UDPClientGPS;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/task/UDPClientGPS;->code2Msg(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/task/UDPClientGPS;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/UDPClientGPS;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/task/UDPClientGPS;->notifyGpsErrorEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/task/UDPClientGPS;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/task/UDPClientGPS;
    .param p1, "x1"    # [B

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/task/UDPClientGPS;->notifyGpsResult([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/task/UDPClientGPS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->onPause:Z

    return v0
.end method

.method static synthetic access$900(Lcom/task/UDPClientGPS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->onUpdate:Z

    return v0
.end method

.method private closeUDPClient()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    .line 155
    :cond_1
    return-void
.end method

.method private code2Msg(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 615
    const-string v0, ""

    .line 616
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 627
    :goto_0
    return-object v0

    .line 618
    :pswitch_0
    const-string v0, "udp socket init failed."

    .line 619
    goto :goto_0

    .line 621
    :pswitch_1
    const-string v0, "network error."

    .line 622
    goto :goto_0

    .line 624
    :pswitch_2
    const-string v0, "receive data is error."

    goto :goto_0

    .line 616
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
    .line 136
    iget-object v1, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_0

    .line 138
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    iget v2, p0, Lcom/task/UDPClientGPS;->mPort:I

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    .line 139
    iget-object v1, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 140
    iget-object v1, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    goto :goto_0
.end method

.method public static getInstance()Lcom/task/UDPClientGPS;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/task/UDPClientGPS;->udpClientGPS:Lcom/task/UDPClientGPS;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/task/UDPClientGPS;

    invoke-direct {v0}, Lcom/task/UDPClientGPS;-><init>()V

    sput-object v0, Lcom/task/UDPClientGPS;->udpClientGPS:Lcom/task/UDPClientGPS;

    .line 86
    :cond_0
    sget-object v0, Lcom/task/UDPClientGPS;->udpClientGPS:Lcom/task/UDPClientGPS;

    return-object v0
.end method

.method public static getNetSpeed(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 643
    invoke-static {p0}, Lcom/task/UDPClientGPS;->getTotalRxBytes(Landroid/content/Context;)J

    move-result-wide v2

    .line 644
    .local v2, "nowTotalRxBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 645
    .local v0, "nowTimeStamp":J
    sget-wide v6, Lcom/task/UDPClientGPS;->lastTotalRxBytes:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sget-wide v8, Lcom/task/UDPClientGPS;->lastTimeStamp:J

    sub-long v8, v0, v8

    div-long v4, v6, v8

    .line 646
    .local v4, "speed":J
    sput-wide v0, Lcom/task/UDPClientGPS;->lastTimeStamp:J

    .line 647
    sput-wide v2, Lcom/task/UDPClientGPS;->lastTotalRxBytes:J

    .line 648
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
    .line 634
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

.method private notifyGpsErrorEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/task/UDPClientGPS$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/task/UDPClientGPS$3;-><init>(Lcom/task/UDPClientGPS;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    :cond_0
    return-void
.end method

.method private notifyGpsResult([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 192
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/task/UDPClientGPS$2;

    invoke-direct {v1, p0, p1}, Lcom/task/UDPClientGPS$2;-><init>(Lcom/task/UDPClientGPS;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    :cond_0
    return-void
.end method

.method private notifyGpsStart(Ljava/lang/String;II)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "interval"    # I

    .prologue
    .line 174
    iput-object p1, p0, Lcom/task/UDPClientGPS;->mBroadCastIP:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mBroadCastIP:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/task/UDPClientGPS;->startSendThread(Ljava/lang/String;II)V

    .line 176
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/task/UDPClientGPS$1;

    invoke-direct {v1, p0}, Lcom/task/UDPClientGPS$1;-><init>(Lcom/task/UDPClientGPS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    return-void
.end method

.method private packageGpsMessage()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 653
    .local v0, "buf":[B
    aput-byte v2, v0, v2

    .line 654
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 655
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 656
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 657
    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 658
    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 659
    const/4 v1, 0x6

    aput-byte v2, v0, v1

    .line 660
    const/4 v1, 0x7

    aput-byte v2, v0, v1

    .line 662
    return-object v0
.end method

.method private packageRocker()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 666
    .local v0, "buf":[B
    aput-byte v2, v0, v2

    .line 667
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 668
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 669
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 670
    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 671
    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 672
    const/4 v1, 0x6

    aput-byte v2, v0, v1

    .line 673
    const/4 v1, 0x7

    aput-byte v2, v0, v1

    .line 674
    const/16 v1, 0x8

    aput-byte v2, v0, v1

    .line 675
    const/16 v1, 0x9

    aput-byte v2, v0, v1

    .line 677
    return-object v0
.end method

.method private startRecvThread()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    invoke-static {v0}, Lcom/task/UDPClientGPS$ReceiveThread;->access$000(Lcom/task/UDPClientGPS$ReceiveThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Lcom/task/UDPClientGPS$ReceiveThread;

    iget-object v1, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v0, p0, v1}, Lcom/task/UDPClientGPS$ReceiveThread;-><init>(Lcom/task/UDPClientGPS;Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    .line 160
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    invoke-virtual {v0}, Lcom/task/UDPClientGPS$ReceiveThread;->start()V

    .line 162
    :cond_1
    return-void
.end method

.method private startSendThread(Ljava/lang/String;II)V
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "interval"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    invoke-static {v0}, Lcom/task/UDPClientGPS$SendThread;->access$700(Lcom/task/UDPClientGPS$SendThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    new-instance v0, Lcom/task/UDPClientGPS$SendThread;

    iget-object v2, p0, Lcom/task/UDPClientGPS;->mSocket:Ljava/net/DatagramSocket;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/task/UDPClientGPS$SendThread;-><init>(Lcom/task/UDPClientGPS;Ljava/net/DatagramSocket;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    .line 367
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    invoke-virtual {v0}, Lcom/task/UDPClientGPS$SendThread;->start()V

    .line 369
    :cond_1
    sget-object v0, Lcom/task/UDPClientGPS;->udpClientGPS:Lcom/task/UDPClientGPS;

    invoke-virtual {v0}, Lcom/task/UDPClientGPS;->resume()V

    .line 370
    return-void
.end method

.method private stopRecvThread()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    invoke-static {v0}, Lcom/task/UDPClientGPS$ReceiveThread;->access$000(Lcom/task/UDPClientGPS$ReceiveThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    invoke-static {v0}, Lcom/task/UDPClientGPS$ReceiveThread;->access$100(Lcom/task/UDPClientGPS$ReceiveThread;)V

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mReceiveThread:Lcom/task/UDPClientGPS$ReceiveThread;

    .line 171
    :cond_1
    return-void
.end method

.method private stopSendThread()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    invoke-static {v0}, Lcom/task/UDPClientGPS$SendThread;->access$700(Lcom/task/UDPClientGPS$SendThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    invoke-virtual {v0}, Lcom/task/UDPClientGPS$SendThread;->stopThread()V

    .line 377
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->mSendThread:Lcom/task/UDPClientGPS$SendThread;

    .line 379
    :cond_1
    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->isYunR:Z

    .line 388
    return-void
.end method

.method public closeGpsUdp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->stopSendThread()V

    .line 108
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->stopRecvThread()V

    .line 109
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->closeUDPClient()V

    .line 110
    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 112
    iput-object v1, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    .line 114
    :cond_0
    sput-object v1, Lcom/task/UDPClientGPS;->udpClientGPS:Lcom/task/UDPClientGPS;

    .line 115
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->onPause:Z

    .line 408
    return-void
.end method

.method public registerGpsUdpListener(Lcom/task/IGpsListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/task/IGpsListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

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

.method public releaseListener()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    .line 133
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->onPause:Z

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->onPause:Z

    .line 412
    :cond_0
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 382
    iput-object p1, p0, Lcom/task/UDPClientGPS;->headBuf:[B

    .line 384
    return-void
.end method

.method public setOne(Z)V
    .locals 0
    .param p1, "one"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/task/UDPClientGPS;->oneProcess:Z

    .line 427
    return-void
.end method

.method public setRockerData([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 396
    iput-object p1, p0, Lcom/task/UDPClientGPS;->rockerBuf:[B

    .line 398
    return-void
.end method

.method public setStill(Z)V
    .locals 0
    .param p1, "isStill"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/task/UDPClientGPS;->still:Z

    .line 403
    return-void
.end method

.method public setUpdate(Z)V
    .locals 1
    .param p1, "up"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/task/UDPClientGPS;->onUpdate:Z

    .line 416
    iget-boolean v0, p0, Lcom/task/UDPClientGPS;->onUpdate:Z

    if-nez v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->packageGpsMessage()[B

    move-result-object v0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->headBuf:[B

    .line 418
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->packageRocker()[B

    move-result-object v0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->rockerBuf:[B

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->packageGpsMessage()[B

    move-result-object v0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->headBuf:[B

    .line 421
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->packageRocker()[B

    move-result-object v0

    iput-object v0, p0, Lcom/task/UDPClientGPS;->rockerBuf:[B

    goto :goto_0
.end method

.method public setYunData([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 391
    iput-object p1, p0, Lcom/task/UDPClientGPS;->yunBuf:[B

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/task/UDPClientGPS;->isYunR:Z

    .line 393
    return-void
.end method

.method public startGpsUdp(I)V
    .locals 2
    .param p1, "interval"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->createUDPClient()V

    .line 98
    invoke-direct {p0}, Lcom/task/UDPClientGPS;->startRecvThread()V

    .line 99
    iget-object v0, p0, Lcom/task/UDPClientGPS;->mDeviceIP:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/task/UDPClientGPS;->startSendThread(Ljava/lang/String;II)V

    .line 100
    return-void
.end method

.method public startSendUDP(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 104
    return-void
.end method

.method public unregisterGpsUdpListener(Lcom/task/IGpsListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/task/IGpsListener;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/task/UDPClientGPS;->iGpsListeners:Ljava/util/HashSet;

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
