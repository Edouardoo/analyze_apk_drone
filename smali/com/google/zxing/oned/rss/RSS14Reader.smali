.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/Vector;

.field private final possibleRightPairs:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    return-void
.end method

.method private static addOrTally(Ljava/util/Vector;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddCounts:[I

    invoke-static {v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->evenCounts:[I

    invoke-static {v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v9

    add-int v0, v8, v9

    sub-int v10, v0, p2

    and-int/lit8 v2, v8, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    if-ne v2, v0, :cond_1

    move v7, v1

    :goto_1
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v1, :cond_2

    move v6, v1

    :goto_2
    if-eqz p1, :cond_5

    if-le v8, v12, :cond_3

    move v3, v1

    move v4, v5

    :goto_3
    if-le v9, v12, :cond_4

    move v0, v1

    move v2, v5

    :goto_4
    if-ne v10, v1, :cond_c

    if-eqz v7, :cond_a

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_2

    :cond_3
    if-ge v8, v11, :cond_1d

    move v3, v5

    move v4, v1

    goto :goto_3

    :cond_4
    if-ge v9, v11, :cond_1b

    move v0, v5

    move v2, v1

    goto :goto_4

    :cond_5
    const/16 v0, 0xb

    if-le v8, v0, :cond_6

    move v3, v1

    move v4, v5

    :goto_5
    const/16 v0, 0xa

    if-le v9, v0, :cond_7

    move v0, v1

    move v2, v5

    goto :goto_4

    :cond_6
    const/4 v0, 0x5

    if-ge v8, v0, :cond_1c

    move v3, v5

    move v4, v1

    goto :goto_5

    :cond_7
    if-ge v9, v11, :cond_1b

    move v0, v5

    move v2, v1

    goto :goto_4

    :cond_8
    move v3, v1

    :cond_9
    :goto_6
    if-eqz v4, :cond_16

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a
    if-nez v6, :cond_b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    const/4 v5, -0x1

    if-ne v10, v5, :cond_10

    if-eqz v7, :cond_e

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    move v4, v1

    goto :goto_6

    :cond_e
    if-nez v6, :cond_f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    move v2, v1

    goto :goto_6

    :cond_10
    if-nez v10, :cond_14

    if-eqz v7, :cond_13

    if-nez v6, :cond_11

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    if-ge v8, v9, :cond_12

    move v0, v1

    move v4, v1

    goto :goto_6

    :cond_12
    move v2, v1

    move v3, v1

    goto :goto_6

    :cond_13
    if-eqz v6, :cond_9

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddCounts:[I

    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddRoundingErrors:[F

    invoke-static {v1, v4}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    :cond_16
    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddCounts:[I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddRoundingErrors:[F

    invoke-static {v1, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    :cond_17
    if-eqz v2, :cond_19

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->evenCounts:[I

    iget-object v2, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddRoundingErrors:[F

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    :cond_19
    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->evenCounts:[I

    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->evenRoundingErrors:[F

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    :cond_1a
    return-void

    :cond_1b
    move v0, v5

    move v2, v5

    goto/16 :goto_4

    :cond_1c
    move v3, v5

    move v4, v5

    goto/16 :goto_5

    :cond_1d
    move v3, v5

    move v4, v5

    goto/16 :goto_3
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    if-nez v0, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x4f

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x48

    if-le v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-le v0, v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-wide/32 v2, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    :goto_0
    if-lez v0, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    move v3, v1

    :goto_1
    const/16 v0, 0xd

    if-ge v2, v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    mul-int/lit8 v0, v0, 0x3

    :cond_1
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, v3, 0xa

    rsub-int/lit8 v0, v0, 0xa

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    new-instance v3, Lcom/google/zxing/Result;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aget-object v7, v0, v1

    aput-object v7, v6, v1

    aget-object v0, v0, v8

    aput-object v0, v6, v8

    const/4 v0, 0x2

    aget-object v1, v2, v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v1, v2, v8

    aput-object v1, v6, v0

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->dataCharacterCounters:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v3, v0

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x10

    :goto_0
    invoke-static {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v4, v1, v2

    iget-object v5, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddCounts:[I

    iget-object v6, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->evenCounts:[I

    iget-object v7, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->oddRoundingErrors:[F

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->evenRoundingErrors:[F

    const/4 v1, 0x0

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_6

    aget v2, v3, v1

    int-to-float v2, v2

    div-float v9, v2, v4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v9

    float-to-int v2, v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_4

    const/4 v2, 0x1

    :cond_1
    :goto_2
    shr-int/lit8 v10, v1, 0x1

    and-int/lit8 v11, v1, 0x1

    if-nez v11, :cond_5

    aput v2, v5, v10

    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v7, v10

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v1, 0x0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ge v1, v0, :cond_0

    aget v2, v3, v1

    aget v4, v3, v0

    aput v4, v3, v1

    aput v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_3
    const/16 v0, 0xf

    goto :goto_0

    :cond_4
    const/16 v10, 0x8

    if-le v2, v10, :cond_1

    const/16 v2, 0x8

    goto :goto_2

    :cond_5
    aput v2, v6, v10

    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v8, v10

    goto :goto_3

    :cond_6
    invoke-direct {p0, p3, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    :goto_5
    if-ltz v0, :cond_7

    mul-int/lit8 v1, v3, 0x9

    aget v2, v5, v0

    add-int/2addr v1, v2

    aget v2, v5, v0

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_8

    mul-int/lit8 v2, v2, 0x9

    aget v7, v6, v0

    add-int/2addr v2, v7

    aget v7, v6, v0

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_8
    mul-int/lit8 v0, v2, 0x3

    add-int v2, v3, v0

    if-eqz p3, :cond_b

    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_9

    const/16 v0, 0xc

    if-gt v4, v0, :cond_9

    const/4 v0, 0x4

    if-ge v4, v0, :cond_a

    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a
    rsub-int/lit8 v0, v4, 0xc

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v3, v1, 0x9

    const/4 v4, 0x0

    invoke-static {v5, v1, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v6, v3, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v4, v4, v0

    sget-object v5, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v5, v5, v0

    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    :goto_7
    return-object v0

    :cond_b
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_c

    const/16 v0, 0xa

    if-gt v1, v0, :cond_c

    const/4 v0, 0x4

    if-ge v1, v0, :cond_d

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    rsub-int/lit8 v0, v1, 0xa

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v3, v1, 0x9

    const/4 v4, 0x1

    invoke-static {v5, v1, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v6, v3, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v4, v4, v0

    sget-object v5, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v5, v5, v0

    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_7
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Hashtable;)Lcom/google/zxing/oned/rss/Pair;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v3

    invoke-direct {p0, p1, p3, p2, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    if-nez p4, :cond_2

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-float v0, v3, v0

    :cond_0
    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v5, p3

    invoke-direct {v3, v0, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v2, v3}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v4, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v4, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    new-instance v0, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x63d

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-direct {v0, v5, v2, v4}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeFinderCounters:[I

    aput v4, v8, v4

    aput v4, v8, v3

    aput v4, v8, v10

    aput v4, v8, v11

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    move v0, v4

    move v7, p2

    :goto_0
    if-ge v7, v9, :cond_0

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    if-ne p3, v0, :cond_2

    :cond_0
    move v6, v7

    move v1, v7

    move v2, v4

    move v5, v0

    :goto_2
    if-ge v6, v9, :cond_7

    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_3

    aget v0, v8, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, v8, v2

    move v0, v1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-ne v2, v11, :cond_5

    invoke-static {v8}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v10, [I

    aput v1, v0, v4

    aput v6, v0, v3

    return-object v0

    :cond_4
    aget v0, v8, v4

    aget v7, v8, v3

    add-int/2addr v0, v7

    add-int/2addr v0, v1

    aget v1, v8, v10

    aput v1, v8, v4

    aget v1, v8, v11

    aput v1, v8, v3

    aput v4, v8, v10

    aput v4, v8, v11

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    :goto_4
    aput v3, v8, v2

    if-nez v5, :cond_6

    move v1, v3

    :goto_5
    move v5, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_4

    :cond_6
    move v1, v4

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget v0, p4, v6

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    aget v0, p4, v6

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v0, 0x1

    aget v0, p4, v6

    sub-int v1, v0, v5

    iget-object v2, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeFinderCounters:[I

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    aput v1, v2, v6

    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v2, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    aget v4, p4, v7

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    :goto_2
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v5, v2, v6

    aget v5, p4, v7

    aput v5, v2, v7

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0

    :cond_2
    move v3, v5

    goto :goto_2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Hashtable;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Vector;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-direct {p0, p2, v8, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Hashtable;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Vector;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v1

    if-le v1, v8, :cond_1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v7

    if-le v7, v8, :cond_0

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method
