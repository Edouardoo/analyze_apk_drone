.class public Lorg/opencv/ml/KNearest;
.super Lorg/opencv/ml/StatModel;
.source "KNearest.java"


# static fields
.field public static final BRUTE_FORCE:I = 0x1

.field public static final KDTREE:I = 0x2


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/KNearest;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lorg/opencv/ml/KNearest;

    invoke-static {}, Lorg/opencv/ml/KNearest;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/KNearest;-><init>(J)V

    .line 31
    .local v0, "retVal":Lorg/opencv/ml/KNearest;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native findNearest_0(JJIJJJ)F
.end method

.method private static native findNearest_1(JJIJ)F
.end method

.method private static native getAlgorithmType_0(J)I
.end method

.method private static native getDefaultK_0(J)I
.end method

.method private static native getEmax_0(J)I
.end method

.method private static native getIsClassifier_0(J)Z
.end method

.method private static native setAlgorithmType_0(JI)V
.end method

.method private static native setDefaultK_0(JI)V
.end method

.method private static native setEmax_0(JI)V
.end method

.method private static native setIsClassifier_0(JZ)V
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
    .line 172
    iget-wide v0, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/KNearest;->delete(J)V

    .line 173
    return-void
.end method

.method public findNearest(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)F
    .locals 8
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "k"    # I
    .param p3, "results"    # Lorg/opencv/core/Mat;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/ml/KNearest;->findNearest_1(JJIJ)F

    move-result v7

    .line 68
    .local v7, "retVal":F
    return v7
.end method

.method public findNearest(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)F
    .locals 14
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "k"    # I
    .param p3, "results"    # Lorg/opencv/core/Mat;
    .param p4, "neighborResponses"    # Lorg/opencv/core/Mat;
    .param p5, "dist"    # Lorg/opencv/core/Mat;

    .prologue
    .line 57
    iget-wide v3, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    iget-wide v5, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p2

    invoke-static/range {v3 .. v13}, Lorg/opencv/ml/KNearest;->findNearest_0(JJIJJJ)F

    move-result v2

    .line 59
    .local v2, "retVal":F
    return v2
.end method

.method public getAlgorithmType()I
    .locals 4

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/KNearest;->getAlgorithmType_0(J)I

    move-result v0

    .line 82
    .local v0, "retVal":I
    return v0
.end method

.method public getDefaultK()I
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/KNearest;->getDefaultK_0(J)I

    move-result v0

    .line 96
    .local v0, "retVal":I
    return v0
.end method

.method public getEmax()I
    .locals 4

    .prologue
    .line 108
    iget-wide v2, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/KNearest;->getEmax_0(J)I

    move-result v0

    .line 110
    .local v0, "retVal":I
    return v0
.end method

.method public getIsClassifier()Z
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/KNearest;->getIsClassifier_0(J)Z

    move-result v0

    .line 45
    .local v0, "retVal":Z
    return v0
.end method

.method public setAlgorithmType(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/KNearest;->setAlgorithmType_0(JI)V

    .line 124
    return-void
.end method

.method public setDefaultK(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/KNearest;->setDefaultK_0(JI)V

    .line 138
    return-void
.end method

.method public setEmax(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/KNearest;->setEmax_0(JI)V

    .line 152
    return-void
.end method

.method public setIsClassifier(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/opencv/ml/KNearest;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/KNearest;->setIsClassifier_0(JZ)V

    .line 166
    return-void
.end method
