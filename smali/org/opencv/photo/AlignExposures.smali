.class public Lorg/opencv/photo/AlignExposures;
.super Lorg/opencv/core/Algorithm;
.source "AlignExposures.java"


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

.method private static native process_0(JJJJJ)V
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
    .line 36
    iget-wide v0, p0, Lorg/opencv/photo/AlignExposures;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/AlignExposures;->delete(J)V

    .line 37
    return-void
.end method

.method public process(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14
    .param p3, "times"    # Lorg/opencv/core/Mat;
    .param p4, "response"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
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
    .local p2, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v13

    .line 27
    .local v13, "src_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v12

    .line 28
    .local v12, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/photo/AlignExposures;->nativeObj:J

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v11}, Lorg/opencv/photo/AlignExposures;->process_0(JJJJJ)V

    .line 30
    return-void
.end method
