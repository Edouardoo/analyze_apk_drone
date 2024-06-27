.class Lcom/bm/library/PhotoView$InterpolatorProxy;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterpolatorProxy"
.end annotation


# instance fields
.field private mTarget:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method private constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 1

    .prologue
    .line 958
    iput-object p1, p0, Lcom/bm/library/PhotoView$InterpolatorProxy;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    .line 960
    return-void
.end method

.method synthetic constructor <init>(Lcom/bm/library/PhotoView;Lcom/bm/library/PhotoView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bm/library/PhotoView;
    .param p2, "x1"    # Lcom/bm/library/PhotoView$1;

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView$InterpolatorProxy;-><init>(Lcom/bm/library/PhotoView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 968
    iget-object v0, p0, Lcom/bm/library/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/bm/library/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 971
    .end local p1    # "input":F
    :cond_0
    return p1
.end method

.method public setTargetInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/bm/library/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    .line 964
    return-void
.end method
