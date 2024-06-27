.class Lcom/hfufo/widget/media/InfoHudViewHolder$1;
.super Ljava/lang/Object;
.source "InfoHudViewHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/InfoHudViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/media/InfoHudViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/media/InfoHudViewHolder;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    const/4 v13, 0x0

    return v13

    .line 114
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    .line 115
    .local v5, "holder":Lcom/hfufo/widget/media/InfoHudViewHolder;
    const/4 v7, 0x0

    .line 116
    .local v7, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$000(Lcom/hfufo/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$000(Lcom/hfufo/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v13

    instance-of v13, v13, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v13, :cond_8

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$000(Lcom/hfufo/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v7

    .end local v7    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    check-cast v7, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 126
    .restart local v7    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_1
    :goto_1
    if-eqz v7, :cond_0

    .line 129
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecoder()I

    move-result v9

    .line 130
    .local v9, "vdec":I
    packed-switch v9, :pswitch_data_1

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f0801c7

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 142
    :goto_2
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v3, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 143
    .local v3, "audioDecoder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f08001f

    invoke-virtual {v13, v14, v3}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 155
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v12

    .line 156
    .local v12, "videoWidth":I
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v11

    .line 157
    .local v11, "videoHeight":I
    const/4 v4, 0x0

    .line 158
    .local v4, "audioSampleRate":I
    const-string v10, ""

    .line 159
    .local v10, "videoCodecName":Ljava/lang/String;
    const-string v2, ""

    .line 160
    .local v2, "audioCodecName":Ljava/lang/String;
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    if-eqz v13, :cond_3

    .line 161
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mAudioStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-eqz v13, :cond_2

    .line 162
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mAudioStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget v4, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSampleRate:I

    .line 163
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mAudioStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget-object v2, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    .line 165
    :cond_2
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-eqz v13, :cond_3

    .line 166
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v13

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v13, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget-object v10, v13, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    .line 170
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f0800cd

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 171
    if-lez v4, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f080020

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 174
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f0800cc

    invoke-virtual {v13, v14, v10}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 177
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f080018

    invoke-virtual {v13, v14, v2}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 187
    :cond_6
    invoke-static {}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$108()I

    .line 188
    invoke-static {}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$100()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_7

    .line 189
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$102(I)I

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f08017d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$200(Lcom/hfufo/widget/media/InfoHudViewHolder;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/task/DebugHelper;->getNetSpeed(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$300(Lcom/hfufo/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$300(Lcom/hfufo/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 120
    .end local v2    # "audioCodecName":Ljava/lang/String;
    .end local v3    # "audioDecoder":Ljava/lang/String;
    .end local v4    # "audioSampleRate":I
    .end local v9    # "vdec":I
    .end local v10    # "videoCodecName":Ljava/lang/String;
    .end local v11    # "videoHeight":I
    .end local v12    # "videoWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$000(Lcom/hfufo/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v13

    instance-of v13, v13, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v13, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-static {v13}, Lcom/hfufo/widget/media/InfoHudViewHolder;->access$000(Lcom/hfufo/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v8

    check-cast v8, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .line 122
    .local v8, "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    invoke-virtual {v8}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v6

    .line 123
    .local v6, "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-eqz v6, :cond_1

    instance-of v13, v6, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v13, :cond_1

    move-object v7, v6

    .line 124
    check-cast v7, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto/16 :goto_1

    .line 132
    .end local v6    # "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .end local v8    # "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    .restart local v9    # "vdec":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f0801c7

    const-string v15, "avcodec"

    invoke-virtual {v13, v14, v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 135
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/widget/media/InfoHudViewHolder$1;->this$0:Lcom/hfufo/widget/media/InfoHudViewHolder;

    const v14, 0x7f0801c7

    const-string v15, "MediaCodec"

    invoke-virtual {v13, v14, v15}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
