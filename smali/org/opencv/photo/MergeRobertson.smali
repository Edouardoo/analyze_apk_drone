.class public Lorg/opencv/photo/MergeRobertson;
.super Lorg/opencv/photo/MergeExposures;
.source "MergeRobertson.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/photo/MergeExposures;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native process_0(JJJJJ)V
.end method

.method private static native process_1(JJJJ)V
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
    .line 48
    iget-wide v0, p0, Lorg/opencv/photo/MergeRobertson;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/MergeRobertson;->delete(J)V

    .line 49
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
    .line 39
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 40
    .local v8, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/photo/MergeRobertson;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/MergeRobertson;->process_1(JJJJ)V

    .line 42
    return-void
.end method

.method public process(Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 11
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "times"    # Lorg/opencv/core/Mat;
    .param p4, "response"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 26
    .local v10, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/photo/MergeRobertson;->nativeObj:J

    iget-wide v2, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/photo/MergeRobertson;->process_0(JJJJJ)V

    .line 28
    return-void
.end method
