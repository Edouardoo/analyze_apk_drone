.class Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/projection/UDPSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/jieli/lib/dv/control/projection/beans/StreamData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field final synthetic c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;


# direct methods
.method private constructor <init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;-><init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 10
    :goto_0
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;)Z
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;Z)Z
    .locals 0

    .prologue
    .line 2
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->b:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I

    .line 12
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I

    .line 13
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I

    .line 14
    iput-boolean v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->b:Z

    .line 15
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a()V

    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->c:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
