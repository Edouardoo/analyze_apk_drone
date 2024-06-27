.class public Lcom/github/mikephil/charting/data/BubbleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BubbleEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mSize:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "size"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 28
    iput p3, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 29
    return-void
.end method

.method public constructor <init>(FFFLjava/lang/Object;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "size"    # F
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 41
    iput p3, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 42
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/BubbleEntry;
    .locals 5

    .prologue
    .line 46
    new-instance v0, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->getY()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/data/BubbleEntry;-><init>(FFFLjava/lang/Object;)V

    .line 47
    .local v0, "c":Lcom/github/mikephil/charting/data/BubbleEntry;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->copy()Lcom/github/mikephil/charting/data/BubbleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    return v0
.end method

.method public setSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 61
    return-void
.end method
