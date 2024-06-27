.class public Lorg/opencv/calib3d/StereoMatcher;
.super Lorg/opencv/core/Algorithm;
.source "StereoMatcher.java"


# static fields
.field public static final DISP_SCALE:I = 0x10

.field public static final DISP_SHIFT:I = 0x4


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native compute_0(JJJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native getBlockSize_0(J)I
.end method

.method private static native getDisp12MaxDiff_0(J)I
.end method

.method private static native getMinDisparity_0(J)I
.end method

.method private static native getNumDisparities_0(J)I
.end method

.method private static native getSpeckleRange_0(J)I
.end method

.method private static native getSpeckleWindowSize_0(J)I
.end method

.method private static native setBlockSize_0(JI)V
.end method

.method private static native setDisp12MaxDiff_0(JI)V
.end method

.method private static native setMinDisparity_0(JI)V
.end method

.method private static native setNumDisparities_0(JI)V
.end method

.method private static native setSpeckleRange_0(JI)V
.end method

.method private static native setSpeckleWindowSize_0(JI)V
.end method


# virtual methods
.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p1, "left"    # Lorg/opencv/core/Mat;
    .param p2, "right"    # Lorg/opencv/core/Mat;
    .param p3, "disparity"    # Lorg/opencv/core/Mat;

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/StereoMatcher;->compute_0(JJJJ)V

    .line 116
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
    .line 206
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/calib3d/StereoMatcher;->delete(J)V

    .line 207
    return-void
.end method

.method public getBlockSize()I
    .locals 4

    .prologue
    .line 30
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoMatcher;->getBlockSize_0(J)I

    move-result v0

    .line 32
    .local v0, "retVal":I
    return v0
.end method

.method public getDisp12MaxDiff()I
    .locals 4

    .prologue
    .line 44
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoMatcher;->getDisp12MaxDiff_0(J)I

    move-result v0

    .line 46
    .local v0, "retVal":I
    return v0
.end method

.method public getMinDisparity()I
    .locals 4

    .prologue
    .line 58
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoMatcher;->getMinDisparity_0(J)I

    move-result v0

    .line 60
    .local v0, "retVal":I
    return v0
.end method

.method public getNumDisparities()I
    .locals 4

    .prologue
    .line 72
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoMatcher;->getNumDisparities_0(J)I

    move-result v0

    .line 74
    .local v0, "retVal":I
    return v0
.end method

.method public getSpeckleRange()I
    .locals 4

    .prologue
    .line 86
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoMatcher;->getSpeckleRange_0(J)I

    move-result v0

    .line 88
    .local v0, "retVal":I
    return v0
.end method

.method public getSpeckleWindowSize()I
    .locals 4

    .prologue
    .line 100
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoMatcher;->getSpeckleWindowSize_0(J)I

    move-result v0

    .line 102
    .local v0, "retVal":I
    return v0
.end method

.method public setBlockSize(I)V
    .locals 2
    .param p1, "blockSize"    # I

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoMatcher;->setBlockSize_0(JI)V

    .line 130
    return-void
.end method

.method public setDisp12MaxDiff(I)V
    .locals 2
    .param p1, "disp12MaxDiff"    # I

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoMatcher;->setDisp12MaxDiff_0(JI)V

    .line 144
    return-void
.end method

.method public setMinDisparity(I)V
    .locals 2
    .param p1, "minDisparity"    # I

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoMatcher;->setMinDisparity_0(JI)V

    .line 158
    return-void
.end method

.method public setNumDisparities(I)V
    .locals 2
    .param p1, "numDisparities"    # I

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoMatcher;->setNumDisparities_0(JI)V

    .line 172
    return-void
.end method

.method public setSpeckleRange(I)V
    .locals 2
    .param p1, "speckleRange"    # I

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoMatcher;->setSpeckleRange_0(JI)V

    .line 186
    return-void
.end method

.method public setSpeckleWindowSize(I)V
    .locals 2
    .param p1, "speckleWindowSize"    # I

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoMatcher;->setSpeckleWindowSize_0(JI)V

    .line 200
    return-void
.end method
