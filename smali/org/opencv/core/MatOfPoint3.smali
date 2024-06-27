.class public Lorg/opencv/core/MatOfPoint3;
.super Lorg/opencv/core/Mat;
.source "MatOfPoint3.java"


# static fields
.field private static final _channels:I = 0x3

.field private static final _depth:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 13
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "addr"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 17
    invoke-virtual {p0}, Lorg/opencv/core/MatOfPoint3;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfPoint3;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 27
    invoke-static {}, Lorg/opencv/core/Range;->all()Lorg/opencv/core/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V

    .line 28
    invoke-virtual {p0}, Lorg/opencv/core/MatOfPoint3;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfPoint3;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/opencv/core/Point3;)V
    .locals 0
    .param p1, "a"    # [Lorg/opencv/core/Point3;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfPoint3;->fromArray([Lorg/opencv/core/Point3;)V

    .line 36
    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfPoint3;
    .locals 2
    .param p0, "addr"    # J

    .prologue
    .line 23
    new-instance v0, Lorg/opencv/core/MatOfPoint3;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfPoint3;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 3
    .param p1, "elemNumber"    # I

    .prologue
    .line 39
    if-lez p1, :cond_0

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v1

    invoke-super {p0, p1, v0, v1}, Lorg/opencv/core/Mat;->create(III)V

    .line 41
    :cond_0
    return-void
.end method

.method public varargs fromArray([Lorg/opencv/core/Point3;)V
    .locals 9
    .param p1, "a"    # [Lorg/opencv/core/Point3;

    .prologue
    const/4 v8, 0x0

    .line 44
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    array-length v2, p1

    .line 47
    .local v2, "num":I
    invoke-virtual {p0, v2}, Lorg/opencv/core/MatOfPoint3;->alloc(I)V

    .line 48
    mul-int/lit8 v4, v2, 0x3

    new-array v0, v4, [I

    .line 49
    .local v0, "buff":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 50
    aget-object v3, p1, v1

    .line 51
    .local v3, "p":Lorg/opencv/core/Point3;
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x0

    iget-wide v6, v3, Lorg/opencv/core/Point3;->x:D

    double-to-int v5, v6

    aput v5, v0, v4

    .line 52
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, v3, Lorg/opencv/core/Point3;->y:D

    double-to-int v5, v6

    aput v5, v0, v4

    .line 53
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    iget-wide v6, v3, Lorg/opencv/core/Point3;->z:D

    double-to-int v5, v6

    aput v5, v0, v4

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v3    # "p":Lorg/opencv/core/Point3;
    :cond_2
    invoke-virtual {p0, v8, v8, v0}, Lorg/opencv/core/MatOfPoint3;->put(II[I)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "lp":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/opencv/core/Point3;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/opencv/core/Point3;

    .line 72
    .local v0, "ap":[Lorg/opencv/core/Point3;
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfPoint3;->fromArray([Lorg/opencv/core/Point3;)V

    .line 73
    return-void
.end method

.method public toArray()[Lorg/opencv/core/Point3;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lorg/opencv/core/MatOfPoint3;->total()J

    move-result-wide v2

    long-to-int v10, v2

    .line 60
    .local v10, "num":I
    new-array v0, v10, [Lorg/opencv/core/Point3;

    .line 61
    .local v0, "ap":[Lorg/opencv/core/Point3;
    if-nez v10, :cond_1

    .line 67
    :cond_0
    return-object v0

    .line 63
    :cond_1
    mul-int/lit8 v1, v10, 0x3

    new-array v8, v1, [I

    .line 64
    .local v8, "buff":[I
    invoke-virtual {p0, v4, v4, v8}, Lorg/opencv/core/MatOfPoint3;->get(II[I)I

    .line 65
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 66
    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v9, 0x3

    aget v2, v8, v2

    int-to-double v2, v2

    mul-int/lit8 v4, v9, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    int-to-double v4, v4

    mul-int/lit8 v6, v9, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v8, v6

    int-to-double v6, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    aput-object v1, v0, v9

    .line 65
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/opencv/core/MatOfPoint3;->toArray()[Lorg/opencv/core/Point3;

    move-result-object v0

    .line 77
    .local v0, "ap":[Lorg/opencv/core/Point3;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
