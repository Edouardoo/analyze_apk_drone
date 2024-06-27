.class public Lorg/opencv/features2d/BRISK;
.super Lorg/opencv/features2d/Feature2D;
.source "BRISK.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/BRISK;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lorg/opencv/features2d/BRISK;

    invoke-static {}, Lorg/opencv/features2d/BRISK;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/BRISK;-><init>(J)V

    .line 37
    .local v0, "retVal":Lorg/opencv/features2d/BRISK;
    return-object v0
.end method

.method public static create(IIF)Lorg/opencv/features2d/BRISK;
    .locals 4
    .param p0, "thresh"    # I
    .param p1, "octaves"    # I
    .param p2, "patternScale"    # F

    .prologue
    .line 26
    new-instance v0, Lorg/opencv/features2d/BRISK;

    invoke-static {p0, p1, p2}, Lorg/opencv/features2d/BRISK;->create_0(IIF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/BRISK;-><init>(J)V

    .line 28
    .local v0, "retVal":Lorg/opencv/features2d/BRISK;
    return-object v0
.end method

.method public static create(Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/MatOfInt;)Lorg/opencv/features2d/BRISK;
    .locals 8
    .param p0, "radiusList"    # Lorg/opencv/core/MatOfFloat;
    .param p1, "numberList"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 59
    move-object v1, p0

    .line 60
    .local v1, "radiusList_mat":Lorg/opencv/core/Mat;
    move-object v0, p1

    .line 61
    .local v0, "numberList_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/features2d/BRISK;

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, v6, v7}, Lorg/opencv/features2d/BRISK;->create_3(JJ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/features2d/BRISK;-><init>(J)V

    .line 63
    .local v2, "retVal":Lorg/opencv/features2d/BRISK;
    return-object v2
.end method

.method public static create(Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/MatOfInt;FFLorg/opencv/core/MatOfInt;)Lorg/opencv/features2d/BRISK;
    .locals 12
    .param p0, "radiusList"    # Lorg/opencv/core/MatOfFloat;
    .param p1, "numberList"    # Lorg/opencv/core/MatOfInt;
    .param p2, "dMax"    # F
    .param p3, "dMin"    # F
    .param p4, "indexChange"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 48
    move-object v10, p0

    .line 49
    .local v10, "radiusList_mat":Lorg/opencv/core/Mat;
    move-object v9, p1

    .line 50
    .local v9, "numberList_mat":Lorg/opencv/core/Mat;
    move-object/from16 v8, p4

    .line 51
    .local v8, "indexChange_mat":Lorg/opencv/core/Mat;
    new-instance v11, Lorg/opencv/features2d/BRISK;

    iget-wide v0, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/BRISK;->create_2(JJFFJ)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lorg/opencv/features2d/BRISK;-><init>(J)V

    .line 53
    .local v11, "retVal":Lorg/opencv/features2d/BRISK;
    return-object v11
.end method

.method private static native create_0(IIF)J
.end method

.method private static native create_1()J
.end method

.method private static native create_2(JJFFJ)J
.end method

.method private static native create_3(JJ)J
.end method

.method private static native delete(J)V
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
    .line 69
    iget-wide v0, p0, Lorg/opencv/features2d/BRISK;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/BRISK;->delete(J)V

    .line 70
    return-void
.end method
