.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;,
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method private selectBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v4

    aput-object v3, v1, v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v6, v0}, Lcom/google/zxing/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/google/zxing/common/Comparator;)V

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    add-int/lit8 v0, v7, -0x2

    if-ge v5, v0, :cond_a

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v4, v1

    :goto_2
    add-int/lit8 v1, v7, -0x1

    if-ge v4, v1, :cond_2

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v1, :cond_5

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v9

    if-lez v3, :cond_6

    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_2

    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    :goto_3
    if-ge v3, v7, :cond_4

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v2, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    const v10, 0x3d4ccccd    # 0.05f

    cmpl-float v9, v9, v10

    if-gez v9, :cond_4

    :cond_9
    const/4 v9, 0x3

    new-array v9, v9, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v2, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v11

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    add-float v12, v10, v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x43340000    # 180.0f

    cmpl-float v13, v12, v13

    if-gtz v13, :cond_7

    const/high16 v13, 0x41100000    # 9.0f

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_7

    sub-float v12, v10, v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    cmpl-float v12, v12, v13

    if-gez v12, :cond_7

    mul-float/2addr v10, v10

    mul-float/2addr v2, v2

    add-float/2addr v2, v10

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    sub-float v10, v11, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v10, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v10

    if-gez v2, :cond_7

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Hashtable;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    int-to-float v3, v9

    const/high16 v5, 0x43640000    # 228.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    if-lt v3, v4, :cond_0

    if-eqz v0, :cond_10

    :cond_0
    move v0, v4

    :goto_1
    const/4 v3, 0x5

    new-array v11, v3, [I

    add-int/lit8 v3, v0, -0x1

    move v7, v3

    :goto_2
    if-ge v7, v9, :cond_b

    aput v2, v11, v2

    aput v2, v11, v1

    aput v2, v11, v13

    aput v2, v11, v4

    aput v2, v11, v12

    move v5, v2

    move v3, v2

    :goto_3
    if-ge v5, v10, :cond_9

    invoke-virtual {v8, v5, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_3

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    aget v6, v11, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v11, v3

    move v6, v3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_8

    if-ne v3, v12, :cond_7

    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v11, v7, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v10, :cond_5

    invoke-virtual {v8, v5, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    add-int/lit8 v3, v5, -0x1

    :goto_5
    aput v2, v11, v2

    aput v2, v11, v1

    aput v2, v11, v13

    aput v2, v11, v4

    aput v2, v11, v12

    move v5, v3

    move v6, v2

    goto :goto_4

    :cond_6
    aget v3, v11, v13

    aput v3, v11, v2

    aget v3, v11, v4

    aput v3, v11, v1

    aget v3, v11, v12

    aput v3, v11, v13

    aput v1, v11, v4

    aput v2, v11, v12

    move v6, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    aget v6, v11, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v11, v3

    move v6, v3

    goto :goto_4

    :cond_8
    aget v6, v11, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v11, v3

    move v6, v3

    goto :goto_4

    :cond_9
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v11, v7, v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    :cond_a
    add-int v3, v7, v0

    move v7, v3

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v2

    :goto_6
    array-length v4, v1

    if-ge v0, v4, :cond_c

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v5, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    :goto_7
    return-object v0

    :cond_d
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    :goto_8
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    move-object v0, v1

    goto :goto_7

    :cond_f
    move v3, v5

    goto :goto_5

    :cond_10
    move v0, v3

    goto/16 :goto_1
.end method
