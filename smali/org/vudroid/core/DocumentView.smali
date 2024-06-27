.class public Lorg/vudroid/core/DocumentView;
.super Landroid/view/View;
.source "DocumentView.java"

# interfaces
.implements Lorg/vudroid/core/events/ZoomListener;


# static fields
.field private static final DOUBLE_TAP_TIME:I = 0x1f4


# instance fields
.field private final currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

.field decodeService:Lorg/vudroid/core/DecodeService;

.field private inZoom:Z

.field private isInitialized:Z

.field private lastDownEventTime:J

.field private lastX:F

.field private lastY:F

.field private multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

.field private pageToGoTo:I

.field private final pages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/vudroid/core/Page;",
            ">;"
        }
    .end annotation
.end field

.field progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

.field private final scroller:Landroid/widget/Scroller;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewRect:Landroid/graphics/RectF;

.field final zoomModel:Lorg/vudroid/core/models/ZoomModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/vudroid/core/models/ZoomModel;Lorg/vudroid/core/models/DecodingProgressModel;Lorg/vudroid/core/models/CurrentPageModel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zoomModel"    # Lorg/vudroid/core/models/ZoomModel;
    .param p3, "progressModel"    # Lorg/vudroid/core/models/DecodingProgressModel;
    .param p4, "currentPageModel"    # Lorg/vudroid/core/models/CurrentPageModel;

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    .line 41
    iput-object p2, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    .line 42
    iput-object p3, p0, Lorg/vudroid/core/DocumentView;->progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

    .line 43
    iput-object p4, p0, Lorg/vudroid/core/DocumentView;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    .line 44
    invoke-virtual {p0, v2}, Lorg/vudroid/core/DocumentView;->setKeepScreenOn(Z)V

    .line 45
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    .line 46
    invoke-virtual {p0, v2}, Lorg/vudroid/core/DocumentView;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v2}, Lorg/vudroid/core/DocumentView;->setFocusableInTouchMode(Z)V

    .line 48
    invoke-direct {p0, p2}, Lorg/vudroid/core/DocumentView;->initMultiTouchZoomIfAvailable(Lorg/vudroid/core/models/ZoomModel;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/vudroid/core/DocumentView;)Lorg/vudroid/core/models/CurrentPageModel;
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/DocumentView;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    return-object v0
.end method

.method static synthetic access$100(Lorg/vudroid/core/DocumentView;)V
    .locals 0
    .param p0, "x0"    # Lorg/vudroid/core/DocumentView;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->updatePageVisibility()V

    return-void
.end method

.method static synthetic access$200(Lorg/vudroid/core/DocumentView;)V
    .locals 0
    .param p0, "x0"    # Lorg/vudroid/core/DocumentView;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->init()V

    return-void
.end method

.method private getBottomLimit()I
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    iget-object v0, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLeftLimit()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method private getRightLimit()I
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v1}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollScaleRatio()F
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 318
    .local v0, "page":Lorg/vudroid/core/Page;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 322
    :goto_0
    return v2

    .line 321
    :cond_1
    iget-object v2, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v2}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v1

    .line 322
    .local v1, "v":F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTopLimit()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method private goToPageImpl(I)V
    .locals 3
    .param p1, "toPage"    # I

    .prologue
    .line 79
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    invoke-virtual {v0}, Lorg/vudroid/core/Page;->getTop()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    .line 80
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 64
    iget-boolean v3, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-eqz v3, :cond_0

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v3}, Lorg/vudroid/core/DecodeService;->getEffectivePagesWidth()I

    move-result v2

    .line 68
    .local v2, "width":I
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v3}, Lorg/vudroid/core/DecodeService;->getEffectivePagesHeight()I

    move-result v0

    .line 69
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v3}, Lorg/vudroid/core/DecodeService;->getPageCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 70
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lorg/vudroid/core/Page;

    invoke-direct {v5, p0, v1}, Lorg/vudroid/core/Page;-><init>(Lorg/vudroid/core/DocumentView;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/vudroid/core/Page;

    invoke-virtual {v3, v2, v0}, Lorg/vudroid/core/Page;->setAspectRatio(II)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    .line 74
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 75
    iget v3, p0, Lorg/vudroid/core/DocumentView;->pageToGoTo:I

    invoke-direct {p0, v3}, Lorg/vudroid/core/DocumentView;->goToPageImpl(I)V

    goto :goto_0
.end method

.method private initMultiTouchZoomIfAvailable(Lorg/vudroid/core/models/ZoomModel;)V
    .locals 5
    .param p1, "zoomModel"    # Lorg/vudroid/core/models/ZoomModel;

    .prologue
    .line 53
    :try_start_0
    const-string v1, "org.vudroid.core.multitouch.MultiTouchZoomImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/vudroid/core/models/ZoomModel;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/vudroid/core/multitouch/MultiTouchZoom;

    iput-object v1, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi touch zoom is not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invalidateScroll(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    .line 305
    iget-boolean v1, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->stopScroller()V

    .line 309
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 310
    .local v0, "page":Lorg/vudroid/core/Page;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    goto :goto_0
.end method

.method private lineByLineMoveTo(I)V
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 228
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v3

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v4

    sub-int/2addr v0, v4

    mul-int v4, p1, v0

    int-to-float v5, p1

    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getCurrentPage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    iget-object v0, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v5

    const/high16 v5, 0x42480000    # 50.0f

    div-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 233
    :goto_0
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidate()V

    .line 234
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 231
    :cond_2
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_0
.end method

.method private setLastPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/vudroid/core/DocumentView;->lastX:F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/vudroid/core/DocumentView;->lastY:F

    .line 199
    return-void
.end method

.method private stopScroller()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 329
    :cond_0
    return-void
.end method

.method private updatePageVisibility()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 104
    .local v0, "page":Lorg/vudroid/core/Page;
    invoke-virtual {v0}, Lorg/vudroid/core/Page;->updateVisibility()V

    goto :goto_0

    .line 106
    .end local v0    # "page":Lorg/vudroid/core/Page;
    :cond_0
    return-void
.end method

.method private verticalDpadScroll(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v4

    mul-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 224
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidate()V

    .line 225
    return-void
.end method


# virtual methods
.method public commitZoom()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 110
    .local v0, "page":Lorg/vudroid/core/Page;
    invoke-virtual {v0}, Lorg/vudroid/core/Page;->invalidate()V

    goto :goto_0

    .line 112
    .end local v0    # "page":Lorg/vudroid/core/Page;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/vudroid/core/DocumentView;->inZoom:Z

    .line 113
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    .line 270
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 206
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/vudroid/core/DocumentView;->lineByLineMoveTo(I)V

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/vudroid/core/DocumentView;->lineByLineMoveTo(I)V

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/vudroid/core/DocumentView;->verticalDpadScroll(I)V

    goto :goto_0

    .line 215
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/vudroid/core/DocumentView;->verticalDpadScroll(I)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentPage()I
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/vudroid/core/Page;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/vudroid/core/Page;

    invoke-virtual {v1}, Lorg/vudroid/core/Page;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 139
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/vudroid/core/Page;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public goToPage(I)V
    .locals 1
    .param p1, "toPage"    # I

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->goToPageImpl(I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput p1, p0, Lorg/vudroid/core/DocumentView;->pageToGoTo:I

    goto :goto_0
.end method

.method invalidatePageSizes()V
    .locals 10

    .prologue
    .line 290
    iget-boolean v6, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-nez v6, :cond_1

    .line 302
    :cond_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    .line 294
    .local v0, "heightAccum":F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v4

    .line 295
    .local v4, "width":I
    iget-object v6, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v6}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v5

    .line 296
    .local v5, "zoom":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 297
    iget-object v6, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/vudroid/core/Page;

    .line 298
    .local v2, "page":Lorg/vudroid/core/Page;
    invoke-virtual {v2, v4, v5}, Lorg/vudroid/core/Page;->getPageHeight(IF)F

    move-result v3

    .line 299
    .local v3, "pageHeight":F
    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v8, v4

    mul-float/2addr v8, v5

    add-float v9, v0, v3

    invoke-direct {v6, v7, v0, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Lorg/vudroid/core/Page;->setBounds(Landroid/graphics/RectF;)V

    .line 300
    add-float/2addr v0, v3

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 276
    .local v0, "page":Lorg/vudroid/core/Page;
    invoke-virtual {v0, p1}, Lorg/vudroid/core/Page;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 278
    .end local v0    # "page":Lorg/vudroid/core/Page;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 282
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 283
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getScrollScaleRatio()F

    move-result v0

    .line 284
    .local v0, "scrollScaleRatio":F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 285
    invoke-direct {p0, v0}, Lorg/vudroid/core/DocumentView;->invalidateScroll(F)V

    .line 286
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->commitZoom()V

    .line 287
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 86
    new-instance v0, Lorg/vudroid/core/DocumentView$1;

    invoke-direct {v0, p0}, Lorg/vudroid/core/DocumentView$1;-><init>(Lorg/vudroid/core/DocumentView;)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    .line 91
    iget-boolean v0, p0, Lorg/vudroid/core/DocumentView;->inZoom:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lorg/vudroid/core/DocumentView$2;

    invoke-direct {v0, p0}, Lorg/vudroid/core/DocumentView$2;-><init>(Lorg/vudroid/core/DocumentView;)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 153
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    invoke-interface {v0, p1}, Lorg/vudroid/core/multitouch/MultiTouchZoom;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return v9

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    invoke-interface {v0}, Lorg/vudroid/core/multitouch/MultiTouchZoom;->isResetLastPointAfterZoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->setLastPosition(Landroid/view/MotionEvent;)V

    .line 162
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/vudroid/core/multitouch/MultiTouchZoom;->setResetLastPointAfterZoom(Z)V

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 167
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 169
    :cond_2
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->stopScroller()V

    .line 174
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->setLastPosition(Landroid/view/MotionEvent;)V

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/vudroid/core/DocumentView;->lastDownEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 176
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v0}, Lorg/vudroid/core/models/ZoomModel;->toggleZoomControls()V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/vudroid/core/DocumentView;->lastDownEventTime:J

    goto :goto_0

    .line 182
    :pswitch_1
    iget v0, p0, Lorg/vudroid/core/DocumentView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lorg/vudroid/core/DocumentView;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/vudroid/core/DocumentView;->scrollBy(II)V

    .line 183
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->setLastPosition(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 187
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    iget-object v4, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    neg-float v4, v4

    float-to-int v4, v4

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v5

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v6

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getTopLimit()I

    move-result v7

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getBottomLimit()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 188
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getTopLimit()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getBottomLimit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    .line 256
    return-void
.end method

.method public setDecodeService(Lorg/vudroid/core/DecodeService;)V
    .locals 0
    .param p1, "decodeService"    # Lorg/vudroid/core/DecodeService;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 61
    return-void
.end method

.method public showDocument()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/vudroid/core/DocumentView$3;

    invoke-direct {v0, p0}, Lorg/vudroid/core/DocumentView$3;-><init>(Lorg/vudroid/core/DocumentView;)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public zoomChanged(FF)V
    .locals 4
    .param p1, "newZoom"    # F
    .param p2, "oldZoom"    # F

    .prologue
    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/vudroid/core/DocumentView;->inZoom:Z

    .line 144
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->stopScroller()V

    .line 145
    div-float v0, p1, p2

    .line 146
    .local v0, "ratio":F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 147
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    .line 148
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->postInvalidate()V

    .line 149
    return-void
.end method
