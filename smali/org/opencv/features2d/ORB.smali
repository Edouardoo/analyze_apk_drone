.class public Lorg/opencv/features2d/ORB;
.super Lorg/opencv/features2d/Feature2D;
.source "ORB.java"


# static fields
.field public static final FAST_SCORE:I = 0x1

.field public static final HARRIS_SCORE:I = 0x0

.field public static final kBytes:I = 0x20


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/ORB;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lorg/opencv/features2d/ORB;

    invoke-static {}, Lorg/opencv/features2d/ORB;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/ORB;-><init>(J)V

    .line 41
    .local v0, "retVal":Lorg/opencv/features2d/ORB;
    return-object v0
.end method

.method public static create(IFIIIIIII)Lorg/opencv/features2d/ORB;
    .locals 4
    .param p0, "nfeatures"    # I
    .param p1, "scaleFactor"    # F
    .param p2, "nlevels"    # I
    .param p3, "edgeThreshold"    # I
    .param p4, "firstLevel"    # I
    .param p5, "WTA_K"    # I
    .param p6, "scoreType"    # I
    .param p7, "patchSize"    # I
    .param p8, "fastThreshold"    # I

    .prologue
    .line 30
    new-instance v0, Lorg/opencv/features2d/ORB;

    invoke-static/range {p0 .. p8}, Lorg/opencv/features2d/ORB;->create_0(IFIIIIIII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/ORB;-><init>(J)V

    .line 32
    .local v0, "retVal":Lorg/opencv/features2d/ORB;
    return-object v0
.end method

.method private static native create_0(IFIIIIIII)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getEdgeThreshold_0(J)I
.end method

.method private static native getFastThreshold_0(J)I
.end method

.method private static native getFirstLevel_0(J)I
.end method

.method private static native getMaxFeatures_0(J)I
.end method

.method private static native getNLevels_0(J)I
.end method

.method private static native getPatchSize_0(J)I
.end method

.method private static native getScaleFactor_0(J)D
.end method

.method private static native getScoreType_0(J)I
.end method

.method private static native getWTA_K_0(J)I
.end method

.method private static native setEdgeThreshold_0(JI)V
.end method

.method private static native setFastThreshold_0(JI)V
.end method

.method private static native setFirstLevel_0(JI)V
.end method

.method private static native setMaxFeatures_0(JI)V
.end method

.method private static native setNLevels_0(JI)V
.end method

.method private static native setPatchSize_0(JI)V
.end method

.method private static native setScaleFactor_0(JD)V
.end method

.method private static native setScoreType_0(JI)V
.end method

.method private static native setWTA_K_0(JI)V
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
    .line 299
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/ORB;->delete(J)V

    .line 300
    return-void
.end method

.method public getEdgeThreshold()I
    .locals 4

    .prologue
    .line 67
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getEdgeThreshold_0(J)I

    move-result v0

    .line 69
    .local v0, "retVal":I
    return v0
.end method

.method public getFastThreshold()I
    .locals 4

    .prologue
    .line 81
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getFastThreshold_0(J)I

    move-result v0

    .line 83
    .local v0, "retVal":I
    return v0
.end method

.method public getFirstLevel()I
    .locals 4

    .prologue
    .line 95
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getFirstLevel_0(J)I

    move-result v0

    .line 97
    .local v0, "retVal":I
    return v0
.end method

.method public getMaxFeatures()I
    .locals 4

    .prologue
    .line 109
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getMaxFeatures_0(J)I

    move-result v0

    .line 111
    .local v0, "retVal":I
    return v0
.end method

.method public getNLevels()I
    .locals 4

    .prologue
    .line 123
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getNLevels_0(J)I

    move-result v0

    .line 125
    .local v0, "retVal":I
    return v0
.end method

.method public getPatchSize()I
    .locals 4

    .prologue
    .line 137
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getPatchSize_0(J)I

    move-result v0

    .line 139
    .local v0, "retVal":I
    return v0
.end method

.method public getScaleFactor()D
    .locals 4

    .prologue
    .line 53
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getScaleFactor_0(J)D

    move-result-wide v0

    .line 55
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getScoreType()I
    .locals 4

    .prologue
    .line 151
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getScoreType_0(J)I

    move-result v0

    .line 153
    .local v0, "retVal":I
    return v0
.end method

.method public getWTA_K()I
    .locals 4

    .prologue
    .line 165
    iget-wide v2, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/ORB;->getWTA_K_0(J)I

    move-result v0

    .line 167
    .local v0, "retVal":I
    return v0
.end method

.method public setEdgeThreshold(I)V
    .locals 2
    .param p1, "edgeThreshold"    # I

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setEdgeThreshold_0(JI)V

    .line 181
    return-void
.end method

.method public setFastThreshold(I)V
    .locals 2
    .param p1, "fastThreshold"    # I

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setFastThreshold_0(JI)V

    .line 195
    return-void
.end method

.method public setFirstLevel(I)V
    .locals 2
    .param p1, "firstLevel"    # I

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setFirstLevel_0(JI)V

    .line 209
    return-void
.end method

.method public setMaxFeatures(I)V
    .locals 2
    .param p1, "maxFeatures"    # I

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setMaxFeatures_0(JI)V

    .line 223
    return-void
.end method

.method public setNLevels(I)V
    .locals 2
    .param p1, "nlevels"    # I

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setNLevels_0(JI)V

    .line 237
    return-void
.end method

.method public setPatchSize(I)V
    .locals 2
    .param p1, "patchSize"    # I

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setPatchSize_0(JI)V

    .line 251
    return-void
.end method

.method public setScaleFactor(D)V
    .locals 3
    .param p1, "scaleFactor"    # D

    .prologue
    .line 263
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/ORB;->setScaleFactor_0(JD)V

    .line 265
    return-void
.end method

.method public setScoreType(I)V
    .locals 2
    .param p1, "scoreType"    # I

    .prologue
    .line 277
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setScoreType_0(JI)V

    .line 279
    return-void
.end method

.method public setWTA_K(I)V
    .locals 2
    .param p1, "wta_k"    # I

    .prologue
    .line 291
    iget-wide v0, p0, Lorg/opencv/features2d/ORB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/ORB;->setWTA_K_0(JI)V

    .line 293
    return-void
.end method
