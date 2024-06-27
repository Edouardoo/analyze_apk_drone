.class public Lcom/fh/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy([BII)[B
    .locals 2
    .param p0, "src"    # [B
    .param p1, "index"    # I
    .param p2, "len"    # I

    .prologue
    .line 118
    array-length v1, p0

    if-lt p1, v1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    add-int v1, p1, p2

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 123
    .local v0, "buf":[B
    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAngleCouvert(F)I
    .locals 6
    .param p0, "radian"    # F

    .prologue
    .line 102
    float-to-double v2, p0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 103
    .local v0, "tmp":I
    if-gez v0, :cond_0

    .line 104
    neg-int v1, v0

    .line 106
    :goto_0
    return v1

    :cond_0
    rsub-int v1, v0, 0xb4

    add-int/lit16 v1, v1, 0xb4

    goto :goto_0
.end method

.method public static getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 10
    .param p0, "a"    # Landroid/graphics/Point;
    .param p1, "b"    # Landroid/graphics/Point;
    .param p2, "cutRadius"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/fh/util/MathUtils;->getRadian(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    .line 49
    .local v0, "radian":F
    iget v3, p0, Landroid/graphics/Point;->x:I

    int-to-double v4, v3

    int-to-double v6, p2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 50
    .local v1, "x":I
    iget v3, p0, Landroid/graphics/Point;->y:I

    int-to-double v4, v3

    int-to-double v6, p2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 51
    .local v2, "y":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method public static getBytes(C)[B
    .locals 3
    .param p0, "data"    # C

    .prologue
    .line 136
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 137
    .local v0, "bytes":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 138
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    return-object v0
.end method

.method public static getBytes(D)[B
    .locals 4
    .param p0, "data"    # D

    .prologue
    .line 174
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 175
    .local v0, "intBits":J
    invoke-static {v0, v1}, Lcom/fh/util/MathUtils;->getBytes(J)[B

    move-result-object v2

    return-object v2
.end method

.method public static getBytes(F)[B
    .locals 2
    .param p0, "data"    # F

    .prologue
    .line 168
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 169
    .local v0, "intBits":I
    invoke-static {v0}, Lcom/fh/util/MathUtils;->getBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public static getBytes(I)[B
    .locals 3
    .param p0, "data"    # I

    .prologue
    .line 144
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 145
    .local v0, "bytes":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 146
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 147
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 149
    return-object v0
.end method

.method public static getBytes(J)[B
    .locals 8
    .param p0, "data"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 154
    new-array v0, v6, [B

    .line 155
    .local v0, "bytes":[B
    const/4 v1, 0x0

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    const/4 v1, 0x1

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    const/4 v1, 0x2

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    const/4 v1, 0x3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    const/4 v1, 0x5

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    const/4 v1, 0x6

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    const/4 v1, 0x7

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/fh/util/MathUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 181
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getBytes(S)[B
    .locals 3
    .param p0, "data"    # S

    .prologue
    .line 128
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 129
    .local v0, "bytes":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    return-object v0
.end method

.method public static getChar([B)C
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 197
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const v1, 0xff00

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static getDouble([B)D
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 218
    invoke-static {p0}, Lcom/fh/util/MathUtils;->getLong([B)J

    move-result-wide v0

    .line 219
    .local v0, "l":J
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintStream;->println(J)V

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getFloat([B)F
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 213
    invoke-static {p0}, Lcom/fh/util/MathUtils;->getInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 202
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const v1, 0xff00

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0xff0000

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, -0x1000000

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static getLength(FFFF)I
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 25
    sub-float v0, p0, p2

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .param p0, "a"    # Landroid/graphics/Point;
    .param p1, "b"    # Landroid/graphics/Point;

    .prologue
    .line 36
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/fh/util/MathUtils;->getLength(FFFF)I

    move-result v0

    return v0
.end method

.method public static getLong([B)J
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 207
    const-wide/16 v0, 0xff

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/32 v2, 0xff00

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff0000

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xff000000L

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xff00000000L

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xff0000000000L

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/high16 v2, 0xff000000000000L

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    const/4 v4, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRadian(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 6
    .param p0, "a"    # Landroid/graphics/Point;
    .param p1, "b"    # Landroid/graphics/Point;

    .prologue
    .line 62
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 64
    .local v1, "lenA":F
    iget v4, p0, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 66
    .local v2, "lenB":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 70
    .local v3, "lenC":F
    div-float v4, v1, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 72
    .local v0, "ang":F
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_0

    const/4 v4, -0x1

    :goto_0
    int-to-float v4, v4

    mul-float/2addr v4, v0

    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getShort([B)S
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 192
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const v1, 0xff00

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 230
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/fh/util/MathUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static inCircle(FFLandroid/graphics/Point;I)Z
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "bgPint"    # Landroid/graphics/Point;
    .param p3, "radius"    # I

    .prologue
    .line 77
    iget v3, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v1, p0, v3

    .line 78
    .local v1, "sx":F
    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v2, p1, v3

    .line 80
    .local v2, "sy":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 81
    .local v0, "f":F
    int-to-float v3, p3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 97
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
