.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBitArray(Ljava/util/Vector;)Lcom/google/zxing/common/BitArray;
    .locals 9

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v1, -0x1

    :goto_0
    mul-int/lit8 v0, v0, 0xc

    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    move v1, v4

    move v0, v3

    :goto_1
    if-ltz v1, :cond_1

    shl-int v3, v2, v1

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {v6, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    move v5, v4

    :goto_3
    if-ltz v5, :cond_3

    shl-int v8, v2, v5

    and-int/2addr v8, v7

    if-eqz v8, :cond_2

    invoke-virtual {v6, v3}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    move v0, v4

    :goto_4
    if-ltz v0, :cond_5

    shl-int v7, v2, v0

    and-int/2addr v7, v5

    if-eqz v7, :cond_4

    invoke-virtual {v6, v3}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    return-object v6

    :cond_7
    move v0, v1

    goto :goto_0
.end method
