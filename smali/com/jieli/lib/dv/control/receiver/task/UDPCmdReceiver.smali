.class public Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final CTP:Ljava/lang/String; = "CTP:"

.field static tag:Ljava/lang/String;


# instance fields
.field private isReceiverTaskRunning:Z

.field private mHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mUDPSocketWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramSocket;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mUDPSocketWeakReference:Ljava/lang/ref/WeakReference;

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleUDPReceiver()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mUDPSocketWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    const/16 v2, 0x800

    .line 3
    new-array v2, v2, [B

    .line 4
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    invoke-direct {v3, v2, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 6
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 13
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 15
    new-array v3, v0, [B

    .line 16
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-direct {p0, v3}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->parseCmdData([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x65

    .line 22
    iput v2, v1, Landroid/os/Message;->what:I

    .line 23
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    :goto_1
    const/4 v0, 0x1

    .line 33
    :goto_2
    return v0

    .line 8
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v1, "mHandler is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v1, "receive message is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_2
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v1, "tempBuf is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_3
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v2, "udpSocket is null"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->stopRunning()V

    move v0, v1

    goto :goto_2
.end method

.method private parseCmdData([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 1
    array-length v2, p1

    const/16 v1, 0xa

    if-ge v1, v2, :cond_0

    .line 4
    new-array v1, v6, [B

    .line 5
    invoke-static {p1, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "CTP:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-array v1, v4, [B

    .line 9
    invoke-static {p1, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x6

    .line 11
    invoke-static {v1}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v1

    if-ltz v1, :cond_0

    add-int v4, v1, v3

    if-gt v4, v2, :cond_0

    .line 13
    new-array v5, v1, [B

    .line 14
    invoke-static {p1, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    .line 20
    invoke-virtual {v1, v3}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    add-int/lit8 v3, v4, 0x4

    if-gt v3, v2, :cond_3

    .line 22
    new-array v5, v6, [B

    .line 23
    invoke-static {p1, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v5}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v4

    if-ltz v4, :cond_3

    add-int v5, v3, v4

    if-gt v5, v2, :cond_3

    .line 28
    new-array v6, v4, [B

    .line 29
    invoke-static {p1, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    if-ne v5, v2, :cond_3

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errno"

    .line 39
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    const-string v2, "op"

    .line 40
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v2, "param"

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "param"

    .line 43
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 45
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 46
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 60
    :cond_0
    :goto_1
    return-object v0

    .line 51
    :cond_1
    :try_start_1
    invoke-virtual {v1, v4}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 59
    invoke-virtual {v1, v7}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->handleUDPReceiver()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    return-void
.end method
