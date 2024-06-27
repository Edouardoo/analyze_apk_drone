.class public Lorg/opencv/photo/CalibrateDebevec;
.super Lorg/opencv/photo/CalibrateCRF;
.source "CalibrateDebevec.java"


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

.method private static native getLambda_0(J)F
.end method

.method private static native getRandom_0(J)Z
.end method

.method private static native getSamples_0(J)I
.end method

.method private static native setLambda_0(JF)V
.end method

.method private static native setRandom_0(JZ)V
.end method

.method private static native setSamples_0(JI)V
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
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/CalibrateDebevec;->delete(J)V

    .line 103
    return-void
.end method

.method public getLambda()F
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/CalibrateDebevec;->getLambda_0(J)F

    move-result v0

    .line 40
    .local v0, "retVal":F
    return v0
.end method

.method public getRandom()Z
    .locals 4

    .prologue
    .line 24
    iget-wide v2, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/CalibrateDebevec;->getRandom_0(J)Z

    move-result v0

    .line 26
    .local v0, "retVal":Z
    return v0
.end method

.method public getSamples()I
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/CalibrateDebevec;->getSamples_0(J)I

    move-result v0

    .line 54
    .local v0, "retVal":I
    return v0
.end method

.method public setLambda(F)V
    .locals 2
    .param p1, "lambda"    # F

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/CalibrateDebevec;->setLambda_0(JF)V

    .line 68
    return-void
.end method

.method public setRandom(Z)V
    .locals 2
    .param p1, "random"    # Z

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/CalibrateDebevec;->setRandom_0(JZ)V

    .line 82
    return-void
.end method

.method public setSamples(I)V
    .locals 2
    .param p1, "samples"    # I

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateDebevec;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/CalibrateDebevec;->setSamples_0(JI)V

    .line 96
    return-void
.end method
