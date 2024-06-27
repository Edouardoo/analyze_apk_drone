.class public abstract Lcom/github/mikephil/charting/data/BaseEntry;
.super Ljava/lang/Object;
.source "BaseEntry.java"


# instance fields
.field private mData:Ljava/lang/Object;

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    .line 19
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    .line 20
    return-void
.end method

.method public constructor <init>(FLjava/lang/Object;)V
    .locals 0
    .param p1, "y"    # F
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BaseEntry;-><init>(F)V

    .line 24
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    .line 43
    return-void
.end method
