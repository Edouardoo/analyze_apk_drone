.class public Lorg/opencv/core/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0}, Lorg/opencv/core/Range;-><init>(II)V

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "e"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lorg/opencv/core/Range;->start:I

    .line 10
    iput p2, p0, Lorg/opencv/core/Range;->end:I

    .line 11
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lorg/opencv/core/Range;->set([D)V

    .line 19
    return-void
.end method

.method public static all()Lorg/opencv/core/Range;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/opencv/core/Range;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    return-object v0
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
    invoke-virtual {p0}, Lorg/opencv/core/Range;->clone()Lorg/opencv/core/Range;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Range;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/opencv/core/Range;

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    iget v2, p0, Lorg/opencv/core/Range;->end:I

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    return-object v0
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lorg/opencv/core/Range;->end:I

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    instance-of v3, p1, Lorg/opencv/core/Range;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 74
    check-cast v0, Lorg/opencv/core/Range;

    .line 75
    .local v0, "it":Lorg/opencv/core/Range;
    iget v3, p0, Lorg/opencv/core/Range;->start:I

    iget v4, v0, Lorg/opencv/core/Range;->start:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/opencv/core/Range;->end:I

    iget v4, v0, Lorg/opencv/core/Range;->end:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    .line 60
    const/16 v0, 0x1f

    .line 61
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 63
    .local v1, "result":I
    iget v4, p0, Lorg/opencv/core/Range;->start:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 64
    .local v2, "temp":J
    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 65
    iget v4, p0, Lorg/opencv/core/Range;->end:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 66
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 67
    return v1
.end method

.method public intersection(Lorg/opencv/core/Range;)Lorg/opencv/core/Range;
    .locals 4
    .param p1, "r1"    # Lorg/opencv/core/Range;

    .prologue
    .line 45
    new-instance v0, Lorg/opencv/core/Range;

    iget v1, p1, Lorg/opencv/core/Range;->start:I

    iget v2, p0, Lorg/opencv/core/Range;->start:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lorg/opencv/core/Range;->end:I

    iget v3, p0, Lorg/opencv/core/Range;->end:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    .line 46
    .local v0, "r":Lorg/opencv/core/Range;
    iget v1, v0, Lorg/opencv/core/Range;->end:I

    iget v2, v0, Lorg/opencv/core/Range;->start:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/opencv/core/Range;->end:I

    .line 47
    return-object v0
.end method

.method public set([D)V
    .locals 5
    .param p1, "vals"    # [D

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_2

    .line 23
    array-length v0, p1

    if-lez v0, :cond_1

    aget-wide v2, p1, v1

    double-to-int v0, v2

    :goto_0
    iput v0, p0, Lorg/opencv/core/Range;->start:I

    .line 24
    array-length v0, p1

    if-le v0, v4, :cond_0

    aget-wide v0, p1, v4

    double-to-int v1, v0

    :cond_0
    iput v1, p0, Lorg/opencv/core/Range;->end:I

    .line 30
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 23
    goto :goto_0

    .line 26
    :cond_2
    iput v1, p0, Lorg/opencv/core/Range;->start:I

    .line 27
    iput v1, p0, Lorg/opencv/core/Range;->end:I

    goto :goto_1
.end method

.method public shift(I)Lorg/opencv/core/Range;
    .locals 3
    .param p1, "delta"    # I

    .prologue
    .line 51
    new-instance v0, Lorg/opencv/core/Range;

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/opencv/core/Range;->end:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/opencv/core/Range;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/opencv/core/Range;->end:I

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/Range;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
