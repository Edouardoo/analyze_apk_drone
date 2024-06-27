.class public Lorg/opencv/photo/TonemapDurand;
.super Lorg/opencv/photo/Tonemap;
.source "TonemapDurand.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/photo/Tonemap;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native getContrast_0(J)F
.end method

.method private static native getSaturation_0(J)F
.end method

.method private static native getSigmaColor_0(J)F
.end method

.method private static native getSigmaSpace_0(J)F
.end method

.method private static native setContrast_0(JF)V
.end method

.method private static native setSaturation_0(JF)V
.end method

.method private static native setSigmaColor_0(JF)V
.end method

.method private static native setSigmaSpace_0(JF)V
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
    .line 130
    iget-wide v0, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/TonemapDurand;->delete(J)V

    .line 131
    return-void
.end method

.method public getContrast()F
    .locals 4

    .prologue
    .line 24
    iget-wide v2, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapDurand;->getContrast_0(J)F

    move-result v0

    .line 26
    .local v0, "retVal":F
    return v0
.end method

.method public getSaturation()F
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapDurand;->getSaturation_0(J)F

    move-result v0

    .line 40
    .local v0, "retVal":F
    return v0
.end method

.method public getSigmaColor()F
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapDurand;->getSigmaColor_0(J)F

    move-result v0

    .line 54
    .local v0, "retVal":F
    return v0
.end method

.method public getSigmaSpace()F
    .locals 4

    .prologue
    .line 66
    iget-wide v2, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapDurand;->getSigmaSpace_0(J)F

    move-result v0

    .line 68
    .local v0, "retVal":F
    return v0
.end method

.method public setContrast(F)V
    .locals 2
    .param p1, "contrast"    # F

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapDurand;->setContrast_0(JF)V

    .line 82
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapDurand;->setSaturation_0(JF)V

    .line 96
    return-void
.end method

.method public setSigmaColor(F)V
    .locals 2
    .param p1, "sigma_color"    # F

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapDurand;->setSigmaColor_0(JF)V

    .line 110
    return-void
.end method

.method public setSigmaSpace(F)V
    .locals 2
    .param p1, "sigma_space"    # F

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/opencv/photo/TonemapDurand;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapDurand;->setSigmaSpace_0(JF)V

    .line 124
    return-void
.end method
