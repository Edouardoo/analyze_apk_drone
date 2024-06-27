.class public Lio/microshow/rxffmpeg/VideoUitls;
.super Ljava/lang/Object;
.source "VideoUitls.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getDuration(Ljava/lang/String;)J
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 24
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 25
    .local v1, "mediaExtractor":Landroid/media/MediaExtractor;
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, Lio/microshow/rxffmpeg/TrackUtils;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v3

    .line 27
    .local v3, "videoExt":I
    if-ne v3, v8, :cond_0

    .line 28
    invoke-static {v1}, Lio/microshow/rxffmpeg/TrackUtils;->selectAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v3

    .line 29
    if-ne v3, v8, :cond_0

    move-wide v4, v6

    .line 38
    .end local v1    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v3    # "videoExt":I
    :goto_0
    return-wide v4

    .line 33
    .restart local v1    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "videoExt":I
    :cond_0
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 34
    .local v2, "mediaFormat":Landroid/media/MediaFormat;
    const-string v8, "durationUs"

    invoke-virtual {v2, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "durationUs"

    invoke-virtual {v2, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 35
    .local v4, "res":J
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v1    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v2    # "mediaFormat":Landroid/media/MediaFormat;
    .end local v3    # "videoExt":I
    .end local v4    # "res":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-wide v4, v6

    .line 38
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v2    # "mediaFormat":Landroid/media/MediaFormat;
    .restart local v3    # "videoExt":I
    :cond_1
    move-wide v4, v6

    .line 34
    goto :goto_1
.end method
