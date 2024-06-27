.class public Lcom/hfufo/widget/PathView;
.super Landroid/view/View;
.source "PathView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/PathView$FlyAnim;
    }
.end annotation


# static fields
.field private static ANIM_TIME:I = 0x0

.field private static final SPEED_RANGE_100:I = 0x78

.field private static final SPEED_RANGE_30:I = 0x26

.field private static final SPEED_RANGE_60:I = 0x4c

.field private static final SPEED_TIME_100:I = 0xbb8

.field private static final SPEED_TIME_30:I = 0x2710

.field private static final SPEED_TIME_60:I = 0x1b58

.field private static final STATE_DOWN:I = 0x0

.field private static final STATE_FLY:I = 0x3

.field private static final STATE_MOVE:I = 0x1

.field private static final STATE_NORMAL:I = -0x1

.field private static final STATE_UP:I = 0x2


# instance fields
.field private addPointRun:Ljava/lang/Runnable;

.field private crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

.field private flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

.field private flyBmp:Landroid/graphics/Bitmap;

.field private flyMatrix:Landroid/graphics/Matrix;

.field private flyPadding:I

.field private handler:Landroid/os/Handler;

.field private isAddPoint:Z

.field private isDrawTest:Z

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pathBmp:Landroid/graphics/Bitmap;

.field private pathCanvas:Landroid/graphics/Canvas;

.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pointBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hfufo/widget/PointTimeBean;",
            ">;"
        }
    .end annotation
.end field

.field private rokerview:Lcom/hfufo/widget/RockerBgView;

.field private standRange:F

.field private standTime:F

.field private testPaint:Landroid/graphics/Paint;

.field private testPath:Landroid/graphics/Path;

.field private timeScale:F

.field private touchDownTime:J

.field private touchState:I

.field private validLenght:I

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x28

    sput v0, Lcom/hfufo/widget/PathView;->ANIM_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const v0, 0x45dac000    # 7000.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->standTime:F

    .line 56
    const/high16 v0, 0x42980000    # 76.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->standRange:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->timeScale:F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Lcom/hfufo/widget/PathView;->validLenght:I

    .line 324
    iput-boolean v1, p0, Lcom/hfufo/widget/PathView;->isAddPoint:Z

    .line 325
    new-instance v0, Lcom/hfufo/widget/PathView$1;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/PathView$1;-><init>(Lcom/hfufo/widget/PathView;)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->addPointRun:Ljava/lang/Runnable;

    .line 611
    iput-boolean v1, p0, Lcom/hfufo/widget/PathView;->isDrawTest:Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/hfufo/widget/PathView;->initView(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const v0, 0x45dac000    # 7000.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->standTime:F

    .line 56
    const/high16 v0, 0x42980000    # 76.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->standRange:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->timeScale:F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Lcom/hfufo/widget/PathView;->validLenght:I

    .line 324
    iput-boolean v1, p0, Lcom/hfufo/widget/PathView;->isAddPoint:Z

    .line 325
    new-instance v0, Lcom/hfufo/widget/PathView$1;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/PathView$1;-><init>(Lcom/hfufo/widget/PathView;)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->addPointRun:Ljava/lang/Runnable;

    .line 611
    iput-boolean v1, p0, Lcom/hfufo/widget/PathView;->isDrawTest:Z

    .line 97
    invoke-virtual {p0, p1}, Lcom/hfufo/widget/PathView;->initView(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const v0, 0x45dac000    # 7000.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->standTime:F

    .line 56
    const/high16 v0, 0x42980000    # 76.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->standRange:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hfufo/widget/PathView;->timeScale:F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Lcom/hfufo/widget/PathView;->validLenght:I

    .line 324
    iput-boolean v1, p0, Lcom/hfufo/widget/PathView;->isAddPoint:Z

    .line 325
    new-instance v0, Lcom/hfufo/widget/PathView$1;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/PathView$1;-><init>(Lcom/hfufo/widget/PathView;)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->addPointRun:Ljava/lang/Runnable;

    .line 611
    iput-boolean v1, p0, Lcom/hfufo/widget/PathView;->isDrawTest:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/hfufo/widget/PathView;->initView(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/PathView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/hfufo/widget/PathView;->isAddPoint:Z

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/PointTimeBean;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/RockerBgView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->rokerview:Lcom/hfufo/widget/RockerBgView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/hfufo/widget/PathView;->ANIM_TIME:I

    return v0
.end method

.method static synthetic access$400(Lcom/hfufo/widget/PathView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/PathView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    return v0
.end method

.method static synthetic access$600(Lcom/hfufo/widget/PathView;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget v0, p0, Lcom/hfufo/widget/PathView;->timeScale:F

    return v0
.end method

.method static synthetic access$700(Lcom/hfufo/widget/PathView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hfufo/widget/PathView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->flyMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hfufo/widget/PathView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->flyBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private doDrawPathPoint()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 619
    iput-boolean v4, p0, Lcom/hfufo/widget/PathView;->isDrawTest:Z

    .line 620
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->testPath:Landroid/graphics/Path;

    .line 621
    iget-object v2, p0, Lcom/hfufo/widget/PathView;->testPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/PointTimeBean;

    iget-object v1, v1, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/PointTimeBean;

    iget-object v1, v1, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 622
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 623
    iget-object v2, p0, Lcom/hfufo/widget/PathView;->testPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/PointTimeBean;

    iget-object v1, v1, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/PointTimeBean;

    iget-object v1, v1, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    .line 626
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 628
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 629
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 630
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 631
    return-void
.end method

.method private drawLine()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method private finishTouch()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->isValidPath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x3

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 370
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->scalePointTime()F

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/PathView;->timeScale:F

    .line 371
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->startFlyAnim()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->resetData()V

    goto :goto_0
.end method

.method private isInView(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isValidPath()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 289
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 290
    .local v0, "pathMeasure":Landroid/graphics/PathMeasure;
    iget-object v2, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 291
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v3, p0, Lcom/hfufo/widget/PathView;->validLenght:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 294
    :cond_0
    return v1
.end method

.method private resetData()V
    .locals 3

    .prologue
    .line 569
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 570
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 571
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->flyMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 572
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 573
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 574
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pathCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pathCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 577
    :cond_0
    return-void
.end method

.method private scalePointTime()F
    .locals 6

    .prologue
    .line 427
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 428
    const/high16 v4, 0x3f800000    # 1.0f

    .line 434
    :goto_0
    return v4

    .line 430
    :cond_0
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hfufo/widget/PointTimeBean;

    iget v2, v4, Lcom/hfufo/widget/PointTimeBean;->time:F

    .line 431
    .local v2, "fingerTime":F
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hfufo/widget/PointTimeBean;

    iget v1, v4, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 432
    .local v1, "fingerDic":F
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/hfufo/widget/PathView;->standTime:F

    div-float v3, v4, v5

    .line 433
    .local v3, "standeV":F
    div-float v0, v1, v3

    .line 434
    .local v0, "constantTime":F
    div-float v4, v0, v2

    goto :goto_0
.end method

.method private starAddPointThread()V
    .locals 4

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/PathView;->isAddPoint:Z

    .line 313
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->addPointRun:Ljava/lang/Runnable;

    sget v2, Lcom/hfufo/widget/PathView;->ANIM_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    return-void
.end method

.method private startFlyAnim()V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Lcom/hfufo/widget/PathView$FlyAnim;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/PathView$FlyAnim;-><init>(Lcom/hfufo/widget/PathView;)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

    .line 442
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method private stopAddPointThread()V
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/PathView;->isAddPoint:Z

    .line 321
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->addPointRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method private touchMoveOut(FF)[F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 344
    .local v0, "point":[F
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 359
    :goto_1
    return-object v0

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, v2

    goto :goto_0

    .line 349
    :cond_1
    aput p1, v0, v2

    goto :goto_0

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v0, v3

    goto :goto_1

    .line 357
    :cond_3
    aput p2, v0, v3

    goto :goto_1
.end method


# virtual methods
.method public finishFlyAnim()V
    .locals 2

    .prologue
    .line 560
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 561
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->resetData()V

    .line 563
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    .line 118
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 125
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    .line 128
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 129
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300a0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->flyBmp:Landroid/graphics/Bitmap;

    .line 130
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->flyMatrix:Landroid/graphics/Matrix;

    .line 131
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->handler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 141
    .local v0, "scale":F
    iget v1, p0, Lcom/hfufo/widget/PathView;->validLenght:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/hfufo/widget/PathView;->validLenght:I

    .line 142
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pathBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->pathBmp:Landroid/graphics/Bitmap;

    .line 161
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pathBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->pathCanvas:Landroid/graphics/Canvas;

    .line 166
    :goto_0
    iget v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->flyBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->flyMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/widget/PathView;->isDrawTest:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->testPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    :cond_1
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pathBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 147
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->flyBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/PathView;->flyPadding:I

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/hfufo/widget/PathView;->flyPadding:I

    iget v2, p0, Lcom/hfufo/widget/PathView;->flyPadding:I

    iget v3, p0, Lcom/hfufo/widget/PathView;->flyPadding:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/hfufo/widget/PathView;->flyPadding:I

    sub-int v4, p2, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->viewRect:Landroid/graphics/Rect;

    .line 149
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->drawLine()V

    .line 150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 180
    :pswitch_0
    const-string v0, "touch--> down"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hfufo/widget/PathView;->touchState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->finishFlyAnim()V

    .line 184
    :cond_1
    iget v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/hfufo/widget/PathView;->isInView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iput v2, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 186
    invoke-virtual {p0, p1}, Lcom/hfufo/widget/PathView;->touchDown(Landroid/view/MotionEvent;)V

    .line 187
    const-string v0, "touch-->"

    const-string v2, "down"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    :pswitch_1
    const-string v0, "touch--> move"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hfufo/widget/PathView;->touchState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/hfufo/widget/PathView;->touchState:I

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    or-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 194
    iput v1, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 195
    invoke-virtual {p0, p1}, Lcom/hfufo/widget/PathView;->touchMove(Landroid/view/MotionEvent;)V

    .line 196
    const-string v0, "touch-->"

    const-string v2, "move"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v2

    .line 193
    goto :goto_2

    .line 202
    :pswitch_2
    const-string v0, "touch--> up"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hfufo/widget/PathView;->touchState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    iget v3, p0, Lcom/hfufo/widget/PathView;->touchState:I

    if-nez v3, :cond_5

    :goto_4
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 205
    const-string v0, "touch-->"

    const-string v1, "up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, p1}, Lcom/hfufo/widget/PathView;->touchUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 203
    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRocker(Lcom/hfufo/widget/RockerBgView;)V
    .locals 0
    .param p1, "v"    # Lcom/hfufo/widget/RockerBgView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/hfufo/widget/PathView;->rokerview:Lcom/hfufo/widget/RockerBgView;

    .line 112
    return-void
.end method

.method public setScale(I)V
    .locals 12
    .param p1, "i"    # I

    .prologue
    const/4 v11, 0x0

    .line 384
    packed-switch p1, :pswitch_data_0

    .line 400
    :goto_0
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

    iget v3, v10, Lcom/hfufo/widget/PathView$FlyAnim;->curDistance:F

    .line 401
    .local v3, "curDistance":F
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->scalePointTime()F

    move-result v4

    .line 402
    .local v4, "curTimeScale":F
    cmpl-float v10, v3, v11

    if-nez v10, :cond_0

    .line 403
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

    iput v11, v10, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    .line 421
    :goto_1
    return-void

    .line 386
    .end local v3    # "curDistance":F
    .end local v4    # "curTimeScale":F
    :pswitch_0
    const v10, 0x461c4000    # 10000.0f

    iput v10, p0, Lcom/hfufo/widget/PathView;->standTime:F

    .line 387
    const/high16 v10, 0x42180000    # 38.0f

    iput v10, p0, Lcom/hfufo/widget/PathView;->standRange:F

    goto :goto_0

    .line 390
    :pswitch_1
    const v10, 0x45dac000    # 7000.0f

    iput v10, p0, Lcom/hfufo/widget/PathView;->standTime:F

    .line 391
    const/high16 v10, 0x42980000    # 76.0f

    iput v10, p0, Lcom/hfufo/widget/PathView;->standRange:F

    goto :goto_0

    .line 394
    :pswitch_2
    const v10, 0x453b8000    # 3000.0f

    iput v10, p0, Lcom/hfufo/widget/PathView;->standTime:F

    .line 395
    const/high16 v10, 0x42f00000    # 120.0f

    iput v10, p0, Lcom/hfufo/widget/PathView;->standRange:F

    goto :goto_0

    .line 406
    .restart local v3    # "curDistance":F
    .restart local v4    # "curTimeScale":F
    :cond_0
    const/4 v0, 0x0

    .line 407
    .local v0, "animTime":F
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_2
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 408
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/widget/PointTimeBean;

    iget v10, v10, Lcom/hfufo/widget/PointTimeBean;->distance:F

    cmpg-float v10, v3, v10

    if-gtz v10, :cond_2

    .line 409
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/widget/PointTimeBean;

    iget v1, v10, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 410
    .local v1, "beforeDis":F
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v10, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 411
    .local v7, "lastDis":F
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/widget/PointTimeBean;

    iget v10, v10, Lcom/hfufo/widget/PointTimeBean;->time:F

    mul-float v2, v10, v4

    .line 412
    .local v2, "beforeTime":F
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/widget/PointTimeBean;

    iget v10, v10, Lcom/hfufo/widget/PointTimeBean;->time:F

    mul-float v8, v10, v4

    .line 413
    .local v8, "lastTime":F
    sub-float v10, v3, v1

    sub-float v11, v7, v1

    div-float v9, v10, v11

    .line 414
    .local v9, "percent":F
    sub-float v10, v8, v2

    mul-float v5, v9, v10

    .line 415
    .local v5, "dxTime":F
    add-float v0, v5, v2

    .line 419
    .end local v1    # "beforeDis":F
    .end local v2    # "beforeTime":F
    .end local v5    # "dxTime":F
    .end local v7    # "lastDis":F
    .end local v8    # "lastTime":F
    .end local v9    # "percent":F
    :cond_1
    iget-object v10, p0, Lcom/hfufo/widget/PathView;->flyAnim:Lcom/hfufo/widget/PathView$FlyAnim;

    iput v0, v10, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    .line 420
    iput v4, p0, Lcom/hfufo/widget/PathView;->timeScale:F

    goto :goto_1

    .line 407
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public touchDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->flyMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/PathView;->flyBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/hfufo/widget/PathView;->flyBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 221
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pathCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/widget/PathView;->touchDownTime:J

    .line 224
    new-instance v0, Lcom/hfufo/widget/PointTimeBean;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/hfufo/widget/PointTimeBean;-><init>(FFFF)V

    iput-object v0, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    .line 226
    iget-object v0, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->starAddPointThread()V

    .line 228
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->invalidate()V

    .line 229
    return-void
.end method

.method public touchMove(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 239
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 240
    .local v3, "y":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/hfufo/widget/PathView;->touchDownTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    .line 241
    .local v1, "pointTime":F
    invoke-direct {p0, p1}, Lcom/hfufo/widget/PathView;->isInView(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    const/4 v4, 0x2

    iput v4, p0, Lcom/hfufo/widget/PathView;->touchState:I

    .line 243
    invoke-direct {p0, v2, v3}, Lcom/hfufo/widget/PathView;->touchMoveOut(FF)[F

    move-result-object v0

    .line 244
    .local v0, "point":[F
    aget v2, v0, v8

    .line 245
    const/4 v4, 0x1

    aget v3, v0, v4

    .line 247
    .end local v0    # "point":[F
    :cond_0
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pathCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v5, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 252
    new-instance v4, Lcom/hfufo/widget/PointTimeBean;

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/hfufo/widget/PathView;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/hfufo/widget/PointTimeBean;-><init>(FFFF)V

    iput-object v4, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    .line 254
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->invalidate()V

    .line 256
    invoke-direct {p0, p1}, Lcom/hfufo/widget/PathView;->isInView(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->stopAddPointThread()V

    .line 259
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->finishTouch()V

    .line 262
    :cond_1
    return-void
.end method

.method public touchUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pathCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/hfufo/widget/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hfufo/widget/PathView;->touchDownTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    .line 274
    .local v0, "pointTime":F
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/hfufo/widget/PathView;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 275
    new-instance v1, Lcom/hfufo/widget/PointTimeBean;

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/hfufo/widget/PathView;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/hfufo/widget/PointTimeBean;-><init>(FFFF)V

    iput-object v1, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    .line 277
    iget-object v1, p0, Lcom/hfufo/widget/PathView;->pointBeans:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hfufo/widget/PathView;->crtPoinBean:Lcom/hfufo/widget/PointTimeBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->stopAddPointThread()V

    .line 281
    invoke-virtual {p0}, Lcom/hfufo/widget/PathView;->invalidate()V

    .line 282
    invoke-direct {p0}, Lcom/hfufo/widget/PathView;->finishTouch()V

    .line 283
    return-void
.end method
