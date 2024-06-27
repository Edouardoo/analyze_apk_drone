.class public Lorg/opencv/video/FarnebackOpticalFlow;
.super Lorg/opencv/video/DenseOpticalFlow;
.source "FarnebackOpticalFlow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/video/DenseOpticalFlow;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/video/FarnebackOpticalFlow;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/opencv/video/FarnebackOpticalFlow;

    invoke-static {}, Lorg/opencv/video/FarnebackOpticalFlow;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;-><init>(J)V

    .line 35
    .local v0, "retVal":Lorg/opencv/video/FarnebackOpticalFlow;
    return-object v0
.end method

.method public static create(IDZIIIDI)Lorg/opencv/video/FarnebackOpticalFlow;
    .locals 5
    .param p0, "numLevels"    # I
    .param p1, "pyrScale"    # D
    .param p3, "fastPyramids"    # Z
    .param p4, "winSize"    # I
    .param p5, "numIters"    # I
    .param p6, "polyN"    # I
    .param p7, "polySigma"    # D
    .param p9, "flags"    # I

    .prologue
    .line 24
    new-instance v0, Lorg/opencv/video/FarnebackOpticalFlow;

    invoke-static/range {p0 .. p9}, Lorg/opencv/video/FarnebackOpticalFlow;->create_0(IDZIIIDI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;-><init>(J)V

    .line 26
    .local v0, "retVal":Lorg/opencv/video/FarnebackOpticalFlow;
    return-object v0
.end method

.method private static native create_0(IDZIIIDI)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getFastPyramids_0(J)Z
.end method

.method private static native getFlags_0(J)I
.end method

.method private static native getNumIters_0(J)I
.end method

.method private static native getNumLevels_0(J)I
.end method

.method private static native getPolyN_0(J)I
.end method

.method private static native getPolySigma_0(J)D
.end method

.method private static native getPyrScale_0(J)D
.end method

.method private static native getWinSize_0(J)I
.end method

.method private static native setFastPyramids_0(JZ)V
.end method

.method private static native setFlags_0(JI)V
.end method

.method private static native setNumIters_0(JI)V
.end method

.method private static native setNumLevels_0(JI)V
.end method

.method private static native setPolyN_0(JI)V
.end method

.method private static native setPolySigma_0(JD)V
.end method

.method private static native setPyrScale_0(JD)V
.end method

.method private static native setWinSize_0(JI)V
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
    .line 265
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->delete(J)V

    .line 266
    return-void
.end method

.method public getFastPyramids()Z
    .locals 4

    .prologue
    .line 47
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getFastPyramids_0(J)Z

    move-result v0

    .line 49
    .local v0, "retVal":Z
    return v0
.end method

.method public getFlags()I
    .locals 4

    .prologue
    .line 89
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getFlags_0(J)I

    move-result v0

    .line 91
    .local v0, "retVal":I
    return v0
.end method

.method public getNumIters()I
    .locals 4

    .prologue
    .line 103
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getNumIters_0(J)I

    move-result v0

    .line 105
    .local v0, "retVal":I
    return v0
.end method

.method public getNumLevels()I
    .locals 4

    .prologue
    .line 117
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getNumLevels_0(J)I

    move-result v0

    .line 119
    .local v0, "retVal":I
    return v0
.end method

.method public getPolyN()I
    .locals 4

    .prologue
    .line 131
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getPolyN_0(J)I

    move-result v0

    .line 133
    .local v0, "retVal":I
    return v0
.end method

.method public getPolySigma()D
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getPolySigma_0(J)D

    move-result-wide v0

    .line 63
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getPyrScale()D
    .locals 4

    .prologue
    .line 75
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getPyrScale_0(J)D

    move-result-wide v0

    .line 77
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getWinSize()I
    .locals 4

    .prologue
    .line 145
    iget-wide v2, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/FarnebackOpticalFlow;->getWinSize_0(J)I

    move-result v0

    .line 147
    .local v0, "retVal":I
    return v0
.end method

.method public setFastPyramids(Z)V
    .locals 2
    .param p1, "fastPyramids"    # Z

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setFastPyramids_0(JZ)V

    .line 161
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setFlags_0(JI)V

    .line 175
    return-void
.end method

.method public setNumIters(I)V
    .locals 2
    .param p1, "numIters"    # I

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setNumIters_0(JI)V

    .line 189
    return-void
.end method

.method public setNumLevels(I)V
    .locals 2
    .param p1, "numLevels"    # I

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setNumLevels_0(JI)V

    .line 203
    return-void
.end method

.method public setPolyN(I)V
    .locals 2
    .param p1, "polyN"    # I

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setPolyN_0(JI)V

    .line 217
    return-void
.end method

.method public setPolySigma(D)V
    .locals 3
    .param p1, "polySigma"    # D

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/FarnebackOpticalFlow;->setPolySigma_0(JD)V

    .line 231
    return-void
.end method

.method public setPyrScale(D)V
    .locals 3
    .param p1, "pyrScale"    # D

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/FarnebackOpticalFlow;->setPyrScale_0(JD)V

    .line 245
    return-void
.end method

.method public setWinSize(I)V
    .locals 2
    .param p1, "winSize"    # I

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setWinSize_0(JI)V

    .line 259
    return-void
.end method
