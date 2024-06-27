.class public Lorg/opencv/photo/TonemapReinhard;
.super Lorg/opencv/photo/Tonemap;
.source "TonemapReinhard.java"


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

.method private static native getColorAdaptation_0(J)F
.end method

.method private static native getIntensity_0(J)F
.end method

.method private static native getLightAdaptation_0(J)F
.end method

.method private static native setColorAdaptation_0(JF)V
.end method

.method private static native setIntensity_0(JF)V
.end method

.method private static native setLightAdaptation_0(JF)V
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
    .line 102
    iget-wide v0, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/TonemapReinhard;->delete(J)V

    .line 103
    return-void
.end method

.method public getColorAdaptation()F
    .locals 4

    .prologue
    .line 24
    iget-wide v2, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapReinhard;->getColorAdaptation_0(J)F

    move-result v0

    .line 26
    .local v0, "retVal":F
    return v0
.end method

.method public getIntensity()F
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapReinhard;->getIntensity_0(J)F

    move-result v0

    .line 40
    .local v0, "retVal":F
    return v0
.end method

.method public getLightAdaptation()F
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/TonemapReinhard;->getLightAdaptation_0(J)F

    move-result v0

    .line 54
    .local v0, "retVal":F
    return v0
.end method

.method public setColorAdaptation(F)V
    .locals 2
    .param p1, "color_adapt"    # F

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapReinhard;->setColorAdaptation_0(JF)V

    .line 68
    return-void
.end method

.method public setIntensity(F)V
    .locals 2
    .param p1, "intensity"    # F

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapReinhard;->setIntensity_0(JF)V

    .line 82
    return-void
.end method

.method public setLightAdaptation(F)V
    .locals 2
    .param p1, "light_adapt"    # F

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/opencv/photo/TonemapReinhard;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/TonemapReinhard;->setLightAdaptation_0(JF)V

    .line 96
    return-void
.end method
