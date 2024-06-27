.class Lcom/bm/library/PhotoView$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/bm/library/PhotoView$2;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 692
    .local v0, "scaleFactor":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    :cond_0
    const/4 v1, 0x0

    .line 699
    :goto_0
    return v1

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/bm/library/PhotoView$2;->this$0:Lcom/bm/library/PhotoView;

    iget-object v2, p0, Lcom/bm/library/PhotoView$2;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/bm/library/PhotoView;->access$502(Lcom/bm/library/PhotoView;F)F

    .line 697
    iget-object v1, p0, Lcom/bm/library/PhotoView$2;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 698
    iget-object v1, p0, Lcom/bm/library/PhotoView$2;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$600(Lcom/bm/library/PhotoView;)V

    .line 699
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 703
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 708
    return-void
.end method
