.class public Lorg/opencv/features2d/MSER;
.super Lorg/opencv/features2d/Feature2D;
.source "MSER.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/MSER;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lorg/opencv/features2d/MSER;

    invoke-static {}, Lorg/opencv/features2d/MSER;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/MSER;-><init>(J)V

    .line 39
    .local v0, "retVal":Lorg/opencv/features2d/MSER;
    return-object v0
.end method

.method public static create(IIIDDIDDI)Lorg/opencv/features2d/MSER;
    .locals 4
    .param p0, "_delta"    # I
    .param p1, "_min_area"    # I
    .param p2, "_max_area"    # I
    .param p3, "_max_variation"    # D
    .param p5, "_min_diversity"    # D
    .param p7, "_max_evolution"    # I
    .param p8, "_area_threshold"    # D
    .param p10, "_min_margin"    # D
    .param p12, "_edge_blur_size"    # I

    .prologue
    .line 28
    new-instance v0, Lorg/opencv/features2d/MSER;

    invoke-static/range {p0 .. p12}, Lorg/opencv/features2d/MSER;->create_0(IIIDDIDDI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/MSER;-><init>(J)V

    .line 30
    .local v0, "retVal":Lorg/opencv/features2d/MSER;
    return-object v0
.end method

.method private static native create_0(IIIDDIDDI)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native detectRegions_0(JJJJ)V
.end method

.method private static native getDelta_0(J)I
.end method

.method private static native getMaxArea_0(J)I
.end method

.method private static native getMinArea_0(J)I
.end method

.method private static native getPass2Only_0(J)Z
.end method

.method private static native setDelta_0(JI)V
.end method

.method private static native setMaxArea_0(JI)V
.end method

.method private static native setMinArea_0(JI)V
.end method

.method private static native setPass2Only_0(JZ)V
.end method


# virtual methods
.method public detectRegions(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/MatOfRect;)V
    .locals 10
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p3, "bboxes"    # Lorg/opencv/core/MatOfRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint;",
            ">;",
            "Lorg/opencv/core/MatOfRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "msers":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    .line 107
    .local v9, "msers_mat":Lorg/opencv/core/Mat;
    move-object v8, p3

    .line 108
    .local v8, "bboxes_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/MSER;->detectRegions_0(JJJJ)V

    .line 109
    invoke-static {v9, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 110
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 111
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
    .line 173
    iget-wide v0, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/MSER;->delete(J)V

    .line 174
    return-void
.end method

.method public getDelta()I
    .locals 4

    .prologue
    .line 65
    iget-wide v2, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/MSER;->getDelta_0(J)I

    move-result v0

    .line 67
    .local v0, "retVal":I
    return v0
.end method

.method public getMaxArea()I
    .locals 4

    .prologue
    .line 79
    iget-wide v2, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/MSER;->getMaxArea_0(J)I

    move-result v0

    .line 81
    .local v0, "retVal":I
    return v0
.end method

.method public getMinArea()I
    .locals 4

    .prologue
    .line 93
    iget-wide v2, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/MSER;->getMinArea_0(J)I

    move-result v0

    .line 95
    .local v0, "retVal":I
    return v0
.end method

.method public getPass2Only()Z
    .locals 4

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/MSER;->getPass2Only_0(J)Z

    move-result v0

    .line 53
    .local v0, "retVal":Z
    return v0
.end method

.method public setDelta(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/MSER;->setDelta_0(JI)V

    .line 125
    return-void
.end method

.method public setMaxArea(I)V
    .locals 2
    .param p1, "maxArea"    # I

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/MSER;->setMaxArea_0(JI)V

    .line 139
    return-void
.end method

.method public setMinArea(I)V
    .locals 2
    .param p1, "minArea"    # I

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/MSER;->setMinArea_0(JI)V

    .line 153
    return-void
.end method

.method public setPass2Only(Z)V
    .locals 2
    .param p1, "f"    # Z

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/opencv/features2d/MSER;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/MSER;->setPass2Only_0(JZ)V

    .line 167
    return-void
.end method
