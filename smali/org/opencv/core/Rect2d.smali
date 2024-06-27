.class public Lorg/opencv/core/Rect2d;
.super Ljava/lang/Object;
.source "Rect2d.java"


# instance fields
.field public height:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 16
    move-object v1, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    .line 17
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "width"    # D
    .param p7, "height"    # D

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/opencv/core/Rect2d;->x:D

    .line 10
    iput-wide p3, p0, Lorg/opencv/core/Rect2d;->y:D

    .line 11
    iput-wide p5, p0, Lorg/opencv/core/Rect2d;->width:D

    .line 12
    iput-wide p7, p0, Lorg/opencv/core/Rect2d;->height:D

    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)V
    .locals 4
    .param p1, "p1"    # Lorg/opencv/core/Point;
    .param p2, "p2"    # Lorg/opencv/core/Point;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->x:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->x:D

    .line 21
    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->y:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->y:D

    .line 22
    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->x:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    :goto_2
    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    .line 23
    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    :goto_3
    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->height:D

    .line 24
    return-void

    .line 20
    :cond_0
    iget-wide v0, p2, Lorg/opencv/core/Point;->x:D

    goto :goto_0

    .line 21
    :cond_1
    iget-wide v0, p2, Lorg/opencv/core/Point;->y:D

    goto :goto_1

    .line 22
    :cond_2
    iget-wide v0, p2, Lorg/opencv/core/Point;->x:D

    goto :goto_2

    .line 23
    :cond_3
    iget-wide v0, p2, Lorg/opencv/core/Point;->y:D

    goto :goto_3
.end method

.method public constructor <init>(Lorg/opencv/core/Point;Lorg/opencv/core/Size;)V
    .locals 10
    .param p1, "p"    # Lorg/opencv/core/Point;
    .param p2, "s"    # Lorg/opencv/core/Size;

    .prologue
    .line 27
    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v8, p2, Lorg/opencv/core/Size;->height:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    .line 28
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lorg/opencv/core/Rect2d;->set([D)V

    .line 32
    return-void
.end method


# virtual methods
.method public area()D
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public br()Lorg/opencv/core/Point;
    .locals 8

    .prologue
    .line 57
    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->width:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v6, p0, Lorg/opencv/core/Rect2d;->height:D

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
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
    invoke-virtual {p0}, Lorg/opencv/core/Rect2d;->clone()Lorg/opencv/core/Rect2d;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Rect2d;
    .locals 10

    .prologue
    .line 49
    new-instance v1, Lorg/opencv/core/Rect2d;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v6, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v8, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    return-object v1
.end method

.method public contains(Lorg/opencv/core/Point;)Z
    .locals 6
    .param p1, "p"    # Lorg/opencv/core/Point;

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->width:D

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v2, p1, Lorg/opencv/core/Point;->y:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->height:D

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public empty()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->height:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    instance-of v3, p1, Lorg/opencv/core/Rect2d;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 96
    check-cast v0, Lorg/opencv/core/Rect2d;

    .line 97
    .local v0, "it":Lorg/opencv/core/Rect2d;
    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v6, v0, Lorg/opencv/core/Rect2d;->x:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v6, v0, Lorg/opencv/core/Rect2d;->y:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Rect2d;->width:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->height:D

    iget-wide v6, v0, Lorg/opencv/core/Rect2d;->height:D

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

    .line 78
    const/16 v0, 0x1f

    .line 79
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 81
    .local v1, "result":I
    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 82
    .local v2, "temp":J
    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 83
    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 84
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 85
    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 86
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 87
    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 88
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 89
    return v1
.end method

.method public set([D)V
    .locals 7
    .param p1, "vals"    # [D

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 35
    if-eqz p1, :cond_4

    .line 36
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->x:D

    .line 37
    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v0, p1, v4

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->y:D

    .line 38
    array-length v0, p1

    if-le v0, v5, :cond_3

    aget-wide v0, p1, v5

    :goto_2
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    .line 39
    array-length v0, p1

    if-le v0, v6, :cond_0

    aget-wide v2, p1, v6

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    .line 46
    :goto_3
    return-void

    :cond_1
    move-wide v0, v2

    .line 36
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 37
    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 38
    goto :goto_2

    .line 41
    :cond_4
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    .line 42
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    .line 43
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    .line 44
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    goto :goto_3
.end method

.method public size()Lorg/opencv/core/Size;
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Size;-><init>(DD)V

    return-object v0
.end method

.method public tl()Lorg/opencv/core/Point;
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
