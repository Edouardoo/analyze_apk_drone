.class public Lorg/opencv/core/RotatedRect;
.super Ljava/lang/Object;
.source "RotatedRect.java"


# instance fields
.field public angle:D

.field public center:Lorg/opencv/core/Point;

.field public size:Lorg/opencv/core/Size;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/opencv/core/Point;

    invoke-direct {v0}, Lorg/opencv/core/Point;-><init>()V

    iput-object v0, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    .line 12
    new-instance v0, Lorg/opencv/core/Size;

    invoke-direct {v0}, Lorg/opencv/core/Size;-><init>()V

    iput-object v0, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/opencv/core/RotatedRect;->angle:D

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Point;Lorg/opencv/core/Size;D)V
    .locals 1
    .param p1, "c"    # Lorg/opencv/core/Point;
    .param p2, "s"    # Lorg/opencv/core/Size;
    .param p3, "a"    # D

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/opencv/core/Point;->clone()Lorg/opencv/core/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    .line 18
    invoke-virtual {p2}, Lorg/opencv/core/Size;->clone()Lorg/opencv/core/Size;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    .line 19
    iput-wide p3, p0, Lorg/opencv/core/RotatedRect;->angle:D

    .line 20
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/opencv/core/RotatedRect;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lorg/opencv/core/RotatedRect;->set([D)V

    .line 25
    return-void
.end method


# virtual methods
.method public boundingRect()Lorg/opencv/core/Rect;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    const/4 v2, 0x4

    new-array v0, v2, [Lorg/opencv/core/Point;

    .line 69
    .local v0, "pt":[Lorg/opencv/core/Point;
    invoke-virtual {p0, v0}, Lorg/opencv/core/RotatedRect;->points([Lorg/opencv/core/Point;)V

    .line 70
    new-instance v1, Lorg/opencv/core/Rect;

    aget-object v2, v0, v8

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    aget-object v4, v0, v9

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    aget-object v4, v0, v10

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    aget-object v4, v0, v11

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aget-object v3, v0, v8

    iget-wide v4, v3, Lorg/opencv/core/Point;->y:D

    aget-object v3, v0, v9

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    .line 71
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aget-object v3, v0, v10

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aget-object v3, v0, v11

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    aget-object v4, v0, v8

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    aget-object v6, v0, v9

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    .line 72
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aget-object v6, v0, v10

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aget-object v6, v0, v11

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    aget-object v5, v0, v8

    iget-wide v6, v5, Lorg/opencv/core/Point;->y:D

    aget-object v5, v0, v9

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    .line 73
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aget-object v5, v0, v10

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aget-object v5, v0, v11

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/opencv/core/Rect;-><init>(IIII)V

    .line 74
    .local v1, "r":Lorg/opencv/core/Rect;
    iget v2, v1, Lorg/opencv/core/Rect;->width:I

    iget v3, v1, Lorg/opencv/core/Rect;->x:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/opencv/core/Rect;->width:I

    .line 75
    iget v2, v1, Lorg/opencv/core/Rect;->height:I

    iget v3, v1, Lorg/opencv/core/Rect;->y:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/opencv/core/Rect;->height:I

    .line 76
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4
    invoke-virtual {p0}, Lorg/opencv/core/RotatedRect;->clone()Lorg/opencv/core/RotatedRect;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/RotatedRect;
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lorg/opencv/core/RotatedRect;

    iget-object v1, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-object v2, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v4, p0, Lorg/opencv/core/RotatedRect;->angle:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/opencv/core/RotatedRect;-><init>(Lorg/opencv/core/Point;Lorg/opencv/core/Size;D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    instance-of v3, p1, Lorg/opencv/core/RotatedRect;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lorg/opencv/core/RotatedRect;

    .line 106
    .local v0, "it":Lorg/opencv/core/RotatedRect;
    iget-object v3, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-object v4, v0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    invoke-virtual {v3, v4}, Lorg/opencv/core/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-object v4, v0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    invoke-virtual {v3, v4}, Lorg/opencv/core/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/RotatedRect;->angle:D

    iget-wide v6, v0, Lorg/opencv/core/RotatedRect;->angle:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 85
    const/16 v0, 0x1f

    .line 86
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 88
    .local v1, "result":I
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 89
    .local v2, "temp":J
    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 90
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 91
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 92
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v4, v4, Lorg/opencv/core/Size;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 93
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 94
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v4, v4, Lorg/opencv/core/Size;->height:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 95
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 96
    iget-wide v4, p0, Lorg/opencv/core/RotatedRect;->angle:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 97
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 98
    return v1
.end method

.method public points([Lorg/opencv/core/Point;)V
    .locals 14
    .param p1, "pt"    # [Lorg/opencv/core/Point;

    .prologue
    .line 45
    iget-wide v6, p0, Lorg/opencv/core/RotatedRect;->angle:D

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v0, v6, v8

    .line 46
    .local v0, "_angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v4, v6, v8

    .line 47
    .local v4, "b":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v2, v6, v8

    .line 49
    .local v2, "a":D
    const/4 v6, 0x0

    new-instance v7, Lorg/opencv/core/Point;

    iget-object v8, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v10, v10, Lorg/opencv/core/Size;->height:D

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v10, v10, Lorg/opencv/core/Size;->width:D

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    iget-object v12, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v12, v12, Lorg/opencv/core/Size;->height:D

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    iget-object v12, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v12, v12, Lorg/opencv/core/Size;->width:D

    mul-double/2addr v12, v2

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v7, p1, v6

    .line 53
    const/4 v6, 0x1

    new-instance v7, Lorg/opencv/core/Point;

    iget-object v8, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v10, v10, Lorg/opencv/core/Size;->height:D

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v10, v10, Lorg/opencv/core/Size;->width:D

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    iget-object v12, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v12, v12, Lorg/opencv/core/Size;->height:D

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    iget-object v12, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v12, v12, Lorg/opencv/core/Size;->width:D

    mul-double/2addr v12, v2

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v7, p1, v6

    .line 57
    const/4 v6, 0x2

    new-instance v7, Lorg/opencv/core/Point;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v10, v10, Lorg/opencv/core/Point;->x:D

    mul-double/2addr v8, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-object v12, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v12, v12, Lorg/opencv/core/Point;->y:D

    mul-double/2addr v10, v12

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget-wide v12, v12, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v7, p1, v6

    .line 61
    const/4 v6, 0x3

    new-instance v7, Lorg/opencv/core/Point;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-object v10, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v10, v10, Lorg/opencv/core/Point;->x:D

    mul-double/2addr v8, v10

    const/4 v10, 0x1

    aget-object v10, p1, v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-object v12, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iget-wide v12, v12, Lorg/opencv/core/Point;->y:D

    mul-double/2addr v10, v12

    const/4 v12, 0x1

    aget-object v12, p1, v12

    iget-wide v12, v12, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v7, p1, v6

    .line 64
    return-void
.end method

.method public set([D)V
    .locals 9
    .param p1, "vals"    # [D

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    .line 28
    if-eqz p1, :cond_5

    .line 29
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, v4, Lorg/opencv/core/Point;->x:D

    .line 30
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    array-length v0, p1

    if-le v0, v5, :cond_2

    aget-wide v0, p1, v5

    :goto_1
    iput-wide v0, v4, Lorg/opencv/core/Point;->y:D

    .line 31
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    array-length v0, p1

    if-le v0, v6, :cond_3

    aget-wide v0, p1, v6

    :goto_2
    iput-wide v0, v4, Lorg/opencv/core/Size;->width:D

    .line 32
    iget-object v4, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    array-length v0, p1

    if-le v0, v7, :cond_4

    aget-wide v0, p1, v7

    :goto_3
    iput-wide v0, v4, Lorg/opencv/core/Size;->height:D

    .line 33
    array-length v0, p1

    if-le v0, v8, :cond_0

    aget-wide v2, p1, v8

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/RotatedRect;->angle:D

    .line 41
    :goto_4
    return-void

    :cond_1
    move-wide v0, v2

    .line 29
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 30
    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 31
    goto :goto_2

    :cond_4
    move-wide v0, v2

    .line 32
    goto :goto_3

    .line 35
    :cond_5
    iget-object v0, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iput-wide v2, v0, Lorg/opencv/core/Point;->x:D

    .line 36
    iget-object v0, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    iput-wide v2, v0, Lorg/opencv/core/Point;->x:D

    .line 37
    iget-object v0, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iput-wide v2, v0, Lorg/opencv/core/Size;->width:D

    .line 38
    iget-object v0, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iput-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .line 39
    iput-wide v2, p0, Lorg/opencv/core/RotatedRect;->angle:D

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/core/RotatedRect;->center:Lorg/opencv/core/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/RotatedRect;->angle:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
