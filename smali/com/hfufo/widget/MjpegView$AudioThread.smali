.class Lcom/hfufo/widget/MjpegView$AudioThread;
.super Ljava/lang/Thread;
.source "MjpegView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/MjpegView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioThread"
.end annotation


# instance fields
.field private isRunning:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v2, 0x1f40

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x3

    .line 648
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 645
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->isRunning:Z

    .line 649
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 650
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 651
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 653
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    .line 656
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 660
    .end local v5    # "bufferSize":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 663
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-gtz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 674
    :goto_0
    return-void

    .line 668
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 691
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 692
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->isRunning:Z

    .line 693
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->isRunning:Z

    if-eqz v3, :cond_1

    .line 694
    new-array v1, v5, [B

    .line 696
    .local v1, "data":[B
    :try_start_0
    iget-object v3, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_1
    iget-object v3, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 702
    iget-object v3, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v4, v1

    invoke-virtual {v3, v1, v5, v4}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 697
    :catch_0
    move-exception v2

    .line 698
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 705
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method public stopRunning()V
    .locals 3

    .prologue
    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->isRunning:Z

    .line 679
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRunning: getState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getPlayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 682
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 683
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 684
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRunning: release----getState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getPlayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$AudioThread;->mAudioTrack:Landroid/media/AudioTrack;

    .line 687
    :cond_1
    return-void
.end method
