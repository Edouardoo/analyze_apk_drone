.class public Lio/microshow/rxffmpeg/RxFFmpegInvoke;
.super Ljava/lang/Object;
.source "RxFFmpegInvoke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile instance:Lio/microshow/rxffmpeg/RxFFmpegInvoke;


# instance fields
.field private ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "rxffmpeg-core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v0, "rxffmpeg-invoke"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->instance:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->instance:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;-><init>()V

    sput-object v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->instance:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->instance:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public exec([Ljava/lang/String;JLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 2
    .param p1, "cmds"    # [Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 277
    const-string v0, "gggg"

    const-string v1, "exec: subscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0, p1, p4}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandAsync([Ljava/lang/String;Lio/microshow/rxffmpeg/OnEditorListener;)V

    .line 360
    return-void
.end method

.method public native exit()V
.end method

.method public getFFmpegListener()Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    invoke-interface {v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;->onCancel()V

    .line 219
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    invoke-interface {v0, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;->onError(Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    invoke-interface {v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;->onFinish()V

    .line 210
    :cond_0
    return-void
.end method

.method public onProgress(IJ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "progressTime"    # J

    .prologue
    .line 198
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    invoke-interface {v0, p1, p2, p3}, Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;->onProgress(IJ)V

    .line 201
    :cond_0
    return-void
.end method

.method public runCommand([Ljava/lang/String;Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)I
    .locals 3
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "mffmpegListener"    # Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    .prologue
    .line 83
    invoke-virtual {p0, p2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->setFFmpegListener(Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)V

    .line 85
    const-class v2, Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    monitor-enter v2

    .line 86
    :try_start_0
    invoke-virtual {p0, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runFFmpegCmd([Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "ret":I
    monitor-exit v2

    return v0

    .line 89
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public runCommandAsync([Ljava/lang/String;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 3
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "mffmpegListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 58
    const-class v1, Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    monitor-enter v1

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;

    invoke-direct {v2, p0, p1, p2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;-><init>(Lio/microshow/rxffmpeg/RxFFmpegInvoke;[Ljava/lang/String;Lio/microshow/rxffmpeg/OnEditorListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native runFFmpegCmd([Ljava/lang/String;)I
.end method

.method public native setDebug(Z)V
.end method

.method public setFFmpegListener(Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;)V
    .locals 0
    .param p1, "ffmpegListener"    # Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    .prologue
    .line 242
    iput-object p1, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->ffmpegListener:Lio/microshow/rxffmpeg/RxFFmpegInvoke$IFFmpegListener;

    .line 243
    return-void
.end method
