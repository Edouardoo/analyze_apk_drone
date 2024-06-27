.class public Lcom/task/HeartbeatTask;
.super Ljava/lang/Thread;
.source "HeartbeatTask.java"


# static fields
.field public static final DEFAULT_HEARTBEAT_PERIOD:I = 0x1770

.field public static final DEFAULT_HEARTBEAT_TIMEOUT:I = 0x8


# instance fields
.field private isHeartbeatTaskRunning:Z

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

.field private mPeriod:J

.field private mTimeout:I

.field private mTimeoutCount:I

.field private sendAgain:Z

.field private sendCount:I

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/task/HeartbeatTask;->tag:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    .line 19
    const/16 v0, 0x8

    iput v0, p0, Lcom/task/HeartbeatTask;->mTimeout:I

    .line 20
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/task/HeartbeatTask;->mPeriod:J

    .line 29
    iput-boolean v2, p0, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 30
    iput-boolean v2, p0, Lcom/task/HeartbeatTask;->sendAgain:Z

    .line 31
    iput v2, p0, Lcom/task/HeartbeatTask;->sendCount:I

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/task/HeartbeatTask;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/task/HeartbeatTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/task/HeartbeatTask;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/task/HeartbeatTask;->sendAgain:Z

    return p1
.end method

.method static synthetic access$102(Lcom/task/HeartbeatTask;I)I
    .locals 0
    .param p0, "x0"    # Lcom/task/HeartbeatTask;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/task/HeartbeatTask;->sendCount:I

    return p1
.end method


# virtual methods
.method public getPeriod()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/task/HeartbeatTask;->mPeriod:J

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/task/HeartbeatTask;->mTimeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isHeartbeatTaskRunning()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    return v0
.end method

.method public resetTimeoutCount()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    .line 65
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 72
    iput v2, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    if-eqz v0, :cond_3

    .line 75
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/task/HeartbeatTask$1;

    invoke-direct {v1, p0}, Lcom/task/HeartbeatTask$1;-><init>(Lcom/task/HeartbeatTask;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToKeepAlive(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 110
    iget-wide v0, p0, Lcom/task/HeartbeatTask;->mPeriod:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 112
    iget v0, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    .line 113
    iget v0, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    iget v1, p0, Lcom/task/HeartbeatTask;->mTimeout:I

    if-ne v0, v1, :cond_1

    .line 124
    :cond_1
    iget v0, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    iget v1, p0, Lcom/task/HeartbeatTask;->mTimeout:I

    if-le v0, v1, :cond_0

    .line 125
    iput-boolean v2, p0, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 126
    iget-object v0, p0, Lcom/task/HeartbeatTask;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/task/HeartbeatTask;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/task/HeartbeatTask;->tag:Ljava/lang/String;

    const-string v1, "HeartbeatTask: over time"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/task/HeartbeatTask;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartbeatTask ending..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setPeriodAndTimeout(JI)V
    .locals 3
    .param p1, "period"    # J
    .param p3, "timeout"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 44
    const-wide/16 p1, 0x1770

    .line 45
    :cond_0
    if-gtz p3, :cond_1

    .line 46
    const/16 p3, 0x8

    .line 47
    :cond_1
    iput-wide p1, p0, Lcom/task/HeartbeatTask;->mPeriod:J

    .line 48
    iput p3, p0, Lcom/task/HeartbeatTask;->mTimeout:I

    .line 49
    return-void
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 39
    iput v0, p0, Lcom/task/HeartbeatTask;->mTimeoutCount:I

    .line 40
    return-void
.end method
