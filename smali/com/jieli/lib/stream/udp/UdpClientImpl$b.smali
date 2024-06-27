.class Lcom/jieli/lib/stream/udp/UdpClientImpl$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/jieli/lib/stream/beans/DataForm;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 502
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 503
    iput-boolean v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->b:Z

    .line 504
    iput-boolean v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/stream/udp/UdpClientImpl$1;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->b:Z

    .line 521
    iget-object v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 523
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 524
    monitor-exit v1

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/jieli/lib/stream/beans/DataForm;)V
    .locals 2

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->c:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 514
    :try_start_1
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 515
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :cond_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;Lcom/jieli/lib/stream/beans/DataForm;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/beans/DataForm;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;)Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;Z)Z
    .locals 0

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v1, -0xffff

    .line 529
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 530
    iget-object v3, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v3

    .line 531
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->b:Z

    if-eqz v0, :cond_5

    .line 532
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->c:Z

    .line 535
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 540
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->c:Z

    .line 541
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/DataForm;

    .line 542
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/DataForm;->getId()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/DataForm;->getCmd()Ljava/lang/String;

    move-result-object v4

    .line 545
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/DataForm;->getParams()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 548
    :try_start_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    .line 556
    :goto_1
    :try_start_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 557
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    .line 562
    :goto_2
    if-eq v0, v1, :cond_0

    if-eq v2, v1, :cond_0

    .line 563
    :try_start_6
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendDataThread  id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , cmdNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 565
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CTP:%04d %04d %04d "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 551
    :catch_1
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto/16 :goto_1

    .line 559
    :catch_2
    move-exception v2

    .line 560
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v2, v1

    goto/16 :goto_2

    .line 567
    :cond_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "CTP:%04d %04d %04d "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 573
    :cond_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 574
    return-void
.end method
