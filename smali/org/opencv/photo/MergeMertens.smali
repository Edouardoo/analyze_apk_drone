.class public Lorg/opencv/photo/MergeMertens;
.super Lorg/opencv/photo/MergeExposures;
.source "MergeMertens.java"


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

.method private static native getContrastWeight_0(J)F
.end method

.method private static native getExposureWeight_0(J)F
.end method

.method private static native getSaturationWeight_0(J)F
.end method

.method private static native process_0(JJJJJ)V
.end method

.method private static native process_1(JJJ)V
.end method

.method private static native setContrastWeight_0(JF)V
.end method

.method private static native setExposureWeight_0(JF)V
.end method

.method private static native setSaturationWeight_0(JF)V
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
    .line 132
    iget-wide v0, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/MergeMertens;->delete(J)V

    .line 133
    return-void
.end method

.method public getContrastWeight()F
    .locals 4

    .prologue
    .line 26
    iget-wide v2, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/MergeMertens;->getContrastWeight_0(J)F

    move-result v0

    .line 28
    .local v0, "retVal":F
    return v0
.end method

.method public getExposureWeight()F
    .locals 4

    .prologue
    .line 40
    iget-wide v2, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/MergeMertens;->getExposureWeight_0(J)F

    move-result v0

    .line 42
    .local v0, "retVal":F
    return v0
.end method

.method public getSaturationWeight()F
    .locals 4

    .prologue
    .line 54
    iget-wide v2, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/photo/MergeMertens;->getSaturationWeight_0(J)F

    move-result v0

    .line 56
    .local v0, "retVal":F
    return v0
.end method

.method public process(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 7
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 82
    .local v6, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/MergeMertens;->process_1(JJJ)V

    .line 84
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
    .line 67
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 68
    .local v10, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    iget-wide v2, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/photo/MergeMertens;->process_0(JJJJJ)V

    .line 70
    return-void
.end method

.method public setContrastWeight(F)V
    .locals 2
    .param p1, "contrast_weiht"    # F

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/MergeMertens;->setContrastWeight_0(JF)V

    .line 98
    return-void
.end method

.method public setExposureWeight(F)V
    .locals 2
    .param p1, "exposure_weight"    # F

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/MergeMertens;->setExposureWeight_0(JF)V

    .line 112
    return-void
.end method

.method public setSaturationWeight(F)V
    .locals 2
    .param p1, "saturation_weight"    # F

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/opencv/photo/MergeMertens;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/MergeMertens;->setSaturationWeight_0(JF)V

    .line 126
    return-void
.end method
