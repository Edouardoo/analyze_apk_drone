.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;


# instance fields
.field public bits:[I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_0

    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    shr-int/lit8 v1, v1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 2

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    :goto_0
    if-lez p2, :cond_3

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public get(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 11

    const/16 v5, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ne p2, p1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v8, p2, -0x1

    shr-int/lit8 v7, p1, 0x5

    shr-int/lit8 v9, v8, 0x5

    move v6, v7

    :goto_1
    if-gt v6, v9, :cond_8

    if-le v6, v7, :cond_3

    move v3, v2

    :goto_2
    if-ge v6, v9, :cond_4

    move v4, v5

    :goto_3
    if-nez v3, :cond_5

    if-ne v4, v5, :cond_5

    const/4 v0, -0x1

    :cond_2
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v6

    and-int/2addr v3, v0

    if-eqz p3, :cond_6

    :goto_4
    if-eq v3, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_3
    and-int/lit8 v3, p1, 0x1f

    goto :goto_2

    :cond_4
    and-int/lit8 v0, v8, 0x1f

    move v4, v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_5
    if-gt v3, v4, :cond_2

    shl-int v10, v1, v3

    or-int/2addr v0, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public reverse()V
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    new-array v1, v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public set(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setBulk(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    return-void
.end method

.method public toBytes(I[BII)V
    .locals 7

    const/4 v2, 0x0

    move v4, v2

    move v3, p1

    :goto_0
    if-ge v4, p4, :cond_2

    move v1, v2

    move v0, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    rsub-int/lit8 v6, v1, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v1, p3, v4

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    iget-object v1, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
