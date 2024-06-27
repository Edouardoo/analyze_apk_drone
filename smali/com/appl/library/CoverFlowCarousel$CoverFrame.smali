.class Lcom/appl/library/CoverFlowCarousel$CoverFrame;
.super Landroid/widget/FrameLayout;
.source "CoverFlowCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appl/library/CoverFlowCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverFrame"
.end annotation


# instance fields
.field private mReflectionCache:Landroid/graphics/Bitmap;

.field private mReflectionCacheInvalid:Z

.field final synthetic this$0:Lcom/appl/library/CoverFlowCarousel;


# direct methods
.method public constructor <init>(Lcom/appl/library/CoverFlowCarousel;Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cover"    # Landroid/view/View;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->this$0:Lcom/appl/library/CoverFlowCarousel;

    .line 290
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCacheInvalid:Z

    .line 291
    invoke-virtual {p0, p3}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->setCover(Landroid/view/View;)V

    .line 292
    return-void
.end method


# virtual methods
.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "autoScale"    # Z

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCacheInvalid:Z

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->this$0:Lcom/appl/library/CoverFlowCarousel;

    invoke-static {v2, v0}, Lcom/appl/library/CoverFlowCarousel;->access$000(Lcom/appl/library/CoverFlowCarousel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCache:Landroid/graphics/Bitmap;

    .line 328
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCacheInvalid:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null pointer in createReflectionBitmap. Bitmap b="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCache:Landroid/graphics/Bitmap;

    .line 343
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->mReflectionCacheInvalid:Z

    .line 346
    return-void
.end method

.method public setCover(Landroid/view/View;)V
    .locals 5
    .param p1, "cover"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->removeAllViews()V

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 301
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 302
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 303
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 307
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-void
.end method
