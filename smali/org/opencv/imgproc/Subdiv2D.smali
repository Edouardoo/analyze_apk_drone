.class public Lorg/opencv/imgproc/Subdiv2D;
.super Ljava/lang/Object;
.source "Subdiv2D.java"


# static fields
.field public static final NEXT_AROUND_DST:I = 0x22

.field public static final NEXT_AROUND_LEFT:I = 0x13

.field public static final NEXT_AROUND_ORG:I = 0x0

.field public static final NEXT_AROUND_RIGHT:I = 0x31

.field public static final PREV_AROUND_DST:I = 0x33

.field public static final PREV_AROUND_LEFT:I = 0x20

.field public static final PREV_AROUND_ORG:I = 0x11

.field public static final PREV_AROUND_RIGHT:I = 0x2

.field public static final PTLOC_ERROR:I = -0x2

.field public static final PTLOC_INSIDE:I = 0x0

.field public static final PTLOC_ON_EDGE:I = 0x2

.field public static final PTLOC_OUTSIDE_RECT:I = -0x1

.field public static final PTLOC_VERTEX:I = 0x1


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lorg/opencv/imgproc/Subdiv2D;->Subdiv2D_1()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    .line 66
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Rect;)V
    .locals 4
    .param p1, "rect"    # Lorg/opencv/core/Rect;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget v0, p1, Lorg/opencv/core/Rect;->x:I

    iget v1, p1, Lorg/opencv/core/Rect;->y:I

    iget v2, p1, Lorg/opencv/core/Rect;->width:I

    iget v3, p1, Lorg/opencv/core/Rect;->height:I

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/imgproc/Subdiv2D;->Subdiv2D_0(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    .line 52
    return-void
.end method

.method private static native Subdiv2D_0(IIII)J
.end method

.method private static native Subdiv2D_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native edgeDst_0(JI[D)I
.end method

.method private static native edgeDst_1(JI)I
.end method

.method private static native edgeOrg_0(JI[D)I
.end method

.method private static native edgeOrg_1(JI)I
.end method

.method private static native findNearest_0(JDD[D)I
.end method

.method private static native findNearest_1(JDD)I
.end method

.method private static native getEdgeList_0(JJ)V
.end method

.method private static native getEdge_0(JII)I
.end method

.method private static native getLeadingEdgeList_0(JJ)V
.end method

.method private static native getTriangleList_0(JJ)V
.end method

.method private static native getVertex_0(JI[D)[D
.end method

.method private static native getVertex_1(JI)[D
.end method

.method private static native getVoronoiFacetList_0(JJJJ)V
.end method

.method private static native initDelaunay_0(JIIII)V
.end method

.method private static native insert_0(JDD)I
.end method

.method private static native insert_1(JJ)V
.end method

.method private static native locate_0(JDD[D[D)I
.end method

.method private static native nextEdge_0(JI)I
.end method

.method private static native rotateEdge_0(JII)I
.end method

.method private static native symEdge_0(JI)I
.end method


# virtual methods
.method public edgeDst(I)I
    .locals 4
    .param p1, "edge"    # I

    .prologue
    .line 110
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/imgproc/Subdiv2D;->edgeDst_1(JI)I

    move-result v0

    .line 112
    .local v0, "retVal":I
    return v0
.end method

.method public edgeDst(ILorg/opencv/core/Point;)I
    .locals 4
    .param p1, "edge"    # I
    .param p2, "dstpt"    # Lorg/opencv/core/Point;

    .prologue
    .line 100
    const/4 v2, 0x2

    new-array v0, v2, [D

    .line 101
    .local v0, "dstpt_out":[D
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1, v0}, Lorg/opencv/imgproc/Subdiv2D;->edgeDst_0(JI[D)I

    move-result v1

    .line 102
    .local v1, "retVal":I
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p2, Lorg/opencv/core/Point;->x:D

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p2, Lorg/opencv/core/Point;->y:D

    .line 103
    :cond_0
    return v1
.end method

.method public edgeOrg(I)I
    .locals 4
    .param p1, "edge"    # I

    .prologue
    .line 133
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/imgproc/Subdiv2D;->edgeOrg_1(JI)I

    move-result v0

    .line 135
    .local v0, "retVal":I
    return v0
.end method

.method public edgeOrg(ILorg/opencv/core/Point;)I
    .locals 4
    .param p1, "edge"    # I
    .param p2, "orgpt"    # Lorg/opencv/core/Point;

    .prologue
    .line 123
    const/4 v2, 0x2

    new-array v0, v2, [D

    .line 124
    .local v0, "orgpt_out":[D
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1, v0}, Lorg/opencv/imgproc/Subdiv2D;->edgeOrg_0(JI[D)I

    move-result v1

    .line 125
    .local v1, "retVal":I
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p2, Lorg/opencv/core/Point;->x:D

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p2, Lorg/opencv/core/Point;->y:D

    .line 126
    :cond_0
    return v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 337
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgproc/Subdiv2D;->delete(J)V

    .line 338
    return-void
.end method

.method public findNearest(Lorg/opencv/core/Point;)I
    .locals 7
    .param p1, "pt"    # Lorg/opencv/core/Point;

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/Subdiv2D;->findNearest_1(JDD)I

    move-result v6

    .line 158
    .local v6, "retVal":I
    return v6
.end method

.method public findNearest(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)I
    .locals 8
    .param p1, "pt"    # Lorg/opencv/core/Point;
    .param p2, "nearestPt"    # Lorg/opencv/core/Point;

    .prologue
    .line 146
    const/4 v0, 0x2

    new-array v6, v0, [D

    .line 147
    .local v6, "nearestPt_out":[D
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    invoke-static/range {v0 .. v6}, Lorg/opencv/imgproc/Subdiv2D;->findNearest_0(JDD[D)I

    move-result v7

    .line 148
    .local v7, "retVal":I
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    aget-wide v0, v6, v0

    iput-wide v0, p2, Lorg/opencv/core/Point;->x:D

    const/4 v0, 0x1

    aget-wide v0, v6, v0

    iput-wide v0, p2, Lorg/opencv/core/Point;->y:D

    .line 149
    :cond_0
    return v7
.end method

.method public getEdge(II)I
    .locals 4
    .param p1, "edge"    # I
    .param p2, "nextEdgeType"    # I

    .prologue
    .line 170
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/imgproc/Subdiv2D;->getEdge_0(JII)I

    move-result v0

    .line 172
    .local v0, "retVal":I
    return v0
.end method

.method public getEdgeList(Lorg/opencv/core/MatOfFloat4;)V
    .locals 6
    .param p1, "edgeList"    # Lorg/opencv/core/MatOfFloat4;

    .prologue
    .line 255
    move-object v0, p1

    .line 256
    .local v0, "edgeList_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/imgproc/Subdiv2D;->getEdgeList_0(JJ)V

    .line 258
    return-void
.end method

.method public getLeadingEdgeList(Lorg/opencv/core/MatOfInt;)V
    .locals 6
    .param p1, "leadingEdgeList"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 269
    move-object v0, p1

    .line 270
    .local v0, "leadingEdgeList_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/imgproc/Subdiv2D;->getLeadingEdgeList_0(JJ)V

    .line 272
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    return-wide v0
.end method

.method public getTriangleList(Lorg/opencv/core/MatOfFloat6;)V
    .locals 6
    .param p1, "triangleList"    # Lorg/opencv/core/MatOfFloat6;

    .prologue
    .line 283
    move-object v0, p1

    .line 284
    .local v0, "triangleList_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/imgproc/Subdiv2D;->getTriangleList_0(JJ)V

    .line 286
    return-void
.end method

.method public getVertex(I)Lorg/opencv/core/Point;
    .locals 4
    .param p1, "vertex"    # I

    .prologue
    .line 87
    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/imgproc/Subdiv2D;->getVertex_1(JI)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Point;-><init>([D)V

    .line 89
    .local v0, "retVal":Lorg/opencv/core/Point;
    return-object v0
.end method

.method public getVertex(I[I)Lorg/opencv/core/Point;
    .locals 5
    .param p1, "vertex"    # I
    .param p2, "firstEdge"    # [I

    .prologue
    const/4 v4, 0x0

    .line 77
    const/4 v2, 0x1

    new-array v0, v2, [D

    .line 78
    .local v0, "firstEdge_out":[D
    new-instance v1, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1, v0}, Lorg/opencv/imgproc/Subdiv2D;->getVertex_0(JI[D)[D

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/opencv/core/Point;-><init>([D)V

    .line 79
    .local v1, "retVal":Lorg/opencv/core/Point;
    if-eqz p2, :cond_0

    aget-wide v2, v0, v4

    double-to-int v2, v2

    aput v2, p2, v4

    .line 80
    :cond_0
    return-object v1
.end method

.method public getVoronoiFacetList(Lorg/opencv/core/MatOfInt;Ljava/util/List;Lorg/opencv/core/MatOfPoint2f;)V
    .locals 11
    .param p1, "idx"    # Lorg/opencv/core/MatOfInt;
    .param p3, "facetCenters"    # Lorg/opencv/core/MatOfPoint2f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/MatOfInt;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Lorg/opencv/core/MatOfPoint2f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "facetList":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    move-object v10, p1

    .line 298
    .local v10, "idx_mat":Lorg/opencv/core/Mat;
    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    .line 299
    .local v9, "facetList_mat":Lorg/opencv/core/Mat;
    move-object v8, p3

    .line 300
    .local v8, "facetCenters_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v2, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/imgproc/Subdiv2D;->getVoronoiFacetList_0(JJJJ)V

    .line 301
    invoke-static {v9, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_Point2f(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 302
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 303
    return-void
.end method

.method public initDelaunay(Lorg/opencv/core/Rect;)V
    .locals 6
    .param p1, "rect"    # Lorg/opencv/core/Rect;

    .prologue
    .line 315
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/Subdiv2D;->initDelaunay_0(JIIII)V

    .line 317
    return-void
.end method

.method public insert(Lorg/opencv/core/Point;)I
    .locals 7
    .param p1, "pt"    # Lorg/opencv/core/Point;

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/Subdiv2D;->insert_0(JDD)I

    move-result v6

    .line 186
    .local v6, "retVal":I
    return v6
.end method

.method public insert(Lorg/opencv/core/MatOfPoint2f;)V
    .locals 6
    .param p1, "ptvec"    # Lorg/opencv/core/MatOfPoint2f;

    .prologue
    .line 328
    move-object v0, p1

    .line 329
    .local v0, "ptvec_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/imgproc/Subdiv2D;->insert_1(JJ)V

    .line 331
    return-void
.end method

.method public locate(Lorg/opencv/core/Point;[I[I)I
    .locals 10
    .param p1, "pt"    # Lorg/opencv/core/Point;
    .param p2, "edge"    # [I
    .param p3, "vertex"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 197
    new-array v6, v0, [D

    .line 198
    .local v6, "edge_out":[D
    new-array v7, v0, [D

    .line 199
    .local v7, "vertex_out":[D
    iget-wide v0, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    invoke-static/range {v0 .. v7}, Lorg/opencv/imgproc/Subdiv2D;->locate_0(JDD[D[D)I

    move-result v8

    .line 200
    .local v8, "retVal":I
    if-eqz p2, :cond_0

    aget-wide v0, v6, v9

    double-to-int v0, v0

    aput v0, p2, v9

    .line 201
    :cond_0
    if-eqz p3, :cond_1

    aget-wide v0, v7, v9

    double-to-int v0, v0

    aput v0, p3, v9

    .line 202
    :cond_1
    return v8
.end method

.method public nextEdge(I)I
    .locals 4
    .param p1, "edge"    # I

    .prologue
    .line 214
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/imgproc/Subdiv2D;->nextEdge_0(JI)I

    move-result v0

    .line 216
    .local v0, "retVal":I
    return v0
.end method

.method public rotateEdge(II)I
    .locals 4
    .param p1, "edge"    # I
    .param p2, "rotate"    # I

    .prologue
    .line 228
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/imgproc/Subdiv2D;->rotateEdge_0(JII)I

    move-result v0

    .line 230
    .local v0, "retVal":I
    return v0
.end method

.method public symEdge(I)I
    .locals 4
    .param p1, "edge"    # I

    .prologue
    .line 242
    iget-wide v2, p0, Lorg/opencv/imgproc/Subdiv2D;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/imgproc/Subdiv2D;->symEdge_0(JI)I

    move-result v0

    .line 244
    .local v0, "retVal":I
    return v0
.end method
