.class Lcom/hfufo/rxdrone/PlayVideoActivity$1;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 90
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v7, 0xb5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v3, 0x7f03006a

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return v6

    .line 96
    :pswitch_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$000(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 100
    .local v1, "currentProgress_":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 116
    .end local v1    # "currentProgress_":I
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 118
    .local v0, "currentProgress":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_2
    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 123
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$700(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/x-msvideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb2

    iget-object v5, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 137
    .end local v0    # "currentProgress":I
    :pswitch_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->requestFocus()Z

    goto/16 :goto_0

    .line 141
    :pswitch_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f030069

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->requestFocus()Z

    .line 143
    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$1;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
