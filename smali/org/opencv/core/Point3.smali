.class public Lorg/opencv/core/Point3;
.super Ljava/lang/Object;
.source "Point3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    move-object v1, p0

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    .line 16
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/opencv/core/Point3;->x:D

    .line 10
    iput-wide p3, p0, Lorg/opencv/core/Point3;->y:D

    .line 11
    iput-wide p5, p0, Lorg/opencv/core/Point3;->z:D

    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Point;)V
    .locals 2
    .param p1, "p"    # Lorg/opencv/core/Point;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iput-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    .line 20
    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iput-wide v0, p0, Lorg/opencv/core/Point3;->y:D

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/opencv/core/Point3;->z:D

    .line 22
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/opencv/core/Point3;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lorg/opencv/core/Point3;->set([D)V

    .line 27
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
    invoke-virtual {p0}, Lorg/opencv/core/Point3;->clone()Lorg/opencv/core/Point3;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Point3;
    .locals 8

    .prologue
    .line 42
    new-instance v1, Lorg/opencv/core/Point3;

    iget-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v6, p0, Lorg/opencv/core/Point3;->z:D

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    return-object v1
.end method

.method public cross(Lorg/opencv/core/Point3;)Lorg/opencv/core/Point3;
    .locals 12
    .param p1, "p"    # Lorg/opencv/core/Point3;

    .prologue
    .line 50
    new-instance v1, Lorg/opencv/core/Point3;

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->z:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v6, p1, Lorg/opencv/core/Point3;->y:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v6, p1, Lorg/opencv/core/Point3;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v8, p1, Lorg/opencv/core/Point3;->z:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v8, p1, Lorg/opencv/core/Point3;->y:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v10, p1, Lorg/opencv/core/Point3;->x:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    return-object v1
.end method

.method public dot(Lorg/opencv/core/Point3;)D
    .locals 6
    .param p1, "p"    # Lorg/opencv/core/Point3;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v2, p1, Lorg/opencv/core/Point3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->z:D

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

    .line 69
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    instance-of v3, p1, Lorg/opencv/core/Point3;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/opencv/core/Point3;

    .line 72
    .local v0, "it":Lorg/opencv/core/Point3;
    iget-wide v4, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v6, v0, Lorg/opencv/core/Point3;->x:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v6, v0, Lorg/opencv/core/Point3;->y:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v6, v0, Lorg/opencv/core/Point3;->z:D

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

    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-wide v4, p0, Lorg/opencv/core/Point3;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 59
    .local v2, "temp":J
    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 60
    iget-wide v4, p0, Lorg/opencv/core/Point3;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 61
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 62
    iget-wide v4, p0, Lorg/opencv/core/Point3;->z:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 64
    return v1
.end method

.method public set([D)V
    .locals 6
    .param p1, "vals"    # [D

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 30
    if-eqz p1, :cond_3

    .line 31
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    .line 32
    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v0, p1, v4

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/Point3;->y:D

    .line 33
    array-length v0, p1

    if-le v0, v5, :cond_0

    aget-wide v2, p1, v5

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    .line 39
    :goto_2
    return-void

    :cond_1
    move-wide v0, v2

    .line 31
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 32
    goto :goto_1

    .line 35
    :cond_3
    iput-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    .line 36
    iput-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    .line 37
    iput-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
