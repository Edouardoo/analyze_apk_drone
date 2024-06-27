.class Lcom/joanzapata/pdfview/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;,
        Lcom/joanzapata/pdfview/AnimationManager$YAnimation;,
        Lcom/joanzapata/pdfview/AnimationManager$XAnimation;
    }
.end annotation


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private pdfView:Lcom/joanzapata/pdfview/PDFView;


# direct methods
.method public constructor <init>(Lcom/joanzapata/pdfview/PDFView;)V
    .locals 0
    .param p1, "pdfView"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/joanzapata/pdfview/AnimationManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/joanzapata/pdfview/AnimationManager;)Lcom/joanzapata/pdfview/PDFView;
    .locals 1
    .param p0, "x0"    # Lcom/joanzapata/pdfview/AnimationManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    return-object v0
.end method


# virtual methods
.method public startXAnimation(FF)V
    .locals 4
    .param p1, "xFrom"    # F
    .param p2, "xTo"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 53
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 54
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/joanzapata/pdfview/AnimationManager$XAnimation;

    invoke-direct {v1, p0}, Lcom/joanzapata/pdfview/AnimationManager$XAnimation;-><init>(Lcom/joanzapata/pdfview/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    return-void
.end method

.method public startYAnimation(FF)V
    .locals 4
    .param p1, "yFrom"    # F
    .param p2, "yTo"    # F

    .prologue
    .line 61
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 64
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 65
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/joanzapata/pdfview/AnimationManager$YAnimation;

    invoke-direct {v1, p0}, Lcom/joanzapata/pdfview/AnimationManager$YAnimation;-><init>(Lcom/joanzapata/pdfview/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    return-void
.end method

.method public startZoomAnimation(FF)V
    .locals 4
    .param p1, "zoomFrom"    # F
    .param p2, "zoomTo"    # F

    .prologue
    .line 72
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 76
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    new-instance v0, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;

    invoke-direct {v0, p0}, Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;-><init>(Lcom/joanzapata/pdfview/AnimationManager;)V

    .line 78
    .local v0, "zoomAnim":Lcom/joanzapata/pdfview/AnimationManager$ZoomAnimation;
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    iget-object v1, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    return-void
.end method

.method public stopAll()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joanzapata/pdfview/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 89
    :cond_0
    return-void
.end method
