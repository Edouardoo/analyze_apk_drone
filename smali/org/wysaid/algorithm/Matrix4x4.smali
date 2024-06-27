.class public Lorg/wysaid/algorithm/Matrix4x4;
.super Ljava/lang/Object;
.source "Matrix4x4.java"


# instance fields
.field public data:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

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
    iput-object p1, p0, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

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

    .line 178
    const/16 v0, 0x10

    new-array v0, v0, [F

    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, p0, v6

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v7

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v8

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v5

    aget v2, p1, v9

    mul-float/2addr v1, v2

    aget v2, p0, v9

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    const/4 v1, 0x5

    aget v2, p0, v6

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, p0, v7

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    aget v2, p0, v8

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    aget v2, p0, v5

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x9

    aget v2, p0, v6

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    aget v2, p0, v7

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xb

    aget v2, p0, v8

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xc

    aget v2, p0, v5

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, p0, v6

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, p0, v7

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    aget v2, p0, v8

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static makeFrustum(FFFFFF)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 10
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "nearZ"    # F
    .param p5, "farZ"    # F

    .prologue
    .line 122
    add-float v2, p1, p0

    .line 123
    .local v2, "ral":F
    sub-float v3, p1, p0

    .line 124
    .local v3, "rsl":F
    sub-float v5, p3, p2

    .line 125
    .local v5, "tsb":F
    add-float v4, p3, p2

    .line 126
    .local v4, "tab":F
    add-float v0, p5, p4

    .line 127
    .local v0, "fan":F
    sub-float v1, p5, p4

    .line 129
    .local v1, "fsn":F
    new-instance v6, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v7, 0x10

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, p4

    div-float/2addr v9, v3

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, p4

    div-float/2addr v9, v5

    aput v9, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0x8

    div-float v9, v2, v3

    aput v9, v7, v8

    const/16 v8, 0x9

    div-float v9, v4, v5

    aput v9, v7, v8

    const/16 v8, 0xa

    neg-float v9, v0

    div-float/2addr v9, v1

    aput v9, v7, v8

    const/16 v8, 0xb

    const/high16 v9, -0x40800000    # -1.0f

    aput v9, v7, v8

    const/16 v8, 0xc

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0xd

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0xe

    const/high16 v9, -0x40000000    # -2.0f

    mul-float/2addr v9, p5

    mul-float/2addr v9, p4

    div-float/2addr v9, v1

    aput v9, v7, v8

    const/16 v8, 0xf

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-direct {v6, v7}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v6
.end method

.method public static makeIdentity()Lorg/wysaid/algorithm/Matrix4x4;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static makeOrtho(FFFFFF)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 10
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "nearZ"    # F
    .param p5, "farZ"    # F

    .prologue
    .line 139
    add-float v2, p1, p0

    .line 140
    .local v2, "ral":F
    sub-float v3, p1, p0

    .line 141
    .local v3, "rsl":F
    sub-float v5, p3, p2

    .line 142
    .local v5, "tsb":F
    add-float v4, p3, p2

    .line 143
    .local v4, "tab":F
    add-float v0, p5, p4

    .line 144
    .local v0, "fan":F
    sub-float v1, p5, p4

    .line 146
    .local v1, "fsn":F
    new-instance v6, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v7, 0x10

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v9, v3

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v9, v5

    aput v9, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0x8

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0x9

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0xa

    const/high16 v9, -0x40000000    # -2.0f

    div-float/2addr v9, v1

    aput v9, v7, v8

    const/16 v8, 0xb

    const/4 v9, 0x0

    aput v9, v7, v8

    const/16 v8, 0xc

    neg-float v9, v2

    div-float/2addr v9, v3

    aput v9, v7, v8

    const/16 v8, 0xd

    neg-float v9, v4

    div-float/2addr v9, v5

    aput v9, v7, v8

    const/16 v8, 0xe

    neg-float v9, v0

    div-float/2addr v9, v1

    aput v9, v7, v8

    const/16 v8, 0xf

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-direct {v6, v7}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v6
.end method

.method public static makePerspective(FFFF)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 8
    .param p0, "fovyRad"    # F
    .param p1, "aspect"    # F
    .param p2, "nearZ"    # F
    .param p3, "farZ"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 110
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, p0, v7

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v1, v2

    .line 112
    .local v0, "cotan":F
    new-instance v1, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v2, 0x10

    new-array v2, v2, [F

    const/4 v3, 0x0

    div-float v4, v0, p1

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v6, v2, v3

    const/4 v3, 0x2

    aput v6, v2, v3

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v0, v2, v3

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v6, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    add-float v4, p3, p2

    sub-float v5, p2, p3

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xb

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v6, v2, v3

    const/16 v3, 0xd

    aput v6, v2, v3

    const/16 v3, 0xe

    mul-float v4, v7, p3

    mul-float/2addr v4, p2

    sub-float v5, p2, p3

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xf

    aput v6, v2, v3

    invoke-direct {v1, v2}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v1
.end method

.method public static makeRotation(FFFF)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 11
    .param p0, "rad"    # F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 27
    invoke-static {p1, p2, p3}, Lorg/wysaid/algorithm/AlgorithmUtil;->getNormalizeScaling(FFF)F

    move-result v2

    .line 29
    .local v2, "normScaling":F
    mul-float/2addr p1, v2

    .line 30
    mul-float/2addr p2, v2

    .line 31
    mul-float/2addr p3, v2

    .line 33
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 34
    .local v0, "cosRad":F
    sub-float v1, v10, v0

    .line 35
    .local v1, "cosp":F
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 37
    .local v3, "sinRad":F
    new-instance v4, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v5, 0x10

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

    aput v9, v5, v6

    const/4 v6, 0x4

    mul-float v7, v1, p1

    mul-float/2addr v7, p2

    mul-float v8, p3, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x5

    mul-float v7, v1, p2

    mul-float/2addr v7, p2

    add-float/2addr v7, v0

    aput v7, v5, v6

    const/4 v6, 0x6

    mul-float v7, v1, p2

    mul-float/2addr v7, p3

    mul-float v8, p1, v3

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x7

    aput v9, v5, v6

    const/16 v6, 0x8

    mul-float v7, v1, p1

    mul-float/2addr v7, p3

    mul-float v8, p2, v3

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/16 v6, 0x9

    mul-float v7, v1, p2

    mul-float/2addr v7, p3

    mul-float v8, p1, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/16 v6, 0xa

    mul-float v7, v1, p3

    mul-float/2addr v7, p3

    add-float/2addr v7, v0

    aput v7, v5, v6

    const/16 v6, 0xb

    aput v9, v5, v6

    const/16 v6, 0xc

    aput v9, v5, v6

    const/16 v6, 0xd

    aput v9, v5, v6

    const/16 v6, 0xe

    aput v9, v5, v6

    const/16 v6, 0xf

    aput v10, v5, v6

    invoke-direct {v4, v5}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v4
.end method

.method public static makeScaling(FFF)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    const/4 v3, 0x0

    .line 100
    new-instance v0, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v1, 0x10

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput p1, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput p2, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v3, v1, v2

    const/16 v2, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v0
.end method

.method public static makeTranslation(FFF)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v1, 0x10

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput p0, v1, v2

    const/16 v2, 0xd

    aput p1, v1, v2

    const/16 v2, 0xe

    aput p2, v1, v2

    const/16 v2, 0xf

    aput v4, v1, v2

    invoke-direct {v0, v1}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v0
.end method

.method public static makeXRotation(F)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 8
    .param p0, "rad"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 58
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 59
    .local v0, "cosRad":F
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 60
    .local v1, "sinRad":F
    new-instance v2, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v3, 0x10

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v7, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v6, v3, v4

    const/4 v4, 0x5

    aput v0, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    neg-float v5, v1

    aput v5, v3, v4

    const/16 v4, 0xa

    aput v0, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v6, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v6, v3, v4

    const/16 v4, 0xf

    aput v7, v3, v4

    invoke-direct {v2, v3}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v2
.end method

.method public static makeYRotation(F)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 8
    .param p0, "rad"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 69
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 70
    .local v0, "cosRad":F
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 71
    .local v1, "sinRad":F
    new-instance v2, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v3, 0x10

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

    aput v6, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    aput v6, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v1, v3, v4

    const/16 v4, 0x9

    aput v6, v3, v4

    const/16 v4, 0xa

    aput v0, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v6, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v6, v3, v4

    const/16 v4, 0xf

    aput v7, v3, v4

    invoke-direct {v2, v3}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v2
.end method

.method public static makeZRotation(F)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 8
    .param p0, "rad"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 80
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 81
    .local v0, "cosRad":F
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 82
    .local v1, "sinRad":F
    new-instance v2, Lorg/wysaid/algorithm/Matrix4x4;

    const/16 v3, 0x10

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    neg-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v0, v3, v4

    const/4 v4, 0x6

    aput v6, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    aput v6, v3, v4

    const/16 v4, 0xa

    aput v7, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v6, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v6, v3, v4

    const/16 v4, 0xf

    aput v7, v3, v4

    invoke-direct {v2, v3}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

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
    invoke-virtual {p0}, Lorg/wysaid/algorithm/Matrix4x4;->clone()Lorg/wysaid/algorithm/Matrix4x4;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/wysaid/algorithm/Matrix4x4;
    .locals 2

    .prologue
    .line 209
    new-instance v1, Lorg/wysaid/algorithm/Matrix4x4;

    iget-object v0, p0, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-direct {v1, v0}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v1
.end method

.method public multiply(Lorg/wysaid/algorithm/Matrix4x4;)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 3
    .param p1, "mat"    # Lorg/wysaid/algorithm/Matrix4x4;

    .prologue
    .line 199
    new-instance v0, Lorg/wysaid/algorithm/Matrix4x4;

    iget-object v1, p0, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

    iget-object v2, p1, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

    invoke-static {v1, v2}, Lorg/wysaid/algorithm/Matrix4x4;->_mul([F[F)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wysaid/algorithm/Matrix4x4;-><init>([F)V

    return-object v0
.end method

.method public multiplyBy(Lorg/wysaid/algorithm/Matrix4x4;)Lorg/wysaid/algorithm/Matrix4x4;
    .locals 2
    .param p1, "mat"    # Lorg/wysaid/algorithm/Matrix4x4;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

    iget-object v1, p1, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

    invoke-static {v0, v1}, Lorg/wysaid/algorithm/Matrix4x4;->_mul([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lorg/wysaid/algorithm/Matrix4x4;->data:[F

    .line 204
    return-object p0
.end method
