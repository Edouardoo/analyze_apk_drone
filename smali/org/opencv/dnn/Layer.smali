.class public Lorg/opencv/dnn/Layer;
.super Lorg/opencv/core/Algorithm;
.source "Layer.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native finalize_0(JJ)J
.end method

.method private static native finalize_1(JJJ)V
.end method

.method private static native forward_0(JJJJ)V
.end method

.method private static native get_blobs_0(J)J
.end method

.method private static native get_name_0(J)Ljava/lang/String;
.end method

.method private static native get_type_0(J)Ljava/lang/String;
.end method

.method private static native run_0(JJJJ)V
.end method

.method private static native set_blobs_0(JJ)V
.end method


# virtual methods
.method public finalize(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 29
    .local v0, "inputs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "retVal":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v4, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, v6, v7}, Lorg/opencv/dnn/Layer;->finalize_0(JJ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 31
    .local v2, "retValMat":Lorg/opencv/core/Mat;
    invoke-static {v2, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 32
    return-object v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Layer;->delete(J)V

    .line 149
    return-void
.end method

.method public finalize(Ljava/util/List;Ljava/util/List;)V
    .locals 8
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 44
    .local v6, "inputs_mat":Lorg/opencv/core/Mat;
    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7}, Lorg/opencv/core/Mat;-><init>()V

    .line 45
    .local v7, "outputs_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v7, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/dnn/Layer;->finalize_1(JJJ)V

    .line 46
    invoke-static {v7, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 47
    invoke-virtual {v7}, Lorg/opencv/core/Mat;->release()V

    .line 48
    return-void
.end method

.method public forward(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
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
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p3, "internals":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 60
    .local v8, "inputs_mat":Lorg/opencv/core/Mat;
    invoke-static {p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 61
    .local v10, "outputs_mat":Lorg/opencv/core/Mat;
    invoke-static {p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v9

    .line 62
    .local v9, "internals_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/dnn/Layer;->forward_0(JJJJ)V

    .line 63
    invoke-static {v10, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 64
    invoke-virtual {v10}, Lorg/opencv/core/Mat;->release()V

    .line 65
    invoke-static {v9, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 66
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 67
    return-void
.end method

.method public get_blobs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Layer;->get_blobs_0(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 99
    .local v1, "retValMat":Lorg/opencv/core/Mat;
    invoke-static {v1, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 100
    return-object v0
.end method

.method public get_name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    iget-wide v2, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Layer;->get_name_0(J)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method public get_type()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-wide v2, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Layer;->get_type_0(J)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method public run(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
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
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p3, "internals":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 79
    .local v8, "inputs_mat":Lorg/opencv/core/Mat;
    new-instance v10, Lorg/opencv/core/Mat;

    invoke-direct {v10}, Lorg/opencv/core/Mat;-><init>()V

    .line 80
    .local v10, "outputs_mat":Lorg/opencv/core/Mat;
    invoke-static {p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v9

    .line 81
    .local v9, "internals_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/dnn/Layer;->run_0(JJJJ)V

    .line 82
    invoke-static {v10, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 83
    invoke-virtual {v10}, Lorg/opencv/core/Mat;->release()V

    .line 84
    invoke-static {v9, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 85
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 86
    return-void
.end method

.method public set_blobs(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "blobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 112
    .local v0, "blobs_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/dnn/Layer;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/dnn/Layer;->set_blobs_0(JJ)V

    .line 114
    return-void
.end method
