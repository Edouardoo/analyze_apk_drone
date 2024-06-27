.class Lcom/hfufo/widget/IjkVideoView$6;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1700(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1700(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 640
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 681
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 642
    :sswitch_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :sswitch_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_RENDERING_START:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :sswitch_2
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_START:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :sswitch_3
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_END:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :sswitch_4
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :sswitch_5
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BAD_INTERLEAVING:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :sswitch_6
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_NOT_SEEKABLE:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :sswitch_7
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_METADATA_UPDATE:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :sswitch_8
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :sswitch_9
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    :sswitch_a
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, p3}, Lcom/hfufo/widget/IjkVideoView;->access$1902(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 673
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/hfufo/widget/media/IRenderView;->setVideoRotation(I)V

    goto/16 :goto_0

    .line 678
    :sswitch_b
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$6;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_AUDIO_RENDERING_START:"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x2bf -> :sswitch_4
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
        0x2711 -> :sswitch_a
        0x2712 -> :sswitch_b
    .end sparse-switch
.end method
