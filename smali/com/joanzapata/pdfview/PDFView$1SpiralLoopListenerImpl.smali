.class Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;
.super Ljava/lang/Object;
.source "PDFView.java"

# interfaces
.implements Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joanzapata/pdfview/PDFView;->loadPage(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpiralLoopListenerImpl"
.end annotation


# instance fields
.field nbItemTreated:I

.field final synthetic this$0:Lcom/joanzapata/pdfview/PDFView;

.field final synthetic val$documentPageFinal:I

.field final synthetic val$nbOfPartsLoadable:I

.field final synthetic val$pageRelativePartHeight:F

.field final synthetic val$pageRelativePartWidth:F

.field final synthetic val$userPage:I


# direct methods
.method constructor <init>(Lcom/joanzapata/pdfview/PDFView;FFIII)V
    .locals 1
    .param p1, "this$0"    # Lcom/joanzapata/pdfview/PDFView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 579
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iput p2, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$pageRelativePartWidth:F

    iput p3, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$pageRelativePartHeight:F

    iput p4, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$userPage:I

    iput p5, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$documentPageFinal:I

    iput p6, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$nbOfPartsLoadable:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    return-void
.end method


# virtual methods
.method public onLoop(II)Z
    .locals 13
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const/4 v12, 0x0

    const/high16 v7, 0x43800000    # 256.0f

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 586
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$pageRelativePartWidth:F

    int-to-float v1, p2

    mul-float v10, v0, v1

    .line 587
    .local v10, "relX":F
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$pageRelativePartHeight:F

    int-to-float v1, p1

    mul-float v11, v0, v1

    .line 588
    .local v11, "relY":F
    iget v9, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$pageRelativePartWidth:F

    .line 589
    .local v9, "relWidth":F
    iget v8, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$pageRelativePartHeight:F

    .line 593
    .local v8, "relHeight":F
    div-float v3, v7, v9

    .line 594
    .local v3, "renderWidth":F
    div-float v4, v7, v8

    .line 595
    .local v4, "renderHeight":F
    add-float v0, v10, v9

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 596
    sub-float v9, v2, v10

    .line 598
    :cond_0
    add-float v0, v11, v8

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 599
    sub-float v8, v2, v11

    .line 601
    :cond_1
    mul-float/2addr v3, v9

    .line 602
    mul-float/2addr v4, v8

    .line 603
    new-instance v5, Landroid/graphics/RectF;

    add-float v0, v10, v9

    add-float v1, v11, v8

    invoke-direct {v5, v10, v11, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 605
    .local v5, "pageRelativeBounds":Landroid/graphics/RectF;
    cmpl-float v0, v3, v6

    if-eqz v0, :cond_2

    cmpl-float v0, v4, v6

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-static {v0}, Lcom/joanzapata/pdfview/PDFView;->access$000(Lcom/joanzapata/pdfview/PDFView;)Lcom/joanzapata/pdfview/CacheManager;

    move-result-object v0

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$userPage:I

    iget v2, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$documentPageFinal:I

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    invoke-virtual/range {v0 .. v6}, Lcom/joanzapata/pdfview/CacheManager;->upPartIfContained(IIFFLandroid/graphics/RectF;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-static {v0}, Lcom/joanzapata/pdfview/PDFView;->access$100(Lcom/joanzapata/pdfview/PDFView;)Lcom/joanzapata/pdfview/RenderingAsyncTask;

    move-result-object v0

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$userPage:I

    iget v2, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$documentPageFinal:I

    iget v7, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    move v6, v12

    invoke-virtual/range {v0 .. v7}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->addRenderingTask(IIFFLandroid/graphics/RectF;ZI)V

    .line 621
    :cond_2
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    .line 622
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->val$nbOfPartsLoadable:I

    if-lt v0, v1, :cond_3

    move v0, v12

    .line 626
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
