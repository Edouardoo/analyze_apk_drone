.class public Lorg/opencv/video/SparseOpticalFlow;
.super Lorg/opencv/core/Algorithm;
.source "SparseOpticalFlow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native calc_0(JJJJJJJ)V
.end method

.method private static native calc_1(JJJJJJ)V
.end method

.method private static native delete(J)V
.end method


# virtual methods
.method public calc(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14
    .param p1, "prevImg"    # Lorg/opencv/core/Mat;
    .param p2, "nextImg"    # Lorg/opencv/core/Mat;
    .param p3, "prevPts"    # Lorg/opencv/core/Mat;
    .param p4, "nextPts"    # Lorg/opencv/core/Mat;
    .param p5, "status"    # Lorg/opencv/core/Mat;

    .prologue
    .line 34
    iget-wide v2, p0, Lorg/opencv/video/SparseOpticalFlow;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/video/SparseOpticalFlow;->calc_1(JJJJJJ)V

    .line 36
    return-void
.end method

.method public calc(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 16
    .param p1, "prevImg"    # Lorg/opencv/core/Mat;
    .param p2, "nextImg"    # Lorg/opencv/core/Mat;
    .param p3, "prevPts"    # Lorg/opencv/core/Mat;
    .param p4, "nextPts"    # Lorg/opencv/core/Mat;
    .param p5, "status"    # Lorg/opencv/core/Mat;
    .param p6, "err"    # Lorg/opencv/core/Mat;

    .prologue
    .line 25
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/video/SparseOpticalFlow;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    invoke-static/range {v2 .. v15}, Lorg/opencv/video/SparseOpticalFlow;->calc_0(JJJJJJJ)V

    .line 27
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
    .line 42
    iget-wide v0, p0, Lorg/opencv/video/SparseOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/SparseOpticalFlow;->delete(J)V

    .line 43
    return-void
.end method
