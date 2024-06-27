.class Lcom/hfufo/rxdrone/ManualCtrlActivity$12;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x2

    .line 1816
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1817
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1819
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1820
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-lt v3, v7, :cond_6

    .line 1821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_6

    .line 1822
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1823
    new-instance v2, Lcom/fh/beans/StreamInfo;

    invoke-direct {v2}, Lcom/fh/beans/StreamInfo;-><init>()V

    .line 1824
    .local v2, "info":Lcom/fh/beans/StreamInfo;
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lcom/fh/beans/StreamInfo;->setData([B)V

    .line 1825
    invoke-virtual {v2, v6}, Lcom/fh/beans/StreamInfo;->setType(I)V

    .line 1826
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6900(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/fh/beans/StreamInfo;)V

    .line 1821
    .end local v2    # "info":Lcom/fh/beans/StreamInfo;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1829
    :cond_2
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1830
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v5

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v5, v6, v3, v4}, Lcom/jieli/lib/stream/tools/AVIStreamer;->addData(I[BI)Z

    goto :goto_2

    .line 1842
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1843
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1844
    new-instance v2, Lcom/fh/beans/StreamInfo;

    invoke-direct {v2}, Lcom/fh/beans/StreamInfo;-><init>()V

    .line 1845
    .restart local v2    # "info":Lcom/fh/beans/StreamInfo;
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lcom/fh/beans/StreamInfo;->setData([B)V

    .line 1846
    invoke-virtual {v2, v6}, Lcom/fh/beans/StreamInfo;->setType(I)V

    .line 1847
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6900(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/fh/beans/StreamInfo;)V

    .line 1837
    .end local v2    # "info":Lcom/fh/beans/StreamInfo;
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1838
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1839
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 1856
    :cond_5
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/lib/stream/tools/AVIStreamer;->stopRecording()Z

    .line 1859
    :cond_6
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-ge v3, v7, :cond_0

    .line 1862
    const-wide/16 v4, 0x1c2

    :try_start_0
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1850
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v5

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v5, v6, v3, v4}, Lcom/jieli/lib/stream/tools/AVIStreamer;->addData(I[BI)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1851
    const-string v3, "PreviewActivityTAG"

    const-string v4, "Write video failed"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1868
    :cond_8
    return-void
.end method
