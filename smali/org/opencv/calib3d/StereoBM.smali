.class public Lorg/opencv/calib3d/StereoBM;
.super Lorg/opencv/calib3d/StereoMatcher;
.source "StereoBM.java"


# static fields
.field public static final PREFILTER_NORMALIZED_RESPONSE:I = 0x0

.field public static final PREFILTER_XSOBEL:I = 0x1


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/calib3d/StereoMatcher;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/calib3d/StereoBM;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lorg/opencv/calib3d/StereoBM;

    invoke-static {}, Lorg/opencv/calib3d/StereoBM;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/calib3d/StereoBM;-><init>(J)V

    .line 40
    .local v0, "retVal":Lorg/opencv/calib3d/StereoBM;
    return-object v0
.end method

.method public static create(II)Lorg/opencv/calib3d/StereoBM;
    .locals 4
    .param p0, "numDisparities"    # I
    .param p1, "blockSize"    # I

    .prologue
    .line 29
    new-instance v0, Lorg/opencv/calib3d/StereoBM;

    invoke-static {p0, p1}, Lorg/opencv/calib3d/StereoBM;->create_0(II)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/calib3d/StereoBM;-><init>(J)V

    .line 31
    .local v0, "retVal":Lorg/opencv/calib3d/StereoBM;
    return-object v0
.end method

.method private static native create_0(II)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getPreFilterCap_0(J)I
.end method

.method private static native getPreFilterSize_0(J)I
.end method

.method private static native getPreFilterType_0(J)I
.end method

.method private static native getROI1_0(J)[D
.end method

.method private static native getROI2_0(J)[D
.end method

.method private static native getSmallerBlockSize_0(J)I
.end method

.method private static native getTextureThreshold_0(J)I
.end method

.method private static native getUniquenessRatio_0(J)I
.end method

.method private static native setPreFilterCap_0(JI)V
.end method

.method private static native setPreFilterSize_0(JI)V
.end method

.method private static native setPreFilterType_0(JI)V
.end method

.method private static native setROI1_0(JIIII)V
.end method

.method private static native setROI2_0(JIIII)V
.end method

.method private static native setSmallerBlockSize_0(JI)V
.end method

.method private static native setTextureThreshold_0(JI)V
.end method

.method private static native setUniquenessRatio_0(JI)V
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
    .line 270
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/calib3d/StereoBM;->delete(J)V

    .line 271
    return-void
.end method

.method public getPreFilterCap()I
    .locals 4

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getPreFilterCap_0(J)I

    move-result v0

    .line 82
    .local v0, "retVal":I
    return v0
.end method

.method public getPreFilterSize()I
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getPreFilterSize_0(J)I

    move-result v0

    .line 96
    .local v0, "retVal":I
    return v0
.end method

.method public getPreFilterType()I
    .locals 4

    .prologue
    .line 108
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getPreFilterType_0(J)I

    move-result v0

    .line 110
    .local v0, "retVal":I
    return v0
.end method

.method public getROI1()Lorg/opencv/core/Rect;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lorg/opencv/core/Rect;

    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getROI1_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Rect;-><init>([D)V

    .line 54
    .local v0, "retVal":Lorg/opencv/core/Rect;
    return-object v0
.end method

.method public getROI2()Lorg/opencv/core/Rect;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lorg/opencv/core/Rect;

    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getROI2_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Rect;-><init>([D)V

    .line 68
    .local v0, "retVal":Lorg/opencv/core/Rect;
    return-object v0
.end method

.method public getSmallerBlockSize()I
    .locals 4

    .prologue
    .line 122
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getSmallerBlockSize_0(J)I

    move-result v0

    .line 124
    .local v0, "retVal":I
    return v0
.end method

.method public getTextureThreshold()I
    .locals 4

    .prologue
    .line 136
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getTextureThreshold_0(J)I

    move-result v0

    .line 138
    .local v0, "retVal":I
    return v0
.end method

.method public getUniquenessRatio()I
    .locals 4

    .prologue
    .line 150
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoBM;->getUniquenessRatio_0(J)I

    move-result v0

    .line 152
    .local v0, "retVal":I
    return v0
.end method

.method public setPreFilterCap(I)V
    .locals 2
    .param p1, "preFilterCap"    # I

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoBM;->setPreFilterCap_0(JI)V

    .line 166
    return-void
.end method

.method public setPreFilterSize(I)V
    .locals 2
    .param p1, "preFilterSize"    # I

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoBM;->setPreFilterSize_0(JI)V

    .line 180
    return-void
.end method

.method public setPreFilterType(I)V
    .locals 2
    .param p1, "preFilterType"    # I

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoBM;->setPreFilterType_0(JI)V

    .line 194
    return-void
.end method

.method public setROI1(Lorg/opencv/core/Rect;)V
    .locals 6
    .param p1, "roi1"    # Lorg/opencv/core/Rect;

    .prologue
    .line 206
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/StereoBM;->setROI1_0(JIIII)V

    .line 208
    return-void
.end method

.method public setROI2(Lorg/opencv/core/Rect;)V
    .locals 6
    .param p1, "roi2"    # Lorg/opencv/core/Rect;

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/StereoBM;->setROI2_0(JIIII)V

    .line 222
    return-void
.end method

.method public setSmallerBlockSize(I)V
    .locals 2
    .param p1, "blockSize"    # I

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoBM;->setSmallerBlockSize_0(JI)V

    .line 236
    return-void
.end method

.method public setTextureThreshold(I)V
    .locals 2
    .param p1, "textureThreshold"    # I

    .prologue
    .line 248
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoBM;->setTextureThreshold_0(JI)V

    .line 250
    return-void
.end method

.method public setUniquenessRatio(I)V
    .locals 2
    .param p1, "uniquenessRatio"    # I

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoBM;->setUniquenessRatio_0(JI)V

    .line 264
    return-void
.end method
