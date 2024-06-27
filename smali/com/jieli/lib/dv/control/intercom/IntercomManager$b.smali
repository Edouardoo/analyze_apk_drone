.class Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/intercom/IntercomManager;
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

.field final synthetic c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;


# direct methods
.method private constructor <init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;-><init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 10
    :goto_0
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

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

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;)Z
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;Z)Z
    .locals 0

    .prologue
    .line 2
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->b:Z

    return p1
.end method

.method private b(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    if-nez p1, :cond_0

    .line 14
    :goto_0
    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2, v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0, v4, v5}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I

    .line 9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0, v4, v5}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getOffset()I

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getPayloadLen()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I

    .line 12
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I

    .line 13
    iput-boolean v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->b:Z

    .line 14
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->b:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;[B)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 9
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->b(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    :cond_1
    if-gez v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a()V

    :cond_2
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
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->c:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
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
