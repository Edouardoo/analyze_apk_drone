.class public Lorg/opencv/photo/TonemapMantiuk;
.super Lorg/opencv/photo/Tonemap;
.source "TonemapMantiuk.java"


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

.method private static native getSaturation_0(J)F
.end method

.method private static native getScale_0(J)F
.end method

.method private static native setSaturation_0(JF)V
.end method

.method private static native setScale_0(JF)V
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
    .line 74
    iget-wide v0, p0, Lorg/opencv/photo/TonemapMantiuk;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/TonemapMantiuk;->delete(J)V

    .line 75
    return-void
.end method

.method public getSaturation()F
    .locals 4

    .prologue
    .line 24
    iget-wide v2, p0, Lorg/opencv/photo/TonemapMantiuk;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapMantiuk;->getSaturation_0(J)F

    move-result v0

    .line 26
    .local v0, "retVal":F
    return v0
.end method

.method public getScale()F
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/photo/TonemapMantiuk;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapMantiuk;->getScale_0(J)F

    move-result v0

    .line 40
    .local v0, "retVal":F
    return v0
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/opencv/photo/TonemapMantiuk;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapMantiuk;->setSaturation_0(JF)V

    .line 54
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/opencv/photo/TonemapMantiuk;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapMantiuk;->setScale_0(JF)V

    .line 68
    return-void
.end method
