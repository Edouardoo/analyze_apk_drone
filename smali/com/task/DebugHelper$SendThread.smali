.class Lcom/task/DebugHelper$SendThread;
.super Ljava/lang/Thread;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/DebugHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field private dataLen:I

.field private interval:I

.field private volatile isThreadAlive:Z

.field private mInetAddress:Ljava/net/InetAddress;

.field private mSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/task/DebugHelper;


# direct methods
.method constructor <init>(Lcom/task/DebugHelper;Ljava/net/DatagramSocket;Ljava/lang/String;II)V
    .locals 2
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "dataLen"    # I
    .param p5, "interval"    # I

    .prologue
    .line 298
    iput-object p1, p0, Lcom/task/DebugHelper$SendThread;->this$0:Lcom/task/DebugHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/task/DebugHelper$SendThread;->isThreadAlive:Z

    .line 299
    iput-object p2, p0, Lcom/task/DebugHelper$SendThread;->mSocket:Ljava/net/DatagramSocket;

    .line 300
    iput p4, p0, Lcom/task/DebugHelper$SendThread;->dataLen:I

    .line 301
    iput p5, p0, Lcom/task/DebugHelper$SendThread;->interval:I

    .line 303
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method static synthetic access$800(Lcom/task/DebugHelper$SendThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/DebugHelper$SendThread;

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/task/DebugHelper$SendThread;->isThreadAlive:Z

    return v0
.end method

.method private createPacket()Ljava/net/DatagramPacket;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, "packet":Ljava/net/DatagramPacket;
    iget v6, p0, Lcom/task/DebugHelper$SendThread;->dataLen:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;

    if-eqz v6, :cond_1

    .line 344
    invoke-static {}, Lcom/task/DebugHelper;->access$908()I

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSSDP_NOTIFY UX_DATA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/task/DebugHelper;->access$900()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "head":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 347
    .local v2, "headBuf":[B
    iget v6, p0, Lcom/task/DebugHelper$SendThread;->dataLen:I

    new-array v5, v6, [B

    .line 348
    .local v5, "payload":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/task/DebugHelper$SendThread;->dataLen:I

    if-ge v3, v6, :cond_0

    .line 349
    new-instance v6, Ljava/util/Random;

    const-wide/16 v8, 0x64

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    :cond_0
    array-length v6, v2

    iget v7, p0, Lcom/task/DebugHelper$SendThread;->dataLen:I

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 352
    .local v0, "data":[B
    array-length v6, v2

    invoke-static {v2, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    array-length v6, v2

    iget v7, p0, Lcom/task/DebugHelper$SendThread;->dataLen:I

    invoke-static {v5, v10, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    new-instance v4, Ljava/net/DatagramPacket;

    .end local v4    # "packet":Ljava/net/DatagramPacket;
    array-length v6, v0

    iget-object v7, p0, Lcom/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/task/DebugHelper$SendThread;->this$0:Lcom/task/DebugHelper;

    invoke-static {v8}, Lcom/task/DebugHelper;->access$1000(Lcom/task/DebugHelper;)I

    move-result v8

    invoke-direct {v4, v0, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 357
    .end local v0    # "data":[B
    .end local v1    # "head":Ljava/lang/String;
    .end local v2    # "headBuf":[B
    .end local v3    # "i":I
    .end local v5    # "payload":[B
    .restart local v4    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 322
    invoke-static {}, Lcom/task/DebugHelper;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SendThread running..."

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/task/DebugHelper$SendThread;->isThreadAlive:Z

    if-eqz v2, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/task/DebugHelper$SendThread;->createPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 325
    .local v0, "datagramPacket":Ljava/net/DatagramPacket;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/task/DebugHelper$SendThread;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/task/DebugHelper$SendThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :try_start_1
    iget v2, p0, Lcom/task/DebugHelper$SendThread;->interval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 333
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 334
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 335
    iget-object v2, p0, Lcom/task/DebugHelper$SendThread;->this$0:Lcom/task/DebugHelper;

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/task/DebugHelper;->access$500(Lcom/task/DebugHelper;ILjava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/task/DebugHelper$SendThread;->isThreadAlive:Z

    .line 313
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 1

    .prologue
    .line 317
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/task/DebugHelper$SendThread;->isThreadAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
