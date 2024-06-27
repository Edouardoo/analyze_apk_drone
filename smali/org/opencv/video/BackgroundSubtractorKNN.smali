.class public Lorg/opencv/video/BackgroundSubtractorKNN;
.super Lorg/opencv/video/BackgroundSubtractor;
.source "BackgroundSubtractorKNN.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/video/BackgroundSubtractor;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native getDetectShadows_0(J)Z
.end method

.method private static native getDist2Threshold_0(J)D
.end method

.method private static native getHistory_0(J)I
.end method

.method private static native getNSamples_0(J)I
.end method

.method private static native getShadowThreshold_0(J)D
.end method

.method private static native getShadowValue_0(J)I
.end method

.method private static native getkNNSamples_0(J)I
.end method

.method private static native setDetectShadows_0(JZ)V
.end method

.method private static native setDist2Threshold_0(JD)V
.end method

.method private static native setHistory_0(JI)V
.end method

.method private static native setNSamples_0(JI)V
.end method

.method private static native setShadowThreshold_0(JD)V
.end method

.method private static native setShadowValue_0(JI)V
.end method

.method private static native setkNNSamples_0(JI)V
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
    .line 214
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->delete(J)V

    .line 215
    return-void
.end method

.method public getDetectShadows()Z
    .locals 4

    .prologue
    .line 24
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getDetectShadows_0(J)Z

    move-result v0

    .line 26
    .local v0, "retVal":Z
    return v0
.end method

.method public getDist2Threshold()D
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getDist2Threshold_0(J)D

    move-result-wide v0

    .line 40
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getHistory()I
    .locals 4

    .prologue
    .line 66
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getHistory_0(J)I

    move-result v0

    .line 68
    .local v0, "retVal":I
    return v0
.end method

.method public getNSamples()I
    .locals 4

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getNSamples_0(J)I

    move-result v0

    .line 82
    .local v0, "retVal":I
    return v0
.end method

.method public getShadowThreshold()D
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getShadowThreshold_0(J)D

    move-result-wide v0

    .line 54
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getShadowValue()I
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getShadowValue_0(J)I

    move-result v0

    .line 96
    .local v0, "retVal":I
    return v0
.end method

.method public getkNNSamples()I
    .locals 4

    .prologue
    .line 108
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;->getkNNSamples_0(J)I

    move-result v0

    .line 110
    .local v0, "retVal":I
    return v0
.end method

.method public setDetectShadows(Z)V
    .locals 2
    .param p1, "detectShadows"    # Z

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setDetectShadows_0(JZ)V

    .line 124
    return-void
.end method

.method public setDist2Threshold(D)V
    .locals 3
    .param p1, "_dist2Threshold"    # D

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorKNN;->setDist2Threshold_0(JD)V

    .line 138
    return-void
.end method

.method public setHistory(I)V
    .locals 2
    .param p1, "history"    # I

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setHistory_0(JI)V

    .line 152
    return-void
.end method

.method public setNSamples(I)V
    .locals 2
    .param p1, "_nN"    # I

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setNSamples_0(JI)V

    .line 166
    return-void
.end method

.method public setShadowThreshold(D)V
    .locals 3
    .param p1, "threshold"    # D

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorKNN;->setShadowThreshold_0(JD)V

    .line 180
    return-void
.end method

.method public setShadowValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setShadowValue_0(JI)V

    .line 194
    return-void
.end method

.method public setkNNSamples(I)V
    .locals 2
    .param p1, "_nkNN"    # I

    .prologue
    .line 206
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setkNNSamples_0(JI)V

    .line 208
    return-void
.end method
