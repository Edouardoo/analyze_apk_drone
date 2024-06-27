.class Lcom/joanzapata/pdfview/DragPinchManager;
.super Ljava/lang/Object;
.source "DragPinchManager.java"

# interfaces
.implements Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;
.implements Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;
.implements Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;


# instance fields
.field private dragPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener;

.field private isSwipeEnabled:Z

.field private pdfView:Lcom/joanzapata/pdfview/PDFView;

.field private startDragTime:J

.field private startDragX:F

.field private startDragY:F

.field private swipeVertical:Z


# direct methods
.method public constructor <init>(Lcom/joanzapata/pdfview/PDFView;)V
    .locals 1
    .param p1, "pdfView"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->isSwipeEnabled:Z

    .line 53
    invoke-virtual {p1}, Lcom/joanzapata/pdfview/PDFView;->isSwipeVertical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->swipeVertical:Z

    .line 54
    new-instance v0, Lcom/joanzapata/pdfview/util/DragPinchListener;

    invoke-direct {v0}, Lcom/joanzapata/pdfview/util/DragPinchListener;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->dragPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener;

    .line 55
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->dragPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener;

    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/util/DragPinchListener;->setOnDragListener(Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;)V

    .line 56
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->dragPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener;

    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/util/DragPinchListener;->setOnPinchListener(Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;)V

    .line 57
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->dragPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener;

    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/util/DragPinchListener;->setOnDoubleTapListener(Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;)V

    .line 58
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->dragPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener;

    invoke-virtual {p1, v0}, Lcom/joanzapata/pdfview/PDFView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-void
.end method

.method private isPageChange(F)Z
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    iget-object v2, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v2}, Lcom/joanzapata/pdfview/PDFView;->getOptimalPageWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQuickMove(FJ)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dt"    # J

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const-wide/16 v0, 0xfa

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endDrag(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/DragPinchManager;->isZooming()Z

    move-result v4

    if-nez v4, :cond_5

    .line 89
    iget-boolean v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->isSwipeEnabled:Z

    if-eqz v4, :cond_1

    .line 91
    iget-boolean v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->swipeVertical:Z

    if-eqz v4, :cond_2

    .line 92
    iget v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->startDragY:F

    sub-float v1, p2, v4

    .line 96
    .local v1, "distance":F
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/joanzapata/pdfview/DragPinchManager;->startDragTime:J

    sub-long v2, v4, v6

    .line 97
    .local v2, "time":J
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    const/4 v0, -0x1

    .line 99
    .local v0, "diff":I
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/joanzapata/pdfview/DragPinchManager;->isQuickMove(FJ)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Lcom/joanzapata/pdfview/DragPinchManager;->isPageChange(F)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    iget-object v5, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v5}, Lcom/joanzapata/pdfview/PDFView;->getCurrentPage()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/joanzapata/pdfview/PDFView;->showPage(I)V

    .line 108
    .end local v0    # "diff":I
    .end local v1    # "distance":F
    .end local v2    # "time":J
    :cond_1
    :goto_2
    return-void

    .line 94
    :cond_2
    iget v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->startDragX:F

    sub-float v1, p1, v4

    .restart local v1    # "distance":F
    goto :goto_0

    .line 97
    .restart local v2    # "time":J
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 102
    .restart local v0    # "diff":I
    :cond_4
    iget-object v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    iget-object v5, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v5}, Lcom/joanzapata/pdfview/PDFView;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/joanzapata/pdfview/PDFView;->showPage(I)V

    goto :goto_2

    .line 106
    .end local v0    # "diff":I
    .end local v1    # "distance":F
    .end local v2    # "time":J
    :cond_5
    iget-object v4, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v4}, Lcom/joanzapata/pdfview/PDFView;->loadPages()V

    goto :goto_2
.end method

.method public isZooming()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/PDFView;->isZooming()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/DragPinchManager;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/PDFView;->resetZoomWithAnimation()V

    .line 132
    :cond_0
    return-void
.end method

.method public onDrag(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/DragPinchManager;->isZooming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->isSwipeEnabled:Z

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0, p1, p2}, Lcom/joanzapata/pdfview/PDFView;->moveRelativeTo(FF)V

    .line 84
    :cond_1
    return-void
.end method

.method public onPinch(FLandroid/graphics/PointF;)V
    .locals 4
    .param p1, "dr"    # F
    .param p2, "pivot"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    iget-object v1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1}, Lcom/joanzapata/pdfview/PDFView;->getZoom()F

    move-result v1

    mul-float v0, v1, p1

    .line 64
    .local v0, "wantedZoom":F
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1}, Lcom/joanzapata/pdfview/PDFView;->getZoom()F

    move-result v1

    div-float p1, v2, v1

    .line 69
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1, p1, p2}, Lcom/joanzapata/pdfview/PDFView;->zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V

    .line 70
    return-void

    .line 66
    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1}, Lcom/joanzapata/pdfview/PDFView;->getZoom()F

    move-result v1

    div-float p1, v3, v1

    goto :goto_0
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "isSwipeEnabled"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->isSwipeEnabled:Z

    .line 125
    return-void
.end method

.method public setSwipeVertical(Z)V
    .locals 0
    .param p1, "swipeVertical"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->swipeVertical:Z

    .line 136
    return-void
.end method

.method public startDrag(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/joanzapata/pdfview/DragPinchManager;->startDragTime:J

    .line 75
    iput p1, p0, Lcom/joanzapata/pdfview/DragPinchManager;->startDragX:F

    .line 76
    iput p2, p0, Lcom/joanzapata/pdfview/DragPinchManager;->startDragY:F

    .line 77
    return-void
.end method
