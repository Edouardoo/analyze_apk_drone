.class Lcom/hfufo/rxdrone/PlayVideoActivity$6;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/PlayVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 535
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 540
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v6, 0xb5

    const/16 v5, 0xb2

    const/4 v4, 0x0

    .line 544
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1900(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 545
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 546
    .local v0, "progress":I
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 547
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1900(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    mul-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2002(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .end local v0    # "progress":I
    :goto_1
    return-void

    .line 550
    .restart local v0    # "progress":I
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$700(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 560
    .end local v0    # "progress":I
    :cond_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 561
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
