.class public Lcom/fh/lib/SDLActivity;
.super Landroid/app/Activity;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fh/lib/SDLActivity$SDLCommandHandler;
    }
.end annotation


# static fields
.field static final COMMAND_CHANGE_TITLE:I = 0x1

.field static final COMMAND_TEXTEDIT_HIDE:I = 0x3

.field static final COMMAND_UNUSED:I = 0x2

.field protected static final COMMAND_USER:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "SDL"

.field protected static mAudioTrack:Landroid/media/AudioTrack;

.field public static mExitCalledFromJava:Z

.field public static mHasFocus:Z

.field public static mIsPaused:Z

.field public static mIsSurfaceReady:Z

.field protected static mJoystickHandler:Lcom/fh/lib/SDLJoystickHandler;

.field protected static mLayout:Landroid/view/ViewGroup;

.field protected static mSDLThread:Ljava/lang/Thread;

.field protected static mSingleton:Lcom/fh/lib/SDLActivity;

.field protected static mSurface:Lcom/fh/lib/SDLSurface;

.field protected static mTextEdit:Landroid/view/View;


# instance fields
.field commandHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 271
    new-instance v0, Lcom/fh/lib/SDLActivity$SDLCommandHandler;

    invoke-direct {v0}, Lcom/fh/lib/SDLActivity$SDLCommandHandler;-><init>()V

    iput-object v0, p0, Lcom/fh/lib/SDLActivity;->commandHandler:Landroid/os/Handler;

    return-void
.end method

.method public static audioInit(IZZI)I
    .locals 10
    .param p0, "sampleRate"    # I
    .param p1, "is16Bit"    # Z
    .param p2, "isStereo"    # Z
    .param p3, "desiredFrames"    # I

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 374
    if-eqz p2, :cond_0

    move v3, v1

    .line 376
    .local v3, "channelConfig":I
    :goto_0
    if-eqz p1, :cond_1

    move v4, v8

    .line 377
    .local v4, "audioFormat":I
    :goto_1
    if-eqz p2, :cond_2

    move v2, v8

    :goto_2
    if-eqz p1, :cond_3

    move v0, v8

    :goto_3
    mul-int v7, v2, v0

    .line 379
    .local v7, "frameSize":I
    const-string v2, "SDL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDL audio: wanted "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_4

    const-string v0, "stereo"

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    const-string v0, "16-bit"

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v5, p0

    div-float/2addr v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "kHz, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " frames buffer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v7

    .line 385
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 388
    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_7

    .line 389
    new-instance v0, Landroid/media/AudioTrack;

    mul-int v5, p3, v7

    move v2, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 399
    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 400
    const-string v0, "SDL"

    const-string v1, "Failed during initialization of Audio Track"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 402
    const/4 v0, -0x1

    .line 413
    :goto_6
    return v0

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v7    # "frameSize":I
    :cond_0
    move v3, v8

    .line 374
    goto :goto_0

    .restart local v3    # "channelConfig":I
    :cond_1
    move v4, v1

    .line 376
    goto :goto_1

    .restart local v4    # "audioFormat":I
    :cond_2
    move v2, v6

    .line 377
    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_3

    .line 379
    .restart local v7    # "frameSize":I
    :cond_4
    const-string v0, "mono"

    goto :goto_4

    :cond_5
    const-string v0, "8-bit"

    goto :goto_5

    .line 405
    :cond_6
    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 408
    :cond_7
    const-string v1, "SDL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDL audio: got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 409
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-lt v0, v8, :cond_8

    const-string v0, "stereo"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 410
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v8, :cond_9

    const-string v0, "16-bit"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 411
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kHz, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frames buffer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    goto :goto_6

    .line 409
    :cond_8
    const-string v0, "mono"

    goto :goto_7

    .line 410
    :cond_9
    const-string v0, "8-bit"

    goto :goto_8
.end method

.method public static audioQuit()V
    .locals 2

    .prologue
    .line 457
    const-string v0, "SDL"

    const-string v1, "audioQuit()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 460
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 462
    :cond_0
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "result":I
    sget-object v2, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 440
    sget-object v2, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 441
    :cond_0
    if-lez v1, :cond_1

    .line 442
    add-int/2addr v0, v1

    goto :goto_0

    .line 443
    :cond_1
    if-nez v1, :cond_2

    .line 445
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v2

    goto :goto_0

    .line 450
    :cond_2
    const-string v2, "SDL"

    const-string v3, "SDL audio: error return from write(byte)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v1    # "result":I
    :cond_3
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4
    .param p0, "buffer"    # [S

    .prologue
    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "result":I
    sget-object v2, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 420
    sget-object v2, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 421
    :cond_0
    if-lez v1, :cond_1

    .line 422
    add-int/2addr v0, v1

    goto :goto_0

    .line 423
    :cond_1
    if-nez v1, :cond_2

    .line 425
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v2

    goto :goto_0

    .line 430
    :cond_2
    const-string v2, "SDL"

    const-string v3, "SDL audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1    # "result":I
    :cond_3
    return-void
.end method

.method public static flipBuffers()V
    .locals 0

    .prologue
    .line 324
    invoke-static {}, Lcom/fh/lib/SDLActivity;->nativeFlipBuffers()V

    .line 325
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    return-object v0
.end method

.method public static getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSurface:Lcom/fh/lib/SDLSurface;

    invoke-virtual {v0}, Lcom/fh/lib/SDLSurface;->getNativeSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public static handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 487
    sget-object v0, Lcom/fh/lib/SDLActivity;->mJoystickHandler:Lcom/fh/lib/SDLJoystickHandler;

    invoke-virtual {v0, p0}, Lcom/fh/lib/SDLJoystickHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static handleNativeExit()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 204
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    invoke-virtual {v0}, Lcom/fh/lib/SDLActivity;->finish()V

    .line 206
    :cond_0
    return-void
.end method

.method public static handlePause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 180
    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mIsPaused:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    if-eqz v0, :cond_0

    .line 181
    sput-boolean v2, Lcom/fh/lib/SDLActivity;->mIsPaused:Z

    .line 182
    invoke-static {}, Lcom/fh/lib/SDLActivity;->nativePause()V

    .line 183
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSurface:Lcom/fh/lib/SDLSurface;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/fh/lib/SDLSurface;->enableSensor(IZ)V

    .line 185
    :cond_0
    return-void
.end method

.method public static handleResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 194
    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mIsPaused:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fh/lib/SDLActivity;->mIsPaused:Z

    .line 196
    invoke-static {}, Lcom/fh/lib/SDLActivity;->nativeResume()V

    .line 197
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSurface:Lcom/fh/lib/SDLSurface;

    invoke-virtual {v0, v1, v1}, Lcom/fh/lib/SDLSurface;->enableSensor(IZ)V

    .line 199
    :cond_0
    return-void
.end method

.method public static initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    .line 63
    sput-object v0, Lcom/fh/lib/SDLActivity;->mSurface:Lcom/fh/lib/SDLSurface;

    .line 64
    sput-object v0, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 65
    sput-object v0, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 66
    sput-object v0, Lcom/fh/lib/SDLActivity;->mJoystickHandler:Lcom/fh/lib/SDLJoystickHandler;

    .line 67
    sput-object v0, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 68
    sput-object v0, Lcom/fh/lib/SDLActivity;->mAudioTrack:Landroid/media/AudioTrack;

    .line 69
    sput-boolean v1, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    .line 70
    sput-boolean v1, Lcom/fh/lib/SDLActivity;->mIsPaused:Z

    .line 71
    sput-boolean v1, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fh/lib/SDLActivity;->mHasFocus:Z

    .line 73
    return-void
.end method

.method public static inputGetInputDeviceIds(I)[I
    .locals 7
    .param p0, "sources"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 473
    .local v3, "ids":[I
    array-length v6, v3

    new-array v1, v6, [I

    .line 474
    .local v1, "filtered":[I
    const/4 v4, 0x0

    .line 475
    .local v4, "used":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 476
    aget v6, v3, v2

    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 477
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    and-int/2addr v6, p0

    if-eqz v6, :cond_0

    .line 478
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "used":I
    .local v5, "used":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    .line 475
    .end local v5    # "used":I
    .restart local v4    # "used":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    return-object v6
.end method

.method public static native nativeAddJoystick(ILjava/lang/String;IIIII)I
.end method

.method public static native nativeFlipBuffers()V
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeLowMemory()V
.end method

.method public static native nativePause()V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeRemoveJoystick(I)I
.end method

.method public static native nativeResume()V
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeHat(IIII)V
.end method

.method public static native onNativeJoy(IIF)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeKeyboardFocusLost()V
.end method

.method public static native onNativePadDown(II)I
.end method

.method public static native onNativePadUp(II)I
.end method

.method public static native onNativeResize(III)V
.end method

.method public static native onNativeSurfaceChanged()V
.end method

.method public static native onNativeSurfaceDestroyed()V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static pollInputDevices()V
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/fh/lib/SDLActivity;->mJoystickHandler:Lcom/fh/lib/SDLJoystickHandler;

    invoke-virtual {v0}, Lcom/fh/lib/SDLJoystickHandler;->pollInputDevices()V

    .line 494
    :cond_0
    return-void
.end method

.method public static sendMessage(II)Z
    .locals 2
    .param p0, "command"    # I
    .param p1, "param"    # I

    .prologue
    .line 333
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/fh/lib/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setActivityTitle(Ljava/lang/String;)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 329
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/fh/lib/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 164
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSystemServiceFromUiThread(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 345
    .local v1, "lock":Ljava/lang/Object;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    .line 346
    .local v2, "results":[Ljava/lang/Object;
    monitor-enter v1

    .line 347
    :try_start_0
    new-instance v3, Lcom/fh/lib/SDLActivity$1;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/fh/lib/SDLActivity$1;-><init>(Lcom/fh/lib/SDLActivity;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/fh/lib/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    const/4 v3, 0x1

    aget-object v3, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 359
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 138
    const-string v1, "SDL"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    .line 141
    invoke-static {}, Lcom/fh/lib/SDLActivity;->nativeQuit()V

    .line 144
    sget-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    sget-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    invoke-static {}, Lcom/fh/lib/SDLActivity;->initialize()V

    .line 158
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "SDL"

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 133
    invoke-static {}, Lcom/fh/lib/SDLActivity;->nativeLowMemory()V

    .line 134
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "SDL"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handlePause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "SDL"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    invoke-static {}, Lcom/fh/lib/SDLActivity;->initialize()V

    .line 97
    sput-object p0, Lcom/fh/lib/SDLActivity;->mSingleton:Lcom/fh/lib/SDLActivity;

    .line 100
    new-instance v0, Lcom/fh/lib/SDLSurface;

    invoke-virtual {p0}, Lcom/fh/lib/SDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fh/lib/SDLSurface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fh/lib/SDLActivity;->mSurface:Lcom/fh/lib/SDLSurface;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 103
    new-instance v0, Lcom/fh/lib/SDLJoystickHandler_API12;

    invoke-direct {v0}, Lcom/fh/lib/SDLJoystickHandler_API12;-><init>()V

    sput-object v0, Lcom/fh/lib/SDLActivity;->mJoystickHandler:Lcom/fh/lib/SDLJoystickHandler;

    .line 107
    :goto_0
    sget-object v0, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 110
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 112
    sget-object v0, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v1, Lcom/fh/lib/SDLActivity;->mSurface:Lcom/fh/lib/SDLSurface;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    sget-object v0, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/fh/lib/SDLActivity;->setContentView(Landroid/view/View;)V

    .line 115
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleResume()V

    .line 116
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/fh/lib/SDLJoystickHandler;

    invoke-direct {v0}, Lcom/fh/lib/SDLJoystickHandler;-><init>()V

    sput-object v0, Lcom/fh/lib/SDLActivity;->mJoystickHandler:Lcom/fh/lib/SDLJoystickHandler;

    goto :goto_0
.end method

.method protected onUnhandledMessage(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 121
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sput-boolean p1, Lcom/fh/lib/SDLActivity;->mHasFocus:Z

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleResume()V

    .line 127
    :cond_0
    return-void
.end method

.method sendCommand(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/fh/lib/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 277
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lcom/fh/lib/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method
