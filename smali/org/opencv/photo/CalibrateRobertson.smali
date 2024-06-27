.class public Lorg/opencv/photo/CalibrateRobertson;
.super Lorg/opencv/photo/CalibrateCRF;
.source "CalibrateRobertson.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/photo/CalibrateCRF;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native getMaxIter_0(J)I
.end method

.method private static native getRadiance_0(J)J
.end method

.method private static native getThreshold_0(J)F
.end method

.method private static native setMaxIter_0(JI)V
.end method

.method private static native setThreshold_0(JF)V
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
    .line 88
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateRobertson;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/CalibrateRobertson;->delete(J)V

    .line 89
    return-void
.end method

.method public getMaxIter()I
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/opencv/photo/CalibrateRobertson;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/CalibrateRobertson;->getMaxIter_0(J)I

    move-result v0

    .line 54
    .local v0, "retVal":I
    return v0
.end method

.method public getRadiance()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/photo/CalibrateRobertson;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/CalibrateRobertson;->getRadiance_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 26
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getThreshold()F
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/photo/CalibrateRobertson;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/CalibrateRobertson;->getThreshold_0(J)F

    move-result v0

    .line 40
    .local v0, "retVal":F
    return v0
.end method

.method public setMaxIter(I)V
    .locals 2
    .param p1, "max_iter"    # I

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateRobertson;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/CalibrateRobertson;->setMaxIter_0(JI)V

    .line 68
    return-void
.end method

.method public setThreshold(F)V
    .locals 2
    .param p1, "threshold"    # F

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateRobertson;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/CalibrateRobertson;->setThreshold_0(JF)V

    .line 82
    return-void
.end method
