.class public Lorg/wysaid/algorithm/Matrix3x3;
.super Ljava/lang/Object;
.source "Matrix3x3.java"


# instance fields
.field public data:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    .line 11
    return-void
.end method

.method constructor <init>([F)V
    .locals 0
    .param p1, "_data"    # [F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    .line 15
    return-void
.end method

.method protected static _mul([F[F)[F
    .locals 10
    .param p0, "d1"    # [F
    .param p1, "d2"    # [F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [F

    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, p0, v6

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v7

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v5

    aget v2, p1, v8

    mul-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v6

    aget v2, p1, v8

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    const/4 v1, 0x5

    aget v2, p0, v7

    aget v3, p1, v8

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    aget v4, p1, v9

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, p0, v5

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v8

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    aget v2, p0, v6

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    aget v2, p0, v7

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static makeIdentity()Lorg/wysaid/algorithm/Matrix3x3;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lorg/wysaid/algorithm/Matrix3x3;

    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static makeRotation(FFFF)Lorg/wysaid/algorithm/Matrix3x3;
    .locals 9
    .param p0, "rad"    # F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 26
    invoke-static {p1, p2, p3}, Lorg/wysaid/algorithm/AlgorithmUtil;->getNormalizeScaling(FFF)F

    move-result v2

    .line 28
    .local v2, "normScaling":F
    mul-float/2addr p1, v2

    .line 29
    mul-float/2addr p2, v2

    .line 30
    mul-float/2addr p3, v2

    .line 32
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 33
    .local v0, "cosRad":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v0

    .line 34
    .local v1, "cosp":F
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 36
    .local v3, "sinRad":F
    new-instance v4, Lorg/wysaid/algorithm/Matrix3x3;

    const/16 v5, 0x9

    new-array v5, v5, [F

    const/4 v6, 0x0

    mul-float v7, v1, p1

    mul-float/2addr v7, p1

    add-float/2addr v7, v0

    aput v7, v5, v6

    const/4 v6, 0x1

    mul-float v7, v1, p1

    mul-float/2addr v7, p2

    mul-float v8, p3, v3

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    mul-float v7, v1, p1

    mul-float/2addr v7, p3

    mul-float v8, p2, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    mul-float v7, v1, p1

    mul-float/2addr v7, p2

    mul-float v8, p3, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x4

    mul-float v7, v1, p2

    mul-float/2addr v7, p2

    add-float/2addr v7, v0

    aput v7, v5, v6

    const/4 v6, 0x5

    mul-float v7, v1, p2

    mul-float/2addr v7, p3

    mul-float v8, p1, v3

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x6

    mul-float v7, v1, p1

    mul-float/2addr v7, p3

    mul-float v8, p2, v3

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x7

    mul-float v7, v1, p2

    mul-float/2addr v7, p3

    mul-float v8, p1, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/16 v6, 0x8

    mul-float v7, v1, p3

    mul-float/2addr v7, p3

    add-float/2addr v7, v0

    aput v7, v5, v6

    invoke-direct {v4, v5}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v4
.end method

.method public static makeXRotation(F)Lorg/wysaid/algorithm/Matrix3x3;
    .locals 7
    .param p0, "rad"    # F

    .prologue
    const/4 v6, 0x0

    .line 50
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 51
    .local v0, "cosRad":F
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 52
    .local v1, "sinRad":F
    new-instance v2, Lorg/wysaid/algorithm/Matrix3x3;

    const/16 v3, 0x9

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v0, v3, v4

    const/4 v4, 0x5

    aput v1, v3, v4

    const/4 v4, 0x6

    aput v6, v3, v4

    const/4 v4, 0x7

    neg-float v5, v1

    aput v5, v3, v4

    const/16 v4, 0x8

    aput v0, v3, v4

    invoke-direct {v2, v3}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v2
.end method

.method public static makeYRotation(F)Lorg/wysaid/algorithm/Matrix3x3;
    .locals 7
    .param p0, "rad"    # F

    .prologue
    const/4 v6, 0x0

    .line 60
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 61
    .local v0, "cosRad":F
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 62
    .local v1, "sinRad":F
    new-instance v2, Lorg/wysaid/algorithm/Matrix3x3;

    const/16 v3, 0x9

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    neg-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v0, v3, v4

    invoke-direct {v2, v3}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v2
.end method

.method public static makeZRotation(F)Lorg/wysaid/algorithm/Matrix3x3;
    .locals 7
    .param p0, "rad"    # F

    .prologue
    const/4 v6, 0x0

    .line 70
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 71
    .local v0, "cosRad":F
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 72
    .local v1, "sinRad":F
    new-instance v2, Lorg/wysaid/algorithm/Matrix3x3;

    const/16 v3, 0x9

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    neg-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x4

    aput v0, v3, v4

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v6, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lorg/wysaid/algorithm/Matrix3x3;->clone()Lorg/wysaid/algorithm/Matrix3x3;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/wysaid/algorithm/Matrix3x3;
    .locals 2

    .prologue
    .line 106
    new-instance v1, Lorg/wysaid/algorithm/Matrix3x3;

    iget-object v0, p0, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-direct {v1, v0}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v1
.end method

.method public multiply(Lorg/wysaid/algorithm/Matrix3x3;)Lorg/wysaid/algorithm/Matrix3x3;
    .locals 3
    .param p1, "mat"    # Lorg/wysaid/algorithm/Matrix3x3;

    .prologue
    .line 96
    new-instance v0, Lorg/wysaid/algorithm/Matrix3x3;

    iget-object v1, p0, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    iget-object v2, p1, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    invoke-static {v1, v2}, Lorg/wysaid/algorithm/Matrix3x3;->_mul([F[F)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wysaid/algorithm/Matrix3x3;-><init>([F)V

    return-object v0
.end method

.method public multiplyBy(Lorg/wysaid/algorithm/Matrix3x3;)Lorg/wysaid/algorithm/Matrix3x3;
    .locals 2
    .param p1, "mat"    # Lorg/wysaid/algorithm/Matrix3x3;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    iget-object v1, p1, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    invoke-static {v0, v1}, Lorg/wysaid/algorithm/Matrix3x3;->_mul([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lorg/wysaid/algorithm/Matrix3x3;->data:[F

    .line 101
    return-object p0
.end method
