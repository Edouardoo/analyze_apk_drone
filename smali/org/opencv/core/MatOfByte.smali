.class public Lorg/opencv/core/MatOfByte;
.super Lorg/opencv/core/Mat;
.source "MatOfByte.java"


# static fields
.field private static final _channels:I = 0x1

.field private static final _depth:I


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
    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfByte;->checkVector(II)I

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
    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfByte;->checkVector(II)I

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

.method public varargs constructor <init>([B)V
    .locals 0
    .param p1, "a"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfByte;->fromArray([B)V

    .line 36
    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfByte;
    .locals 2
    .param p0, "addr"    # J

    .prologue
    .line 23
    new-instance v0, Lorg/opencv/core/MatOfByte;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfByte;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 2
    .param p1, "elemNumber"    # I

    .prologue
    const/4 v1, 0x1

    .line 39
    if-lez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v0

    invoke-super {p0, p1, v1, v0}, Lorg/opencv/core/Mat;->create(III)V

    .line 41
    :cond_0
    return-void
.end method

.method public varargs fromArray([B)V
    .locals 3
    .param p1, "a"    # [B

    .prologue
    const/4 v2, 0x0

    .line 44
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    array-length v1, p1

    div-int/lit8 v0, v1, 0x1

    .line 47
    .local v0, "num":I
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfByte;->alloc(I)V

    .line 48
    invoke-virtual {p0, v2, v2, p1}, Lorg/opencv/core/MatOfByte;->put(II[B)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "lb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Byte;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Byte;

    .line 66
    .local v1, "ab":[Ljava/lang/Byte;
    array-length v3, v1

    new-array v0, v3, [B

    .line 67
    .local v0, "a":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 68
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfByte;->fromArray([B)V

    goto :goto_0
.end method

.method public toArray()[B
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/opencv/core/MatOfByte;->checkVector(II)I

    move-result v1

    .line 53
    .local v1, "num":I
    if-gez v1, :cond_0

    .line 54
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native Mat has unexpected type or size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    mul-int/lit8 v2, v1, 0x1

    new-array v0, v2, [B

    .line 56
    .local v0, "a":[B
    if-nez v1, :cond_1

    .line 59
    :goto_0
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0, v3, v3, v0}, Lorg/opencv/core/MatOfByte;->get(II[B)I

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->toArray()[B

    move-result-object v0

    .line 74
    .local v0, "a":[B
    array-length v3, v0

    new-array v1, v3, [Ljava/lang/Byte;

    .line 75
    .local v1, "ab":[Ljava/lang/Byte;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 76
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
