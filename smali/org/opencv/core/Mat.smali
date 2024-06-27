.class public Lorg/opencv/core/Mat;
.super Ljava/lang/Object;
.source "Mat.java"


# instance fields
.field public final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lorg/opencv/core/Mat;->n_Mat()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 26
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "type"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1, p2, p3}, Lorg/opencv/core/Mat;->n_Mat(III)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 39
    return-void
.end method

.method public constructor <init>(IIILorg/opencv/core/Scalar;)V
    .locals 14
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "type"    # I
    .param p4, "s"    # Lorg/opencv/core/Scalar;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x1

    aget-wide v8, v2, v3

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x2

    aget-wide v10, v2, v3

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x3

    aget-wide v12, v2, v3

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v3 .. v13}, Lorg/opencv/core/Mat;->n_Mat(IIIDDDD)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "addr"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native object address is NULL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    iput-wide p1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V
    .locals 4
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "rowRange"    # Lorg/opencv/core/Range;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p2, Lorg/opencv/core/Range;->start:I

    iget v3, p2, Lorg/opencv/core/Range;->end:I

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Mat;->n_Mat(JII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;Lorg/opencv/core/Range;)V
    .locals 6
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "rowRange"    # Lorg/opencv/core/Range;
    .param p3, "colRange"    # Lorg/opencv/core/Range;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p2, Lorg/opencv/core/Range;->start:I

    iget v3, p2, Lorg/opencv/core/Range;->end:I

    iget v4, p3, Lorg/opencv/core/Range;->start:I

    iget v5, p3, Lorg/opencv/core/Range;->end:I

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_Mat(JIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;)V
    .locals 7
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "roi"    # Lorg/opencv/core/Rect;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p2, Lorg/opencv/core/Rect;->y:I

    iget v3, p2, Lorg/opencv/core/Rect;->y:I

    iget v4, p2, Lorg/opencv/core/Rect;->height:I

    add-int/2addr v3, v4

    iget v4, p2, Lorg/opencv/core/Rect;->x:I

    iget v5, p2, Lorg/opencv/core/Rect;->x:I

    iget v6, p2, Lorg/opencv/core/Rect;->width:I

    add-int/2addr v5, v6

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_Mat(JIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;I)V
    .locals 4
    .param p1, "size"    # Lorg/opencv/core/Size;
    .param p2, "type"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-wide v0, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v2, p1, Lorg/opencv/core/Size;->height:D

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Mat;->n_Mat(DDI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;ILorg/opencv/core/Scalar;)V
    .locals 16
    .param p1, "size"    # Lorg/opencv/core/Size;
    .param p2, "type"    # I
    .param p3, "s"    # Lorg/opencv/core/Scalar;

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v8, v2, v7

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v10, v2, v7

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v12, v2, v7

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v14, v2, v7

    move/from16 v7, p2

    invoke-static/range {v3 .. v15}, Lorg/opencv/core/Mat;->n_Mat(DDIDDDD)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 78
    return-void
.end method

.method public static diag(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "d"    # Lorg/opencv/core/Mat;

    .prologue
    .line 427
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_diag(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 429
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static eye(III)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "rows"    # I
    .param p1, "cols"    # I
    .param p2, "type"    # I

    .prologue
    .line 492
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1, p2}, Lorg/opencv/core/Mat;->n_eye(III)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 494
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static eye(Lorg/opencv/core/Size;I)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "size"    # Lorg/opencv/core/Size;
    .param p1, "type"    # I

    .prologue
    .line 505
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p0, Lorg/opencv/core/Size;->height:D

    invoke-static {v2, v3, v4, v5, p1}, Lorg/opencv/core/Mat;->n_eye(DDI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 507
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method private static native locateROI_0(J[D[D)V
.end method

.method private static native nDump(J)Ljava/lang/String;
.end method

.method private static native nGet(JII)[D
.end method

.method private static native nGetB(JIII[B)I
.end method

.method private static native nGetD(JIII[D)I
.end method

.method private static native nGetF(JIII[F)I
.end method

.method private static native nGetI(JIII[I)I
.end method

.method private static native nGetS(JIII[S)I
.end method

.method private static native nPutB(JIII[B)I
.end method

.method private static native nPutD(JIII[D)I
.end method

.method private static native nPutF(JIII[F)I
.end method

.method private static native nPutI(JIII[I)I
.end method

.method private static native nPutS(JIII[S)I
.end method

.method private static native n_Mat()J
.end method

.method private static native n_Mat(DDI)J
.end method

.method private static native n_Mat(DDIDDDD)J
.end method

.method private static native n_Mat(III)J
.end method

.method private static native n_Mat(IIIDDDD)J
.end method

.method private static native n_Mat(JII)J
.end method

.method private static native n_Mat(JIIII)J
.end method

.method private static native n_adjustROI(JIIII)J
.end method

.method private static native n_assignTo(JJ)V
.end method

.method private static native n_assignTo(JJI)V
.end method

.method private static native n_channels(J)I
.end method

.method private static native n_checkVector(JI)I
.end method

.method private static native n_checkVector(JII)I
.end method

.method private static native n_checkVector(JIIZ)I
.end method

.method private static native n_clone(J)J
.end method

.method private static native n_col(JI)J
.end method

.method private static native n_colRange(JII)J
.end method

.method private static native n_cols(J)I
.end method

.method private static native n_convertTo(JJI)V
.end method

.method private static native n_convertTo(JJID)V
.end method

.method private static native n_convertTo(JJIDD)V
.end method

.method private static native n_copyTo(JJ)V
.end method

.method private static native n_copyTo(JJJ)V
.end method

.method private static native n_create(JDDI)V
.end method

.method private static native n_create(JIII)V
.end method

.method private static native n_cross(JJ)J
.end method

.method private static native n_dataAddr(J)J
.end method

.method private static native n_delete(J)V
.end method

.method private static native n_depth(J)I
.end method

.method private static native n_diag(J)J
.end method

.method private static native n_diag(JI)J
.end method

.method private static native n_dims(J)I
.end method

.method private static native n_dot(JJ)D
.end method

.method private static native n_elemSize(J)J
.end method

.method private static native n_elemSize1(J)J
.end method

.method private static native n_empty(J)Z
.end method

.method private static native n_eye(DDI)J
.end method

.method private static native n_eye(III)J
.end method

.method private static native n_inv(J)J
.end method

.method private static native n_inv(JI)J
.end method

.method private static native n_isContinuous(J)Z
.end method

.method private static native n_isSubmatrix(J)Z
.end method

.method private static native n_mul(JJ)J
.end method

.method private static native n_mul(JJD)J
.end method

.method private static native n_ones(DDI)J
.end method

.method private static native n_ones(III)J
.end method

.method private static native n_push_back(JJ)V
.end method

.method private static native n_release(J)V
.end method

.method private static native n_reshape(JI)J
.end method

.method private static native n_reshape(JII)J
.end method

.method private static native n_row(JI)J
.end method

.method private static native n_rowRange(JII)J
.end method

.method private static native n_rows(J)I
.end method

.method private static native n_setTo(JDDDD)J
.end method

.method private static native n_setTo(JDDDDJ)J
.end method

.method private static native n_setTo(JJ)J
.end method

.method private static native n_setTo(JJJ)J
.end method

.method private static native n_size(J)[D
.end method

.method private static native n_step1(J)J
.end method

.method private static native n_step1(JI)J
.end method

.method private static native n_submat(JIIII)J
.end method

.method private static native n_submat_rr(JIIII)J
.end method

.method private static native n_t(J)J
.end method

.method private static native n_total(J)J
.end method

.method private static native n_type(J)I
.end method

.method private static native n_zeros(DDI)J
.end method

.method private static native n_zeros(III)J
.end method

.method public static ones(III)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "rows"    # I
    .param p1, "cols"    # I
    .param p2, "type"    # I

    .prologue
    .line 603
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1, p2}, Lorg/opencv/core/Mat;->n_ones(III)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 605
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static ones(Lorg/opencv/core/Size;I)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "size"    # Lorg/opencv/core/Size;
    .param p1, "type"    # I

    .prologue
    .line 616
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p0, Lorg/opencv/core/Size;->height:D

    invoke-static {v2, v3, v4, v5, p1}, Lorg/opencv/core/Mat;->n_ones(DDI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 618
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static zeros(III)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "rows"    # I
    .param p1, "cols"    # I
    .param p2, "type"    # I

    .prologue
    .line 891
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1, p2}, Lorg/opencv/core/Mat;->n_zeros(III)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 893
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static zeros(Lorg/opencv/core/Size;I)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "size"    # Lorg/opencv/core/Size;
    .param p1, "type"    # I

    .prologue
    .line 904
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p0, Lorg/opencv/core/Size;->height:D

    invoke-static {v2, v3, v4, v5, p1}, Lorg/opencv/core/Mat;->n_zeros(DDI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 906
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method


# virtual methods
.method public adjustROI(IIII)Lorg/opencv/core/Mat;
    .locals 7
    .param p1, "dtop"    # I
    .param p2, "dbottom"    # I
    .param p3, "dleft"    # I
    .param p4, "dright"    # I

    .prologue
    .line 124
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_adjustROI(JIIII)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 126
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public assignTo(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Mat;->n_assignTo(JJ)V

    .line 148
    return-void
.end method

.method public assignTo(Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "type"    # I

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Mat;->n_assignTo(JJI)V

    .line 139
    return-void
.end method

.method public channels()I
    .locals 4

    .prologue
    .line 159
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_channels(J)I

    move-result v0

    .line 161
    .local v0, "retVal":I
    return v0
.end method

.method public checkVector(I)I
    .locals 4
    .param p1, "elemChannels"    # I

    .prologue
    .line 191
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_checkVector(JI)I

    move-result v0

    .line 193
    .local v0, "retVal":I
    return v0
.end method

.method public checkVector(II)I
    .locals 4
    .param p1, "elemChannels"    # I
    .param p2, "depth"    # I

    .prologue
    .line 182
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/core/Mat;->n_checkVector(JII)I

    move-result v0

    .line 184
    .local v0, "retVal":I
    return v0
.end method

.method public checkVector(IIZ)I
    .locals 4
    .param p1, "elemChannels"    # I
    .param p2, "depth"    # I
    .param p3, "requireContinuous"    # Z

    .prologue
    .line 173
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, p2, p3}, Lorg/opencv/core/Mat;->n_checkVector(JIIZ)I

    move-result v0

    .line 175
    .local v0, "retVal":I
    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->clone()Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_clone(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 206
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public col(I)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 217
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_col(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 219
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public colRange(II)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "startcol"    # I
    .param p2, "endcol"    # I

    .prologue
    .line 230
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/core/Mat;->n_colRange(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 232
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public colRange(Lorg/opencv/core/Range;)Lorg/opencv/core/Mat;
    .locals 5
    .param p1, "r"    # Lorg/opencv/core/Range;

    .prologue
    .line 243
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v1, p1, Lorg/opencv/core/Range;->start:I

    iget v4, p1, Lorg/opencv/core/Range;->end:I

    invoke-static {v2, v3, v1, v4}, Lorg/opencv/core/Mat;->n_colRange(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 245
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public cols()I
    .locals 4

    .prologue
    .line 269
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_cols(J)I

    move-result v0

    .line 271
    .local v0, "retVal":I
    return v0
.end method

.method public convertTo(Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "rtype"    # I

    .prologue
    .line 301
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Mat;->n_convertTo(JJI)V

    .line 303
    return-void
.end method

.method public convertTo(Lorg/opencv/core/Mat;ID)V
    .locals 7
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "rtype"    # I
    .param p3, "alpha"    # D

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Mat;->n_convertTo(JJID)V

    .line 294
    return-void
.end method

.method public convertTo(Lorg/opencv/core/Mat;IDD)V
    .locals 9
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "rtype"    # I
    .param p3, "alpha"    # D
    .param p5, "beta"    # D

    .prologue
    .line 283
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Mat;->n_convertTo(JJIDD)V

    .line 285
    return-void
.end method

.method public copyTo(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 314
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Mat;->n_copyTo(JJ)V

    .line 316
    return-void
.end method

.method public copyTo(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_copyTo(JJJ)V

    .line 329
    return-void
.end method

.method public create(III)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "type"    # I

    .prologue
    .line 340
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/core/Mat;->n_create(JIII)V

    .line 342
    return-void
.end method

.method public create(Lorg/opencv/core/Size;I)V
    .locals 7
    .param p1, "size"    # Lorg/opencv/core/Size;
    .param p2, "type"    # I

    .prologue
    .line 353
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Mat;->n_create(JDDI)V

    .line 355
    return-void
.end method

.method public cross(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 366
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Mat;->n_cross(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 368
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public dataAddr()J
    .locals 4

    .prologue
    .line 379
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_dataAddr(J)J

    move-result-wide v0

    .line 381
    .local v0, "retVal":J
    return-wide v0
.end method

.method public depth()I
    .locals 4

    .prologue
    .line 392
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_depth(J)I

    move-result v0

    .line 394
    .local v0, "retVal":I
    return v0
.end method

.method public diag()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 414
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lorg/opencv/core/Mat;->n_diag(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 416
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public diag(I)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "d"    # I

    .prologue
    .line 405
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_diag(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 407
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public dims()I
    .locals 4

    .prologue
    .line 256
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_dims(J)I

    move-result v0

    .line 258
    .local v0, "retVal":I
    return v0
.end method

.method public dot(Lorg/opencv/core/Mat;)D
    .locals 6
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 440
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Mat;->n_dot(JJ)D

    move-result-wide v0

    .line 442
    .local v0, "retVal":D
    return-wide v0
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 928
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->nDump(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public elemSize()J
    .locals 4

    .prologue
    .line 453
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_elemSize(J)J

    move-result-wide v0

    .line 455
    .local v0, "retVal":J
    return-wide v0
.end method

.method public elemSize1()J
    .locals 4

    .prologue
    .line 466
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_elemSize1(J)J

    move-result-wide v0

    .line 468
    .local v0, "retVal":J
    return-wide v0
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 479
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_empty(J)Z

    move-result v0

    .line 481
    .local v0, "retVal":Z
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 911
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_delete(J)V

    .line 912
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 913
    return-void
.end method

.method public get(II[B)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1005
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 1006
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1007
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1011
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 1012
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1013
    :cond_3
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetB(JIII[B)I

    move-result v0

    return v0

    .line 1015
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(II[D)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [D

    .prologue
    .line 1065
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 1066
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1067
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1071
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1067
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 1072
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 1073
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetD(JIII[D)I

    move-result v0

    return v0

    .line 1075
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(II[F)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [F

    .prologue
    .line 1050
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 1051
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1052
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1056
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1052
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 1057
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1058
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetF(JIII[F)I

    move-result v0

    return v0

    .line 1060
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(II[I)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [I

    .prologue
    .line 1035
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 1036
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1037
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1041
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1037
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 1042
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1043
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetI(JIII[I)I

    move-result v0

    return v0

    .line 1045
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(II[S)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [S

    .prologue
    .line 1020
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 1021
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1022
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1026
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1022
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 1027
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1028
    :cond_3
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetS(JIII[S)I

    move-result v0

    return v0

    .line 1030
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(II)[D
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 1080
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/core/Mat;->nGet(JII)[D

    move-result-object v0

    return-object v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 1095
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    return-wide v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    return v0
.end method

.method public inv()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 527
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_inv(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 529
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public inv(I)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "method"    # I

    .prologue
    .line 518
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_inv(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 520
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public isContinuous()Z
    .locals 4

    .prologue
    .line 540
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_isContinuous(J)Z

    move-result v0

    .line 542
    .local v0, "retVal":Z
    return v0
.end method

.method public isSubmatrix()Z
    .locals 4

    .prologue
    .line 553
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_isSubmatrix(J)Z

    move-result v0

    .line 555
    .local v0, "retVal":Z
    return v0
.end method

.method public locateROI(Lorg/opencv/core/Size;Lorg/opencv/core/Point;)V
    .locals 6
    .param p1, "wholeSize"    # Lorg/opencv/core/Size;
    .param p2, "ofs"    # Lorg/opencv/core/Point;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 565
    new-array v1, v2, [D

    .line 566
    .local v1, "wholeSize_out":[D
    new-array v0, v2, [D

    .line 567
    .local v0, "ofs_out":[D
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v1, v0}, Lorg/opencv/core/Mat;->locateROI_0(J[D[D)V

    .line 568
    if-eqz p1, :cond_0

    aget-wide v2, v1, v4

    iput-wide v2, p1, Lorg/opencv/core/Size;->width:D

    aget-wide v2, v1, v5

    iput-wide v2, p1, Lorg/opencv/core/Size;->height:D

    .line 569
    :cond_0
    if-eqz p2, :cond_1

    aget-wide v2, v0, v4

    iput-wide v2, p2, Lorg/opencv/core/Point;->x:D

    aget-wide v2, v0, v5

    iput-wide v2, p2, Lorg/opencv/core/Point;->y:D

    .line 570
    :cond_1
    return-void
.end method

.method public mul(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 590
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Mat;->n_mul(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 592
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public mul(Lorg/opencv/core/Mat;D)Lorg/opencv/core/Mat;
    .locals 8
    .param p1, "m"    # Lorg/opencv/core/Mat;
    .param p2, "scale"    # D

    .prologue
    .line 581
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_mul(JJD)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 583
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public push_back(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 629
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Mat;->n_push_back(JJ)V

    .line 631
    return-void
.end method

.method public put(II[B)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [B

    .prologue
    .line 990
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 991
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 992
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 996
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 992
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 997
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 998
    :cond_3
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutB(JIII[B)I

    move-result v0

    return v0

    .line 1000
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs put(II[D)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [D

    .prologue
    .line 933
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 934
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 935
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 939
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 935
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 940
    :cond_2
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutD(JIII[D)I

    move-result v0

    return v0
.end method

.method public put(II[F)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [F

    .prologue
    .line 945
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 946
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 947
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 951
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 952
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 953
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutF(JIII[F)I

    move-result v0

    return v0

    .line 955
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(II[I)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [I

    .prologue
    .line 960
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 961
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 962
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 966
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 962
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 967
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 968
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutI(JIII[I)I

    move-result v0

    return v0

    .line 970
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(II[S)I
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # [S

    .prologue
    .line 975
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    .line 976
    .local v6, "t":I
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 977
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided data element number ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be multiple of the Mat channels count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 981
    invoke-static {v6}, Lorg/opencv/core/CvType;->channels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 977
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 982
    :cond_2
    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-static {v6}, Lorg/opencv/core/CvType;->depth(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 983
    :cond_3
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutS(JIII[S)I

    move-result v0

    return v0

    .line 985
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat data type is not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 642
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_release(J)V

    .line 644
    return-void
.end method

.method public reshape(I)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "cn"    # I

    .prologue
    .line 664
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_reshape(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 666
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public reshape(II)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "cn"    # I
    .param p2, "rows"    # I

    .prologue
    .line 655
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/core/Mat;->n_reshape(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 657
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public row(I)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 677
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_row(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 679
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public rowRange(II)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "startrow"    # I
    .param p2, "endrow"    # I

    .prologue
    .line 690
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/core/Mat;->n_rowRange(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 692
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public rowRange(Lorg/opencv/core/Range;)Lorg/opencv/core/Mat;
    .locals 5
    .param p1, "r"    # Lorg/opencv/core/Range;

    .prologue
    .line 703
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v1, p1, Lorg/opencv/core/Range;->start:I

    iget v4, p1, Lorg/opencv/core/Range;->end:I

    invoke-static {v2, v3, v1, v4}, Lorg/opencv/core/Mat;->n_rowRange(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 705
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public rows()I
    .locals 4

    .prologue
    .line 716
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_rows(J)I

    move-result v0

    .line 718
    .local v0, "retVal":I
    return v0
.end method

.method public setTo(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "value"    # Lorg/opencv/core/Mat;

    .prologue
    .line 764
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Mat;->n_setTo(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 766
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public setTo(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 7
    .param p1, "value"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 755
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_setTo(JJJ)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 757
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public setTo(Lorg/opencv/core/Scalar;)Lorg/opencv/core/Mat;
    .locals 11
    .param p1, "s"    # Lorg/opencv/core/Scalar;

    .prologue
    .line 729
    new-instance v10, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Mat;->n_setTo(JDDDD)J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 731
    .local v10, "retVal":Lorg/opencv/core/Mat;
    return-object v10
.end method

.method public setTo(Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 13
    .param p1, "value"    # Lorg/opencv/core/Scalar;
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 742
    new-instance v12, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Mat;->n_setTo(JDDDDJ)J

    move-result-wide v0

    invoke-direct {v12, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 744
    .local v12, "retVal":Lorg/opencv/core/Mat;
    return-object v12
.end method

.method public size()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 777
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_size(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 779
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public step1()J
    .locals 4

    .prologue
    .line 799
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_step1(J)J

    move-result-wide v0

    .line 801
    .local v0, "retVal":J
    return-wide v0
.end method

.method public step1(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 790
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Mat;->n_step1(JI)J

    move-result-wide v0

    .line 792
    .local v0, "retVal":J
    return-wide v0
.end method

.method public submat(IIII)Lorg/opencv/core/Mat;
    .locals 7
    .param p1, "rowStart"    # I
    .param p2, "rowEnd"    # I
    .param p3, "colStart"    # I
    .param p4, "colEnd"    # I

    .prologue
    .line 813
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_submat_rr(JIIII)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 815
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public submat(Lorg/opencv/core/Range;Lorg/opencv/core/Range;)Lorg/opencv/core/Mat;
    .locals 7
    .param p1, "rowRange"    # Lorg/opencv/core/Range;
    .param p2, "colRange"    # Lorg/opencv/core/Range;

    .prologue
    .line 826
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Range;->start:I

    iget v3, p1, Lorg/opencv/core/Range;->end:I

    iget v4, p2, Lorg/opencv/core/Range;->start:I

    iget v5, p2, Lorg/opencv/core/Range;->end:I

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_submat_rr(JIIII)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 828
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;
    .locals 7
    .param p1, "roi"    # Lorg/opencv/core/Rect;

    .prologue
    .line 839
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_submat(JIIII)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 841
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public t()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 852
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_t(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 854
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mat [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 919
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v1

    invoke-static {v1}, Lorg/opencv/core/CvType;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 920
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->isContinuous()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSubmat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->isSubmatrix()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeObj=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    .line 921
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataAddr=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 922
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->dataAddr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    return-object v0
.end method

.method public total()J
    .locals 4

    .prologue
    .line 865
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_total(J)J

    move-result-wide v0

    .line 867
    .local v0, "retVal":J
    return-wide v0
.end method

.method public type()I
    .locals 4

    .prologue
    .line 878
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Mat;->n_type(J)I

    move-result v0

    .line 880
    .local v0, "retVal":I
    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 1090
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    return v0
.end method
