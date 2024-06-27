.class public Lorg/opencv/imgproc/CLAHE;
.super Lorg/opencv/core/Algorithm;
.source "CLAHE.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native apply_0(JJJ)V
.end method

.method private static native collectGarbage_0(J)V
.end method

.method private static native delete(J)V
.end method

.method private static native getClipLimit_0(J)D
.end method

.method private static native getTilesGridSize_0(J)[D
.end method

.method private static native setClipLimit_0(JD)V
.end method

.method private static native setTilesGridSize_0(JDD)V
.end method


# virtual methods
.method public apply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "src"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/CLAHE;->apply_0(JJJ)V

    .line 56
    return-void
.end method

.method public collectGarbage()V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgproc/CLAHE;->collectGarbage_0(J)V

    .line 70
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
    .line 104
    iget-wide v0, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgproc/CLAHE;->delete(J)V

    .line 105
    return-void
.end method

.method public getClipLimit()D
    .locals 4

    .prologue
    .line 40
    iget-wide v2, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/imgproc/CLAHE;->getClipLimit_0(J)D

    move-result-wide v0

    .line 42
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTilesGridSize()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/imgproc/CLAHE;->getTilesGridSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 28
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public setClipLimit(D)V
    .locals 3
    .param p1, "clipLimit"    # D

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/imgproc/CLAHE;->setClipLimit_0(JD)V

    .line 84
    return-void
.end method

.method public setTilesGridSize(Lorg/opencv/core/Size;)V
    .locals 6
    .param p1, "tileGridSize"    # Lorg/opencv/core/Size;

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/opencv/imgproc/CLAHE;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/CLAHE;->setTilesGridSize_0(JDD)V

    .line 98
    return-void
.end method
