.class Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/joanzapata/pdfview/AnimationManager;


# direct methods
.method constructor <init>(Lcom/joanzapata/pdfview/AnimationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/joanzapata/pdfview/AnimationManager;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-static {v0}, Lcom/joanzapata/pdfview/AnimationManager;->access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/PDFView;->loadPages()V

    .line 126
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 134
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 116
    .local v0, "zoom":F
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-static {v1}, Lcom/joanzapata/pdfview/AnimationManager;->access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-static {v3}, Lcom/joanzapata/pdfview/AnimationManager;->access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-static {v4}, Lcom/joanzapata/pdfview/AnimationManager;->access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/joanzapata/pdfview/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    .line 117
    return-void
.end method
