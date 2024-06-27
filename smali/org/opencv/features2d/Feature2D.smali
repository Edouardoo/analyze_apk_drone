.class public Lorg/opencv/features2d/Feature2D;
.super Lorg/opencv/core/Algorithm;
.source "Feature2D.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native compute_0(JJJJ)V
.end method

.method private static native compute_1(JJJJ)V
.end method

.method private static native defaultNorm_0(J)I
.end method

.method private static native delete(J)V
.end method

.method private static native descriptorSize_0(J)I
.end method

.method private static native descriptorType_0(J)I
.end method

.method private static native detectAndCompute_0(JJJJJZ)V
.end method

.method private static native detectAndCompute_1(JJJJJ)V
.end method

.method private static native detect_0(JJJJ)V
.end method

.method private static native detect_1(JJJ)V
.end method

.method private static native detect_2(JJJJ)V
.end method

.method private static native detect_3(JJJ)V
.end method

.method private static native empty_0(J)Z
.end method

.method private static native read_0(JLjava/lang/String;)V
.end method

.method private static native write_0(JLjava/lang/String;)V
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "keypoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfKeyPoint;>;"
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v9

    .line 100
    .local v9, "images_mat":Lorg/opencv/core/Mat;
    new-instance v11, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v11, "keypoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p2, v11}, Lorg/opencv/utils/Converters;->vector_vector_KeyPoint_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 102
    .local v10, "keypoints_mat":Lorg/opencv/core/Mat;
    new-instance v8, Lorg/opencv/core/Mat;

    invoke-direct {v8}, Lorg/opencv/core/Mat;-><init>()V

    .line 103
    .local v8, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/Feature2D;->compute_1(JJJJ)V

    .line 104
    invoke-static {v10, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 105
    invoke-virtual {v10}, Lorg/opencv/core/Mat;->release()V

    .line 106
    invoke-static {v8, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 107
    invoke-virtual {v8}, Lorg/opencv/core/Mat;->release()V

    .line 108
    return-void

    .line 100
    .end local v8    # "descriptors_mat":Lorg/opencv/core/Mat;
    .end local v10    # "keypoints_mat":Lorg/opencv/core/Mat;
    .end local v11    # "keypoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 9
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p3, "descriptors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 85
    move-object v8, p2

    .line 86
    .local v8, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/Feature2D;->compute_0(JJJJ)V

    .line 88
    return-void
.end method

.method public defaultNorm()I
    .locals 4

    .prologue
    .line 44
    iget-wide v2, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Feature2D;->defaultNorm_0(J)I

    move-result v0

    .line 46
    .local v0, "retVal":I
    return v0
.end method

.method public descriptorSize()I
    .locals 4

    .prologue
    .line 58
    iget-wide v2, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Feature2D;->descriptorSize_0(J)I

    move-result v0

    .line 60
    .local v0, "retVal":I
    return v0
.end method

.method public descriptorType()I
    .locals 4

    .prologue
    .line 72
    iget-wide v2, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Feature2D;->descriptorType_0(J)I

    move-result v0

    .line 74
    .local v0, "retVal":I
    return v0
.end method

.method public detect(Ljava/util/List;Ljava/util/List;)V
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
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "keypoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfKeyPoint;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 155
    .local v6, "images_mat":Lorg/opencv/core/Mat;
    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7}, Lorg/opencv/core/Mat;-><init>()V

    .line 156
    .local v7, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v7, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/features2d/Feature2D;->detect_3(JJJ)V

    .line 157
    invoke-static {v7, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 158
    invoke-virtual {v7}, Lorg/opencv/core/Mat;->release()V

    .line 159
    return-void
.end method

.method public detect(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "keypoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfKeyPoint;>;"
    .local p3, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 143
    .local v8, "images_mat":Lorg/opencv/core/Mat;
    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    .line 144
    .local v9, "keypoints_mat":Lorg/opencv/core/Mat;
    invoke-static {p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 145
    .local v10, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v10, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/Feature2D;->detect_2(JJJJ)V

    .line 146
    invoke-static {v9, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 147
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 148
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;)V
    .locals 7
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;

    .prologue
    .line 128
    move-object v6, p2

    .line 129
    .local v6, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/features2d/Feature2D;->detect_1(JJJ)V

    .line 131
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 9
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 119
    move-object v8, p2

    .line 120
    .local v8, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/Feature2D;->detect_0(JJJJ)V

    .line 122
    return-void
.end method

.method public detectAndCompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 11
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "descriptors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 179
    move-object v10, p3

    .line 180
    .local v10, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/features2d/Feature2D;->detectAndCompute_1(JJJJJ)V

    .line 182
    return-void
.end method

.method public detectAndCompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Z)V
    .locals 14
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "descriptors"    # Lorg/opencv/core/Mat;
    .param p5, "useProvidedKeypoints"    # Z

    .prologue
    .line 170
    move-object/from16 v13, p3

    .line 171
    .local v13, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lorg/opencv/features2d/Feature2D;->detectAndCompute_0(JJJJJZ)V

    .line 173
    return-void
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 30
    iget-wide v2, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/Feature2D;->empty_0(J)Z

    move-result v0

    .line 32
    .local v0, "retVal":Z
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/Feature2D;->delete(J)V

    .line 217
    return-void
.end method

.method public read(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Feature2D;->read_0(JLjava/lang/String;)V

    .line 196
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/opencv/features2d/Feature2D;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/Feature2D;->write_0(JLjava/lang/String;)V

    .line 210
    return-void
.end method
