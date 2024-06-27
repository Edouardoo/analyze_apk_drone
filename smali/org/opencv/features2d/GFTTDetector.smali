.class public Lorg/opencv/features2d/GFTTDetector;
.super Lorg/opencv/features2d/Feature2D;
.source "GFTTDetector.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/GFTTDetector;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/opencv/features2d/GFTTDetector;

    invoke-static {}, Lorg/opencv/features2d/GFTTDetector;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/GFTTDetector;-><init>(J)V

    .line 35
    .local v0, "retVal":Lorg/opencv/features2d/GFTTDetector;
    return-object v0
.end method

.method public static create(IDDIZD)Lorg/opencv/features2d/GFTTDetector;
    .locals 5
    .param p0, "maxCorners"    # I
    .param p1, "qualityLevel"    # D
    .param p3, "minDistance"    # D
    .param p5, "blockSize"    # I
    .param p6, "useHarrisDetector"    # Z
    .param p7, "k"    # D

    .prologue
    .line 24
    new-instance v0, Lorg/opencv/features2d/GFTTDetector;

    invoke-static/range {p0 .. p8}, Lorg/opencv/features2d/GFTTDetector;->create_0(IDDIZD)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/GFTTDetector;-><init>(J)V

    .line 26
    .local v0, "retVal":Lorg/opencv/features2d/GFTTDetector;
    return-object v0
.end method

.method private static native create_0(IDDIZD)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getBlockSize_0(J)I
.end method

.method private static native getHarrisDetector_0(J)Z
.end method

.method private static native getK_0(J)D
.end method

.method private static native getMaxFeatures_0(J)I
.end method

.method private static native getMinDistance_0(J)D
.end method

.method private static native getQualityLevel_0(J)D
.end method

.method private static native setBlockSize_0(JI)V
.end method

.method private static native setHarrisDetector_0(JZ)V
.end method

.method private static native setK_0(JD)V
.end method

.method private static native setMaxFeatures_0(JI)V
.end method

.method private static native setMinDistance_0(JD)V
.end method

.method private static native setQualityLevel_0(JD)V
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
    .line 209
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/GFTTDetector;->delete(J)V

    .line 210
    return-void
.end method

.method public getBlockSize()I
    .locals 4

    .prologue
    .line 103
    iget-wide v2, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/GFTTDetector;->getBlockSize_0(J)I

    move-result v0

    .line 105
    .local v0, "retVal":I
    return v0
.end method

.method public getHarrisDetector()Z
    .locals 4

    .prologue
    .line 47
    iget-wide v2, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/GFTTDetector;->getHarrisDetector_0(J)Z

    move-result v0

    .line 49
    .local v0, "retVal":Z
    return v0
.end method

.method public getK()D
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/GFTTDetector;->getK_0(J)D

    move-result-wide v0

    .line 63
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getMaxFeatures()I
    .locals 4

    .prologue
    .line 117
    iget-wide v2, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/GFTTDetector;->getMaxFeatures_0(J)I

    move-result v0

    .line 119
    .local v0, "retVal":I
    return v0
.end method

.method public getMinDistance()D
    .locals 4

    .prologue
    .line 75
    iget-wide v2, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/GFTTDetector;->getMinDistance_0(J)D

    move-result-wide v0

    .line 77
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getQualityLevel()D
    .locals 4

    .prologue
    .line 89
    iget-wide v2, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/GFTTDetector;->getQualityLevel_0(J)D

    move-result-wide v0

    .line 91
    .local v0, "retVal":D
    return-wide v0
.end method

.method public setBlockSize(I)V
    .locals 2
    .param p1, "blockSize"    # I

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/GFTTDetector;->setBlockSize_0(JI)V

    .line 133
    return-void
.end method

.method public setHarrisDetector(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/GFTTDetector;->setHarrisDetector_0(JZ)V

    .line 147
    return-void
.end method

.method public setK(D)V
    .locals 3
    .param p1, "k"    # D

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/GFTTDetector;->setK_0(JD)V

    .line 161
    return-void
.end method

.method public setMaxFeatures(I)V
    .locals 2
    .param p1, "maxFeatures"    # I

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/GFTTDetector;->setMaxFeatures_0(JI)V

    .line 175
    return-void
.end method

.method public setMinDistance(D)V
    .locals 3
    .param p1, "minDistance"    # D

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/GFTTDetector;->setMinDistance_0(JD)V

    .line 189
    return-void
.end method

.method public setQualityLevel(D)V
    .locals 3
    .param p1, "qlevel"    # D

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/opencv/features2d/GFTTDetector;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/GFTTDetector;->setQualityLevel_0(JD)V

    .line 203
    return-void
.end method
