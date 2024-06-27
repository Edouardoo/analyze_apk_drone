.class public Lorg/opencv/features2d/Params;
.super Ljava/lang/Object;
.source "Params.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lorg/opencv/features2d/Params;->Params_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    .line 28
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    return-void
.end method

.method private static native Params_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native get_filterByArea_0(J)Z
.end method

.method private static native get_filterByCircularity_0(J)Z
.end method

.method private static native get_filterByColor_0(J)Z
.end method

.method private static native get_filterByConvexity_0(J)Z
.end method

.method private static native get_filterByInertia_0(J)Z
.end method

.method private static native get_maxArea_0(J)F
.end method

.method private static native get_maxCircularity_0(J)F
.end method

.method private static native get_maxConvexity_0(J)F
.end method

.method private static native get_maxInertiaRatio_0(J)F
.end method

.method private static native get_maxThreshold_0(J)F
.end method

.method private static native get_minArea_0(J)F
.end method

.method private static native get_minCircularity_0(J)F
.end method

.method private static native get_minConvexity_0(J)F
.end method

.method private static native get_minDistBetweenBlobs_0(J)F
.end method

.method private static native get_minInertiaRatio_0(J)F
.end method

.method private static native get_minRepeatability_0(J)J
.end method

.method private static native get_minThreshold_0(J)F
.end method

.method private static native get_thresholdStep_0(J)F
.end method

.method private static native set_filterByArea_0(JZ)V
.end method

.method private static native set_filterByCircularity_0(JZ)V
.end method

.method private static native set_filterByColor_0(JZ)V
.end method

.method private static native set_filterByConvexity_0(JZ)V
.end method

.method private static native set_filterByInertia_0(JZ)V
.end method

.method private static native set_maxArea_0(JF)V
.end method

.method private static native set_maxCircularity_0(JF)V
.end method

.method private static native set_maxConvexity_0(JF)V
.end method

.method private static native set_maxInertiaRatio_0(JF)V
.end method

.method private static native set_maxThreshold_0(JF)V
.end method

.method private static native set_minArea_0(JF)V
.end method

.method private static native set_minCircularity_0(JF)V
.end method

.method private static native set_minConvexity_0(JF)V
.end method

.method private static native set_minDistBetweenBlobs_0(JF)V
.end method

.method private static native set_minInertiaRatio_0(JF)V
.end method

.method private static native set_minRepeatability_0(JJ)V
.end method

.method private static native set_minThreshold_0(JF)V
.end method

.method private static native set_thresholdStep_0(JF)V
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
    .line 552
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/Params;->delete(J)V

    .line 553
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    return-wide v0
.end method

.method public get_filterByArea()Z
    .locals 4

    .prologue
    .line 222
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_filterByArea_0(J)Z

    move-result v0

    .line 224
    .local v0, "retVal":Z
    return v0
.end method

.method public get_filterByCircularity()Z
    .locals 4

    .prologue
    .line 306
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_filterByCircularity_0(J)Z

    move-result v0

    .line 308
    .local v0, "retVal":Z
    return v0
.end method

.method public get_filterByColor()Z
    .locals 4

    .prologue
    .line 180
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_filterByColor_0(J)Z

    move-result v0

    .line 182
    .local v0, "retVal":Z
    return v0
.end method

.method public get_filterByConvexity()Z
    .locals 4

    .prologue
    .line 474
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_filterByConvexity_0(J)Z

    move-result v0

    .line 476
    .local v0, "retVal":Z
    return v0
.end method

.method public get_filterByInertia()Z
    .locals 4

    .prologue
    .line 390
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_filterByInertia_0(J)Z

    move-result v0

    .line 392
    .local v0, "retVal":Z
    return v0
.end method

.method public get_maxArea()F
    .locals 4

    .prologue
    .line 278
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_maxArea_0(J)F

    move-result v0

    .line 280
    .local v0, "retVal":F
    return v0
.end method

.method public get_maxCircularity()F
    .locals 4

    .prologue
    .line 362
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_maxCircularity_0(J)F

    move-result v0

    .line 364
    .local v0, "retVal":F
    return v0
.end method

.method public get_maxConvexity()F
    .locals 4

    .prologue
    .line 530
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_maxConvexity_0(J)F

    move-result v0

    .line 532
    .local v0, "retVal":F
    return v0
.end method

.method public get_maxInertiaRatio()F
    .locals 4

    .prologue
    .line 446
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_maxInertiaRatio_0(J)F

    move-result v0

    .line 448
    .local v0, "retVal":F
    return v0
.end method

.method public get_maxThreshold()F
    .locals 4

    .prologue
    .line 96
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_maxThreshold_0(J)F

    move-result v0

    .line 98
    .local v0, "retVal":F
    return v0
.end method

.method public get_minArea()F
    .locals 4

    .prologue
    .line 250
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minArea_0(J)F

    move-result v0

    .line 252
    .local v0, "retVal":F
    return v0
.end method

.method public get_minCircularity()F
    .locals 4

    .prologue
    .line 334
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minCircularity_0(J)F

    move-result v0

    .line 336
    .local v0, "retVal":F
    return v0
.end method

.method public get_minConvexity()F
    .locals 4

    .prologue
    .line 502
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minConvexity_0(J)F

    move-result v0

    .line 504
    .local v0, "retVal":F
    return v0
.end method

.method public get_minDistBetweenBlobs()F
    .locals 4

    .prologue
    .line 152
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minDistBetweenBlobs_0(J)F

    move-result v0

    .line 154
    .local v0, "retVal":F
    return v0
.end method

.method public get_minInertiaRatio()F
    .locals 4

    .prologue
    .line 418
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minInertiaRatio_0(J)F

    move-result v0

    .line 420
    .local v0, "retVal":F
    return v0
.end method

.method public get_minRepeatability()J
    .locals 4

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minRepeatability_0(J)J

    move-result-wide v0

    .line 126
    .local v0, "retVal":J
    return-wide v0
.end method

.method public get_minThreshold()F
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_minThreshold_0(J)F

    move-result v0

    .line 70
    .local v0, "retVal":F
    return v0
.end method

.method public get_thresholdStep()F
    .locals 4

    .prologue
    .line 40
    iget-wide v2, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Params;->get_thresholdStep_0(J)F

    move-result v0

    .line 42
    .local v0, "retVal":F
    return v0
.end method

.method public set_filterByArea(Z)V
    .locals 2
    .param p1, "filterByArea"    # Z

    .prologue
    .line 236
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_filterByArea_0(JZ)V

    .line 238
    return-void
.end method

.method public set_filterByCircularity(Z)V
    .locals 2
    .param p1, "filterByCircularity"    # Z

    .prologue
    .line 320
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_filterByCircularity_0(JZ)V

    .line 322
    return-void
.end method

.method public set_filterByColor(Z)V
    .locals 2
    .param p1, "filterByColor"    # Z

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_filterByColor_0(JZ)V

    .line 196
    return-void
.end method

.method public set_filterByConvexity(Z)V
    .locals 2
    .param p1, "filterByConvexity"    # Z

    .prologue
    .line 488
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_filterByConvexity_0(JZ)V

    .line 490
    return-void
.end method

.method public set_filterByInertia(Z)V
    .locals 2
    .param p1, "filterByInertia"    # Z

    .prologue
    .line 404
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_filterByInertia_0(JZ)V

    .line 406
    return-void
.end method

.method public set_maxArea(F)V
    .locals 2
    .param p1, "maxArea"    # F

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_maxArea_0(JF)V

    .line 294
    return-void
.end method

.method public set_maxCircularity(F)V
    .locals 2
    .param p1, "maxCircularity"    # F

    .prologue
    .line 376
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_maxCircularity_0(JF)V

    .line 378
    return-void
.end method

.method public set_maxConvexity(F)V
    .locals 2
    .param p1, "maxConvexity"    # F

    .prologue
    .line 544
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_maxConvexity_0(JF)V

    .line 546
    return-void
.end method

.method public set_maxInertiaRatio(F)V
    .locals 2
    .param p1, "maxInertiaRatio"    # F

    .prologue
    .line 460
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_maxInertiaRatio_0(JF)V

    .line 462
    return-void
.end method

.method public set_maxThreshold(F)V
    .locals 2
    .param p1, "maxThreshold"    # F

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_maxThreshold_0(JF)V

    .line 112
    return-void
.end method

.method public set_minArea(F)V
    .locals 2
    .param p1, "minArea"    # F

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_minArea_0(JF)V

    .line 266
    return-void
.end method

.method public set_minCircularity(F)V
    .locals 2
    .param p1, "minCircularity"    # F

    .prologue
    .line 348
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_minCircularity_0(JF)V

    .line 350
    return-void
.end method

.method public set_minConvexity(F)V
    .locals 2
    .param p1, "minConvexity"    # F

    .prologue
    .line 516
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_minConvexity_0(JF)V

    .line 518
    return-void
.end method

.method public set_minDistBetweenBlobs(F)V
    .locals 2
    .param p1, "minDistBetweenBlobs"    # F

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_minDistBetweenBlobs_0(JF)V

    .line 168
    return-void
.end method

.method public set_minInertiaRatio(F)V
    .locals 2
    .param p1, "minInertiaRatio"    # F

    .prologue
    .line 432
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_minInertiaRatio_0(JF)V

    .line 434
    return-void
.end method

.method public set_minRepeatability(J)V
    .locals 3
    .param p1, "minRepeatability"    # J

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/Params;->set_minRepeatability_0(JJ)V

    .line 140
    return-void
.end method

.method public set_minThreshold(F)V
    .locals 2
    .param p1, "minThreshold"    # F

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_minThreshold_0(JF)V

    .line 84
    return-void
.end method

.method public set_thresholdStep(F)V
    .locals 2
    .param p1, "thresholdStep"    # F

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/opencv/features2d/Params;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Params;->set_thresholdStep_0(JF)V

    .line 56
    return-void
.end method
