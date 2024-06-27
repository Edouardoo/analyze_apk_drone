.class public Lorg/opencv/ml/SVM;
.super Lorg/opencv/ml/StatModel;
.source "SVM.java"


# static fields
.field public static final C:I = 0x0

.field public static final CHI2:I = 0x4

.field public static final COEF:I = 0x4

.field public static final CUSTOM:I = -0x1

.field public static final C_SVC:I = 0x64

.field public static final DEGREE:I = 0x5

.field public static final EPS_SVR:I = 0x67

.field public static final GAMMA:I = 0x1

.field public static final INTER:I = 0x5

.field public static final LINEAR:I = 0x0

.field public static final NU:I = 0x3

.field public static final NU_SVC:I = 0x65

.field public static final NU_SVR:I = 0x68

.field public static final ONE_CLASS:I = 0x66

.field public static final P:I = 0x2

.field public static final POLY:I = 0x1

.field public static final RBF:I = 0x2

.field public static final SIGMOID:I = 0x3


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/SVM;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lorg/opencv/ml/SVM;

    invoke-static {}, Lorg/opencv/ml/SVM;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/SVM;-><init>(J)V

    .line 105
    .local v0, "retVal":Lorg/opencv/ml/SVM;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getC_0(J)D
.end method

.method private static native getClassWeights_0(J)J
.end method

.method private static native getCoef0_0(J)D
.end method

.method private static native getDecisionFunction_0(JIJJ)D
.end method

.method public static getDefaultGridPtr(I)Lorg/opencv/ml/ParamGrid;
    .locals 4
    .param p0, "param_id"    # I

    .prologue
    .line 89
    new-instance v0, Lorg/opencv/ml/ParamGrid;

    invoke-static {p0}, Lorg/opencv/ml/SVM;->getDefaultGridPtr_0(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/ParamGrid;-><init>(J)V

    .line 91
    .local v0, "retVal":Lorg/opencv/ml/ParamGrid;
    return-object v0
.end method

.method private static native getDefaultGridPtr_0(I)J
.end method

.method private static native getDegree_0(J)D
.end method

.method private static native getGamma_0(J)D
.end method

.method private static native getKernelType_0(J)I
.end method

.method private static native getNu_0(J)D
.end method

.method private static native getP_0(J)D
.end method

.method private static native getSupportVectors_0(J)J
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getType_0(J)I
.end method

.method private static native getUncompressedSupportVectors_0(J)J
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/SVM;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lorg/opencv/ml/SVM;

    invoke-static {p0}, Lorg/opencv/ml/SVM;->load_0(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/SVM;-><init>(J)V

    .line 119
    .local v0, "retVal":Lorg/opencv/ml/SVM;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;)J
.end method

.method private static native setC_0(JD)V
.end method

.method private static native setClassWeights_0(JJ)V
.end method

.method private static native setCoef0_0(JD)V
.end method

.method private static native setDegree_0(JD)V
.end method

.method private static native setGamma_0(JD)V
.end method

.method private static native setKernel_0(JI)V
.end method

.method private static native setNu_0(JD)V
.end method

.method private static native setP_0(JD)V
.end method

.method private static native setTermCriteria_0(JIID)V
.end method

.method private static native setType_0(JI)V
.end method

.method private static native trainAuto_0(JJIJIJJJJJJZ)Z
.end method

.method private static native trainAuto_1(JJIJ)Z
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
    .line 428
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVM;->delete(J)V

    .line 429
    return-void
.end method

.method public getC()D
    .locals 4

    .prologue
    .line 168
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getC_0(J)D

    move-result-wide v0

    .line 170
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getClassWeights()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getClassWeights_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 49
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getCoef0()D
    .locals 4

    .prologue
    .line 182
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getCoef0_0(J)D

    move-result-wide v0

    .line 184
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getDecisionFunction(ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 10
    .param p1, "i"    # I
    .param p2, "alpha"    # Lorg/opencv/core/Mat;
    .param p3, "svidx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 196
    iget-wide v1, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v3, p1

    invoke-static/range {v1 .. v7}, Lorg/opencv/ml/SVM;->getDecisionFunction_0(JIJJ)D

    move-result-wide v8

    .line 198
    .local v8, "retVal":D
    return-wide v8
.end method

.method public getDegree()D
    .locals 4

    .prologue
    .line 210
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getDegree_0(J)D

    move-result-wide v0

    .line 212
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getGamma()D
    .locals 4

    .prologue
    .line 224
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getGamma_0(J)D

    move-result-wide v0

    .line 226
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getKernelType()I
    .locals 4

    .prologue
    .line 266
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getKernelType_0(J)I

    move-result v0

    .line 268
    .local v0, "retVal":I
    return v0
.end method

.method public getNu()D
    .locals 4

    .prologue
    .line 238
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getNu_0(J)D

    move-result-wide v0

    .line 240
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getP()D
    .locals 4

    .prologue
    .line 252
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getP_0(J)D

    move-result-wide v0

    .line 254
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getSupportVectors()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getSupportVectors_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 63
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    .line 133
    .local v0, "retVal":Lorg/opencv/core/TermCriteria;
    return-object v0
.end method

.method public getType()I
    .locals 4

    .prologue
    .line 280
    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getType_0(J)I

    move-result v0

    .line 282
    .local v0, "retVal":I
    return v0
.end method

.method public getUncompressedSupportVectors()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVM;->getUncompressedSupportVectors_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 77
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public setC(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 294
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVM;->setC_0(JD)V

    .line 296
    return-void
.end method

.method public setClassWeights(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "val"    # Lorg/opencv/core/Mat;

    .prologue
    .line 308
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/ml/SVM;->setClassWeights_0(JJ)V

    .line 310
    return-void
.end method

.method public setCoef0(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 322
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVM;->setCoef0_0(JD)V

    .line 324
    return-void
.end method

.method public setDegree(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVM;->setDegree_0(JD)V

    .line 338
    return-void
.end method

.method public setGamma(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 350
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVM;->setGamma_0(JD)V

    .line 352
    return-void
.end method

.method public setKernel(I)V
    .locals 2
    .param p1, "kernelType"    # I

    .prologue
    .line 364
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVM;->setKernel_0(JI)V

    .line 366
    return-void
.end method

.method public setNu(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 378
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVM;->setNu_0(JD)V

    .line 380
    return-void
.end method

.method public setP(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 392
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVM;->setP_0(JD)V

    .line 394
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "val"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 406
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/SVM;->setTermCriteria_0(JIID)V

    .line 408
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 420
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVM;->setType_0(JI)V

    .line 422
    return-void
.end method

.method public trainAuto(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)Z
    .locals 8
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "layout"    # I
    .param p3, "responses"    # Lorg/opencv/core/Mat;

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/opencv/ml/SVM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/ml/SVM;->trainAuto_1(JJIJ)Z

    move-result v7

    .line 156
    .local v7, "retVal":Z
    return v7
.end method

.method public trainAuto(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;ILorg/opencv/ml/ParamGrid;Lorg/opencv/ml/ParamGrid;Lorg/opencv/ml/ParamGrid;Lorg/opencv/ml/ParamGrid;Lorg/opencv/ml/ParamGrid;Lorg/opencv/ml/ParamGrid;Z)Z
    .locals 24
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "layout"    # I
    .param p3, "responses"    # Lorg/opencv/core/Mat;
    .param p4, "kFold"    # I
    .param p5, "Cgrid"    # Lorg/opencv/ml/ParamGrid;
    .param p6, "gammaGrid"    # Lorg/opencv/ml/ParamGrid;
    .param p7, "pGrid"    # Lorg/opencv/ml/ParamGrid;
    .param p8, "nuGrid"    # Lorg/opencv/ml/ParamGrid;
    .param p9, "coeffGrid"    # Lorg/opencv/ml/ParamGrid;
    .param p10, "degreeGrid"    # Lorg/opencv/ml/ParamGrid;
    .param p11, "balanced"    # Z

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/ml/SVM;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-virtual/range {p5 .. p5}, Lorg/opencv/ml/ParamGrid;->getNativeObjAddr()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lorg/opencv/ml/ParamGrid;->getNativeObjAddr()J

    move-result-wide v12

    invoke-virtual/range {p7 .. p7}, Lorg/opencv/ml/ParamGrid;->getNativeObjAddr()J

    move-result-wide v14

    invoke-virtual/range {p8 .. p8}, Lorg/opencv/ml/ParamGrid;->getNativeObjAddr()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Lorg/opencv/ml/ParamGrid;->getNativeObjAddr()J

    move-result-wide v18

    invoke-virtual/range {p10 .. p10}, Lorg/opencv/ml/ParamGrid;->getNativeObjAddr()J

    move-result-wide v20

    move/from16 v6, p2

    move/from16 v9, p4

    move/from16 v22, p11

    invoke-static/range {v2 .. v22}, Lorg/opencv/ml/SVM;->trainAuto_0(JJIJIJJJJJJZ)Z

    move-result v23

    .line 147
    .local v23, "retVal":Z
    return v23
.end method
