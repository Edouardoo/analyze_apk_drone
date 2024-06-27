.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDecode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1790
    const-string v2, "ggppptime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ebf\u7a0b-Decode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1793
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1794
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1796
    .local v0, "a":[B
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;[B)V

    goto :goto_0

    .line 1801
    .end local v0    # "a":[B
    :cond_0
    const-wide/16 v2, 0x2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1802
    :catch_0
    move-exception v1

    .line 1803
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1807
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 1808
    return-void
.end method
