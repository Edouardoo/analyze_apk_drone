.class public Lorg/opencv/video/SparsePyrLKOpticalFlow;
.super Lorg/opencv/video/SparseOpticalFlow;
.source "SparsePyrLKOpticalFlow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/video/SparseOpticalFlow;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/video/SparsePyrLKOpticalFlow;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lorg/opencv/video/SparsePyrLKOpticalFlow;

    invoke-static {}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;-><init>(J)V

    .line 36
    .local v0, "retVal":Lorg/opencv/video/SparsePyrLKOpticalFlow;
    return-object v0
.end method

.method public static create(Lorg/opencv/core/Size;ILorg/opencv/core/TermCriteria;ID)Lorg/opencv/video/SparsePyrLKOpticalFlow;
    .locals 16
    .param p0, "winSize"    # Lorg/opencv/core/Size;
    .param p1, "maxLevel"    # I
    .param p2, "crit"    # Lorg/opencv/core/TermCriteria;
    .param p3, "flags"    # I
    .param p4, "minEigThreshold"    # D

    .prologue
    .line 25
    new-instance v14, Lorg/opencv/video/SparsePyrLKOpticalFlow;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p2

    iget v7, v0, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v0, p2

    iget v8, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-object/from16 v0, p2

    iget-wide v9, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move/from16 v6, p1

    move/from16 v11, p3

    move-wide/from16 v12, p4

    invoke-static/range {v2 .. v13}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->create_0(DDIIIDID)J

    move-result-wide v2

    invoke-direct {v14, v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;-><init>(J)V

    .line 27
    .local v14, "retVal":Lorg/opencv/video/SparsePyrLKOpticalFlow;
    return-object v14
.end method

.method private static native create_0(DDIIIDID)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getFlags_0(J)I
.end method

.method private static native getMaxLevel_0(J)I
.end method

.method private static native getMinEigThreshold_0(J)D
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getWinSize_0(J)[D
.end method

.method private static native setFlags_0(JI)V
.end method

.method private static native setMaxLevel_0(JI)V
.end method

.method private static native setMinEigThreshold_0(JD)V
.end method

.method private static native setTermCriteria_0(JIID)V
.end method

.method private static native setWinSize_0(JDD)V
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
    .line 182
    iget-wide v0, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->delete(J)V

    .line 183
    return-void
.end method

.method public getFlags()I
    .locals 4

    .prologue
    .line 90
    iget-wide v2, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->getFlags_0(J)I

    move-result v0

    .line 92
    .local v0, "retVal":I
    return v0
.end method

.method public getMaxLevel()I
    .locals 4

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->getMaxLevel_0(J)I

    move-result v0

    .line 106
    .local v0, "retVal":I
    return v0
.end method

.method public getMinEigThreshold()D
    .locals 4

    .prologue
    .line 76
    iget-wide v2, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->getMinEigThreshold_0(J)D

    move-result-wide v0

    .line 78
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v2, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    .line 64
    .local v0, "retVal":Lorg/opencv/core/TermCriteria;
    return-object v0
.end method

.method public getWinSize()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->getWinSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 50
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->setFlags_0(JI)V

    .line 120
    return-void
.end method

.method public setMaxLevel(I)V
    .locals 2
    .param p1, "maxLevel"    # I

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->setMaxLevel_0(JI)V

    .line 134
    return-void
.end method

.method public setMinEigThreshold(D)V
    .locals 3
    .param p1, "minEigThreshold"    # D

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->setMinEigThreshold_0(JD)V

    .line 148
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "crit"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->setTermCriteria_0(JIID)V

    .line 162
    return-void
.end method

.method public setWinSize(Lorg/opencv/core/Size;)V
    .locals 6
    .param p1, "winSize"    # Lorg/opencv/core/Size;

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/opencv/video/SparsePyrLKOpticalFlow;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/video/SparsePyrLKOpticalFlow;->setWinSize_0(JDD)V

    .line 176
    return-void
.end method
