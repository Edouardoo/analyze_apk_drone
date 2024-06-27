.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mRanges:[Lcom/github/mikephil/charting/highlight/Range;

.field private mYVals:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "vals"    # [F

    .prologue
    .line 42
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 44
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 45
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 46
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 47
    return-void
.end method

.method public constructor <init>(F[FLjava/lang/String;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "vals"    # [F
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 69
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 70
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 71
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 72
    return-void
.end method

.method private calcPosNegSum()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 189
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-nez v3, :cond_0

    .line 190
    iput v7, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 191
    iput v7, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    .line 207
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, "sumNeg":F
    const/4 v2, 0x0

    .line 198
    .local v2, "sumPos":F
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, v4, v3

    .line 199
    .local v0, "f":F
    cmpg-float v6, v0, v7

    if-gtz v6, :cond_1

    .line 200
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v1, v6

    .line 198
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    :cond_1
    add-float/2addr v2, v0

    goto :goto_2

    .line 205
    .end local v0    # "f":F
    :cond_2
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 206
    iput v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    goto :goto_0
.end method

.method private static calcSum([F)F
    .locals 4
    .param p0, "vals"    # [F

    .prologue
    .line 217
    if-nez p0, :cond_1

    .line 218
    const/4 v1, 0x0

    .line 225
    :cond_0
    return v1

    .line 220
    :cond_1
    const/4 v1, 0x0

    .line 222
    .local v1, "sum":F
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 223
    .local v0, "f":F
    add-float/2addr v1, v0

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected calcRanges()V
    .locals 8

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v4

    .line 232
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 252
    :cond_0
    return-void

    .line 235
    :cond_1
    array-length v5, v4

    new-array v5, v5, [Lcom/github/mikephil/charting/highlight/Range;

    iput-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    .line 237
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v5

    neg-float v1, v5

    .line 238
    .local v1, "negRemain":F
    const/4 v2, 0x0

    .line 240
    .local v2, "posRemain":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 242
    aget v3, v4, v0

    .line 244
    .local v3, "value":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 245
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    sub-float v7, v1, v3

    invoke-direct {v6, v1, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v5, v0

    .line 246
    sub-float/2addr v1, v3

    .line 240
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    add-float v7, v2, v3

    invoke-direct {v6, v2, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v5, v0

    .line 249
    add-float/2addr v2, v3

    goto :goto_1
.end method

.method public copy()Lcom/github/mikephil/charting/data/BarEntry;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FFLjava/lang/Object;)V

    .line 91
    .local v0, "copied":Lcom/github/mikephil/charting/data/BarEntry;
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setVals([F)V

    .line 92
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->copy()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBelowSum(I)F
    .locals 1
    .param p1, "stackIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BarEntry;->getSumBelow(I)F

    move-result v0

    return v0
.end method

.method public getNegativeSum()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return v0
.end method

.method public getPositiveSum()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return v0
.end method

.method public getRanges()[Lcom/github/mikephil/charting/highlight/Range;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    return-object v0
.end method

.method public getSumBelow(I)F
    .locals 3
    .param p1, "stackIndex"    # I

    .prologue
    .line 155
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-nez v2, :cond_1

    .line 156
    const/4 v1, 0x0

    .line 166
    :cond_0
    return v1

    .line 158
    :cond_1
    const/4 v1, 0x0

    .line 159
    .local v1, "remainder":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 161
    .local v0, "index":I
    :goto_0
    if-le v0, p1, :cond_0

    if-ltz v0, :cond_0

    .line 162
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    return v0
.end method

.method public getYVals()[F
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    return-object v0
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVals([F)V
    .locals 1
    .param p1, "vals"    # [F

    .prologue
    .line 111
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    .line 112
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 113
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 114
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 115
    return-void
.end method
