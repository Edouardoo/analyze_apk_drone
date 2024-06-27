.class public Lcom/joanzapata/pdfview/PDFView;
.super Landroid/view/SurfaceView;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joanzapata/pdfview/PDFView$Configurator;,
        Lcom/joanzapata/pdfview/PDFView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationManager:Lcom/joanzapata/pdfview/AnimationManager;

.field private cacheManager:Lcom/joanzapata/pdfview/CacheManager;

.field private currentFilteredPage:I

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodeService:Lorg/vudroid/core/DecodeService;

.field private decodingAsyncTask:Lcom/joanzapata/pdfview/DecodingAsyncTask;

.field private defaultPage:I

.field private documentPageCount:I

.field private dragPinchManager:Lcom/joanzapata/pdfview/DragPinchManager;

.field private filteredUserPageIndexes:[I

.field private filteredUserPages:[I

.field private leftMask:Landroid/graphics/RectF;

.field private maskPaint:Landroid/graphics/Paint;

.field private miniMapRequired:Z

.field private minimapBounds:Landroid/graphics/RectF;

.field private minimapScreenBounds:Landroid/graphics/RectF;

.field private onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

.field private onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

.field private optimalPageHeight:F

.field private optimalPageWidth:F

.field private originalUserPages:[I

.field private pageHeight:I

.field private pageWidth:I

.field private paint:Landroid/graphics/Paint;

.field private paintMinimapBack:Landroid/graphics/Paint;

.field private paintMinimapFront:Landroid/graphics/Paint;

.field private recycled:Z

.field private renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

.field private rightMask:Landroid/graphics/RectF;

.field private state:Lcom/joanzapata/pdfview/PDFView$State;

.field private swipeVertical:Z

.field private userWantsMinimap:Z

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/joanzapata/pdfview/PDFView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x32

    const/high16 v3, -0x1000000

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    .line 122
    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joanzapata/pdfview/PDFView;->recycled:Z

    .line 137
    sget-object v0, Lcom/joanzapata/pdfview/PDFView$State;->DEFAULT:Lcom/joanzapata/pdfview/PDFView$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->state:Lcom/joanzapata/pdfview/PDFView$State;

    .line 180
    iput v2, p0, Lcom/joanzapata/pdfview/PDFView;->defaultPage:I

    .line 182
    iput-boolean v2, p0, Lcom/joanzapata/pdfview/PDFView;->userWantsMinimap:Z

    .line 185
    iput-boolean v2, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    .line 190
    iput-boolean v2, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    .line 191
    new-instance v0, Lcom/joanzapata/pdfview/CacheManager;

    invoke-direct {v0}, Lcom/joanzapata/pdfview/CacheManager;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    .line 192
    new-instance v0, Lcom/joanzapata/pdfview/AnimationManager;

    invoke-direct {v0, p0}, Lcom/joanzapata/pdfview/AnimationManager;-><init>(Lcom/joanzapata/pdfview/PDFView;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->animationManager:Lcom/joanzapata/pdfview/AnimationManager;

    .line 193
    new-instance v0, Lcom/joanzapata/pdfview/DragPinchManager;

    invoke-direct {v0, p0}, Lcom/joanzapata/pdfview/DragPinchManager;-><init>(Lcom/joanzapata/pdfview/PDFView;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->dragPinchManager:Lcom/joanzapata/pdfview/DragPinchManager;

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paint:Landroid/graphics/Paint;

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->debugPaint:Landroid/graphics/Paint;

    .line 197
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapBack:Landroid/graphics/Paint;

    .line 199
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapBack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapFront:Landroid/graphics/Paint;

    .line 203
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapFront:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapFront:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapFront:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    invoke-virtual {p0, v2}, Lcom/joanzapata/pdfview/PDFView;->setWillNotDraw(Z)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/joanzapata/pdfview/PDFView;)Lcom/joanzapata/pdfview/CacheManager;
    .locals 1
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/joanzapata/pdfview/PDFView;)Lcom/joanzapata/pdfview/RenderingAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/joanzapata/pdfview/PDFView;->load(Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/joanzapata/pdfview/PDFView;Lcom/joanzapata/pdfview/listener/OnDrawListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # Lcom/joanzapata/pdfview/listener/OnDrawListener;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->setOnDrawListener(Lcom/joanzapata/pdfview/listener/OnDrawListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/joanzapata/pdfview/PDFView;Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->setOnPageChangeListener(Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/joanzapata/pdfview/PDFView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/joanzapata/pdfview/PDFView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->setUserWantsMinimap(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/joanzapata/pdfview/PDFView;)Lcom/joanzapata/pdfview/DragPinchManager;
    .locals 1
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->dragPinchManager:Lcom/joanzapata/pdfview/DragPinchManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/joanzapata/pdfview/PDFView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->maskPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$802(Lcom/joanzapata/pdfview/PDFView;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView;->maskPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$900(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;
    .param p3, "x3"    # [I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/joanzapata/pdfview/PDFView;->load(Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;[I)V

    return-void
.end method

.method private calculateCenterOffsetForPage(I)F
    .locals 5
    .param p1, "pageNb"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 701
    iget-boolean v2, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    if-eqz v2, :cond_0

    .line 702
    int-to-float v2, p1

    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v2, v3

    neg-float v1, v2

    .line 703
    .local v1, "imageY":F
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 708
    .end local v1    # "imageY":F
    :goto_0
    return v1

    .line 706
    :cond_0
    int-to-float v2, p1

    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v2, v3

    neg-float v0, v2

    .line 707
    .local v0, "imageX":F
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    move v1, v0

    .line 708
    goto :goto_0
.end method

.method private calculateMasksBounds()V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 779
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v2}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->leftMask:Landroid/graphics/RectF;

    .line 780
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v2}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->rightMask:Landroid/graphics/RectF;

    .line 781
    return-void
.end method

.method private calculateMinimapAreaBounds()V
    .locals 9

    .prologue
    .line 757
    iget-object v4, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    if-nez v4, :cond_0

    .line 775
    :goto_0
    return-void

    .line 761
    :cond_0
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 762
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    goto :goto_0

    .line 765
    :cond_1
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v5, v5

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    .line 766
    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v2, v4, v5

    .line 767
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v1, v4, v5

    .line 768
    .local v1, "width":F
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v3, v4, v5

    .line 769
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v0, v4, v5

    .line 770
    .local v0, "height":F
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    iget-object v7, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v3

    add-float/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/joanzapata/pdfview/PDFView;->minimapScreenBounds:Landroid/graphics/RectF;

    .line 772
    iget-object v4, p0, Lcom/joanzapata/pdfview/PDFView;->minimapScreenBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 773
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    goto/16 :goto_0
.end method

.method private calculateMinimapBounds()V
    .locals 10

    .prologue
    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v9, 0x40a00000    # 5.0f

    .line 743
    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    div-float v3, v6, v5

    .line 744
    .local v3, "ratioX":F
    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    div-float v4, v6, v5

    .line 745
    .local v4, "ratioY":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 746
    .local v2, "ratio":F
    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float v1, v5, v2

    .line 747
    .local v1, "minimapWidth":F
    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float v0, v5, v2

    .line 748
    .local v0, "minimapHeight":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    int-to-float v6, v6

    sub-float/2addr v6, v1

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    int-to-float v7, v7

    add-float v8, v9, v0

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    .line 749
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateMinimapAreaBounds()V

    .line 750
    return-void
.end method

.method private calculateOptimalWidthAndHeight()V
    .locals 8

    .prologue
    .line 717
    iget-object v5, p0, Lcom/joanzapata/pdfview/PDFView;->state:Lcom/joanzapata/pdfview/PDFView$State;

    sget-object v6, Lcom/joanzapata/pdfview/PDFView$State;->DEFAULT:Lcom/joanzapata/pdfview/PDFView$State;

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    if-nez v5, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .local v2, "maxWidth":F
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 722
    .local v1, "maxHeight":F
    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->pageWidth:I

    int-to-float v4, v5

    .local v4, "w":F
    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->pageHeight:I

    int-to-float v0, v5

    .line 723
    .local v0, "h":F
    div-float v3, v4, v0

    .line 724
    .local v3, "ratio":F
    move v4, v2

    .line 725
    div-float v5, v2, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 726
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    .line 727
    move v0, v1

    .line 728
    mul-float v5, v1, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 731
    :cond_2
    iput v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    .line 732
    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    .line 734
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateMasksBounds()V

    .line 735
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateMinimapBounds()V

    goto :goto_0
.end method

.method private determineValidPageNumberFrom(I)I
    .locals 1
    .param p1, "userPage"    # I

    .prologue
    .line 678
    if-gtz p1, :cond_1

    .line 679
    const/4 p1, 0x0

    .line 690
    .end local p1    # "userPage":I
    :cond_0
    :goto_0
    return p1

    .line 681
    .restart local p1    # "userPage":I
    :cond_1
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 686
    :cond_2
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->documentPageCount:I

    if-lt p1, v0, :cond_0

    .line 687
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->documentPageCount:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method private drawMiniMap(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->minimapBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapBack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 462
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->minimapScreenBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/joanzapata/pdfview/PDFView;->paintMinimapFront:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 463
    return-void
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/joanzapata/pdfview/model/PagePart;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "part"    # Lcom/joanzapata/pdfview/model/PagePart;

    .prologue
    .line 412
    invoke-virtual/range {p2 .. p2}, Lcom/joanzapata/pdfview/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 413
    .local v7, "pageRelativeBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p2 .. p2}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 416
    .local v8, "renderedBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 417
    .local v3, "localTranslationX":F
    const/4 v4, 0x0

    .line 418
    .local v4, "localTranslationY":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    if-eqz v13, :cond_1

    .line 419
    invoke-virtual/range {p2 .. p2}, Lcom/joanzapata/pdfview/model/PagePart;->getUserPage()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    .line 422
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    new-instance v9, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 425
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 427
    .local v9, "srcRect":Landroid/graphics/Rect;
    iget v13, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    .line 428
    .local v5, "offsetX":F
    iget v13, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v6

    .line 429
    .local v6, "offsetY":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v12

    .line 430
    .local v12, "width":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v2

    .line 435
    .local v2, "height":F
    new-instance v1, Landroid/graphics/RectF;

    float-to-int v13, v5

    int-to-float v13, v13

    float-to-int v14, v6

    int-to-float v14, v14

    add-float v15, v5, v12

    float-to-int v15, v15

    int-to-float v15, v15

    add-float v16, v6, v2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 440
    .local v1, "dstRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    add-float v10, v13, v3

    .line 441
    .local v10, "translationX":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    add-float v11, v13, v4

    .line 442
    .local v11, "translationY":F
    iget v13, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v13, v10

    invoke-virtual/range {p0 .. p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-gez v13, :cond_0

    iget v13, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v13, v10

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-lez v13, :cond_0

    iget v13, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v11

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-gez v13, :cond_0

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v13, v11

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_2

    .line 444
    :cond_0
    neg-float v13, v3

    neg-float v14, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 458
    :goto_1
    return-void

    .line 421
    .end local v1    # "dstRect":Landroid/graphics/RectF;
    .end local v2    # "height":F
    .end local v5    # "offsetX":F
    .end local v6    # "offsetY":F
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    .end local v10    # "translationX":F
    .end local v11    # "translationY":F
    .end local v12    # "width":F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/joanzapata/pdfview/model/PagePart;->getUserPage()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v3

    goto/16 :goto_0

    .line 448
    .restart local v1    # "dstRect":Landroid/graphics/RectF;
    .restart local v2    # "height":F
    .restart local v5    # "offsetX":F
    .restart local v6    # "offsetY":F
    .restart local v9    # "srcRect":Landroid/graphics/Rect;
    .restart local v10    # "translationX":F
    .restart local v11    # "translationY":F
    .restart local v12    # "width":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/joanzapata/pdfview/PDFView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 456
    neg-float v13, v3

    neg-float v14, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private load(Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/joanzapata/pdfview/PDFView;->load(Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;[I)V

    .line 214
    return-void
.end method

.method private load(Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;[I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "onLoadCompleteListener"    # Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;
    .param p3, "userPages"    # [I

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/joanzapata/pdfview/PDFView;->recycled:Z

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    if-eqz p3, :cond_1

    .line 224
    iput-object p3, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    .line 225
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    invoke-static {v0}, Lcom/joanzapata/pdfview/util/ArrayUtils;->deleteDuplicatedPages([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPages:[I

    .line 226
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    invoke-static {v0}, Lcom/joanzapata/pdfview/util/ArrayUtils;->calculateIndexesInDuplicateArray([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPageIndexes:[I

    .line 229
    :cond_1
    iput-object p2, p0, Lcom/joanzapata/pdfview/PDFView;->onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    .line 232
    new-instance v0, Lcom/joanzapata/pdfview/DecodingAsyncTask;

    invoke-direct {v0, p1, p0}, Lcom/joanzapata/pdfview/DecodingAsyncTask;-><init>(Landroid/net/Uri;Lcom/joanzapata/pdfview/PDFView;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->decodingAsyncTask:Lcom/joanzapata/pdfview/DecodingAsyncTask;

    .line 233
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->decodingAsyncTask:Lcom/joanzapata/pdfview/DecodingAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/joanzapata/pdfview/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    new-instance v0, Lcom/joanzapata/pdfview/RenderingAsyncTask;

    invoke-direct {v0, p0}, Lcom/joanzapata/pdfview/RenderingAsyncTask;-><init>(Lcom/joanzapata/pdfview/PDFView;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    .line 236
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    return-void
.end method

.method private loadPage(II)I
    .locals 29
    .param p1, "userPage"    # I
    .param p2, "nbOfPartsLoadable"    # I

    .prologue
    .line 515
    move/from16 v6, p1

    .line 516
    .local v6, "documentPage":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPages:[I

    if-eqz v4, :cond_2

    .line 517
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPages:[I

    array-length v4, v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_1

    .line 518
    :cond_0
    const/4 v4, 0x0

    .line 635
    :goto_0
    return v4

    .line 520
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPages:[I

    aget v6, v4, p1

    .line 523
    :cond_2
    move v12, v6

    .line 524
    .local v12, "documentPageFinal":I
    if-ltz v6, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/joanzapata/pdfview/PDFView;->documentPageCount:I

    move/from16 v0, p1

    if-lt v0, v4, :cond_4

    .line 525
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 529
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v8, v5

    new-instance v9, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    invoke-direct {v9, v5, v11, v13, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/joanzapata/pdfview/CacheManager;->containsThumbnail(IIFFLandroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v8, v5

    new-instance v9, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    invoke-direct {v9, v5, v11, v13, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->addRenderingTask(IIFFLandroid/graphics/RectF;ZI)V

    .line 544
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    div-float v24, v4, v5

    .line 545
    .local v24, "ratioX":F
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    div-float v25, v4, v5

    .line 546
    .local v25, "ratioY":F
    const/high16 v4, 0x43800000    # 256.0f

    mul-float v4, v4, v25

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    div-float v22, v4, v5

    .line 547
    .local v22, "partHeight":F
    const/high16 v4, 0x43800000    # 256.0f

    mul-float v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    div-float v23, v4, v5

    .line 548
    .local v23, "partWidth":F
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, v22

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    .line 549
    .local v21, "nbRows":I
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, v23

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v20, v0

    .line 550
    .local v20, "nbCols":I
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v20

    int-to-float v5, v0

    div-float v9, v4, v5

    .line 551
    .local v9, "pageRelativePartWidth":F
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v21

    int-to-float v5, v0

    div-float v10, v4, v5

    .line 558
    .local v10, "pageRelativePartHeight":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    neg-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v18, v4, v5

    .line 559
    .local v18, "middleOfScreenX":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    neg-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v19, v4, v5

    .line 562
    .local v19, "middleOfScreenY":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    if-eqz v4, :cond_6

    .line 563
    move/from16 v0, p1

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float v14, v18, v4

    .line 564
    .local v14, "middleOfScreenPageX":F
    move/from16 v16, v19

    .line 569
    .local v16, "middleOfScreenPageY":F
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    div-float v15, v14, v4

    .line 570
    .local v15, "middleOfScreenPageXRatio":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    div-float v17, v16, v4

    .line 571
    .local v17, "middleOfScreenPageYRatio":F
    move/from16 v0, v21

    int-to-float v4, v0

    mul-float v4, v4, v17

    float-to-int v0, v4

    move/from16 v27, v0

    .line 572
    .local v27, "startingRow":I
    move/from16 v0, v20

    int-to-float v4, v0

    mul-float/2addr v4, v15

    float-to-int v0, v4

    move/from16 v26, v0

    .line 575
    .local v26, "startingCol":I
    const/4 v4, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-static {v0, v4, v1}, Lcom/joanzapata/pdfview/util/NumberUtils;->limit(III)I

    move-result v27

    .line 576
    const/4 v4, 0x0

    move/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v0, v4, v1}, Lcom/joanzapata/pdfview/util/NumberUtils;->limit(III)I

    move-result v26

    .line 632
    new-instance v4, Lcom/joanzapata/pdfview/SpiralLoopManager;

    new-instance v7, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;

    move-object/from16 v8, p0

    move/from16 v11, p1

    move/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;-><init>(Lcom/joanzapata/pdfview/PDFView;FFIII)V

    .local v7, "spiralLoopListener":Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;
    invoke-direct {v4, v7}, Lcom/joanzapata/pdfview/SpiralLoopManager;-><init>(Lcom/joanzapata/pdfview/SpiralLoopManager$SpiralLoopListener;)V

    .line 633
    move/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/joanzapata/pdfview/SpiralLoopManager;->startLoop(IIII)V

    .line 635
    iget v4, v7, Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;->nbItemTreated:I

    goto/16 :goto_0

    .line 566
    .end local v7    # "spiralLoopListener":Lcom/joanzapata/pdfview/PDFView$1SpiralLoopListenerImpl;
    .end local v14    # "middleOfScreenPageX":F
    .end local v15    # "middleOfScreenPageXRatio":F
    .end local v16    # "middleOfScreenPageY":F
    .end local v17    # "middleOfScreenPageYRatio":F
    .end local v26    # "startingCol":I
    .end local v27    # "startingRow":I
    :cond_6
    move/from16 v0, p1

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float v16, v19, v4

    .line 567
    .restart local v16    # "middleOfScreenPageY":F
    move/from16 v14, v18

    .restart local v14    # "middleOfScreenPageX":F
    goto :goto_1
.end method

.method private setDefaultPage(I)V
    .locals 0
    .param p1, "defaultPage"    # I

    .prologue
    .line 949
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView;->defaultPage:I

    .line 950
    return-void
.end method

.method private setOnDrawListener(Lcom/joanzapata/pdfview/listener/OnDrawListener;)V
    .locals 0
    .param p1, "onDrawListener"    # Lcom/joanzapata/pdfview/listener/OnDrawListener;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView;->onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

    .line 292
    return-void
.end method

.method private setOnPageChangeListener(Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)V
    .locals 0
    .param p1, "onPageChangeListener"    # Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView;->onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    .line 288
    return-void
.end method

.method private setUserWantsMinimap(Z)V
    .locals 0
    .param p1, "userWantsMinimap"    # Z

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/PDFView;->userWantsMinimap:Z

    .line 946
    return-void
.end method


# virtual methods
.method public enableSwipe(Z)V
    .locals 1
    .param p1, "enableSwipe"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->dragPinchManager:Lcom/joanzapata/pdfview/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/joanzapata/pdfview/DragPinchManager;->setSwipeEnabled(Z)V

    .line 284
    return-void
.end method

.method public fromAsset(Ljava/lang/String;)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 5
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 963
    :try_start_0
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/joanzapata/pdfview/util/FileUtils;->fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 964
    .local v1, "pdfFile":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/joanzapata/pdfview/PDFView;->fromFile(Ljava/io/File;)Lcom/joanzapata/pdfview/PDFView$Configurator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 965
    .end local v1    # "pdfFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/joanzapata/pdfview/exception/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/joanzapata/pdfview/exception/FileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public fromFile(Ljava/io/File;)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 972
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/joanzapata/pdfview/exception/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/joanzapata/pdfview/exception/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    new-instance v0, Lcom/joanzapata/pdfview/PDFView$Configurator;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;-><init>(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;Lcom/joanzapata/pdfview/PDFView$1;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentPage:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    return v0
.end method

.method getDecodeService()Lorg/vudroid/core/DecodeService;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->decodeService:Lorg/vudroid/core/DecodeService;

    return-object v0
.end method

.method public getOptimalPageWidth()F
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->originalUserPages:[I

    array-length v0, v0

    .line 279
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->documentPageCount:I

    goto :goto_0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    return v0
.end method

.method public isSwipeVertical()Z
    .locals 1

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    return v0
.end method

.method public isZooming()Z
    .locals 2

    .prologue
    .line 937
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 244
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/joanzapata/pdfview/PDFView;->showPage(I)V

    .line 245
    return-void
.end method

.method public loadComplete(Lorg/vudroid/core/DecodeService;)V
    .locals 2
    .param p1, "decodeService"    # Lorg/vudroid/core/DecodeService;

    .prologue
    const/4 v1, 0x0

    .line 640
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 641
    invoke-interface {p1}, Lorg/vudroid/core/DecodeService;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->documentPageCount:I

    .line 644
    invoke-interface {p1, v1}, Lorg/vudroid/core/DecodeService;->getPageWidth(I)I

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->pageWidth:I

    .line 645
    invoke-interface {p1, v1}, Lorg/vudroid/core/DecodeService;->getPageHeight(I)I

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView;->pageHeight:I

    .line 646
    sget-object v0, Lcom/joanzapata/pdfview/PDFView$State;->LOADED:Lcom/joanzapata/pdfview/PDFView$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->state:Lcom/joanzapata/pdfview/PDFView$State;

    .line 647
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateOptimalWidthAndHeight()V

    .line 650
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->defaultPage:I

    invoke-virtual {p0, v0}, Lcom/joanzapata/pdfview/PDFView;->jumpTo(I)V

    .line 651
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->documentPageCount:I

    invoke-interface {v0, v1}, Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;->loadComplete(I)V

    .line 654
    :cond_0
    return-void
.end method

.method public loadPages()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 471
    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    invoke-virtual {v3}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->removeAllTasks()V

    .line 477
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    invoke-virtual {v3}, Lcom/joanzapata/pdfview/CacheManager;->makeANewSet()V

    .line 480
    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentPage:I

    .line 481
    .local v1, "index":I
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPageIndexes:[I

    if-eqz v3, :cond_2

    .line 482
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPageIndexes:[I

    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentPage:I

    aget v1, v3, v4

    .line 487
    :cond_2
    const/4 v2, 0x0

    .line 488
    .local v2, "parts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x1

    if-gt v0, v3, :cond_4

    sget v3, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v2, v3, :cond_4

    .line 489
    add-int v3, v1, v0

    sget v4, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Lcom/joanzapata/pdfview/PDFView;->loadPage(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 490
    if-eqz v0, :cond_3

    sget v3, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v2, v3, :cond_3

    .line 491
    sub-int v3, v1, v0

    sget v4, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Lcom/joanzapata/pdfview/PDFView;->loadPage(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 488
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    :cond_4
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->invalidate()V

    goto :goto_0
.end method

.method public moveRelativeTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 877
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/joanzapata/pdfview/PDFView;->moveTo(FF)V

    .line 878
    return-void
.end method

.method public moveTo(FF)V
    .locals 11
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 790
    iget-boolean v4, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    if-eqz v4, :cond_8

    .line 792
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 793
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v5, v8

    sub-float p1, v4, v5

    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->isZooming()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 804
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 805
    iput-boolean v9, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    .line 806
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float p2, v4, v5

    .line 864
    :cond_1
    :goto_1
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    .line 865
    iput p2, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    .line 866
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateMinimapAreaBounds()V

    .line 867
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->invalidate()V

    .line 868
    return-void

    .line 795
    :cond_2
    cmpl-float v4, p1, v6

    if-lez v4, :cond_3

    .line 796
    const/4 p1, 0x0

    goto :goto_0

    .line 797
    :cond_3
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float p1, v4, v5

    goto :goto_0

    .line 808
    :cond_4
    iput-boolean v10, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    .line 809
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    .line 810
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    neg-float p2, v4

    goto :goto_1

    .line 811
    :cond_5
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float p2, v4, v5

    goto :goto_1

    .line 818
    :cond_6
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v1

    .line 819
    .local v1, "maxY":F
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v3

    .line 820
    .local v3, "minY":F
    cmpg-float v4, p2, v1

    if-gez v4, :cond_7

    .line 821
    move p2, v1

    goto/16 :goto_1

    .line 822
    :cond_7
    cmpl-float v4, p2, v3

    if-lez v4, :cond_1

    .line 823
    move p2, v3

    goto/16 :goto_1

    .line 828
    .end local v1    # "maxY":F
    .end local v3    # "minY":F
    :cond_8
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 829
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v5, v8

    sub-float p2, v4, v5

    .line 839
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->isZooming()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 840
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c

    .line 841
    iput-boolean v9, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    .line 842
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float p1, v4, v5

    goto/16 :goto_1

    .line 831
    :cond_a
    cmpl-float v4, p2, v6

    if-lez v4, :cond_b

    .line 832
    const/4 p2, 0x0

    goto :goto_2

    .line 833
    :cond_b
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 834
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float p2, v4, v5

    goto :goto_2

    .line 844
    :cond_c
    iput-boolean v10, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    .line 845
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    add-float/2addr v4, p1

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    .line 846
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    neg-float p1, v4

    goto/16 :goto_1

    .line 847
    :cond_d
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    add-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    sub-float p1, v4, v5

    goto/16 :goto_1

    .line 854
    :cond_e
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v0

    .line 855
    .local v0, "maxX":F
    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v2

    .line 856
    .local v2, "minX":F
    cmpg-float v4, p1, v0

    if-gez v4, :cond_f

    .line 857
    move p1, v0

    goto/16 :goto_1

    .line 858
    :cond_f
    cmpl-float v4, p1, v2

    if-lez v4, :cond_1

    .line 859
    move p1, v2

    goto/16 :goto_1
.end method

.method public onBitmapRendered(Lcom/joanzapata/pdfview/model/PagePart;)V
    .locals 1
    .param p1, "part"    # Lcom/joanzapata/pdfview/model/PagePart;

    .prologue
    .line 662
    invoke-virtual {p1}, Lcom/joanzapata/pdfview/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    invoke-virtual {v0, p1}, Lcom/joanzapata/pdfview/CacheManager;->cacheThumbnail(Lcom/joanzapata/pdfview/model/PagePart;)V

    .line 667
    :goto_0
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->invalidate()V

    .line 668
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    invoke-virtual {v0, p1}, Lcom/joanzapata/pdfview/CacheManager;->cachePart(Lcom/joanzapata/pdfview/model/PagePart;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->recycle()V

    .line 314
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 359
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 361
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->state:Lcom/joanzapata/pdfview/PDFView$State;

    sget-object v4, Lcom/joanzapata/pdfview/PDFView$State;->SHOWN:Lcom/joanzapata/pdfview/PDFView$State;

    if-eq v3, v4, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    .line 367
    .local v0, "currentXOffset":F
    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    .line 368
    .local v1, "currentYOffset":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 371
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    invoke-virtual {v3}, Lcom/joanzapata/pdfview/CacheManager;->getThumbnails()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/joanzapata/pdfview/model/PagePart;

    .line 372
    .local v2, "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-direct {p0, p1, v2}, Lcom/joanzapata/pdfview/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/joanzapata/pdfview/model/PagePart;)V

    goto :goto_1

    .line 376
    .end local v2    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :cond_2
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    invoke-virtual {v3}, Lcom/joanzapata/pdfview/CacheManager;->getPageParts()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/joanzapata/pdfview/model/PagePart;

    .line 377
    .restart local v2    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-direct {p0, p1, v2}, Lcom/joanzapata/pdfview/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/joanzapata/pdfview/model/PagePart;)V

    goto :goto_2

    .line 381
    .end local v2    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :cond_3
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

    if-eqz v3, :cond_4

    .line 382
    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v3, v3

    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v3

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    .line 385
    invoke-virtual {p0, v4}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v4

    iget v5, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageHeight:F

    .line 386
    invoke-virtual {p0, v5}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v5

    iget v6, p0, Lcom/joanzapata/pdfview/PDFView;->currentPage:I

    .line 384
    invoke-interface {v3, p1, v4, v5, v6}, Lcom/joanzapata/pdfview/listener/OnDrawListener;->onLayerDrawn(Landroid/graphics/Canvas;FFI)V

    .line 389
    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    int-to-float v3, v3

    iget v4, p0, Lcom/joanzapata/pdfview/PDFView;->optimalPageWidth:F

    mul-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/joanzapata/pdfview/PDFView;->toCurrentScale(F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    :cond_4
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 396
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->leftMask:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/joanzapata/pdfview/PDFView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 397
    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView;->rightMask:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/joanzapata/pdfview/PDFView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 400
    iget-boolean v3, p0, Lcom/joanzapata/pdfview/PDFView;->userWantsMinimap:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/joanzapata/pdfview/PDFView;->miniMapRequired:Z

    if-eqz v3, :cond_0

    .line 401
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->drawMiniMap(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onLayerUpdate()V
    .locals 0

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->invalidate()V

    .line 407
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->animationManager:Lcom/joanzapata/pdfview/AnimationManager;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/AnimationManager;->stopAll()V

    .line 319
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateOptimalWidthAndHeight()V

    .line 320
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->loadPages()V

    .line 321
    iget-boolean v0, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 322
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    invoke-direct {p0, v1}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/joanzapata/pdfview/PDFView;->moveTo(FF)V

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    invoke-direct {p0, v0}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v0

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/joanzapata/pdfview/PDFView;->moveTo(FF)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 297
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->renderingAsyncTask:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->cancel(Z)Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->decodingAsyncTask:Lcom/joanzapata/pdfview/DecodingAsyncTask;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->decodingAsyncTask:Lcom/joanzapata/pdfview/DecodingAsyncTask;

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/DecodingAsyncTask;->cancel(Z)Z

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->cacheManager:Lcom/joanzapata/pdfview/CacheManager;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/CacheManager;->recycle()V

    .line 307
    iput-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView;->recycled:Z

    .line 308
    sget-object v0, Lcom/joanzapata/pdfview/PDFView$State;->DEFAULT:Lcom/joanzapata/pdfview/PDFView$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->state:Lcom/joanzapata/pdfview/PDFView$State;

    .line 309
    return-void
.end method

.method public resetZoom()V
    .locals 1

    .prologue
    .line 953
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/joanzapata/pdfview/PDFView;->zoomTo(F)V

    .line 954
    return-void
.end method

.method public resetZoomWithAnimation()V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->animationManager:Lcom/joanzapata/pdfview/AnimationManager;

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/joanzapata/pdfview/AnimationManager;->startZoomAnimation(FF)V

    .line 958
    return-void
.end method

.method public setSwipeVertical(Z)V
    .locals 0
    .param p1, "swipeVertical"    # Z

    .prologue
    .line 1082
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    .line 1083
    return-void
.end method

.method showPage(I)V
    .locals 3
    .param p1, "pageNb"    # I

    .prologue
    .line 248
    sget-object v0, Lcom/joanzapata/pdfview/PDFView$State;->SHOWN:Lcom/joanzapata/pdfview/PDFView$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->state:Lcom/joanzapata/pdfview/PDFView$State;

    .line 252
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->determineValidPageNumberFrom(I)I

    move-result p1

    .line 253
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView;->currentPage:I

    .line 254
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    .line 255
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPageIndexes:[I

    if-eqz v0, :cond_0

    .line 256
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPageIndexes:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->filteredUserPageIndexes:[I

    aget p1, v0, p1

    .line 258
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView;->currentFilteredPage:I

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->resetZoom()V

    .line 264
    iget-boolean v0, p0, Lcom/joanzapata/pdfview/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->animationManager:Lcom/joanzapata/pdfview/AnimationManager;

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/joanzapata/pdfview/AnimationManager;->startYAnimation(FF)V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->loadPages()V

    .line 270
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/PDFView;->getPageCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/joanzapata/pdfview/listener/OnPageChangeListener;->onPageChanged(II)V

    .line 273
    :cond_1
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView;->animationManager:Lcom/joanzapata/pdfview/AnimationManager;

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->calculateCenterOffsetForPage(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/joanzapata/pdfview/AnimationManager;->startXAnimation(FF)V

    goto :goto_0
.end method

.method public toCurrentScale(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 925
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public toRealScale(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 921
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    div-float v0, p1, v0

    return v0
.end method

.method public zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .locals 1
    .param p1, "dzoom"    # F
    .param p2, "pivot"    # Landroid/graphics/PointF;

    .prologue
    .line 905
    iget v0, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/joanzapata/pdfview/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    .line 906
    return-void
.end method

.method public zoomCenteredTo(FLandroid/graphics/PointF;)V
    .locals 5
    .param p1, "zoom"    # F
    .param p2, "pivot"    # Landroid/graphics/PointF;

    .prologue
    .line 894
    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    div-float v2, p1, v3

    .line 895
    .local v2, "dzoom":F
    invoke-virtual {p0, p1}, Lcom/joanzapata/pdfview/PDFView;->zoomTo(F)V

    .line 896
    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->currentXOffset:F

    mul-float v0, v3, v2

    .line 897
    .local v0, "baseX":F
    iget v3, p0, Lcom/joanzapata/pdfview/PDFView;->currentYOffset:F

    mul-float v1, v3, v2

    .line 898
    .local v1, "baseY":F
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 899
    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 900
    invoke-virtual {p0, v0, v1}, Lcom/joanzapata/pdfview/PDFView;->moveTo(FF)V

    .line 901
    return-void
.end method

.method public zoomTo(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 882
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView;->zoom:F

    .line 883
    invoke-direct {p0}, Lcom/joanzapata/pdfview/PDFView;->calculateMasksBounds()V

    .line 884
    return-void
.end method
