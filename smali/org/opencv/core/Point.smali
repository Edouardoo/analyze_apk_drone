.class public Lorg/opencv/core/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 15
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/opencv/core/Point;->x:D

    .line 10
    iput-wide p3, p0, Lorg/opencv/core/Point;->y:D

    .line 11
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/opencv/core/Point;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lorg/opencv/core/Point;->set([D)V

    .line 20
    return-void
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
    .line 4
    invoke-virtual {p0}, Lorg/opencv/core/Point;->clone()Lorg/opencv/core/Point;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Point;
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public dot(Lorg/opencv/core/Point;)D
    .locals 6
    .param p1, "p"    # Lorg/opencv/core/Point;

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/opencv/core/Point;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    instance-of v3, p1, Lorg/opencv/core/Point;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 56
    check-cast v0, Lorg/opencv/core/Point;

    .line 57
    .local v0, "it":Lorg/opencv/core/Point;
    iget-wide v4, p0, Lorg/opencv/core/Point;->x:D

    iget-wide v6, v0, Lorg/opencv/core/Point;->x:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/Point;->y:D

    iget-wide v6, v0, Lorg/opencv/core/Point;->y:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    .line 42
    const/16 v0, 0x1f

    .line 43
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 45
    .local v1, "result":I
    iget-wide v4, p0, Lorg/opencv/core/Point;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 46
    .local v2, "temp":J
    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 47
    iget-wide v4, p0, Lorg/opencv/core/Point;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 48
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 49
    return v1
.end method

.method public inside(Lorg/opencv/core/Rect;)Z
    .locals 1
    .param p1, "r"    # Lorg/opencv/core/Rect;

    .prologue
    .line 61
    invoke-virtual {p1, p0}, Lorg/opencv/core/Rect;->contains(Lorg/opencv/core/Point;)Z

    move-result v0

    return v0
.end method

.method public set([D)V
    .locals 5
    .param p1, "vals"    # [D

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 23
    if-eqz p1, :cond_2

    .line 24
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Point;->x:D

    .line 25
    array-length v0, p1

    if-le v0, v4, :cond_0

    aget-wide v2, p1, v4

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/Point;->y:D

    .line 30
    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    .line 24
    goto :goto_0

    .line 27
    :cond_2
    iput-wide v2, p0, Lorg/opencv/core/Point;->x:D

    .line 28
    iput-wide v2, p0, Lorg/opencv/core/Point;->y:D

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
