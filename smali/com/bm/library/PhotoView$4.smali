.class Lcom/bm/library/PhotoView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoView.java"


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
    .line 762
    iput-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 883
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bm/library/PhotoView$Transform;->stop()V

    .line 885
    const/high16 v0, 0x3f800000    # 1.0f

    .line 886
    .local v0, "from":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 888
    .local v3, "to":F
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    add-float v1, v4, v6

    .line 889
    .local v1, "imgcx":F
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    add-float v2, v4, v6

    .line 891
    .local v2, "imgcy":F
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 892
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 893
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4, v5}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 894
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4, v5}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 896
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2600(Lcom/bm/library/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 897
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v0

    .line 898
    const/high16 v3, 0x3f800000    # 1.0f

    .line 906
    :goto_0
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 907
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 908
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 909
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$3000(Lcom/bm/library/PhotoView;)F

    move-result v6

    neg-float v6, v6

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$3100(Lcom/bm/library/PhotoView;)F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 910
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v6

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 911
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 912
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 913
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$3200(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 914
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$3200(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bm/library/PhotoView;->access$1700(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)V

    .line 916
    iget-object v6, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2600(Lcom/bm/library/PhotoView;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v6, v4}, Lcom/bm/library/PhotoView;->access$2602(Lcom/bm/library/PhotoView;Z)Z

    .line 917
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 918
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bm/library/PhotoView$Transform;->start()V

    .line 920
    return v5

    .line 900
    :cond_0
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v0

    .line 901
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2700(Lcom/bm/library/PhotoView;)F

    move-result v3

    .line 903
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_1
    move v4, v5

    .line 916
    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0, v2}, Lcom/bm/library/PhotoView;->access$902(Lcom/bm/library/PhotoView;Z)Z

    .line 774
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0, v2}, Lcom/bm/library/PhotoView;->access$1002(Lcom/bm/library/PhotoView;Z)Z

    .line 775
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0, v2}, Lcom/bm/library/PhotoView;->access$102(Lcom/bm/library/PhotoView;Z)Z

    .line 776
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1100(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bm/library/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 777
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    .line 782
    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v4

    .line 783
    :cond_1
    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1200(Lcom/bm/library/PhotoView;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1300(Lcom/bm/library/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 784
    :cond_2
    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v5

    iget-boolean v5, v5, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-nez v5, :cond_0

    .line 786
    move v2, p3

    .line 787
    .local v2, "vx":F
    move v3, p4

    .line 789
    .local v3, "vy":F
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    .line 790
    :cond_3
    const/4 v2, 0x0

    .line 793
    :cond_4
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    .line 794
    :cond_5
    const/4 v3, 0x0

    .line 797
    :cond_6
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$100(Lcom/bm/library/PhotoView;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v4

    rem-float/2addr v4, v6

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 798
    :cond_7
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x5a

    int-to-float v1, v4

    .line 799
    .local v1, "toDegrees":F
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v4

    rem-float v0, v4, v6

    .line 801
    .local v0, "remainder":F
    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_a

    .line 802
    add-float/2addr v1, v6

    .line 806
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v5

    float-to-int v5, v5

    float-to-int v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/bm/library/PhotoView$Transform;->withRotate(II)V

    .line 808
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4, v1}, Lcom/bm/library/PhotoView;->access$202(Lcom/bm/library/PhotoView;F)F

    .line 811
    .end local v0    # "remainder":F
    .end local v1    # "toDegrees":F
    :cond_9
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bm/library/PhotoView;->access$1700(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)V

    .line 813
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/bm/library/PhotoView$Transform;->withFling(FF)V

    .line 815
    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bm/library/PhotoView$Transform;->start()V

    .line 817
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    goto/16 :goto_0

    .line 803
    .restart local v0    # "remainder":F
    .restart local v1    # "toDegrees":F
    :cond_a
    const/high16 v4, -0x3dcc0000    # -45.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    .line 804
    sub-float/2addr v1, v6

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$800(Lcom/bm/library/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$800(Lcom/bm/library/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 769
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 822
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bm/library/PhotoView$Transform;->stop()V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0, p3}, Lcom/bm/library/PhotoView;->canScrollHorizontallySelf(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 827
    cmpg-float v0, p3, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget p3, v0, Landroid/graphics/RectF;->left:F

    .line 829
    :cond_1
    cmpl-float v0, p3, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float p3, v0, v1

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 833
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 848
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0, p4}, Lcom/bm/library/PhotoView;->canScrollVerticallySelf(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 849
    cmpg-float v0, p4, v3

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 850
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget p4, v0, Landroid/graphics/RectF;->top:F

    .line 851
    :cond_4
    cmpl-float v0, p4, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 852
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float p4, v0, v1

    .line 854
    :cond_5
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 855
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 870
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$600(Lcom/bm/library/PhotoView;)V

    .line 871
    return v4

    .line 834
    :cond_7
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1200(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$900(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    :cond_8
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1900(Lcom/bm/library/PhotoView;)V

    .line 836
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 837
    cmpg-float v0, p3, v3

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 838
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p3}, Lcom/bm/library/PhotoView;->access$2100(Lcom/bm/library/PhotoView;FF)F

    move-result p3

    .line 839
    :cond_9
    cmpl-float v0, p3, v3

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 840
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p3}, Lcom/bm/library/PhotoView;->access$2100(Lcom/bm/library/PhotoView;FF)F

    move-result p3

    .line 843
    :cond_a
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 844
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 845
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0, v4}, Lcom/bm/library/PhotoView;->access$902(Lcom/bm/library/PhotoView;Z)Z

    goto/16 :goto_0

    .line 856
    :cond_b
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1300(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$900(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 857
    :cond_c
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1900(Lcom/bm/library/PhotoView;)V

    .line 858
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 859
    cmpg-float v0, p4, v3

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 860
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p4}, Lcom/bm/library/PhotoView;->access$2300(Lcom/bm/library/PhotoView;FF)F

    move-result p4

    .line 861
    :cond_d
    cmpl-float v0, p4, v3

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 862
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p4}, Lcom/bm/library/PhotoView;->access$2300(Lcom/bm/library/PhotoView;FF)F

    move-result p4

    .line 865
    :cond_e
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 866
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 867
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0, v4}, Lcom/bm/library/PhotoView;->access$902(Lcom/bm/library/PhotoView;Z)Z

    goto/16 :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1100(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/bm/library/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 877
    const/4 v0, 0x0

    return v0
.end method
