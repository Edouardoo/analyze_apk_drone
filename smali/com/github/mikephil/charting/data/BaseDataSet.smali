.class public abstract Lcom/github/mikephil/charting/data/BaseDataSet;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawValues:Z

.field private mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mFormLineDashEffect:Landroid/graphics/DashPathEffect;

.field private mFormLineWidth:F

.field private mFormSize:F

.field protected mHighlightEnabled:Z

.field private mLabel:Ljava/lang/String;

.field protected mValueColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

.field protected mValueTextSize:F

.field protected mValueTypeface:Landroid/graphics/Typeface;

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 39
    const-string v0, "DataSet"

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 49
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    .line 61
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 62
    iput v3, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    .line 63
    iput v3, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    .line 64
    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 69
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    .line 74
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    .line 79
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 99
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public addColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 193
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 450
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    const/4 v1, 0x1

    .line 454
    :goto_1
    return v1

    .line 449
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 386
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 126
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 131
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColors()Ljava/util/List;
    .locals 1
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
    .line 117
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .prologue
    .line 334
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormLineDashEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 361
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFormLineWidth()F
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    return v0
.end method

.method public getFormSize()F
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    return v0
.end method

.method public getIndexInEntries(I)I
    .locals 3
    .param p1, "xIndex"    # I

    .prologue
    .line 402
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 403
    int-to-float v1, p1

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 407
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 402
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueColors()Ljava/util/List;
    .locals 1
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
    .line 121
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    return-object v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->needsFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    goto :goto_0
.end method

.method public getValueTextColor()I
    .locals 2

    .prologue
    .line 310
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValueTextColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 315
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValueTextSize()F
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    return v0
.end method

.method public getValueTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 320
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isDrawValuesEnabled()Z
    .locals 1

    .prologue
    .line 371
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    return v0
.end method

.method public isHighlightEnabled()Z
    .locals 1

    .prologue
    .line 263
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    return v0
.end method

.method public needsFormatter()Z
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 107
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->calcMinMax()V

    .line 108
    return-void
.end method

.method public removeEntry(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 442
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 443
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeEntryByXValue(F)Z
    .locals 2
    .param p1, "xValue"    # F

    .prologue
    .line 435
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 436
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeFirst()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/4 v1, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 415
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 416
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    .line 418
    .end local v0    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    :cond_0
    return v1
.end method

.method public removeLast()Z
    .locals 2

    .prologue
    .line 424
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 427
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    .line 429
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetColors()V
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    return-void
.end method

.method public setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0
    .param p1, "dependency"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 391
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 392
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 205
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->resetColors()V

    .line 206
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public setColor(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 216
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 217
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
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
    .line 148
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 149
    return-void
.end method

.method public varargs setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 161
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 162
    return-void
.end method

.method public setColors([II)V
    .locals 6
    .param p1, "colors"    # [I
    .param p2, "alpha"    # I

    .prologue
    .line 226
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->resetColors()V

    .line 227
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 228
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->addColor(I)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public setColors([ILandroid/content/Context;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 176
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    .line 183
    .local v0, "color":I
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "color":I
    :cond_1
    return-void
.end method

.method public setDrawValues(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    .line 367
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "form"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .prologue
    .line 329
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 330
    return-void
.end method

.method public setFormLineDashEffect(Landroid/graphics/DashPathEffect;)V
    .locals 0
    .param p1, "dashPathEffect"    # Landroid/graphics/DashPathEffect;

    .prologue
    .line 356
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 357
    return-void
.end method

.method public setFormLineWidth(F)V
    .locals 0
    .param p1, "formLineWidth"    # F

    .prologue
    .line 347
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    .line 348
    return-void
.end method

.method public setFormSize(F)V
    .locals 0
    .param p1, "formSize"    # F

    .prologue
    .line 338
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    .line 339
    return-void
.end method

.method public setHighlightEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 258
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    .line 259
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 248
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V
    .locals 0
    .param p1, "f"    # Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .prologue
    .line 269
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 289
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public setValueTextColors(Ljava/util/List;)V
    .locals 0
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
    .line 295
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 296
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 305
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    .line 306
    return-void
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 300
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTypeface:Landroid/graphics/Typeface;

    .line 301
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 376
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    .line 377
    return-void
.end method
