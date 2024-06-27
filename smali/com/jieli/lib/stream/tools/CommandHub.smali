.class public Lcom/jieli/lib/stream/tools/CommandHub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/stream/interfaces/ICommandApi;
.implements Lcom/jieli/lib/stream/util/ICommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/stream/tools/CommandHub$b;,
        Lcom/jieli/lib/stream/tools/CommandHub$c;,
        Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;,
        Lcom/jieli/lib/stream/tools/CommandHub$d;,
        Lcom/jieli/lib/stream/tools/CommandHub$a;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECTION_EXCEPTION:I = 0x1

.field public static final ERROR_CONNECTION_TIMEOUT:I = 0x2

.field private static final a:Ljava/lang/String;

.field private static b:Ljava/net/Socket;

.field private static c:Ljava/io/OutputStream;

.field private static d:Lcom/jieli/lib/stream/tools/CommandHub;

.field private static e:Landroid/os/Handler;

.field private static f:I

.field private static k:Z

.field private static volatile m:Z

.field private static volatile n:Z

.field private static volatile p:I

.field private static q:Ljava/lang/String;

.field private static r:I

.field private static t:[B

.field private static u:Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

.field private static v:I

.field private static w:I


# instance fields
.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Lcom/jieli/lib/stream/tools/CommandHub$c;

.field private i:Lcom/jieli/lib/stream/tools/CommandHub$a;

.field private j:Lcom/jieli/lib/stream/tools/CommandHub$d;

.field private l:Ljava/lang/String;

.field private volatile o:Z

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/jieli/lib/stream/tools/CommandHub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;

    .line 29
    sput-object v2, Lcom/jieli/lib/stream/tools/CommandHub;->d:Lcom/jieli/lib/stream/tools/CommandHub;

    .line 32
    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->f:I

    .line 48
    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->k:Z

    .line 50
    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->m:Z

    .line 51
    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->n:Z

    .line 54
    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->p:I

    .line 667
    const/16 v0, 0x2710

    sput v0, Lcom/jieli/lib/stream/tools/CommandHub;->v:I

    .line 668
    const/4 v0, 0x5

    sput v0, Lcom/jieli/lib/stream/tools/CommandHub;->w:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->o:Z

    .line 220
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub$1;

    invoke-direct {v0, p0}, Lcom/jieli/lib/stream/tools/CommandHub$1;-><init>(Lcom/jieli/lib/stream/tools/CommandHub;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->s:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    .line 72
    return-void
.end method

.method static synthetic a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/jieli/lib/stream/tools/CommandHub;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/jieli/lib/stream/tools/CommandHub;->b:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->d(I)V

    return-void
.end method

.method private a(Lcom/jieli/lib/stream/beans/DataForm;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    if-nez p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$d;-><init>(Lcom/jieli/lib/stream/tools/CommandHub$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    .line 202
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/tools/CommandHub$d;->a(Lcom/jieli/lib/stream/tools/CommandHub$d;Z)Z

    .line 203
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub$d;->start()V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/CommandHub$d;->a(Lcom/jieli/lib/stream/tools/CommandHub$d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/tools/CommandHub$d;->a(Lcom/jieli/lib/stream/tools/CommandHub$d;Z)Z

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-static {v0, p1}, Lcom/jieli/lib/stream/tools/CommandHub$d;->a(Lcom/jieli/lib/stream/tools/CommandHub$d;Lcom/jieli/lib/stream/beans/DataForm;)V

    goto :goto_0
.end method

.method private static a(Lcom/jieli/lib/stream/beans/StateInfo;)V
    .locals 2

    .prologue
    .line 836
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 837
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/lib/stream/tools/CommandHub$4;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/CommandHub$4;-><init>(Lcom/jieli/lib/stream/beans/StateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/CommandHub;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->m()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 218
    :cond_1
    return-void
.end method

.method static synthetic a([B)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->b([B)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/jieli/lib/stream/tools/CommandHub;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 25
    sput-boolean p0, Lcom/jieli/lib/stream/tools/CommandHub;->k:Z

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 25
    sput p0, Lcom/jieli/lib/stream/tools/CommandHub;->f:I

    return p0
.end method

.method static synthetic b(Lcom/jieli/lib/stream/tools/CommandHub;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->o()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 720
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_1
    return-void

    .line 720
    :sswitch_0
    const-string v2, "0041"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "0064"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 722
    :pswitch_0
    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->p:I

    goto :goto_1

    .line 725
    :pswitch_1
    const/4 v0, 0x2

    sput v0, Lcom/jieli/lib/stream/tools/CommandHub;->p:I

    goto :goto_1

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x168c7d -> :sswitch_0
        0x168cbe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized b([B)V
    .locals 12

    .prologue
    .line 342
    const-class v2, Lcom/jieli/lib/stream/tools/CommandHub;

    monitor-enter v2

    if-eqz p0, :cond_1

    :try_start_0
    array-length v0, p0

    if-lez v0, :cond_1

    .line 344
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 345
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    array-length v0, v0

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 346
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    array-length v5, v5

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    const/4 v1, 0x0

    sget-object v3, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    array-length v3, v3

    array-length v4, p0

    invoke-static {p0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    const/4 v1, 0x0

    sput-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    move-object p0, v0

    .line 352
    :cond_0
    array-length v3, p0

    .line 353
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 355
    const/16 v0, 0x13

    if-ge v3, v0, :cond_2

    .line 356
    sput-object p0, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    .line 357
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

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

    .line 485
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 360
    :cond_2
    const/4 v0, 0x0

    .line 361
    :try_start_1
    sget-object v4, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

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

    .line 363
    :goto_1
    if-ge v0, v3, :cond_1

    .line 365
    add-int/lit8 v1, v0, 0x13

    if-le v1, v3, :cond_3

    .line 366
    sub-int v1, v3, v0

    .line 367
    new-array v3, v1, [B

    sput-object v3, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    .line 368
    sget-object v3, Lcom/jieli/lib/stream/tools/CommandHub;->t:[B

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 372
    :cond_3
    :try_start_2
    new-instance v4, Lcom/jieli/lib/stream/beans/StateInfo;

    invoke-direct {v4}, Lcom/jieli/lib/stream/beans/StateInfo;-><init>()V

    .line 373
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 374
    new-instance v5, Lcom/jieli/lib/stream/beans/CmdInfo;

    invoke-direct {v5}, Lcom/jieli/lib/stream/beans/CmdInfo;-><init>()V

    .line 375
    add-int/lit8 v6, v0, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {p0, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 379
    invoke-virtual {v4, v6}, Lcom/jieli/lib/stream/beans/StateInfo;->setCmdNumber(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v7, v0, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {p0, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    .line 394
    add-int v1, v0, v7

    if-gt v1, v3, :cond_1

    .line 397
    :try_start_4
    new-array v8, v7, [B

    .line 398
    add-int/lit8 v1, v0, 0x13

    const/4 v9, 0x0

    invoke-static {p0, v1, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 402
    invoke-virtual {v4, v9}, Lcom/jieli/lib/stream/beans/StateInfo;->setParam([Ljava/lang/String;)V

    .line 404
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 454
    :cond_5
    :goto_3
    invoke-virtual {v5, v9}, Lcom/jieli/lib/stream/beans/CmdInfo;->setCmdParams([Ljava/lang/String;)V

    .line 455
    invoke-virtual {v5, v6}, Lcom/jieli/lib/stream/beans/CmdInfo;->setCommand(Ljava/lang/String;)V

    .line 456
    const-string v1, "1"

    invoke-virtual {v5, v1}, Lcom/jieli/lib/stream/beans/CmdInfo;->setCtpId(Ljava/lang/String;)V

    .line 459
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_6
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 471
    invoke-static {v4}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Lcom/jieli/lib/stream/beans/StateInfo;)V

    .line 476
    :goto_5
    :pswitch_0
    if-lez v7, :cond_7

    .line 477
    add-int/2addr v0, v7

    .line 480
    :cond_7
    add-int/lit8 v0, v0, 0x13

    .line 482
    goto/16 :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 404
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

    .line 406
    :pswitch_1
    const/4 v1, 0x1

    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->p:I

    goto/16 :goto_3

    .line 409
    :pswitch_2
    const/4 v1, 0x2

    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->p:I

    goto/16 :goto_3

    .line 418
    :pswitch_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 425
    :pswitch_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v11, v1, v10

    .line 426
    invoke-virtual {v4, v1}, Lcom/jieli/lib/stream/beans/StateInfo;->setParam([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 429
    :pswitch_5
    const-string v1, "0"

    const/4 v8, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 430
    const-string v1, "1"

    const/4 v8, 0x2

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 431
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->m:Z

    goto/16 :goto_3

    .line 432
    :cond_8
    const-string v1, "0"

    const/4 v8, 0x2

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 433
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->m:Z

    goto/16 :goto_3

    .line 437
    :pswitch_6
    const-string v1, "0"

    const/4 v8, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 438
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->m:Z

    goto/16 :goto_3

    .line 441
    :pswitch_7
    const-string v1, "0"

    const/4 v8, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 442
    const-string v1, "1"

    const/4 v8, 0x2

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 443
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->n:Z

    goto/16 :goto_3

    .line 444
    :cond_9
    const-string v1, "0"

    const/4 v8, 0x2

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->n:Z

    goto/16 :goto_3

    .line 449
    :pswitch_8
    const-string v1, "0"

    const/4 v8, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jieli/lib/stream/tools/CommandHub;->n:Z

    goto/16 :goto_3

    .line 459
    :sswitch_11
    const-string v5, "9993"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_4

    :sswitch_12
    const-string v5, "0020"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_4

    :sswitch_13
    const-string v5, "0021"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x2

    goto/16 :goto_4

    :sswitch_14
    const-string v5, "0017"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x3

    goto/16 :goto_4

    :sswitch_15
    const-string v5, "0022"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x4

    goto/16 :goto_4

    :sswitch_16
    const-string v5, "0023"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x5

    goto/16 :goto_4

    .line 461
    :pswitch_9
    const/4 v1, 0x0

    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 404
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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 459
    :sswitch_data_1
    .sparse-switch
        0x168c26 -> :sswitch_14
        0x168c3e -> :sswitch_12
        0x168c3f -> :sswitch_13
        0x168c40 -> :sswitch_15
        0x168c41 -> :sswitch_16
        0x1ac63a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 507
    const-class v0, Lcom/jieli/lib/stream/tools/CommandHub;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/jieli/lib/stream/tools/CommandHub;->c(Ljava/lang/String;Ljava/lang/String;)Z
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

.method static synthetic c(I)I
    .locals 0

    .prologue
    .line 25
    sput p0, Lcom/jieli/lib/stream/tools/CommandHub;->r:I

    return p0
.end method

.method static synthetic c(Lcom/jieli/lib/stream/tools/CommandHub;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->o:Z

    return v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    const-string v2, "data is null "

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_0
    return v0

    .line 515
    :cond_0
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->b:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 517
    :try_start_0
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_1
    :goto_1
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 524
    invoke-static {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->b(Ljava/lang/String;)V

    .line 526
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 527
    sget-object v2, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 528
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============send["

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

    .line 529
    const/4 v0, 0x1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 530
    :catch_1
    move-exception v1

    .line 531
    sget-object v2, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    const-string v3, "Error: sendData failed"

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 535
    :cond_2
    sget-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    const-string v2, "====sendData: OutputStream is null."

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->b:Ljava/net/Socket;

    return-object v0
.end method

.method private static d(I)V
    .locals 2

    .prologue
    .line 823
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 824
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/lib/stream/tools/CommandHub$3;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/CommandHub$3;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/jieli/lib/stream/tools/CommandHub;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->q()V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/jieli/lib/stream/tools/CommandHub;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->s()V

    return-void
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->v:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->f:I

    return v0
.end method

.method public static getInstance()Lcom/jieli/lib/stream/tools/CommandHub;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->d:Lcom/jieli/lib/stream/tools/CommandHub;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/jieli/lib/stream/tools/CommandHub;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->d:Lcom/jieli/lib/stream/tools/CommandHub;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub;

    invoke-direct {v0}, Lcom/jieli/lib/stream/tools/CommandHub;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->d:Lcom/jieli/lib/stream/tools/CommandHub;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->d:Lcom/jieli/lib/stream/tools/CommandHub;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic h()I
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/jieli/lib/stream/tools/CommandHub;->f:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->w:I

    return v0
.end method

.method static synthetic j()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic k()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->t()V

    return-void
.end method

.method static synthetic l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->u:Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$d;-><init>(Lcom/jieli/lib/stream/tools/CommandHub$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    .line 241
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$d;->a(Lcom/jieli/lib/stream/tools/CommandHub$d;Z)Z

    .line 242
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub$d;->start()V

    .line 244
    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/CommandHub$d;->a(Lcom/jieli/lib/stream/tools/CommandHub$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/CommandHub$d;->b(Lcom/jieli/lib/stream/tools/CommandHub$d;)V

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->j:Lcom/jieli/lib/stream/tools/CommandHub$d;

    .line 253
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->i:Lcom/jieli/lib/stream/tools/CommandHub$a;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$a;-><init>(Lcom/jieli/lib/stream/tools/CommandHub$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->i:Lcom/jieli/lib/stream/tools/CommandHub$a;

    .line 258
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->i:Lcom/jieli/lib/stream/tools/CommandHub$a;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub$a;->start()V

    .line 260
    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->i:Lcom/jieli/lib/stream/tools/CommandHub$a;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->i:Lcom/jieli/lib/stream/tools/CommandHub$a;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub$a;->a()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->i:Lcom/jieli/lib/stream/tools/CommandHub$a;

    .line 267
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->h:Lcom/jieli/lib/stream/tools/CommandHub$c;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$c;-><init>(Lcom/jieli/lib/stream/tools/CommandHub$1;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->h:Lcom/jieli/lib/stream/tools/CommandHub$c;

    .line 272
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->h:Lcom/jieli/lib/stream/tools/CommandHub$c;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub$c;->start()V

    .line 274
    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->h:Lcom/jieli/lib/stream/tools/CommandHub$c;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->h:Lcom/jieli/lib/stream/tools/CommandHub$c;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub$c;->a()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->h:Lcom/jieli/lib/stream/tools/CommandHub$c;

    .line 281
    :cond_0
    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    const-string v0, "1"

    const-string v1, "0029"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/jieli/lib/stream/tools/CommandHub;->l:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 288
    const-string v0, "1"

    const-string v1, "0005"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 291
    const-string v0, "1"

    const-string v1, "0011"

    invoke-virtual {p0, v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "1"

    const-string v1, "0026"

    invoke-virtual {p0, v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private static t()V
    .locals 2

    .prologue
    .line 810
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 811
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/lib/stream/tools/CommandHub$2;

    invoke-direct {v1}, Lcom/jieli/lib/stream/tools/CommandHub$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    :cond_0
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 705
    sget-boolean v0, Lcom/jieli/lib/stream/tools/CommandHub;->m:Z

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 712
    sget-boolean v0, Lcom/jieli/lib/stream/tools/CommandHub;->n:Z

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 716
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->p:I

    return v0
.end method

.method public closeClient()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->s:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/lang/Runnable;)V

    .line 157
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->n()V

    .line 158
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->r()V

    .line 159
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->p()V

    .line 162
    sput-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->u:Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    .line 163
    sput-object v1, Lcom/jieli/lib/stream/tools/CommandHub;->d:Lcom/jieli/lib/stream/tools/CommandHub;

    .line 164
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 167
    iput-object v1, p0, Lcom/jieli/lib/stream/tools/CommandHub;->g:Ljava/util/concurrent/ExecutorService;

    .line 169
    :cond_0
    return-void
.end method

.method public createClient()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "192.168.1.1"

    const/16 v1, 0x8ae

    invoke-virtual {p0, v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub;->createClient(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public createClient(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->n()V

    .line 140
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->r()V

    .line 141
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->p()V

    .line 142
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    const-string v1, "Socket Client is already exist."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->s:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    const-string v1, "prepare Socket Client ."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/jieli/lib/stream/tools/CommandHub$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/stream/tools/CommandHub$b;-><init>(Lcom/jieli/lib/stream/tools/CommandHub;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public getDeviceIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePort()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->r:I

    return v0
.end method

.method public getHearbeat()I
    .locals 1

    .prologue
    .line 664
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->v:I

    return v0
.end method

.method public getHeartbeatTimeout()I
    .locals 1

    .prologue
    .line 648
    sget v0, Lcom/jieli/lib/stream/tools/CommandHub;->w:I

    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Lcom/jieli/lib/stream/beans/DataForm;

    invoke-direct {v0}, Lcom/jieli/lib/stream/beans/DataForm;-><init>()V

    .line 90
    const-string v1, "9999"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/DataForm;->setId(Ljava/lang/String;)V

    .line 91
    const-string v1, "9993"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/DataForm;->setCmd(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/DataForm;->setParams(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Lcom/jieli/lib/stream/beans/DataForm;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    sget-boolean v0, Lcom/jieli/lib/stream/tools/CommandHub;->k:Z

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isIsEnableHeartBeat()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub;->o:Z

    return v0
.end method

.method public requestStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 497
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public varargs sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_1
    new-instance v1, Lcom/jieli/lib/stream/beans/DataForm;

    invoke-direct {v1}, Lcom/jieli/lib/stream/beans/DataForm;-><init>()V

    .line 192
    invoke-virtual {v1, p1}, Lcom/jieli/lib/stream/beans/DataForm;->setId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, p2}, Lcom/jieli/lib/stream/beans/DataForm;->setCmd(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v0}, Lcom/jieli/lib/stream/beans/DataForm;->setParams(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, v1}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Lcom/jieli/lib/stream/beans/DataForm;)V

    .line 196
    return-void
.end method

.method public declared-synchronized setHeartbeat(I)V
    .locals 1

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/jieli/lib/stream/tools/CommandHub;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHeartbeatTimeout(I)V
    .locals 1

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/jieli/lib/stream/tools/CommandHub;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsEnableHeartBeat(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/jieli/lib/stream/tools/CommandHub;->o:Z

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->r()V

    .line 119
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->q()V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub;->r()V

    goto :goto_0
.end method

.method public setLocalAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/CommandHub;->l:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public declared-synchronized setOnDeviceListener(Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;)V
    .locals 3

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/jieli/lib/stream/tools/CommandHub;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnDeviceListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    sput-object p1, Lcom/jieli/lib/stream/tools/CommandHub;->u:Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
