.class public Lorg/opencv/core/MatOfInt;
.super Lorg/opencv/core/Mat;
.source "MatOfInt.java"


# static fields
.field private static final _channels:I = 0x1

.field private static final _depth:I = 0x4


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
    invoke-virtual {p0}, Lorg/opencv/core/MatOfInt;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfInt;->checkVector(II)I

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
    invoke-virtual {p0}, Lorg/opencv/core/MatOfInt;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfInt;->checkVector(II)I

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

.method public varargs constructor <init>([I)V
    .locals 0
    .param p1, "a"    # [I

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfInt;->fromArray([I)V

    .line 37
    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfInt;
    .locals 2
    .param p0, "addr"    # J

    .prologue
    .line 24
    new-instance v0, Lorg/opencv/core/MatOfInt;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfInt;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 2
    .param p1, "elemNumber"    # I

    .prologue
    const/4 v1, 0x1

    .line 40
    if-lez p1, :cond_0

    .line 41
    const/4 v0, 0x4

    invoke-static {v0, v1}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v0

    invoke-super {p0, p1, v1, v0}, Lorg/opencv/core/Mat;->create(III)V

    .line 42
    :cond_0
    return-void
.end method

.method public varargs fromArray([I)V
    .locals 3
    .param p1, "a"    # [I

    .prologue
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    array-length v1, p1

    div-int/lit8 v0, v1, 0x1

    .line 48
    .local v0, "num":I
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfInt;->alloc(I)V

    .line 49
    invoke-virtual {p0, v2, v2, p1}, Lorg/opencv/core/MatOfInt;->put(II[I)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "lb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 67
    .local v1, "ab":[Ljava/lang/Integer;
    array-length v3, v1

    new-array v0, v3, [I

    .line 68
    .local v0, "a":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 69
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfInt;->fromArray([I)V

    goto :goto_0
.end method

.method public toArray()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/opencv/core/MatOfInt;->checkVector(II)I

    move-result v1

    .line 54
    .local v1, "num":I
    if-gez v1, :cond_0

    .line 55
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native Mat has unexpected type or size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/opencv/core/MatOfInt;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    mul-int/lit8 v2, v1, 0x1

    new-array v0, v2, [I

    .line 57
    .local v0, "a":[I
    if-nez v1, :cond_1

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0, v4, v4, v0}, Lorg/opencv/core/MatOfInt;->get(II[I)I

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/opencv/core/MatOfInt;->toArray()[I

    move-result-object v0

    .line 75
    .local v0, "a":[I
    array-length v3, v0

    new-array v1, v3, [Ljava/lang/Integer;

    .line 76
    .local v1, "ab":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 77
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
