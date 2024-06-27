.class public Lorg/opencv/photo/CalibrateCRF;
.super Lorg/opencv/core/Algorithm;
.source "CalibrateCRF.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native process_0(JJJJ)V
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
    .line 35
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateCRF;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/CalibrateCRF;->delete(J)V

    .line 36
    return-void
.end method

.method public process(Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 9
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "times"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 27
    .local v8, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/photo/CalibrateCRF;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/CalibrateCRF;->process_0(JJJJ)V

    .line 29
    return-void
.end method
