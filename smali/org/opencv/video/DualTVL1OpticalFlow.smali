.class public Lorg/opencv/video/DualTVL1OpticalFlow;
.super Lorg/opencv/video/DenseOpticalFlow;
.source "DualTVL1OpticalFlow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/video/DenseOpticalFlow;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/opencv/video/DualTVL1OpticalFlow;

    invoke-static {}, Lorg/opencv/video/DualTVL1OpticalFlow;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;-><init>(J)V

    .line 35
    .local v0, "retVal":Lorg/opencv/video/DualTVL1OpticalFlow;
    return-object v0
.end method

.method public static create(DDDIIDIIDDIZ)Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 4
    .param p0, "tau"    # D
    .param p2, "lambda"    # D
    .param p4, "theta"    # D
    .param p6, "nscales"    # I
    .param p7, "warps"    # I
    .param p8, "epsilon"    # D
    .param p10, "innnerIterations"    # I
    .param p11, "outerIterations"    # I
    .param p12, "scaleStep"    # D
    .param p14, "gamma"    # D
    .param p16, "medianFiltering"    # I
    .param p17, "useInitialFlow"    # Z

    .prologue
    .line 24
    new-instance v0, Lorg/opencv/video/DualTVL1OpticalFlow;

    invoke-static/range {p0 .. p17}, Lorg/opencv/video/DualTVL1OpticalFlow;->create_0(DDDIIDIIDDIZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;-><init>(J)V

    .line 26
    .local v0, "retVal":Lorg/opencv/video/DualTVL1OpticalFlow;
    return-object v0
.end method

.method private static native create_0(DDDIIDIIDDIZ)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getEpsilon_0(J)D
.end method

.method private static native getGamma_0(J)D
.end method

.method private static native getInnerIterations_0(J)I
.end method

.method private static native getLambda_0(J)D
.end method

.method private static native getMedianFiltering_0(J)I
.end method

.method private static native getOuterIterations_0(J)I
.end method

.method private static native getScaleStep_0(J)D
.end method

.method private static native getScalesNumber_0(J)I
.end method

.method private static native getTau_0(J)D
.end method

.method private static native getTheta_0(J)D
.end method

.method private static native getUseInitialFlow_0(J)Z
.end method

.method private static native getWarpingsNumber_0(J)I
.end method

.method private static native setEpsilon_0(JD)V
.end method

.method private static native setGamma_0(JD)V
.end method

.method private static native setInnerIterations_0(JI)V
.end method

.method private static native setLambda_0(JD)V
.end method

.method private static native setMedianFiltering_0(JI)V
.end method

.method private static native setOuterIterations_0(JI)V
.end method

.method private static native setScaleStep_0(JD)V
.end method

.method private static native setScalesNumber_0(JI)V
.end method

.method private static native setTau_0(JD)V
.end method

.method private static native setTheta_0(JD)V
.end method

.method private static native setUseInitialFlow_0(JZ)V
.end method

.method private static native setWarpingsNumber_0(JI)V
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
    .line 377
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->delete(J)V

    .line 378
    return-void
.end method

.method public getEpsilon()D
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getEpsilon_0(J)D

    move-result-wide v0

    .line 63
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getGamma()D
    .locals 4

    .prologue
    .line 75
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getGamma_0(J)D

    move-result-wide v0

    .line 77
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getInnerIterations()I
    .locals 4

    .prologue
    .line 145
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getInnerIterations_0(J)I

    move-result v0

    .line 147
    .local v0, "retVal":I
    return v0
.end method

.method public getLambda()D
    .locals 4

    .prologue
    .line 89
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getLambda_0(J)D

    move-result-wide v0

    .line 91
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getMedianFiltering()I
    .locals 4

    .prologue
    .line 159
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getMedianFiltering_0(J)I

    move-result v0

    .line 161
    .local v0, "retVal":I
    return v0
.end method

.method public getOuterIterations()I
    .locals 4

    .prologue
    .line 173
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getOuterIterations_0(J)I

    move-result v0

    .line 175
    .local v0, "retVal":I
    return v0
.end method

.method public getScaleStep()D
    .locals 4

    .prologue
    .line 103
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getScaleStep_0(J)D

    move-result-wide v0

    .line 105
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getScalesNumber()I
    .locals 4

    .prologue
    .line 187
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getScalesNumber_0(J)I

    move-result v0

    .line 189
    .local v0, "retVal":I
    return v0
.end method

.method public getTau()D
    .locals 4

    .prologue
    .line 117
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getTau_0(J)D

    move-result-wide v0

    .line 119
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTheta()D
    .locals 4

    .prologue
    .line 131
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getTheta_0(J)D

    move-result-wide v0

    .line 133
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getUseInitialFlow()Z
    .locals 4

    .prologue
    .line 47
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getUseInitialFlow_0(J)Z

    move-result v0

    .line 49
    .local v0, "retVal":Z
    return v0
.end method

.method public getWarpingsNumber()I
    .locals 4

    .prologue
    .line 201
    iget-wide v2, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;->getWarpingsNumber_0(J)I

    move-result v0

    .line 203
    .local v0, "retVal":I
    return v0
.end method

.method public setEpsilon(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setEpsilon_0(JD)V

    .line 217
    return-void
.end method

.method public setGamma(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setGamma_0(JD)V

    .line 231
    return-void
.end method

.method public setInnerIterations(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setInnerIterations_0(JI)V

    .line 245
    return-void
.end method

.method public setLambda(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setLambda_0(JD)V

    .line 259
    return-void
.end method

.method public setMedianFiltering(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setMedianFiltering_0(JI)V

    .line 273
    return-void
.end method

.method public setOuterIterations(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 285
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setOuterIterations_0(JI)V

    .line 287
    return-void
.end method

.method public setScaleStep(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 299
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setScaleStep_0(JD)V

    .line 301
    return-void
.end method

.method public setScalesNumber(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 313
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setScalesNumber_0(JI)V

    .line 315
    return-void
.end method

.method public setTau(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setTau_0(JD)V

    .line 329
    return-void
.end method

.method public setTheta(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 341
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setTheta_0(JD)V

    .line 343
    return-void
.end method

.method public setUseInitialFlow(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 355
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setUseInitialFlow_0(JZ)V

    .line 357
    return-void
.end method

.method public setWarpingsNumber(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 369
    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setWarpingsNumber_0(JI)V

    .line 371
    return-void
.end method
