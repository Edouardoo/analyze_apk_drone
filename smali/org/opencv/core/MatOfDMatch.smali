.class public Lorg/opencv/core/MatOfDMatch;
.super Lorg/opencv/core/Mat;
.source "MatOfDMatch.java"


# static fields
.field private static final _channels:I = 0x4

.field private static final _depth:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 15
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "addr"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 19
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDMatch;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible Mat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;)V
    .locals 3
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 29
    invoke-static {}, Lorg/opencv/core/Range;->all()Lorg/opencv/core/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V

    .line 30
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDMatch;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible Mat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/opencv/core/DMatch;)V
    .locals 0
    .param p1, "ap"    # [Lorg/opencv/core/DMatch;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfDMatch;->fromArray([Lorg/opencv/core/DMatch;)V

    .line 38
    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfDMatch;
    .locals 2
    .param p0, "addr"    # J

    .prologue
    .line 25
    new-instance v0, Lorg/opencv/core/MatOfDMatch;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfDMatch;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 3
    .param p1, "elemNumber"    # I

    .prologue
    .line 41
    if-lez p1, :cond_0

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v1

    invoke-super {p0, p1, v0, v1}, Lorg/opencv/core/Mat;->create(III)V

    .line 43
    :cond_0
    return-void
.end method

.method public varargs fromArray([Lorg/opencv/core/DMatch;)V
    .locals 7
    .param p1, "a"    # [Lorg/opencv/core/DMatch;

    .prologue
    const/4 v6, 0x0

    .line 47
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    array-length v3, p1

    .line 50
    .local v3, "num":I
    invoke-virtual {p0, v3}, Lorg/opencv/core/MatOfDMatch;->alloc(I)V

    .line 51
    mul-int/lit8 v4, v3, 0x4

    new-array v0, v4, [F

    .line 52
    .local v0, "buff":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 53
    aget-object v2, p1, v1

    .line 54
    .local v2, "m":Lorg/opencv/core/DMatch;
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    iget v5, v2, Lorg/opencv/core/DMatch;->queryIdx:I

    int-to-float v5, v5

    aput v5, v0, v4

    .line 55
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    iget v5, v2, Lorg/opencv/core/DMatch;->trainIdx:I

    int-to-float v5, v5

    aput v5, v0, v4

    .line 56
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    iget v5, v2, Lorg/opencv/core/DMatch;->imgIdx:I

    int-to-float v5, v5

    aput v5, v0, v4

    .line 57
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    iget v5, v2, Lorg/opencv/core/DMatch;->distance:F

    aput v5, v0, v4

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v2    # "m":Lorg/opencv/core/DMatch;
    :cond_2
    invoke-virtual {p0, v6, v6, v0}, Lorg/opencv/core/MatOfDMatch;->put(II[F)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "ldm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/DMatch;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/opencv/core/DMatch;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/opencv/core/DMatch;

    .line 76
    .local v0, "adm":[Lorg/opencv/core/DMatch;
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfDMatch;->fromArray([Lorg/opencv/core/DMatch;)V

    .line 77
    return-void
.end method

.method public toArray()[Lorg/opencv/core/DMatch;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->total()J

    move-result-wide v4

    long-to-int v3, v4

    .line 64
    .local v3, "num":I
    new-array v0, v3, [Lorg/opencv/core/DMatch;

    .line 65
    .local v0, "a":[Lorg/opencv/core/DMatch;
    if-nez v3, :cond_1

    .line 71
    :cond_0
    return-object v0

    .line 67
    :cond_1
    mul-int/lit8 v4, v3, 0x4

    new-array v1, v4, [F

    .line 68
    .local v1, "buff":[F
    invoke-virtual {p0, v6, v6, v1}, Lorg/opencv/core/MatOfDMatch;->get(II[F)I

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 70
    new-instance v4, Lorg/opencv/core/DMatch;

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v5, v1, v5

    float-to-int v5, v5

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v6, v1, v6

    float-to-int v6, v6

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    aget v7, v1, v7

    float-to-int v7, v7

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x3

    aget v8, v1, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/opencv/core/DMatch;-><init>(IIIF)V

    aput-object v4, v0, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->toArray()[Lorg/opencv/core/DMatch;

    move-result-object v0

    .line 81
    .local v0, "adm":[Lorg/opencv/core/DMatch;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
