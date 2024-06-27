.class public Lorg/opencv/core/TickMeter;
.super Ljava/lang/Object;
.source "TickMeter.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lorg/opencv/core/TickMeter;->TickMeter_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    .line 28
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    return-void
.end method

.method private static native TickMeter_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getCounter_0(J)J
.end method

.method private static native getTimeMicro_0(J)D
.end method

.method private static native getTimeMilli_0(J)D
.end method

.method private static native getTimeSec_0(J)D
.end method

.method private static native getTimeTicks_0(J)J
.end method

.method private static native reset_0(J)V
.end method

.method private static native start_0(J)V
.end method

.method private static native stop_0(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/TickMeter;->delete(J)V

    .line 147
    return-void
.end method

.method public getCounter()J
    .locals 4

    .prologue
    .line 82
    iget-wide v2, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/TickMeter;->getCounter_0(J)J

    move-result-wide v0

    .line 84
    .local v0, "retVal":J
    return-wide v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    return-wide v0
.end method

.method public getTimeMicro()D
    .locals 4

    .prologue
    .line 40
    iget-wide v2, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/TickMeter;->getTimeMicro_0(J)D

    move-result-wide v0

    .line 42
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTimeMilli()D
    .locals 4

    .prologue
    .line 54
    iget-wide v2, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/TickMeter;->getTimeMilli_0(J)D

    move-result-wide v0

    .line 56
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTimeSec()D
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/TickMeter;->getTimeSec_0(J)D

    move-result-wide v0

    .line 70
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTimeTicks()J
    .locals 4

    .prologue
    .line 96
    iget-wide v2, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/TickMeter;->getTimeTicks_0(J)J

    move-result-wide v0

    .line 98
    .local v0, "retVal":J
    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/TickMeter;->reset_0(J)V

    .line 112
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/TickMeter;->start_0(J)V

    .line 126
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/opencv/core/TickMeter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/TickMeter;->stop_0(J)V

    .line 140
    return-void
.end method
