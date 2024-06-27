.class Lcom/joanzapata/pdfview/SpiralLoopManager;
.super Ljava/lang/Object;
.source "SpiralLoopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;


# direct methods
.method public constructor <init>(Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpiralLoopListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/joanzapata/pdfview/SpiralLoopManager;->listener:Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;

    .line 67
    return-void
.end method

.method private isValidCell(IIII)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "nbRows"    # I
    .param p4, "nbCols"    # I

    .prologue
    .line 113
    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startLoop(IIII)V
    .locals 9
    .param p1, "nbRows"    # I
    .param p2, "nbCols"    # I
    .param p3, "startRow"    # I
    .param p4, "startCol"    # I

    .prologue
    .line 71
    mul-int v6, p2, p1

    .line 72
    .local v6, "totalNbCells":I
    const/4 v3, 0x0

    .line 74
    .local v3, "nbMarkedCells":I
    move v5, p3

    .local v5, "row":I
    move v1, p4

    .line 75
    .local v1, "col":I
    const/4 v4, 0x1

    .line 76
    .local v4, "progress":I
    const/4 v7, 0x1

    .line 79
    .local v7, "variation":I
    iget-object v8, p0, Lcom/joanzapata/pdfview/SpiralLoopManager;->listener:Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;

    invoke-interface {v8, v5, v1}, Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;->onLoop(II)Z

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 82
    :goto_0
    if-ge v3, v6, :cond_0

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 86
    add-int/2addr v5, v7

    .line 87
    invoke-direct {p0, v5, v1, p1, p2}, Lcom/joanzapata/pdfview/SpiralLoopManager;->isValidCell(IIII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    iget-object v8, p0, Lcom/joanzapata/pdfview/SpiralLoopManager;->listener:Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;

    invoke-interface {v8, v5, v1}, Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;->onLoop(II)Z

    move-result v0

    .line 90
    .local v0, "canContinue":Z
    if-nez v0, :cond_1

    .line 110
    .end local v0    # "canContinue":Z
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 85
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    .line 96
    add-int/2addr v1, v7

    .line 97
    invoke-direct {p0, v5, v1, p1, p2}, Lcom/joanzapata/pdfview/SpiralLoopManager;->isValidCell(IIII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    iget-object v8, p0, Lcom/joanzapata/pdfview/SpiralLoopManager;->listener:Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;

    invoke-interface {v8, v5, v1}, Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;->onLoop(II)Z

    move-result v0

    .line 100
    .restart local v0    # "canContinue":Z
    if-eqz v0, :cond_0

    .line 95
    .end local v0    # "canContinue":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 108
    mul-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method
