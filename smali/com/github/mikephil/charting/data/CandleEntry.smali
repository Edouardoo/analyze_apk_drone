.class public Lcom/github/mikephil/charting/data/CandleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "CandleEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mClose:F

.field private mOpen:F

.field private mShadowHigh:F

.field private mShadowLow:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "shadowH"    # F
    .param p3, "shadowL"    # F
    .param p4, "open"    # F
    .param p5, "close"    # F

    .prologue
    const/4 v2, 0x0

    .line 36
    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 15
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 38
    iput p2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 39
    iput p3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 40
    iput p4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 41
    iput p5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 42
    return-void
.end method

.method public constructor <init>(FFFFFLjava/lang/Object;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "shadowH"    # F
    .param p3, "shadowL"    # F
    .param p4, "open"    # F
    .param p5, "close"    # F
    .param p6, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 56
    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0, p6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 15
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 58
    iput p2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 59
    iput p3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 60
    iput p4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 61
    iput p5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 62
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/CandleEntry;
    .locals 7

    .prologue
    .line 94
    new-instance v0, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    iget v3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    iget v5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 95
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFFLjava/lang/Object;)V

    .line 97
    .local v0, "c":Lcom/github/mikephil/charting/data/CandleEntry;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->copy()Lcom/github/mikephil/charting/data/CandleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBodyRange()F
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    iget v1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getClose()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    return v0
.end method

.method public getHigh()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    return v0
.end method

.method public getLow()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    return v0
.end method

.method public getOpen()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    return v0
.end method

.method public getShadowRange()F
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    iget v1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    return v0
.end method

.method public setClose(F)V
    .locals 0
    .param p1, "mClose"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 137
    return-void
.end method

.method public setHigh(F)V
    .locals 0
    .param p1, "mShadowHigh"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 111
    return-void
.end method

.method public setLow(F)V
    .locals 0
    .param p1, "mShadowLow"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 124
    return-void
.end method

.method public setOpen(F)V
    .locals 0
    .param p1, "mOpen"    # F

    .prologue
    .line 149
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 150
    return-void
.end method
