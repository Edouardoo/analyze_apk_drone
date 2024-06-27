.class public Lorg/wysaid/common/ConcurrentQueueHelper;
.super Ljava/lang/Object;
.source "ConcurrentQueueHelper.java"


# instance fields
.field protected mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/wysaid/common/ConcurrentQueueHelper;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    return-void
.end method


# virtual methods
.method public consume()V
    .locals 6

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 32
    .local v1, "runnable":Ljava/lang/Runnable;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/wysaid/common/ConcurrentQueueHelper;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_1
    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "libCGE_java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConcurrentQueueHelper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public consumeLast()V
    .locals 6

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 51
    .local v1, "runnable":Ljava/lang/Runnable;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/wysaid/common/ConcurrentQueueHelper;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_1
    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "libCGE_java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConcurrentQueueHelper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/wysaid/common/ConcurrentQueueHelper;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/wysaid/common/ConcurrentQueueHelper;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method
