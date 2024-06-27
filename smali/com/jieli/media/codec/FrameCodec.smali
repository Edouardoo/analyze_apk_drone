.class public Lcom/jieli/media/codec/FrameCodec;
.super Ljava/lang/Object;
.source "FrameCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
    }
.end annotation


# static fields
.field private static volatile mIsLibLoaded:Z

.field protected static final sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnFrameCodecListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;",
            ">;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/jieli/media/codec/FrameCodec$1;

    invoke-direct {v0}, Lcom/jieli/media/codec/FrameCodec$1;-><init>()V

    sput-object v0, Lcom/jieli/media/codec/FrameCodec;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jieli/media/codec/FrameCodec;->mIsLibLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    .line 47
    sget-object v0, Lcom/jieli/media/codec/FrameCodec;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    invoke-static {v0}, Lcom/jieli/media/codec/FrameCodec;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 48
    invoke-direct {p0}, Lcom/jieli/media/codec/FrameCodec;->nativeInit()Z

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    .line 50
    return-void
.end method

.method protected static loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 2
    .param p0, "libLoader"    # Ltv/danmaku/ijk/media/player/IjkLibLoader;

    .prologue
    .line 34
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-boolean v0, Lcom/jieli/media/codec/FrameCodec;->mIsLibLoaded:Z

    if-nez v0, :cond_1

    .line 36
    if-nez p0, :cond_0

    .line 37
    sget-object p0, Lcom/jieli/media/codec/FrameCodec;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    .line 39
    :cond_0
    const-string v0, "ijkffmpeg"

    invoke-interface {p0, v0}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v0, "jl_frm_codec"

    invoke-interface {p0, v0}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jieli/media/codec/FrameCodec;->mIsLibLoaded:Z

    .line 43
    :cond_1
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native nativeConvert([BIIILjava/lang/String;)Z
.end method

.method private native nativeConvertVideo(Ljava/lang/String;)Z
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeInit()Z
.end method

.method private native nativeRelease()Z
.end method


# virtual methods
.method public convertToJPG(Ljava/lang/String;)Z
    .locals 2
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/jieli/media/codec/FrameCodec;->nativeConvertVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public convertToJPG([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 155
    array-length v2, p1

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jieli/media/codec/FrameCodec;->nativeConvert([BIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public convertToJPG([BII)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Param data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Param width or height is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    array-length v2, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jieli/media/codec/FrameCodec;->nativeConvert([BIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public convertToJPG([BIILjava/lang/String;)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Param data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Param width or height is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    array-length v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jieli/media/codec/FrameCodec;->nativeConvert([BIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/jieli/media/codec/FrameCodec;->nativeRelease()Z

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/jieli/media/codec/FrameCodec;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method protected onCodecError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v2, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 107
    .local v1, "listener":Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
    iget-object v2, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jieli/media/codec/FrameCodec$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/jieli/media/codec/FrameCodec$3;-><init>(Lcom/jieli/media/codec/FrameCodec;Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 114
    .end local v1    # "listener":Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
    :cond_0
    return-void
.end method

.method protected onCodecSuccess([BIIILjava/lang/String;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "duration"    # I
    .param p5, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v3, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    const-string v4, "You haven\'t implemented OnFrameCodecListener yet."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    return-void

    .line 80
    :cond_2
    new-instance v2, Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-direct {v2}, Lcom/jieli/media/codec/bean/MediaMeta;-><init>()V

    .line 81
    .local v2, "mediaMeta":Lcom/jieli/media/codec/bean/MediaMeta;
    if-ltz p2, :cond_3

    .line 82
    invoke-virtual {v2, p2}, Lcom/jieli/media/codec/bean/MediaMeta;->setWidth(I)V

    .line 84
    :cond_3
    if-ltz p3, :cond_4

    .line 85
    invoke-virtual {v2, p3}, Lcom/jieli/media/codec/bean/MediaMeta;->setHeight(I)V

    .line 86
    :cond_4
    if-ltz p4, :cond_5

    .line 87
    invoke-virtual {v2, p4}, Lcom/jieli/media/codec/bean/MediaMeta;->setDuration(I)V

    .line 88
    :cond_5
    invoke-virtual {v2, p5}, Lcom/jieli/media/codec/bean/MediaMeta;->setPath(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 92
    .local v1, "listener":Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
    iget-object v3, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/jieli/media/codec/FrameCodec$2;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/jieli/media/codec/FrameCodec$2;-><init>(Lcom/jieli/media/codec/FrameCodec;Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;[BLcom/jieli/media/codec/bean/MediaMeta;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method
