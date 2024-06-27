.class public Lcom/jieli/lib/stream/tools/AVIStreamer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/stream/util/ICommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/stream/tools/AVIStreamer$RecordError;
    }
.end annotation


# static fields
.field public static final TYPE_AVI_AUDIO:I = 0x1

.field protected static final TYPE_AVI_PIC:I = 0x0

.field public static final TYPE_AVI_VIDEO:I = 0x2


# instance fields
.field private a:J

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    :try_start_0
    const-string v0, "avimuxer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->b:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->c:Z

    .line 39
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeInitId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->b:Ljava/lang/String;

    const-string v1, "Initialize native FieldID and MethodID success."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J
    :try_end_0
    .catch Lcom/jieli/lib/stream/tools/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/NativeException;->printStackTrace()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->b:Ljava/lang/String;

    const-string v1, "Initialize native FieldID and MethodID fail. Native callback will be not working."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeAddData(JI[BI)Z
.end method

.method private native nativeConfigureAudio(JIII)Z
.end method

.method private native nativeConfigureVideo(JIII)Z
.end method

.method private native nativeInitId()Z
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/NativeException;
        }
    .end annotation
.end method

.method private native nativeRelease(J)Z
.end method

.method private native nativeSetDurationAndSize(JJI)Z
.end method

.method private native nativeSetFilePath(JLjava/lang/String;)Z
.end method

.method private native nativeStartRecording(J)Z
.end method

.method private native nativeStopRecording(J)Z
.end method


# virtual methods
.method public addData(I[BI)Z
    .locals 7

    .prologue
    .line 92
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeAddData(JI[BI)Z

    move-result v0

    return v0
.end method

.method public configureAudio(III)Z
    .locals 7

    .prologue
    .line 65
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeConfigureAudio(JIII)Z

    move-result v0

    return v0
.end method

.method public configureVideo(III)Z
    .locals 7

    .prologue
    .line 61
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeConfigureVideo(JIII)Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->c:Z

    return v0
.end method

.method protected onRecordEnd(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onRecordEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    if-eqz v2, :cond_1

    .line 144
    if-ltz p2, :cond_3

    .line 145
    if-nez p2, :cond_2

    :cond_0
    :goto_0
    move v2, v0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    invoke-interface {v0, p1, v1, v2}, Lcom/jieli/lib/stream/interfaces/OnRecordListener;->onCompletion(Ljava/lang/String;ZZ)V

    .line 176
    :cond_1
    return-void

    .line 147
    :cond_2
    if-ne p2, v1, :cond_0

    move v0, v1

    .line 148
    goto :goto_0

    .line 153
    :cond_3
    packed-switch p2, :pswitch_data_0

    :goto_2
    move v2, v0

    move v1, v0

    .line 172
    goto :goto_1

    .line 155
    :pswitch_0
    const-string v1, "Unknown error"

    .line 156
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    invoke-interface {v2, p2, v1}, Lcom/jieli/lib/stream/interfaces/OnRecordListener;->onError(ILjava/lang/String;)V

    goto :goto_2

    .line 159
    :pswitch_1
    const-string v1, "Not found PCM"

    .line 160
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    invoke-interface {v2, p2, v1}, Lcom/jieli/lib/stream/interfaces/OnRecordListener;->onError(ILjava/lang/String;)V

    goto :goto_2

    .line 163
    :pswitch_2
    const-string v1, "Not found JPEG"

    .line 164
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    invoke-interface {v2, p2, v1}, Lcom/jieli/lib/stream/interfaces/OnRecordListener;->onError(ILjava/lang/String;)V

    goto :goto_2

    .line 167
    :pswitch_3
    const-string v1, "Out of storage space"

    .line 168
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    invoke-interface {v2, p2, v1}, Lcom/jieli/lib/stream/interfaces/OnRecordListener;->onError(ILjava/lang/String;)V

    goto :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRecordStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    invoke-interface {v0, p1}, Lcom/jieli/lib/stream/interfaces/OnRecordListener;->onStart(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public release()Z
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    .line 57
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeRelease(J)Z

    move-result v0

    return v0
.end method

.method public setDuration(J)Z
    .locals 7

    .prologue
    .line 74
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeSetDurationAndSize(JJI)Z

    move-result v0

    return v0
.end method

.method public setFilePath(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeSetFilePath(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOnRecordListener(Lcom/jieli/lib/stream/interfaces/OnRecordListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->d:Lcom/jieli/lib/stream/interfaces/OnRecordListener;

    .line 118
    return-void
.end method

.method public startRecording()Z
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->c:Z

    .line 100
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeStartRecording(J)Z

    move-result v0

    return v0
.end method

.method public stopRecording()Z
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->c:Z

    .line 108
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVIStreamer;->a:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/AVIStreamer;->nativeStopRecording(J)Z

    move-result v0

    return v0
.end method
