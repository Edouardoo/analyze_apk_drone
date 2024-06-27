.class Lcom/bm/library/PhotoView$Transform;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transform"
.end annotation


# instance fields
.field C:Lcom/bm/library/PhotoView$ClipCalculate;

.field isRuning:Z

.field mClipRect:Landroid/graphics/RectF;

.field mClipScroller:Landroid/widget/Scroller;

.field mFlingScroller:Landroid/widget/OverScroller;

.field mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

.field mLastFlingX:I

.field mLastFlingY:I

.field mLastTranslateX:I

.field mLastTranslateY:I

.field mRotateScroller:Landroid/widget/Scroller;

.field mScaleScroller:Landroid/widget/Scroller;

.field mTranslateScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 4

    .prologue
    .line 997
    iput-object p1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    .line 995
    new-instance v1, Lcom/bm/library/PhotoView$InterpolatorProxy;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bm/library/PhotoView$InterpolatorProxy;-><init>(Lcom/bm/library/PhotoView;Lcom/bm/library/PhotoView$1;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    .line 998
    invoke-virtual {p1}, Lcom/bm/library/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 999
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    .line 1000
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    .line 1001
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    .line 1002
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    .line 1003
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    .line 1004
    return-void
.end method

.method private applyAnima()V
    .locals 5

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1175
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1176
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1177
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$3000(Lcom/bm/library/PhotoView;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$3100(Lcom/bm/library/PhotoView;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1178
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1179
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1180
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1181
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$600(Lcom/bm/library/PhotoView;)V

    .line 1182
    return-void
.end method

.method private postExecute()V
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0, p0}, Lcom/bm/library/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 1187
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const v10, 0x461c4000    # 10000.0f

    .line 1080
    const/4 v0, 0x1

    .line 1082
    .local v0, "endAnima":Z
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1083
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$502(Lcom/bm/library/PhotoView;F)F

    .line 1084
    const/4 v0, 0x0

    .line 1087
    :cond_0
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1088
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v8

    iget v9, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateX:I

    sub-int v4, v8, v9

    .line 1089
    .local v4, "tx":I
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v8

    iget v9, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateY:I

    sub-int v5, v8, v9

    .line 1090
    .local v5, "ty":I
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 1091
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 1092
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v8

    iput v8, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateX:I

    .line 1093
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v8

    iput v8, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateY:I

    .line 1094
    const/4 v0, 0x0

    .line 1097
    .end local v4    # "tx":I
    .end local v5    # "ty":I
    :cond_1
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1098
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v8

    iget v9, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    sub-int v6, v8, v9

    .line 1099
    .local v6, "x":I
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v8

    iget v9, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    sub-int v7, v8, v9

    .line 1101
    .local v7, "y":I
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v8

    iput v8, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    .line 1102
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v8

    iput v8, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    .line 1104
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 1105
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 1106
    const/4 v0, 0x0

    .line 1109
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_2
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1110
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$202(Lcom/bm/library/PhotoView;F)F

    .line 1111
    const/4 v0, 0x0

    .line 1114
    :cond_3
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$3600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1115
    :cond_4
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v8, v10

    .line 1116
    .local v2, "sx":F
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v8, v10

    .line 1117
    .local v3, "sy":F
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->C:Lcom/bm/library/PhotoView$ClipCalculate;

    invoke-interface {v10}, Lcom/bm/library/PhotoView$ClipCalculate;->calculateTop()F

    move-result v10

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1118
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1120
    cmpl-float v8, v2, v11

    if-nez v8, :cond_5

    .line 1121
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 1122
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 1125
    :cond_5
    cmpl-float v8, v3, v11

    if-nez v8, :cond_6

    .line 1126
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 1127
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 1130
    :cond_6
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$3602(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1133
    .end local v2    # "sx":F
    .end local v3    # "sy":F
    :cond_7
    if-nez v0, :cond_9

    .line 1134
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->applyAnima()V

    .line 1135
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->postExecute()V

    .line 1171
    :cond_8
    :goto_0
    return-void

    .line 1137
    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    .line 1140
    const/4 v1, 0x0

    .line 1142
    .local v1, "needFix":Z
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1200(Lcom/bm/library/PhotoView;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1143
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_f

    .line 1144
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 1148
    :cond_a
    :goto_1
    const/4 v1, 0x1

    .line 1151
    :cond_b
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1300(Lcom/bm/library/PhotoView;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1152
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_10

    .line 1153
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 1157
    :cond_c
    :goto_2
    const/4 v1, 0x1

    .line 1160
    :cond_d
    if-eqz v1, :cond_e

    .line 1161
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->applyAnima()V

    .line 1164
    :cond_e
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v8}, Lcom/bm/library/PhotoView;->invalidate()V

    .line 1166
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$3700(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1167
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$3700(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1168
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$3702(Lcom/bm/library/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 1145
    :cond_f
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_a

    .line 1146
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v9

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v11}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    goto/16 :goto_1

    .line 1154
    :cond_10
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    .line 1155
    iget-object v8, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v9, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v9

    iget-object v10, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v11, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v11}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    goto/16 :goto_2
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-virtual {v0, p1}, Lcom/bm/library/PhotoView$InterpolatorProxy;->setTargetInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1008
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    .line 1063
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->postExecute()V

    .line 1064
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0, p0}, Lcom/bm/library/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1068
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1069
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1070
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1071
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    .line 1073
    return-void
.end method

.method withClip(FFFFILcom/bm/library/PhotoView$ClipCalculate;)V
    .locals 6
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F
    .param p5, "d"    # I
    .param p6, "c"    # Lcom/bm/library/PhotoView$ClipCalculate;

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 1021
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    mul-float v1, p1, v4

    float-to-int v1, v1

    mul-float v2, p2, v4

    float-to-int v2, v2

    mul-float v3, p3, v4

    float-to-int v3, v3

    mul-float/2addr v4, p4

    float-to-int v4, v4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1022
    iput-object p6, p0, Lcom/bm/library/PhotoView$Transform;->C:Lcom/bm/library/PhotoView$ClipCalculate;

    .line 1023
    return-void
.end method

.method withFling(FF)V
    .locals 17
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 1034
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    const v1, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iput v1, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    .line 1035
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_1
    float-to-int v12, v1

    .line 1036
    .local v12, "distanceX":I
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const v1, 0x7fffffff

    sub-int v12, v1, v12

    .line 1037
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    move v6, v12

    .line 1038
    .local v6, "minX":I
    :goto_2
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    const v7, 0x7fffffff

    .line 1039
    .local v7, "maxX":I
    :goto_3
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    const v1, 0x7fffffff

    sub-int v14, v1, v6

    .line 1041
    .local v14, "overX":I
    :goto_4
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_9

    const v1, 0x7fffffff

    :goto_5
    move-object/from16 v0, p0

    iput v1, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    .line 1042
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_6
    float-to-int v13, v1

    .line 1043
    .local v13, "distanceY":I
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    const v1, 0x7fffffff

    sub-int v13, v1, v13

    .line 1044
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_b

    move v8, v13

    .line 1045
    .local v8, "minY":I
    :goto_7
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_c

    const v9, 0x7fffffff

    .line 1046
    .local v9, "maxY":I
    :goto_8
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_d

    const v1, 0x7fffffff

    sub-int v15, v1, v8

    .line 1048
    .local v15, "overY":I
    :goto_9
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 1049
    const/4 v7, 0x0

    .line 1050
    const/4 v6, 0x0

    .line 1053
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_3

    .line 1054
    const/4 v9, 0x0

    .line 1055
    const/4 v8, 0x0

    .line 1058
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    move/from16 v0, p1

    float-to-int v4, v0

    move/from16 v0, p2

    float-to-int v5, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v11}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_e

    const/4 v10, 0x0

    :goto_a
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-ge v11, v0, :cond_f

    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1059
    return-void

    .line 1034
    .end local v6    # "minX":I
    .end local v7    # "maxX":I
    .end local v8    # "minY":I
    .end local v9    # "maxY":I
    .end local v12    # "distanceX":I
    .end local v13    # "distanceY":I
    .end local v14    # "overX":I
    .end local v15    # "overY":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1035
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto/16 :goto_1

    .line 1037
    .restart local v12    # "distanceX":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v6    # "minX":I
    :cond_7
    move v7, v12

    .line 1038
    goto/16 :goto_3

    .restart local v7    # "maxX":I
    :cond_8
    move v14, v12

    .line 1039
    goto/16 :goto_4

    .line 1041
    .restart local v14    # "overX":I
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1042
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    goto/16 :goto_6

    .line 1044
    .restart local v13    # "distanceY":I
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_7

    .restart local v8    # "minY":I
    :cond_c
    move v9, v13

    .line 1045
    goto/16 :goto_8

    .restart local v9    # "maxY":I
    :cond_d
    move v15, v13

    .line 1046
    goto/16 :goto_9

    .line 1058
    .restart local v15    # "overY":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v10}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v10

    goto :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v11}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v11

    goto :goto_b
.end method

.method withRotate(II)V
    .locals 6
    .param p1, "fromDegrees"    # I
    .param p2, "toDegrees"    # I

    .prologue
    const/4 v2, 0x0

    .line 1026
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v5

    move v1, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1027
    return-void
.end method

.method withRotate(III)V
    .locals 6
    .param p1, "fromDegrees"    # I
    .param p2, "toDegrees"    # I
    .param p3, "during"    # I

    .prologue
    const/4 v2, 0x0

    .line 1030
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    move v1, p1

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1031
    return-void
.end method

.method withScale(FF)V
    .locals 6
    .param p1, "form"    # F
    .param p2, "to"    # F

    .prologue
    const/4 v2, 0x0

    const v4, 0x461c4000    # 10000.0f

    .line 1017
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    mul-float v1, p1, v4

    float-to-int v1, v1

    sub-float v3, p2, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1018
    return-void
.end method

.method withTranslate(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v1, 0x0

    .line 1011
    iput v1, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateX:I

    .line 1012
    iput v1, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateY:I

    .line 1013
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v5

    move v2, v1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1014
    return-void
.end method
