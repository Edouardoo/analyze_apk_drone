.class public Lorg/opencv/photo/AlignMTB;
.super Lorg/opencv/photo/AlignExposures;
.source "AlignMTB.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/opencv/photo/AlignExposures;-><init>(J)V

    return-void
.end method

.method private static native calculateShift_0(JJJ)[D
.end method

.method private static native computeBitmaps_0(JJJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native getCut_0(J)Z
.end method

.method private static native getExcludeRange_0(J)I
.end method

.method private static native getMaxBits_0(J)I
.end method

.method private static native process_0(JJJJJ)V
.end method

.method private static native process_1(JJJ)V
.end method

.method private static native setCut_0(JZ)V
.end method

.method private static native setExcludeRange_0(JI)V
.end method

.method private static native setMaxBits_0(JI)V
.end method

.method private static native shiftMat_0(JJJDD)V
.end method


# virtual methods
.method public calculateShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Point;
    .locals 7
    .param p1, "img0"    # Lorg/opencv/core/Mat;
    .param p2, "img1"    # Lorg/opencv/core/Mat;

    .prologue
    .line 27
    new-instance v6, Lorg/opencv/core/Point;

    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/AlignMTB;->calculateShift_0(JJJ)[D

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/opencv/core/Point;-><init>([D)V

    .line 29
    .local v6, "retVal":Lorg/opencv/core/Point;
    return-object v6
.end method

.method public computeBitmaps(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "tb"    # Lorg/opencv/core/Mat;
    .param p3, "eb"    # Lorg/opencv/core/Mat;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/AlignMTB;->computeBitmaps_0(JJJJ)V

    .line 85
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
    .line 177
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/AlignMTB;->delete(J)V

    .line 178
    return-void
.end method

.method public getCut()Z
    .locals 4

    .prologue
    .line 41
    iget-wide v2, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/AlignMTB;->getCut_0(J)Z

    move-result v0

    .line 43
    .local v0, "retVal":Z
    return v0
.end method

.method public getExcludeRange()I
    .locals 4

    .prologue
    .line 55
    iget-wide v2, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/AlignMTB;->getExcludeRange_0(J)I

    move-result v0

    .line 57
    .local v0, "retVal":I
    return v0
.end method

.method public getMaxBits()I
    .locals 4

    .prologue
    .line 69
    iget-wide v2, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/AlignMTB;->getMaxBits_0(J)I

    move-result v0

    .line 71
    .local v0, "retVal":I
    return v0
.end method

.method public process(Ljava/util/List;Ljava/util/List;)V
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
    .line 111
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v7

    .line 112
    .local v7, "src_mat":Lorg/opencv/core/Mat;
    invoke-static {p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 113
    .local v6, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v2, v7, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/AlignMTB;->process_1(JJJ)V

    .line 115
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
    .line 96
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v13

    .line 97
    .local v13, "src_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v12

    .line 98
    .local v12, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v11}, Lorg/opencv/photo/AlignMTB;->process_0(JJJJJ)V

    .line 100
    return-void
.end method

.method public setCut(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/AlignMTB;->setCut_0(JZ)V

    .line 129
    return-void
.end method

.method public setExcludeRange(I)V
    .locals 2
    .param p1, "exclude_range"    # I

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/AlignMTB;->setExcludeRange_0(JI)V

    .line 143
    return-void
.end method

.method public setMaxBits(I)V
    .locals 2
    .param p1, "max_bits"    # I

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/AlignMTB;->setMaxBits_0(JI)V

    .line 157
    return-void
.end method

.method public shiftMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Point;)V
    .locals 10
    .param p1, "src"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "shift"    # Lorg/opencv/core/Point;

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Point;->x:D

    iget-wide v8, p3, Lorg/opencv/core/Point;->y:D

    invoke-static/range {v0 .. v9}, Lorg/opencv/photo/AlignMTB;->shiftMat_0(JJJDD)V

    .line 171
    return-void
.end method
