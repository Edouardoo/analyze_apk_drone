.class public Lorg/opencv/imgproc/LineSegmentDetector;
.super Lorg/opencv/core/Algorithm;
.source "LineSegmentDetector.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native compareSegments_0(JDDJJJ)I
.end method

.method private static native compareSegments_1(JDDJJ)I
.end method

.method private static native delete(J)V
.end method

.method private static native detect_0(JJJJJJ)V
.end method

.method private static native detect_1(JJJ)V
.end method

.method private static native drawSegments_0(JJJ)V
.end method


# virtual methods
.method public compareSegments(Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 11
    .param p1, "size"    # Lorg/opencv/core/Size;
    .param p2, "lines1"    # Lorg/opencv/core/Mat;
    .param p3, "lines2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/imgproc/LineSegmentDetector;->compareSegments_1(JDDJJ)I

    move-result v10

    .line 37
    .local v10, "retVal":I
    return v10
.end method

.method public compareSegments(Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 15
    .param p1, "size"    # Lorg/opencv/core/Size;
    .param p2, "lines1"    # Lorg/opencv/core/Mat;
    .param p3, "lines2"    # Lorg/opencv/core/Mat;
    .param p4, "_image"    # Lorg/opencv/core/Mat;

    .prologue
    .line 26
    iget-wide v2, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/imgproc/LineSegmentDetector;->compareSegments_0(JDDJJJ)I

    move-result v14

    .line 28
    .local v14, "retVal":I
    return v14
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "_image"    # Lorg/opencv/core/Mat;
    .param p2, "_lines"    # Lorg/opencv/core/Mat;

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/LineSegmentDetector;->detect_1(JJJ)V

    .line 60
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14
    .param p1, "_image"    # Lorg/opencv/core/Mat;
    .param p2, "_lines"    # Lorg/opencv/core/Mat;
    .param p3, "width"    # Lorg/opencv/core/Mat;
    .param p4, "prec"    # Lorg/opencv/core/Mat;
    .param p5, "nfa"    # Lorg/opencv/core/Mat;

    .prologue
    .line 49
    iget-wide v2, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/imgproc/LineSegmentDetector;->detect_0(JJJJJJ)V

    .line 51
    return-void
.end method

.method public drawSegments(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "_image"    # Lorg/opencv/core/Mat;
    .param p2, "lines"    # Lorg/opencv/core/Mat;

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/LineSegmentDetector;->drawSegments_0(JJJ)V

    .line 74
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
    .line 80
    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgproc/LineSegmentDetector;->delete(J)V

    .line 81
    return-void
.end method
