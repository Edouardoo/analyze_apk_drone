.class public Lorg/opencv/photo/Tonemap;
.super Lorg/opencv/core/Algorithm;
.source "Tonemap.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native getGamma_0(J)F
.end method

.method private static native process_0(JJJ)V
.end method

.method private static native setGamma_0(JF)V
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
    .line 61
    iget-wide v0, p0, Lorg/opencv/photo/Tonemap;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/Tonemap;->delete(J)V

    .line 62
    return-void
.end method

.method public getGamma()F
    .locals 4

    .prologue
    .line 25
    iget-wide v2, p0, Lorg/opencv/photo/Tonemap;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/Tonemap;->getGamma_0(J)F

    move-result v0

    .line 27
    .local v0, "retVal":F
    return v0
.end method

.method public process(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "src"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/opencv/photo/Tonemap;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Tonemap;->process_0(JJJ)V

    .line 41
    return-void
.end method

.method public setGamma(F)V
    .locals 2
    .param p1, "gamma"    # F

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/opencv/photo/Tonemap;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/Tonemap;->setGamma_0(JF)V

    .line 55
    return-void
.end method
