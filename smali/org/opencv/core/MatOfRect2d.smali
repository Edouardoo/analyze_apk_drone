.class public Lorg/opencv/core/MatOfRect2d;
.super Lorg/opencv/core/Mat;
.source "MatOfRect2d.java"


# static fields
.field private static final _channels:I = 0x4

.field private static final _depth:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 14
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "addr"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 18
    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfRect2d;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p1, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 28
    invoke-static {}, Lorg/opencv/core/Range;->all()Lorg/opencv/core/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V

    .line 29
    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfRect2d;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/opencv/core/Rect2d;)V
    .locals 0
    .param p1, "a"    # [Lorg/opencv/core/Rect2d;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfRect2d;->fromArray([Lorg/opencv/core/Rect2d;)V

    .line 37
    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfRect2d;
    .locals 2
    .param p0, "addr"    # J

    .prologue
    .line 24
    new-instance v0, Lorg/opencv/core/MatOfRect2d;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfRect2d;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 3
    .param p1, "elemNumber"    # I

    .prologue
    .line 40
    if-lez p1, :cond_0

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v1

    invoke-super {p0, p1, v0, v1}, Lorg/opencv/core/Mat;->create(III)V

    .line 42
    :cond_0
    return-void
.end method

.method public varargs fromArray([Lorg/opencv/core/Rect2d;)V
    .locals 8
    .param p1, "a"    # [Lorg/opencv/core/Rect2d;

    .prologue
    const/4 v5, 0x0

    .line 45
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    array-length v2, p1

    .line 48
    .local v2, "num":I
    invoke-virtual {p0, v2}, Lorg/opencv/core/MatOfRect2d;->alloc(I)V

    .line 49
    mul-int/lit8 v4, v2, 0x4

    new-array v0, v4, [D

    .line 50
    .local v0, "buff":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 51
    aget-object v3, p1, v1

    .line 52
    .local v3, "r":Lorg/opencv/core/Rect2d;
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    iget-wide v6, v3, Lorg/opencv/core/Rect2d;->x:D

    aput-wide v6, v0, v4

    .line 53
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, v3, Lorg/opencv/core/Rect2d;->y:D

    aput-wide v6, v0, v4

    .line 54
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    iget-wide v6, v3, Lorg/opencv/core/Rect2d;->width:D

    aput-wide v6, v0, v4

    .line 55
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    iget-wide v6, v3, Lorg/opencv/core/Rect2d;->height:D

    aput-wide v6, v0, v4

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "r":Lorg/opencv/core/Rect2d;
    :cond_2
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/MatOfRect2d;->put(II[D)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "lr":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Rect2d;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/opencv/core/Rect2d;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/opencv/core/Rect2d;

    .line 74
    .local v0, "ap":[Lorg/opencv/core/Rect2d;
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfRect2d;->fromArray([Lorg/opencv/core/Rect2d;)V

    .line 75
    return-void
.end method

.method public toArray()[Lorg/opencv/core/Rect2d;
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->total()J

    move-result-wide v2

    long-to-int v12, v2

    .line 63
    .local v12, "num":I
    new-array v0, v12, [Lorg/opencv/core/Rect2d;

    .line 64
    .local v0, "a":[Lorg/opencv/core/Rect2d;
    if-nez v12, :cond_1

    .line 70
    :cond_0
    return-object v0

    .line 66
    :cond_1
    mul-int/lit8 v1, v12, 0x4

    new-array v10, v1, [D

    .line 67
    .local v10, "buff":[D
    invoke-virtual {p0, v4, v4, v10}, Lorg/opencv/core/MatOfRect2d;->get(II[D)I

    .line 68
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 69
    new-instance v1, Lorg/opencv/core/Rect2d;

    mul-int/lit8 v2, v11, 0x4

    aget-wide v2, v10, v2

    mul-int/lit8 v4, v11, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v10, v4

    mul-int/lit8 v6, v11, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v10, v6

    mul-int/lit8 v8, v11, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-wide v8, v10, v8

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    aput-object v1, v0, v11

    .line 68
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->toArray()[Lorg/opencv/core/Rect2d;

    move-result-object v0

    .line 79
    .local v0, "ar":[Lorg/opencv/core/Rect2d;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
