.class public Lorg/opencv/video/BackgroundSubtractorMOG2;
.super Lorg/opencv/video/BackgroundSubtractor;
.source "BackgroundSubtractorMOG2.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/video/BackgroundSubtractor;-><init>(J)V

    return-void
.end method

.method private static native apply_0(JJJD)V
.end method

.method private static native apply_1(JJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native getBackgroundRatio_0(J)D
.end method

.method private static native getComplexityReductionThreshold_0(J)D
.end method

.method private static native getDetectShadows_0(J)Z
.end method

.method private static native getHistory_0(J)I
.end method

.method private static native getNMixtures_0(J)I
.end method

.method private static native getShadowThreshold_0(J)D
.end method

.method private static native getShadowValue_0(J)I
.end method

.method private static native getVarInit_0(J)D
.end method

.method private static native getVarMax_0(J)D
.end method

.method private static native getVarMin_0(J)D
.end method

.method private static native getVarThresholdGen_0(J)D
.end method

.method private static native getVarThreshold_0(J)D
.end method

.method private static native setBackgroundRatio_0(JD)V
.end method

.method private static native setComplexityReductionThreshold_0(JD)V
.end method

.method private static native setDetectShadows_0(JZ)V
.end method

.method private static native setHistory_0(JI)V
.end method

.method private static native setNMixtures_0(JI)V
.end method

.method private static native setShadowThreshold_0(JD)V
.end method

.method private static native setShadowValue_0(JI)V
.end method

.method private static native setVarInit_0(JD)V
.end method

.method private static native setVarMax_0(JD)V
.end method

.method private static native setVarMin_0(JD)V
.end method

.method private static native setVarThresholdGen_0(JD)V
.end method

.method private static native setVarThreshold_0(JD)V
.end method


# virtual methods
.method public apply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "fgmask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/video/BackgroundSubtractorMOG2;->apply_1(JJJ)V

    .line 203
    return-void
.end method

.method public apply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 9
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "fgmask"    # Lorg/opencv/core/Mat;
    .param p3, "learningRate"    # D

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/video/BackgroundSubtractorMOG2;->apply_0(JJJD)V

    .line 194
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 377
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->delete(J)V

    .line 378
    return-void
.end method

.method public getBackgroundRatio()D
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getBackgroundRatio_0(J)D

    move-result-wide v0

    .line 40
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getComplexityReductionThreshold()D
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getComplexityReductionThreshold_0(J)D

    move-result-wide v0

    .line 54
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getDetectShadows()Z
    .locals 4

    .prologue
    .line 24
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getDetectShadows_0(J)Z

    move-result v0

    .line 26
    .local v0, "retVal":Z
    return v0
.end method

.method public getHistory()I
    .locals 4

    .prologue
    .line 150
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getHistory_0(J)I

    move-result v0

    .line 152
    .local v0, "retVal":I
    return v0
.end method

.method public getNMixtures()I
    .locals 4

    .prologue
    .line 164
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getNMixtures_0(J)I

    move-result v0

    .line 166
    .local v0, "retVal":I
    return v0
.end method

.method public getShadowThreshold()D
    .locals 4

    .prologue
    .line 66
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getShadowThreshold_0(J)D

    move-result-wide v0

    .line 68
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getShadowValue()I
    .locals 4

    .prologue
    .line 178
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getShadowValue_0(J)I

    move-result v0

    .line 180
    .local v0, "retVal":I
    return v0
.end method

.method public getVarInit()D
    .locals 4

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getVarInit_0(J)D

    move-result-wide v0

    .line 82
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getVarMax()D
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getVarMax_0(J)D

    move-result-wide v0

    .line 96
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getVarMin()D
    .locals 4

    .prologue
    .line 108
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getVarMin_0(J)D

    move-result-wide v0

    .line 110
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getVarThreshold()D
    .locals 4

    .prologue
    .line 122
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getVarThreshold_0(J)D

    move-result-wide v0

    .line 124
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getVarThresholdGen()D
    .locals 4

    .prologue
    .line 136
    iget-wide v2, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;->getVarThresholdGen_0(J)D

    move-result-wide v0

    .line 138
    .local v0, "retVal":D
    return-wide v0
.end method

.method public setBackgroundRatio(D)V
    .locals 3
    .param p1, "ratio"    # D

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setBackgroundRatio_0(JD)V

    .line 217
    return-void
.end method

.method public setComplexityReductionThreshold(D)V
    .locals 3
    .param p1, "ct"    # D

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setComplexityReductionThreshold_0(JD)V

    .line 231
    return-void
.end method

.method public setDetectShadows(Z)V
    .locals 2
    .param p1, "detectShadows"    # Z

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setDetectShadows_0(JZ)V

    .line 245
    return-void
.end method

.method public setHistory(I)V
    .locals 2
    .param p1, "history"    # I

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setHistory_0(JI)V

    .line 259
    return-void
.end method

.method public setNMixtures(I)V
    .locals 2
    .param p1, "nmixtures"    # I

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setNMixtures_0(JI)V

    .line 273
    return-void
.end method

.method public setShadowThreshold(D)V
    .locals 3
    .param p1, "threshold"    # D

    .prologue
    .line 285
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setShadowThreshold_0(JD)V

    .line 287
    return-void
.end method

.method public setShadowValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 299
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setShadowValue_0(JI)V

    .line 301
    return-void
.end method

.method public setVarInit(D)V
    .locals 3
    .param p1, "varInit"    # D

    .prologue
    .line 313
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setVarInit_0(JD)V

    .line 315
    return-void
.end method

.method public setVarMax(D)V
    .locals 3
    .param p1, "varMax"    # D

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setVarMax_0(JD)V

    .line 329
    return-void
.end method

.method public setVarMin(D)V
    .locals 3
    .param p1, "varMin"    # D

    .prologue
    .line 341
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setVarMin_0(JD)V

    .line 343
    return-void
.end method

.method public setVarThreshold(D)V
    .locals 3
    .param p1, "varThreshold"    # D

    .prologue
    .line 355
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setVarThreshold_0(JD)V

    .line 357
    return-void
.end method

.method public setVarThresholdGen(D)V
    .locals 3
    .param p1, "varThresholdGen"    # D

    .prologue
    .line 369
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorMOG2;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorMOG2;->setVarThresholdGen_0(JD)V

    .line 371
    return-void
.end method
