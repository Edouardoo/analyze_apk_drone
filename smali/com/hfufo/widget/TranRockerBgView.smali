.class public Lcom/hfufo/widget/TranRockerBgView;
.super Landroid/widget/RelativeLayout;
.source "TranRockerBgView.java"


# static fields
.field public static final ACTION_RUDDER:I = 0x1


# instance fields
.field private down:Z

.field private isHold:Z

.field private isStop:Z

.field private listener:Lcom/fh/listener/RudderListener;

.field private mContext:Landroid/content/Context;

.field private mCtrlPoint:Landroid/graphics/Point;

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRudderRadius:I

.field private mWheelRadius:I

.field private offsetX:I

.field private offsetY:I

.field private queueLen:I

.field private rudderBtn:Landroid/widget/ImageView;

.field private rudderBtnWheel:Landroid/widget/ImageView;

.field private speed:I

.field private xQueue:[F

.field private yQueue:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xb9

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v2, p0, Lcom/hfufo/widget/TranRockerBgView;->isStop:Z

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    .line 38
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    .line 39
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    .line 41
    iput-boolean v2, p0, Lcom/hfufo/widget/TranRockerBgView;->down:Z

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    .line 62
    iput-object p1, p0, Lcom/hfufo/widget/TranRockerBgView;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/hfufo/widget/TranRockerBgView;->initQueue()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0xb9

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v3, p0, Lcom/hfufo/widget/TranRockerBgView;->isStop:Z

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    .line 38
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    .line 39
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    .line 41
    iput-boolean v3, p0, Lcom/hfufo/widget/TranRockerBgView;->down:Z

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    .line 68
    iput-object p1, p0, Lcom/hfufo/widget/TranRockerBgView;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/hfufo/widget/TranRockerBgView;->initQueue()V

    .line 70
    invoke-direct {p0, p2}, Lcom/hfufo/widget/TranRockerBgView;->initValue(Landroid/util/AttributeSet;)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/TranRockerBgView;->setKeepScreenOn(Z)V

    .line 72
    invoke-direct {p0}, Lcom/hfufo/widget/TranRockerBgView;->initView()V

    .line 79
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/TranRockerBgView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/TranRockerBgView;->setFocusableInTouchMode(Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xb9

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v2, p0, Lcom/hfufo/widget/TranRockerBgView;->isStop:Z

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    .line 38
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    .line 39
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    .line 41
    iput-boolean v2, p0, Lcom/hfufo/widget/TranRockerBgView;->down:Z

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    .line 87
    iput-object p1, p0, Lcom/hfufo/widget/TranRockerBgView;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/hfufo/widget/TranRockerBgView;->initQueue()V

    .line 89
    invoke-direct {p0, p2}, Lcom/hfufo/widget/TranRockerBgView;->initValue(Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method private initQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    aput v2, v1, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    if-ge v0, v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    aput v2, v1, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_1
    return-void
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mContext:Landroid/content/Context;

    const v1, 0x7f040073

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    const v0, 0x7f0f0259

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/TranRockerBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f0f025a

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/TranRockerBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    .line 155
    return-void
.end method

.method private setRockerPosition(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    sub-int v1, v4, v5

    .line 167
    .local v1, "left":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    sub-int v3, v4, v5

    .line 168
    .local v3, "top":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    add-int v2, v4, v5

    .line 169
    .local v2, "right":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    add-int v0, v4, v5

    .line 174
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 175
    iget-object v4, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->postInvalidate()V

    .line 177
    invoke-virtual {p0}, Lcom/hfufo/widget/TranRockerBgView;->postInvalidate()V

    goto :goto_0
.end method

.method private xAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 319
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 322
    add-float/2addr v1, p1

    .line 324
    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method private xAVGf(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 340
    move v1, p1

    .line 342
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    .line 348
    return v1
.end method

.method private yAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 331
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 334
    add-float/2addr v1, p1

    .line 336
    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method private yAVGf(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 352
    move v1, p1

    .line 353
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/TranRockerBgView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->yQueue:[F

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    .line 358
    return v1
.end method


# virtual methods
.method public getCtrlPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/hfufo/widget/TranRockerBgView;->down:Z

    return v0
.end method

.method public getWheelRadius()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    return v0
.end method

.method public getmRudderRadius()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    .line 49
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    return v0
.end method

.method public getmWheelRadius()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    .line 57
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 198
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 199
    .local v5, "y":F
    const/16 v2, 0x80

    .line 200
    .local v2, "vx":I
    const/16 v3, 0x80

    .line 201
    .local v3, "vy":I
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v6, v7, v4, v5}, Lcom/fh/util/MathUtils;->getLength(FFFF)I

    move-result v0

    .line 202
    .local v0, "len":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 204
    iget v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    if-le v0, v6, :cond_0

    .line 205
    const/4 v6, 0x1

    .line 262
    :goto_0
    return v6

    .line 207
    :cond_0
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 209
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/hfufo/widget/TranRockerBgView;->down:Z

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 213
    iget v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    if-gt v0, v6, :cond_7

    .line 215
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 225
    :goto_1
    iget v6, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 227
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x43800000    # 256.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 228
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x437a0000    # 250.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 230
    :cond_2
    iget v6, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 231
    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x431c0000    # 156.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 232
    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x431c0000    # 156.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 233
    :cond_3
    iget v6, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    if-nez v6, :cond_4

    .line 234
    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x42980000    # 76.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 235
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x42980000    # 76.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 241
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 242
    iget-boolean v6, p0, Lcom/hfufo/widget/TranRockerBgView;->isHold:Z

    if-eqz v6, :cond_9

    .line 243
    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 247
    :goto_2
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 248
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 249
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/hfufo/widget/TranRockerBgView;->down:Z

    .line 252
    :cond_5
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    if-eqz v6, :cond_6

    .line 253
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v6}, Lcom/hfufo/widget/TranRockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 254
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->listener:Lcom/fh/listener/RudderListener;

    if-eqz v6, :cond_6

    .line 257
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 258
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v6, v7, v8}, Lcom/fh/listener/RudderListener;->onSteeringWheelChanged(ILandroid/graphics/Point;)V

    .line 261
    :cond_6
    invoke-virtual {p0}, Lcom/hfufo/widget/TranRockerBgView;->postInvalidate()V

    .line 262
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 219
    :cond_7
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    invoke-static {v6, v7, v8}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 220
    .local v1, "maRockerPosition":Landroid/graphics/Point;
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v9, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/util/MathUtils;->inCircle(FFLandroid/graphics/Point;I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 221
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget v8, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    invoke-static {v6, v7, v8}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 223
    :cond_8
    iget-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    .line 245
    .end local v1    # "maRockerPosition":Landroid/graphics/Point;
    :cond_9
    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v6, v7}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v6, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    goto/16 :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 279
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    .line 283
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->mRudderRadius:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 284
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    .line 297
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetX:I

    .line 298
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetY:I

    .line 300
    invoke-virtual {p0}, Lcom/hfufo/widget/TranRockerBgView;->postInvalidate()V

    .line 304
    :cond_0
    return-void
.end method

.method public setCtrlPoint(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x43000000    # 128.0f

    .line 116
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/hfufo/widget/TranRockerBgView;->xAVGf(F)F

    move-result v2

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetX:I

    add-int v0, v2, v3

    .line 117
    .local v0, "vx":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/hfufo/widget/TranRockerBgView;->yAVGf(F)F

    move-result v2

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/hfufo/widget/TranRockerBgView;->offsetY:I

    add-int v1, v2, v3

    .line 118
    .local v1, "vy":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    .line 119
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 123
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v2}, Lcom/hfufo/widget/TranRockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/widget/TranRockerBgView;->postInvalidate()V

    .line 130
    return-void
.end method

.method public setHold(Z)V
    .locals 4
    .param p1, "hold"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/hfufo/widget/TranRockerBgView;->isHold:Z

    .line 268
    iget-boolean v0, p0, Lcom/hfufo/widget/TranRockerBgView;->isHold:Z

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/hfufo/widget/TranRockerBgView;->getWheelRadius()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/TranRockerBgView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 274
    return-void

    .line 271
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/TranRockerBgView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/hfufo/widget/TranRockerBgView;->mRockerPosition:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public setRudderListener(Lcom/fh/listener/RudderListener;)V
    .locals 0
    .param p1, "rockerListener"    # Lcom/fh/listener/RudderListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/hfufo/widget/TranRockerBgView;->listener:Lcom/fh/listener/RudderListener;

    .line 160
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/hfufo/widget/TranRockerBgView;->speed:I

    .line 94
    return-void
.end method

.method public setWheelPosition(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 181
    iget-object v5, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 182
    .local v1, "hw":I
    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v5, v1

    .line 183
    .local v2, "left":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v1

    .line 184
    .local v4, "top":I
    iget v5, p1, Landroid/graphics/Point;->x:I

    add-int v3, v5, v1

    .line 185
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    add-int v0, v5, v1

    .line 189
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 190
    iget-object v5, p0, Lcom/hfufo/widget/TranRockerBgView;->rudderBtnWheel:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->postInvalidate()V

    .line 192
    invoke-virtual {p0}, Lcom/hfufo/widget/TranRockerBgView;->postInvalidate()V

    .line 193
    return-void
.end method

.method public setWheelRadius(I)V
    .locals 0
    .param p1, "mWheelRadius"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/hfufo/widget/TranRockerBgView;->mWheelRadius:I

    .line 102
    return-void
.end method
