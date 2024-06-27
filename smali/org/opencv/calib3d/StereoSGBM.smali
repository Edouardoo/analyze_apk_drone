.class public Lorg/opencv/calib3d/StereoSGBM;
.super Lorg/opencv/calib3d/StereoMatcher;
.source "StereoSGBM.java"


# static fields
.field public static final MODE_HH:I = 0x1

.field public static final MODE_HH4:I = 0x3

.field public static final MODE_SGBM:I = 0x0

.field public static final MODE_SGBM_3WAY:I = 0x2


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/calib3d/StereoMatcher;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/calib3d/StereoSGBM;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lorg/opencv/calib3d/StereoSGBM;

    invoke-static {}, Lorg/opencv/calib3d/StereoSGBM;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/calib3d/StereoSGBM;-><init>(J)V

    .line 42
    .local v0, "retVal":Lorg/opencv/calib3d/StereoSGBM;
    return-object v0
.end method

.method public static create(IIIIIIIIIII)Lorg/opencv/calib3d/StereoSGBM;
    .locals 4
    .param p0, "minDisparity"    # I
    .param p1, "numDisparities"    # I
    .param p2, "blockSize"    # I
    .param p3, "P1"    # I
    .param p4, "P2"    # I
    .param p5, "disp12MaxDiff"    # I
    .param p6, "preFilterCap"    # I
    .param p7, "uniquenessRatio"    # I
    .param p8, "speckleWindowSize"    # I
    .param p9, "speckleRange"    # I
    .param p10, "mode"    # I

    .prologue
    .line 31
    new-instance v0, Lorg/opencv/calib3d/StereoSGBM;

    invoke-static/range {p0 .. p10}, Lorg/opencv/calib3d/StereoSGBM;->create_0(IIIIIIIIIII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/calib3d/StereoSGBM;-><init>(J)V

    .line 33
    .local v0, "retVal":Lorg/opencv/calib3d/StereoSGBM;
    return-object v0
.end method

.method private static native create_0(IIIIIIIIIII)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getMode_0(J)I
.end method

.method private static native getP1_0(J)I
.end method

.method private static native getP2_0(J)I
.end method

.method private static native getPreFilterCap_0(J)I
.end method

.method private static native getUniquenessRatio_0(J)I
.end method

.method private static native setMode_0(JI)V
.end method

.method private static native setP1_0(JI)V
.end method

.method private static native setP2_0(JI)V
.end method

.method private static native setPreFilterCap_0(JI)V
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
    .line 188
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/calib3d/StereoSGBM;->delete(J)V

    .line 189
    return-void
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 54
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoSGBM;->getMode_0(J)I

    move-result v0

    .line 56
    .local v0, "retVal":I
    return v0
.end method

.method public getP1()I
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoSGBM;->getP1_0(J)I

    move-result v0

    .line 70
    .local v0, "retVal":I
    return v0
.end method

.method public getP2()I
    .locals 4

    .prologue
    .line 82
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoSGBM;->getP2_0(J)I

    move-result v0

    .line 84
    .local v0, "retVal":I
    return v0
.end method

.method public getPreFilterCap()I
    .locals 4

    .prologue
    .line 96
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoSGBM;->getPreFilterCap_0(J)I

    move-result v0

    .line 98
    .local v0, "retVal":I
    return v0
.end method

.method public getUniquenessRatio()I
    .locals 4

    .prologue
    .line 110
    iget-wide v2, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/calib3d/StereoSGBM;->getUniquenessRatio_0(J)I

    move-result v0

    .line 112
    .local v0, "retVal":I
    return v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoSGBM;->setMode_0(JI)V

    .line 126
    return-void
.end method

.method public setP1(I)V
    .locals 2
    .param p1, "P1"    # I

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoSGBM;->setP1_0(JI)V

    .line 140
    return-void
.end method

.method public setP2(I)V
    .locals 2
    .param p1, "P2"    # I

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoSGBM;->setP2_0(JI)V

    .line 154
    return-void
.end method

.method public setPreFilterCap(I)V
    .locals 2
    .param p1, "preFilterCap"    # I

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoSGBM;->setPreFilterCap_0(JI)V

    .line 168
    return-void
.end method

.method public setUniquenessRatio(I)V
    .locals 2
    .param p1, "uniquenessRatio"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/opencv/calib3d/StereoSGBM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/calib3d/StereoSGBM;->setUniquenessRatio_0(JI)V

    .line 182
    return-void
.end method
