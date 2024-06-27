.class public Lorg/opencv/ml/TrainData;
.super Ljava/lang/Object;
.source "TrainData.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    return-void
.end method

.method public static create(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)Lorg/opencv/ml/TrainData;
    .locals 6
    .param p0, "samples"    # Lorg/opencv/core/Mat;
    .param p1, "layout"    # I
    .param p2, "responses"    # Lorg/opencv/core/Mat;

    .prologue
    .line 368
    new-instance v0, Lorg/opencv/ml/TrainData;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, v4, v5}, Lorg/opencv/ml/TrainData;->create_1(JIJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/TrainData;-><init>(J)V

    .line 370
    .local v0, "retVal":Lorg/opencv/ml/TrainData;
    return-object v0
.end method

.method public static create(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/ml/TrainData;
    .locals 16
    .param p0, "samples"    # Lorg/opencv/core/Mat;
    .param p1, "layout"    # I
    .param p2, "responses"    # Lorg/opencv/core/Mat;
    .param p3, "varIdx"    # Lorg/opencv/core/Mat;
    .param p4, "sampleIdx"    # Lorg/opencv/core/Mat;
    .param p5, "sampleWeights"    # Lorg/opencv/core/Mat;
    .param p6, "varType"    # Lorg/opencv/core/Mat;

    .prologue
    .line 359
    new-instance v2, Lorg/opencv/ml/TrainData;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v5, p1

    invoke-static/range {v3 .. v15}, Lorg/opencv/ml/TrainData;->create_0(JIJJJJJ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/ml/TrainData;-><init>(J)V

    .line 361
    .local v2, "retVal":Lorg/opencv/ml/TrainData;
    return-object v2
.end method

.method private static native create_0(JIJJJJJ)J
.end method

.method private static native create_1(JIJ)J
.end method

.method private static native delete(J)V
.end method

.method private static native getCatCount_0(JI)I
.end method

.method private static native getCatMap_0(J)J
.end method

.method private static native getCatOfs_0(J)J
.end method

.method private static native getClassLabels_0(J)J
.end method

.method private static native getDefaultSubstValues_0(J)J
.end method

.method private static native getLayout_0(J)I
.end method

.method private static native getMissing_0(J)J
.end method

.method private static native getNAllVars_0(J)I
.end method

.method private static native getNSamples_0(J)I
.end method

.method private static native getNTestSamples_0(J)I
.end method

.method private static native getNTrainSamples_0(J)I
.end method

.method private static native getNVars_0(J)I
.end method

.method private static native getNames_0(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getNormCatResponses_0(J)J
.end method

.method private static native getResponseType_0(J)I
.end method

.method private static native getResponses_0(J)J
.end method

.method private static native getSampleWeights_0(J)J
.end method

.method private static native getSample_0(JJIF)V
.end method

.method private static native getSamples_0(J)J
.end method

.method public static getSubVector(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "vec"    # Lorg/opencv/core/Mat;
    .param p1, "idx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 154
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/ml/TrainData;->getSubVector_0(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 156
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method private static native getSubVector_0(JJ)J
.end method

.method private static native getTestNormCatResponses_0(J)J
.end method

.method private static native getTestResponses_0(J)J
.end method

.method private static native getTestSampleIdx_0(J)J
.end method

.method private static native getTestSampleWeights_0(J)J
.end method

.method private static native getTestSamples_0(J)J
.end method

.method private static native getTrainNormCatResponses_0(J)J
.end method

.method private static native getTrainResponses_0(J)J
.end method

.method private static native getTrainSampleIdx_0(J)J
.end method

.method private static native getTrainSampleWeights_0(J)J
.end method

.method private static native getTrainSamples_0(JIZZ)J
.end method

.method private static native getTrainSamples_1(J)J
.end method

.method private static native getValues_0(JIJF)V
.end method

.method private static native getVarIdx_0(J)J
.end method

.method private static native getVarSymbolFlags_0(J)J
.end method

.method private static native getVarType_0(J)J
.end method

.method private static native setTrainTestSplitRatio_0(JDZ)V
.end method

.method private static native setTrainTestSplitRatio_1(JD)V
.end method

.method private static native setTrainTestSplit_0(JIZ)V
.end method

.method private static native setTrainTestSplit_1(JI)V
.end method

.method private static native shuffleTrainTest_0(J)V
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
    .line 590
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/TrainData;->delete(J)V

    .line 591
    return-void
.end method

.method public getCatCount(I)I
    .locals 4
    .param p1, "vi"    # I

    .prologue
    .line 382
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/ml/TrainData;->getCatCount_0(JI)I

    move-result v0

    .line 384
    .local v0, "retVal":I
    return v0
.end method

.method public getCatMap()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getCatMap_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 30
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getCatOfs()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getCatOfs_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 44
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getClassLabels()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getClassLabels_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 58
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getDefaultSubstValues()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getDefaultSubstValues_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 72
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getLayout()I
    .locals 4

    .prologue
    .line 396
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getLayout_0(J)I

    move-result v0

    .line 398
    .local v0, "retVal":I
    return v0
.end method

.method public getMissing()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getMissing_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 86
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getNAllVars()I
    .locals 4

    .prologue
    .line 410
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getNAllVars_0(J)I

    move-result v0

    .line 412
    .local v0, "retVal":I
    return v0
.end method

.method public getNSamples()I
    .locals 4

    .prologue
    .line 424
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getNSamples_0(J)I

    move-result v0

    .line 426
    .local v0, "retVal":I
    return v0
.end method

.method public getNTestSamples()I
    .locals 4

    .prologue
    .line 438
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getNTestSamples_0(J)I

    move-result v0

    .line 440
    .local v0, "retVal":I
    return v0
.end method

.method public getNTrainSamples()I
    .locals 4

    .prologue
    .line 452
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getNTrainSamples_0(J)I

    move-result v0

    .line 454
    .local v0, "retVal":I
    return v0
.end method

.method public getNVars()I
    .locals 4

    .prologue
    .line 466
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getNVars_0(J)I

    move-result v0

    .line 468
    .local v0, "retVal":I
    return v0
.end method

.method public getNames(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/TrainData;->getNames_0(JLjava/util/List;)V

    .line 496
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    return-wide v0
.end method

.method public getNormCatResponses()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getNormCatResponses_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 100
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getResponseType()I
    .locals 4

    .prologue
    .line 480
    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getResponseType_0(J)I

    move-result v0

    .line 482
    .local v0, "retVal":I
    return v0
.end method

.method public getResponses()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getResponses_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 114
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getSample(Lorg/opencv/core/Mat;IF)V
    .locals 6
    .param p1, "varIdx"    # Lorg/opencv/core/Mat;
    .param p2, "sidx"    # I
    .param p3, "buf"    # F

    .prologue
    .line 508
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/TrainData;->getSample_0(JJIF)V

    .line 510
    return-void
.end method

.method public getSampleWeights()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getSampleWeights_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 128
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getSamples()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getSamples_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 142
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTestNormCatResponses()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTestNormCatResponses_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 170
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTestResponses()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTestResponses_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 184
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTestSampleIdx()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTestSampleIdx_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 198
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTestSampleWeights()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 210
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTestSampleWeights_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 212
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTestSamples()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTestSamples_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 226
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTrainNormCatResponses()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 238
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTrainNormCatResponses_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 240
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTrainResponses()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 252
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTrainResponses_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 254
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTrainSampleIdx()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 266
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTrainSampleIdx_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 268
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTrainSampleWeights()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 280
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTrainSampleWeights_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 282
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTrainSamples()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getTrainSamples_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 305
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTrainSamples(IZZ)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "layout"    # I
    .param p2, "compressSamples"    # Z
    .param p3, "compressVars"    # Z

    .prologue
    .line 294
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3, p1, p2, p3}, Lorg/opencv/ml/TrainData;->getTrainSamples_0(JIZZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 296
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getValues(ILorg/opencv/core/Mat;F)V
    .locals 6
    .param p1, "vi"    # I
    .param p2, "sidx"    # Lorg/opencv/core/Mat;
    .param p3, "values"    # F

    .prologue
    .line 522
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    iget-wide v3, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/TrainData;->getValues_0(JIJF)V

    .line 524
    return-void
.end method

.method public getVarIdx()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 317
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getVarIdx_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 319
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getVarSymbolFlags()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 331
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getVarSymbolFlags_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 333
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getVarType()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 345
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/TrainData;->getVarType_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 347
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public setTrainTestSplit(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 545
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/TrainData;->setTrainTestSplit_1(JI)V

    .line 547
    return-void
.end method

.method public setTrainTestSplit(IZ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "shuffle"    # Z

    .prologue
    .line 536
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/TrainData;->setTrainTestSplit_0(JIZ)V

    .line 538
    return-void
.end method

.method public setTrainTestSplitRatio(D)V
    .locals 3
    .param p1, "ratio"    # D

    .prologue
    .line 568
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/TrainData;->setTrainTestSplitRatio_1(JD)V

    .line 570
    return-void
.end method

.method public setTrainTestSplitRatio(DZ)V
    .locals 3
    .param p1, "ratio"    # D
    .param p3, "shuffle"    # Z

    .prologue
    .line 559
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/ml/TrainData;->setTrainTestSplitRatio_0(JDZ)V

    .line 561
    return-void
.end method

.method public shuffleTrainTest()V
    .locals 2

    .prologue
    .line 582
    iget-wide v0, p0, Lorg/opencv/ml/TrainData;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/TrainData;->shuffleTrainTest_0(J)V

    .line 584
    return-void
.end method
