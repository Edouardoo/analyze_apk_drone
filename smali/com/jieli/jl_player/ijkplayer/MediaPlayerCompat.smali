.class public Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "MediaPlayerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "stream"    # I

    .prologue
    .line 64
    invoke-static {p0}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 65
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->deselectTrack(I)V

    goto :goto_0
.end method

.method public static getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 3
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez p0, :cond_0

    .line 47
    const/4 v2, 0x0

    move-object v1, v0

    .line 53
    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .local v1, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :goto_0
    return-object v2

    .line 48
    .end local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .restart local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_0
    instance-of v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 49
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_1
    :goto_1
    move-object v1, v0

    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .restart local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    move-object v2, v0

    .line 53
    goto :goto_0

    .line 50
    .end local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .restart local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_2
    instance-of v2, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    instance-of v2, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_1

    .line 51
    check-cast p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    goto :goto_1
.end method

.method public static getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;
    .locals 3
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v2, "null"

    .line 40
    :goto_0
    return-object v2

    .line 29
    :cond_0
    instance-of v2, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    if-eqz v2, :cond_2

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TextureMediaPlayer <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "sb":Ljava/lang/StringBuilder;
    check-cast p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 32
    .local v0, "internalMediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-nez v0, :cond_1

    .line 33
    const-string v2, "null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 40
    .end local v0    # "internalMediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I
    .locals 2
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "trackType"    # I

    .prologue
    .line 71
    invoke-static {p0}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 72
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 73
    const/4 v1, -0x1

    .line 74
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSelectedTrack(I)I

    move-result v1

    goto :goto_0
.end method

.method public static selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "stream"    # I

    .prologue
    .line 57
    invoke-static {p0}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 58
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->selectTrack(I)V

    goto :goto_0
.end method
