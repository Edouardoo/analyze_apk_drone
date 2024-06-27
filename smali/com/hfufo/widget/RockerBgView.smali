.class public Lcom/hfufo/widget/RockerBgView;
.super Landroid/widget/RelativeLayout;
.source "RockerBgView.java"


# static fields
.field public static final ACTION_RUDDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RockerBgView"


# instance fields
.field private cCtrlPoint:Landroid/graphics/Point;

.field private down:Z

.field private hideMotionEvent:Z

.field private isDrawLine:Z

.field private isHold:Z

.field private isMotion:Z

.field private listener:Lcom/fh/listener/RudderListener;

.field private mContext:Landroid/content/Context;

.field private mCtrlPoint:Landroid/graphics/Point;

.field private mReady:Z

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRudderRadius:I

.field private mWheelRadius:I

.field private motionReady:Z

.field offetx:I

.field offety:I

.field private offsetX:I

.field private offsetY:I

.field private pathView:Lcom/hfufo/widget/PathView;

.field private queueLen:I

.field private rudderBtn:Landroid/widget/ImageView;

.field private rudderBtnWheel:Landroid/widget/ImageView;

.field private speed:I

.field private xQueue:[F

.field private yQueue:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xb9

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    .line 35
    const/16 v0, 0x45

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    .line 36
    const/16 v0, 0xf0

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 42
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    .line 43
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    .line 44
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    .line 46
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->down:Z

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    .line 285
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    .line 286
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    .line 624
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 70
    iput-object p1, p0, Lcom/hfufo/widget/RockerBgView;->mContext:Landroid/content/Context;

    .line 71
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    .line 72
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->mReady:Z

    .line 73
    invoke-direct {p0}, Lcom/hfufo/widget/RockerBgView;->initQueue()V

    .line 75
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/RockerBgView;->setKeepScreenOn(Z)V

    .line 76
    invoke-direct {p0}, Lcom/hfufo/widget/RockerBgView;->initView()V

    .line 82
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/RockerBgView;->setFocusable(Z)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/RockerBgView;->setFocusableInTouchMode(Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xb9

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    .line 35
    const/16 v0, 0x45

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    .line 36
    const/16 v0, 0xf0

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 42
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    .line 43
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    .line 44
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    .line 46
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->down:Z

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    .line 285
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    .line 286
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    .line 624
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 93
    iput-object p1, p0, Lcom/hfufo/widget/RockerBgView;->mContext:Landroid/content/Context;

    .line 94
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    .line 95
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->mReady:Z

    .line 96
    invoke-direct {p0}, Lcom/hfufo/widget/RockerBgView;->initQueue()V

    .line 97
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RockerBgView;->initValue(Landroid/util/AttributeSet;)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/RockerBgView;->setKeepScreenOn(Z)V

    .line 99
    invoke-direct {p0}, Lcom/hfufo/widget/RockerBgView;->initView()V

    .line 105
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/RockerBgView;->setFocusable(Z)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/RockerBgView;->setFocusableInTouchMode(Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v2, 0xb9

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    .line 35
    const/16 v0, 0x45

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    .line 36
    const/16 v0, 0xf0

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 42
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    .line 43
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    .line 44
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    .line 46
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->down:Z

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    .line 285
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    .line 286
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    .line 624
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 112
    iput-object p1, p0, Lcom/hfufo/widget/RockerBgView;->mContext:Landroid/content/Context;

    .line 113
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    .line 114
    iput-boolean v1, p0, Lcom/hfufo/widget/RockerBgView;->mReady:Z

    .line 115
    invoke-direct {p0}, Lcom/hfufo/widget/RockerBgView;->initQueue()V

    .line 116
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RockerBgView;->initValue(Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method private initQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    if-ge v0, v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    aput v2, v1, v0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    if-ge v0, v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    aput v2, v1, v0

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_1
    return-void
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 167
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mContext:Landroid/content/Context;

    const v1, 0x7f040070

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    const v0, 0x7f0f0253

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RockerBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0f0254

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RockerBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0f0252

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RockerBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/PathView;

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->pathView:Lcom/hfufo/widget/PathView;

    .line 175
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->pathView:Lcom/hfufo/widget/PathView;

    invoke-virtual {v0, p0}, Lcom/hfufo/widget/PathView;->setRocker(Lcom/hfufo/widget/RockerBgView;)V

    .line 206
    return-void
.end method

.method private setRockerPosition(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    sub-int v1, v4, v5

    .line 251
    .local v1, "left":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    sub-int v3, v4, v5

    .line 252
    .local v3, "top":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    add-int v2, v4, v5

    .line 253
    .local v2, "right":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    add-int v0, v4, v5

    .line 258
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 259
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->postInvalidate()V

    .line 261
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    goto :goto_0
.end method

.method private xAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 580
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 583
    add-float/2addr v1, p1

    .line 585
    iget v2, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method private xAVGf(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 601
    move v1, p1

    .line 603
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    .line 609
    return v1
.end method

.method private yAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 592
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 595
    add-float/2addr v1, p1

    .line 597
    iget v2, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method private yAVGf(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 613
    move v1, p1

    .line 614
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->yQueue:[F

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    .line 619
    return v1
.end method


# virtual methods
.method public getCtrlPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMotionReady()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    return v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/hfufo/widget/RockerBgView;->down:Z

    return v0
.end method

.method public getWheelRadius()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    return v0
.end method

.method public getmRudderRadius()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    .line 57
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    return v0
.end method

.method public getmWheelRadius()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 65
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 292
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 294
    .local v5, "y":F
    const/16 v2, 0x80

    .line 295
    .local v2, "vx":I
    const/16 v3, 0x80

    .line 296
    .local v3, "vy":I
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v6, v7, v4, v5}, Lcom/fh/util/MathUtils;->getLength(FFFF)I

    move-result v0

    .line 297
    .local v0, "len":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    .line 298
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/fh/listener/RudderListener;->onTouch(Z)V

    .line 300
    const-string v6, "rocker"

    const-string v7, "rocker move..."

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isDrawLine:Z

    if-eqz v6, :cond_0

    .line 302
    float-to-int v6, v4

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    .line 303
    float-to-int v6, v5

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    .line 305
    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/hfufo/widget/RockerBgView;->setWheelPosition(Landroid/graphics/Point;)V

    .line 306
    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v6}, Lcom/hfufo/widget/RockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 307
    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 310
    :cond_0
    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    if-le v0, v6, :cond_1

    .line 311
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 312
    const/4 v6, 0x1

    .line 432
    :goto_0
    return v6

    .line 314
    :cond_1
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isHold:Z

    if-nez v6, :cond_2

    .line 315
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 319
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->down:Z

    .line 322
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 323
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/fh/listener/RudderListener;->onTouch(Z)V

    .line 324
    const-string v6, "rocker"

    const-string v7, "rocker move..."

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    if-gt v0, v6, :cond_d

    .line 332
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 334
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    if-eqz v6, :cond_c

    .line 335
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 359
    :goto_1
    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 360
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x43800000    # 256.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 361
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 363
    :cond_4
    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 364
    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x431c0000    # 156.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 365
    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x431c0000    # 156.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 366
    :cond_5
    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    if-nez v6, :cond_6

    .line 367
    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x42980000    # 76.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 368
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x42980000    # 76.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 371
    :cond_6
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isHold:Z

    if-eqz v6, :cond_7

    .line 372
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x43800000    # 256.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 373
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 385
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 386
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/fh/listener/RudderListener;->onTouch(Z)V

    .line 387
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 388
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isHold:Z

    if-eqz v6, :cond_10

    .line 389
    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 390
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 391
    const-string v6, "\u6447\u6746\u6570\u636e*"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP:vy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    rsub-int v3, v3, 0xff

    .line 397
    :goto_2
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 398
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->down:Z

    .line 401
    const-string v6, "\u6447\u6746\u6570\u636e"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP:mRockerPosition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",cy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v6, "\u6447\u6746\u6570\u636e"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP:offety="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",offsetY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -mWheelRadius = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_8
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    if-eqz v6, :cond_b

    .line 406
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v6}, Lcom/hfufo/widget/RockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 408
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    if-eqz v6, :cond_b

    .line 412
    const/16 v6, 0xff

    if-le v3, v6, :cond_11

    .line 413
    const/16 v3, 0xff

    .line 417
    :cond_9
    :goto_3
    const/16 v6, 0xff

    if-le v2, v6, :cond_12

    .line 418
    const/16 v2, 0xff

    .line 422
    :cond_a
    :goto_4
    const-string v6, "\u6447\u6746\u6570\u636e"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent==: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " *- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    if-eqz v6, :cond_13

    .line 424
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x80

    invoke-direct {v8, v9, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v6, v7, v8}, Lcom/fh/listener/RudderListener;->onSteeringWheelChanged(ILandroid/graphics/Point;)V

    .line 431
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    .line 432
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 337
    :cond_c
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    .line 342
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 345
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-static {v6, v7, v8}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 346
    .local v1, "maRockerPosition":Landroid/graphics/Point;
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v9, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/util/MathUtils;->inCircle(FFLandroid/graphics/Point;I)Z

    move-result v6

    if-nez v6, :cond_e

    .line 347
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-static {v6, v7, v8}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 349
    :cond_e
    iget-boolean v6, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    if-eqz v6, :cond_f

    .line 350
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    .line 352
    :cond_f
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    .line 394
    .end local v1    # "maRockerPosition":Landroid/graphics/Point;
    :cond_10
    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v6, v7}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 395
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    goto/16 :goto_2

    .line 414
    :cond_11
    if-gez v3, :cond_9

    .line 415
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 419
    :cond_12
    if-gez v2, :cond_a

    .line 420
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 426
    :cond_13
    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v6, v7, v8}, Lcom/fh/listener/RudderListener;->onSteeringWheelChanged(ILandroid/graphics/Point;)V

    goto/16 :goto_5
.end method

.method public onTouchHide(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v11, 0x42980000    # 76.0f

    const/high16 v10, 0x42480000    # 50.0f

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 436
    const/16 v2, 0x80

    .line 437
    .local v2, "vx":I
    const/16 v3, 0x80

    .line 438
    .local v3, "vy":I
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-static {v4, v5, p1, p2}, Lcom/fh/util/MathUtils;->getLength(FFFF)I

    move-result v0

    .line 447
    .local v0, "len":I
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    if-gt v0, v4, :cond_4

    .line 449
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 463
    :goto_0
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 464
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43800000    # 256.0f

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v9

    float-to-int v2, v4

    .line 465
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v9

    float-to-int v3, v4

    .line 467
    :cond_0
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 468
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x431c0000    # 156.0f

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    float-to-int v2, v4

    .line 469
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x431c0000    # 156.0f

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    float-to-int v3, v4

    .line 470
    :cond_1
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    if-nez v4, :cond_2

    .line 471
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    div-float v5, v11, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v12

    float-to-int v2, v4

    .line 472
    iget v4, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    div-float v5, v11, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v12

    float-to-int v3, v4

    .line 474
    :cond_2
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    if-eqz v4, :cond_3

    .line 475
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/hfufo/widget/RockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 477
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    if-eqz v4, :cond_3

    .line 481
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v5, 0x1

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v4, v5, v6}, Lcom/fh/listener/RudderListener;->onSteeringWheelChanged(ILandroid/graphics/Point;)V

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    .line 486
    return-void

    .line 452
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/hfufo/widget/RockerBgView;->motionReady:Z

    .line 455
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    float-to-int v6, p1

    float-to-int v7, p2

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-static {v4, v5, v6}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 456
    .local v1, "maRockerPosition":Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-static {v4, v5, v6, v7}, Lcom/fh/util/MathUtils;->inCircle(FFLandroid/graphics/Point;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 457
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    float-to-int v6, p1

    float-to-int v7, p2

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iget v6, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    invoke-static {v4, v5, v6}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 459
    :cond_5
    iget-object v4, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 514
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    .line 519
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 520
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    .line 521
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 536
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    .line 537
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    .line 539
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    .line 543
    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 2
    .param p1, "isM"    # Z

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/RockerBgView;->mReady:Z

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iput-boolean p1, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    .line 212
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 213
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iput-boolean p1, p0, Lcom/hfufo/widget/RockerBgView;->isMotion:Z

    .line 216
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    const v1, 0x7f0300aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    const v1, 0x7f0300a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setCtrlPoint(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x43000000    # 128.0f

    .line 139
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/hfufo/widget/RockerBgView;->xAVGf(F)F

    move-result v2

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    add-int v0, v2, v3

    .line 140
    .local v0, "vx":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/hfufo/widget/RockerBgView;->yAVGf(F)F

    move-result v2

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    add-int v1, v2, v3

    .line 141
    .local v1, "vy":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 142
    iget-boolean v2, p0, Lcom/hfufo/widget/RockerBgView;->isHold:Z

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v2}, Lcom/hfufo/widget/RockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    .line 154
    return-void
.end method

.method public setDrawLineEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 490
    iput-boolean p1, p0, Lcom/hfufo/widget/RockerBgView;->isDrawLine:Z

    .line 491
    iget-boolean v0, p0, Lcom/hfufo/widget/RockerBgView;->isDrawLine:Z

    if-nez v0, :cond_0

    .line 492
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offetx:I

    .line 493
    iput v1, p0, Lcom/hfufo/widget/RockerBgView;->offety:I

    .line 494
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 495
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RockerBgView;->setWheelPosition(Landroid/graphics/Point;)V

    .line 496
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/RockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 497
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->pathView:Lcom/hfufo/widget/PathView;

    invoke-virtual {v0}, Lcom/hfufo/widget/PathView;->finishFlyAnim()V

    .line 499
    :cond_0
    return-void
.end method

.method public setHideEvent(Z)V
    .locals 0
    .param p1, "hideRight"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/hfufo/widget/RockerBgView;->hideMotionEvent:Z

    .line 284
    return-void
.end method

.method public setHold(Z)V
    .locals 4
    .param p1, "hold"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/hfufo/widget/RockerBgView;->isHold:Z

    .line 503
    iget-boolean v0, p0, Lcom/hfufo/widget/RockerBgView;->isHold:Z

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->getWheelRadius()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 508
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/RockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 509
    return-void

    .line 506
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mRockerPosition:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public setPathViwVisib(Z)V
    .locals 2
    .param p1, "v"    # Z

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->pathView:Lcom/hfufo/widget/PathView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/PathView;->setVisibility(I)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->pathView:Lcom/hfufo/widget/PathView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/PathView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPosi()V
    .locals 6

    .prologue
    .line 550
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mRudderRadius:I

    .line 552
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 553
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/hfufo/widget/RockerBgView;->cCtrlPoint:Landroid/graphics/Point;

    .line 554
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget-object v2, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 559
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->offsetX:I

    .line 560
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RockerBgView;->offsetY:I

    .line 562
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    .line 566
    return-void
.end method

.method public setRudderListener(Lcom/fh/listener/RudderListener;)V
    .locals 0
    .param p1, "rockerListener"    # Lcom/fh/listener/RudderListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/hfufo/widget/RockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 243
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/hfufo/widget/RockerBgView;->speed:I

    .line 89
    return-void
.end method

.method public setWheelPosition(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 265
    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 267
    .local v1, "hw":I
    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v5, v1

    .line 268
    .local v2, "left":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v1

    .line 269
    .local v4, "top":I
    iget v5, p1, Landroid/graphics/Point;->x:I

    add-int v3, v5, v1

    .line 270
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    add-int v0, v5, v1

    .line 275
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 276
    iget-object v5, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->postInvalidate()V

    .line 278
    invoke-virtual {p0}, Lcom/hfufo/widget/RockerBgView;->postInvalidate()V

    .line 279
    return-void
.end method

.method public setWheelRadius(I)V
    .locals 0
    .param p1, "mWheelRadius"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/hfufo/widget/RockerBgView;->mWheelRadius:I

    .line 125
    return-void
.end method

.method public setWheelVisib(Z)V
    .locals 3
    .param p1, "isV"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/hfufo/widget/RockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
