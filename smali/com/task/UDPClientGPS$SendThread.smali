.class Lcom/task/UDPClientGPS$SendThread;
.super Ljava/lang/Thread;
.source "UDPClientGPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/UDPClientGPS;
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

.field t:I

.field final synthetic this$0:Lcom/task/UDPClientGPS;


# direct methods
.method constructor <init>(Lcom/task/UDPClientGPS;Ljava/net/DatagramSocket;Ljava/lang/String;II)V
    .locals 2
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "dataLen"    # I
    .param p5, "interval"    # I

    .prologue
    const/4 v1, 0x0

    .line 439
    iput-object p1, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 431
    iput-boolean v1, p0, Lcom/task/UDPClientGPS$SendThread;->isThreadAlive:Z

    .line 522
    iput v1, p0, Lcom/task/UDPClientGPS$SendThread;->t:I

    .line 440
    iput-object p2, p0, Lcom/task/UDPClientGPS$SendThread;->mSocket:Ljava/net/DatagramSocket;

    .line 441
    iput p4, p0, Lcom/task/UDPClientGPS$SendThread;->dataLen:I

    .line 442
    iput p5, p0, Lcom/task/UDPClientGPS$SendThread;->interval:I

    .line 445
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 448
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method static synthetic access$700(Lcom/task/UDPClientGPS$SendThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS$SendThread;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/task/UDPClientGPS$SendThread;->isThreadAlive:Z

    return v0
.end method

.method private createData()Ljava/net/DatagramPacket;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget v2, p0, Lcom/task/UDPClientGPS$SendThread;->dataLen:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 602
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 603
    .local v0, "data":[B
    aput-byte v3, v0, v3

    .line 604
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPSData11:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/net/DatagramPacket;

    .end local v1    # "packet":Ljava/net/DatagramPacket;
    array-length v2, v0

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v4}, Lcom/task/UDPClientGPS;->access$1700(Lcom/task/UDPClientGPS;)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 609
    .end local v0    # "data":[B
    .restart local v1    # "packet":Ljava/net/DatagramPacket;
    :cond_0
    return-object v1
.end method

.method private createPacket()Ljava/net/DatagramPacket;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 524
    const/4 v1, 0x0

    .line 525
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget v2, p0, Lcom/task/UDPClientGPS$SendThread;->dataLen:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    .line 538
    iget v2, p0, Lcom/task/UDPClientGPS$SendThread;->t:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1100(Lcom/task/UDPClientGPS;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    :cond_0
    iput v4, p0, Lcom/task/UDPClientGPS$SendThread;->t:I

    .line 540
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1200(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [B

    .line 541
    .local v0, "data":[B
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1200(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v3}, Lcom/task/UDPClientGPS;->access$1200(Lcom/task/UDPClientGPS;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :goto_0
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v1, Ljava/net/DatagramPacket;

    .end local v1    # "packet":Ljava/net/DatagramPacket;
    array-length v2, v0

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v4}, Lcom/task/UDPClientGPS;->access$1700(Lcom/task/UDPClientGPS;)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 579
    .end local v0    # "data":[B
    .restart local v1    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    return-object v1

    .line 543
    :cond_2
    iget v2, p0, Lcom/task/UDPClientGPS$SendThread;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/task/UDPClientGPS$SendThread;->t:I

    .line 544
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1300(Lcom/task/UDPClientGPS;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1400(Lcom/task/UDPClientGPS;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2, v4}, Lcom/task/UDPClientGPS;->access$1402(Lcom/task/UDPClientGPS;Z)Z

    .line 547
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1500(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [B

    .line 548
    .restart local v0    # "data":[B
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1500(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v3}, Lcom/task/UDPClientGPS;->access$1500(Lcom/task/UDPClientGPS;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 550
    .end local v0    # "data":[B
    :cond_3
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/task/UDPClientGPS;->access$1402(Lcom/task/UDPClientGPS;Z)Z

    .line 551
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1600(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [B

    .line 552
    .restart local v0    # "data":[B
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1600(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v3}, Lcom/task/UDPClientGPS;->access$1600(Lcom/task/UDPClientGPS;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 555
    .end local v0    # "data":[B
    :cond_4
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1600(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [B

    .line 556
    .restart local v0    # "data":[B
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1600(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v3}, Lcom/task/UDPClientGPS;->access$1600(Lcom/task/UDPClientGPS;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method private createUpdatePacket()Ljava/net/DatagramPacket;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget v2, p0, Lcom/task/UDPClientGPS$SendThread;->dataLen:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1200(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [B

    .line 588
    .local v0, "data":[B
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1200(Lcom/task/UDPClientGPS;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v3}, Lcom/task/UDPClientGPS;->access$1200(Lcom/task/UDPClientGPS;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPSData11:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v1, Ljava/net/DatagramPacket;

    .end local v1    # "packet":Ljava/net/DatagramPacket;
    array-length v2, v0

    iget-object v3, p0, Lcom/task/UDPClientGPS$SendThread;->mInetAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v4}, Lcom/task/UDPClientGPS;->access$1700(Lcom/task/UDPClientGPS;)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 595
    .end local v0    # "data":[B
    .restart local v1    # "packet":Ljava/net/DatagramPacket;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 465
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/task/UDPClientGPS$SendThread;->isThreadAlive:Z

    if-eqz v2, :cond_5

    .line 467
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$800(Lcom/task/UDPClientGPS;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPSData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v4}, Lcom/task/UDPClientGPS;->access$800(Lcom/task/UDPClientGPS;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/task/UDPClientGPS$SendThread;->createData()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 470
    .local v0, "datagramPacket":Ljava/net/DatagramPacket;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_1

    .line 472
    :try_start_0
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 473
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mSocket.send-0..."

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 480
    :cond_1
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 475
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 476
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/task/UDPClientGPS;->access$500(Lcom/task/UDPClientGPS;ILjava/lang/String;)V

    goto :goto_1

    .line 486
    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$900(Lcom/task/UDPClientGPS;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v2}, Lcom/task/UDPClientGPS;->access$1000(Lcom/task/UDPClientGPS;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 489
    const-wide/16 v2, 0xc8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 490
    :catch_2
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 495
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/task/UDPClientGPS;->access$1002(Lcom/task/UDPClientGPS;Z)Z

    .line 497
    invoke-direct {p0}, Lcom/task/UDPClientGPS$SendThread;->createUpdatePacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 503
    .restart local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    :goto_2
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 506
    :try_start_3
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 507
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mSocket.send-1..."

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 509
    :try_start_4
    iget v2, p0, Lcom/task/UDPClientGPS$SendThread;->interval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 510
    :catch_3
    move-exception v1

    .line 511
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 513
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v1

    .line 514
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 515
    iget-object v2, p0, Lcom/task/UDPClientGPS$SendThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/task/UDPClientGPS;->access$500(Lcom/task/UDPClientGPS;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 500
    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-direct {p0}, Lcom/task/UDPClientGPS$SendThread;->createPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .restart local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    goto :goto_2

    .line 520
    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    :cond_5
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/task/UDPClientGPS$SendThread;->isThreadAlive:Z

    .line 455
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/task/UDPClientGPS$SendThread;->isThreadAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
