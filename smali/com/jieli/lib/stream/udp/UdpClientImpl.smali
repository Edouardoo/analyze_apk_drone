.class public Lcom/jieli/lib/stream/udp/UdpClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/stream/interfaces/ICommandApi;
.implements Lcom/jieli/lib/stream/util/ICommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/stream/udp/UdpClientImpl$b;,
        Lcom/jieli/lib/stream/udp/UdpClientImpl$c;,
        Lcom/jieli/lib/stream/udp/UdpClientImpl$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/jieli/lib/stream/udp/UdpClientImpl;

.field private static c:Ljava/net/DatagramSocket;

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jieli/lib/stream/udp/UdpDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static l:[B

.field private static m:I


# instance fields
.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

.field private h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    sput v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->m:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcom/jieli/lib/stream/udp/UdpClientImpl$1;

    invoke-direct {v0, p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$1;-><init>(Lcom/jieli/lib/stream/udp/UdpClientImpl;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->k:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    .line 53
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic a(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c(I)V

    return-void
.end method

.method private a(Lcom/jieli/lib/stream/beans/DataForm;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 450
    if-nez p1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    if-nez v0, :cond_1

    .line 452
    new-instance v0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;-><init>(Lcom/jieli/lib/stream/udp/UdpClientImpl$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    .line 453
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;Z)Z

    .line 454
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->start()V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;Z)Z

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-static {v0, p1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;Lcom/jieli/lib/stream/beans/DataForm;)V

    goto :goto_0
.end method

.method private static a(Lcom/jieli/lib/stream/beans/StateInfo;)V
    .locals 2

    .prologue
    .line 608
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 609
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/lib/stream/udp/UdpClientImpl$4;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$4;-><init>(Lcom/jieli/lib/stream/beans/StateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/udp/UdpClientImpl;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 198
    :cond_1
    return-void
.end method

.method static synthetic a([B)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b([B)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 33
    sput p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->j:I

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/jieli/lib/stream/udp/UdpClientImpl;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g()V

    return-void
.end method

.method private static declared-synchronized b([B)V
    .locals 12

    .prologue
    .line 316
    const-class v2, Lcom/jieli/lib/stream/udp/UdpClientImpl;

    monitor-enter v2

    if-eqz p0, :cond_1

    :try_start_0
    array-length v0, p0

    if-lez v0, :cond_1

    .line 318
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 319
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    array-length v0, v0

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 320
    sget-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    array-length v5, v5

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    const/4 v1, 0x0

    sget-object v3, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    array-length v3, v3

    array-length v4, p0

    invoke-static {p0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    const/4 v1, 0x0

    sput-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    move-object p0, v0

    .line 326
    :cond_0
    array-length v3, p0

    .line 327
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 329
    const/16 v0, 0x13

    if-ge v3, v0, :cond_2

    .line 330
    sput-object p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    .line 331
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 334
    :cond_2
    const/4 v0, 0x0

    .line 335
    :try_start_1
    sget-object v4, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==========receive["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_1
    if-ge v0, v3, :cond_1

    .line 339
    add-int/lit8 v1, v0, 0x13

    if-le v1, v3, :cond_3

    .line 340
    sub-int v1, v3, v0

    .line 341
    new-array v3, v1, [B

    sput-object v3, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    .line 342
    sget-object v3, Lcom/jieli/lib/stream/udp/UdpClientImpl;->l:[B

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 346
    :cond_3
    :try_start_2
    new-instance v4, Lcom/jieli/lib/stream/beans/StateInfo;

    invoke-direct {v4}, Lcom/jieli/lib/stream/beans/StateInfo;-><init>()V

    .line 347
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 348
    new-instance v5, Lcom/jieli/lib/stream/beans/CmdInfo;

    invoke-direct {v5}, Lcom/jieli/lib/stream/beans/CmdInfo;-><init>()V

    .line 349
    add-int/lit8 v6, v0, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {p0, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 353
    invoke-virtual {v4, v6}, Lcom/jieli/lib/stream/beans/StateInfo;->setCmdNumber(Ljava/lang/String;)V

    .line 357
    add-int/lit8 v7, v0, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {p0, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    .line 368
    add-int v1, v0, v7

    if-gt v1, v3, :cond_1

    .line 371
    :try_start_4
    new-array v8, v7, [B

    .line 372
    add-int/lit8 v1, v0, 0x13

    const/4 v9, 0x0

    invoke-static {p0, v1, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 376
    invoke-virtual {v4, v9}, Lcom/jieli/lib/stream/beans/StateInfo;->setParam([Ljava/lang/String;)V

    .line 378
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 409
    :goto_3
    :pswitch_0
    invoke-virtual {v5, v9}, Lcom/jieli/lib/stream/beans/CmdInfo;->setCmdParams([Ljava/lang/String;)V

    .line 410
    invoke-virtual {v5, v6}, Lcom/jieli/lib/stream/beans/CmdInfo;->setCommand(Ljava/lang/String;)V

    .line 411
    const-string v1, "1"

    invoke-virtual {v5, v1}, Lcom/jieli/lib/stream/beans/CmdInfo;->setCtpId(Ljava/lang/String;)V

    .line 414
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_5
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 423
    invoke-static {v4}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Lcom/jieli/lib/stream/beans/StateInfo;)V

    .line 428
    :pswitch_1
    if-lez v7, :cond_6

    .line 429
    add-int/2addr v0, v7

    .line 432
    :cond_6
    add-int/lit8 v0, v0, 0x13

    .line 434
    goto/16 :goto_1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 378
    :sswitch_0
    const-string v10, "0041"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string v10, "0064"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v10, "0046"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v10, "0069"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string v10, "0043"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v10, "0066"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    const-string v10, "0058"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_7
    const-string v10, "0072"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_8
    const-string v10, "0005"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "0006"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v10, "0007"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v10, "0008"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v10, "0040"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v10, "0050"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v10, "0051"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v10, "0061"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v10, "0062"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0x10

    goto/16 :goto_2

    .line 390
    :pswitch_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 397
    :pswitch_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v11, v1, v10

    .line 398
    invoke-virtual {v4, v1}, Lcom/jieli/lib/stream/beans/StateInfo;->setParam([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 414
    :sswitch_11
    const-string v5, "0020"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_4

    :sswitch_12
    const-string v5, "0021"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto/16 :goto_4

    :sswitch_13
    const-string v5, "0017"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_4

    :sswitch_14
    const-string v5, "0022"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x3

    goto/16 :goto_4

    :sswitch_15
    const-string v5, "0023"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x4

    goto/16 :goto_4

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x168c05 -> :sswitch_8
        0x168c06 -> :sswitch_9
        0x168c07 -> :sswitch_a
        0x168c08 -> :sswitch_b
        0x168c7c -> :sswitch_c
        0x168c7d -> :sswitch_0
        0x168c7f -> :sswitch_4
        0x168c82 -> :sswitch_2
        0x168c9b -> :sswitch_d
        0x168c9c -> :sswitch_e
        0x168ca3 -> :sswitch_6
        0x168cbb -> :sswitch_f
        0x168cbc -> :sswitch_10
        0x168cbe -> :sswitch_1
        0x168cc0 -> :sswitch_5
        0x168cc3 -> :sswitch_3
        0x168cdb -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 414
    :sswitch_data_1
    .sparse-switch
        0x168c26 -> :sswitch_13
        0x168c3e -> :sswitch_11
        0x168c3f -> :sswitch_12
        0x168c40 -> :sswitch_14
        0x168c41 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 446
    const-class v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->i()V

    return-void
.end method

.method private static c(I)V
    .locals 2

    .prologue
    .line 593
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 594
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/lib/stream/udp/UdpClientImpl$3;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$3;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 465
    sget-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c:Ljava/net/DatagramSocket;

    if-nez v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    sget-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    const-string v2, "data is null "

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_2
    :try_start_0
    sget-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    if-eqz v1, :cond_0

    sget v2, Lcom/jieli/lib/stream/udp/UdpClientImpl;->j:I

    if-lez v2, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 480
    :try_start_1
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    sget v5, Lcom/jieli/lib/stream/udp/UdpClientImpl;->j:I

    invoke-direct {v3, v2, v4, v1, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 481
    sget-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 482
    const/4 v1, 0x0

    sput v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->m:I

    .line 483
    sget-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============UDP send["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 485
    :catch_1
    move-exception v1

    .line 486
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    sget v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->m:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->m:I

    .line 488
    sget v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->m:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 489
    sput v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->m:I

    goto :goto_0

    .line 491
    :cond_3
    invoke-static {p0, p1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e:Ljava/util/Set;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;-><init>(Lcom/jieli/lib/stream/udp/UdpClientImpl$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    .line 163
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;Z)Z

    .line 164
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->start()V

    .line 166
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$b;->b(Lcom/jieli/lib/stream/udp/UdpClientImpl$b;)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h:Lcom/jieli/lib/stream/udp/UdpClientImpl$b;

    .line 175
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;-><init>(Lcom/jieli/lib/stream/udp/UdpClientImpl$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    .line 180
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->start()V

    .line 182
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/jieli/lib/stream/udp/UdpClientImpl;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;

    invoke-direct {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->a()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->g:Lcom/jieli/lib/stream/udp/UdpClientImpl$c;

    .line 189
    :cond_0
    return-void
.end method

.method private static i()V
    .locals 2

    .prologue
    .line 578
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/lib/stream/udp/UdpClientImpl$2;

    invoke-direct {v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method public closeClient()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->k:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/lang/Runnable;)V

    .line 91
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f()V

    .line 92
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h()V

    .line 95
    sput-object v1, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    .line 96
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 99
    iput-object v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f:Ljava/util/concurrent/ExecutorService;

    .line 101
    :cond_0
    return-void
.end method

.method public createClient(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->f()V

    .line 75
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->h()V

    .line 76
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    const-string v1, "Socket Client is already exist."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->k:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a:Ljava/lang/String;

    const-string v1, "prepare Socket Client ."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;-><init>(Lcom/jieli/lib/stream/udp/UdpClientImpl;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public registerUdpDeviceListener(Lcom/jieli/lib/stream/udp/UdpDeviceListener;)Z
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e:Ljava/util/Set;

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public varargs sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    new-instance v1, Lcom/jieli/lib/stream/beans/DataForm;

    invoke-direct {v1}, Lcom/jieli/lib/stream/beans/DataForm;-><init>()V

    .line 121
    invoke-virtual {v1, p1}, Lcom/jieli/lib/stream/beans/DataForm;->setId(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, p2}, Lcom/jieli/lib/stream/beans/DataForm;->setCmd(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/jieli/lib/stream/beans/DataForm;->setParams(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Lcom/jieli/lib/stream/beans/DataForm;)V

    .line 125
    return-void
.end method

.method public unregisterUdpDeviceListener(Lcom/jieli/lib/stream/udp/UdpDeviceListener;)Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jieli/lib/stream/udp/UdpClientImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
