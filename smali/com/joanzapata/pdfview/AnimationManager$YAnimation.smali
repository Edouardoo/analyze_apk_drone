.class Lcom/joanzapata/pdfview/AnimationManager$YAnimation;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/joanzapata/pdfview/AnimationManager;


# direct methods
.method constructor <init>(Lcom/joanzapata/pdfview/AnimationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/joanzapata/pdfview/AnimationManager;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/joanzapata/pdfview/AnimationManager$YAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 106
    .local v0, "offset":F
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager$YAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-static {v1}, Lcom/joanzapata/pdfview/AnimationManager;->access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;

    move-result-object v1

    iget-object v2, p0, Lcom/joanzapata/pdfview/AnimationManager$YAnimation;->this$0:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-static {v2}, Lcom/joanzapata/pdfview/AnimationManager;->access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/joanzapata/pdfview/PDFView;->getCurrentXOffset()F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/joanzapata/pdfview/PDFView;->moveTo(FF)V

    .line 107
    return-void
.end method
