.class public Lcom/hfufo/widget/RockerView;
.super Landroid/widget/ImageView;
.source "RockerView.java"


# static fields
.field public static final ACTION_ATTACK:I = 0x2

.field public static final ACTION_RUDDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RockerView"


# instance fields
.field private attachRadius:F

.field private isStop:Z

.field private listener:Lcom/fh/listener/RudderListener;

.field private mContext:Landroid/content/Context;

.field private mCtrlPoint:Landroid/graphics/Point;

.field private mPaint:Landroid/graphics/Paint;

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRudderRadius:I

.field private mWheelPoint:Landroid/graphics/Point;

.field private mWheelRadius:I

.field private offsetX:I

.field private offsetY:I

.field private queueLen:I

.field private xQueue:[F

.field private yQueue:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xb9

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RockerView;->isStop:Z

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mWheelPoint:Landroid/graphics/Point;

    .line 28
    const/16 v0, 0x23

    iput v0, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    .line 29
    const/16 v0, 0x80

    iput v0, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    .line 31
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    .line 32
    iget v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    .line 33
    iget v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->listener:Lcom/fh/listener/RudderListener;

    .line 100
    iput-object p1, p0, Lcom/hfufo/widget/RockerView;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/hfufo/widget/RockerView;->initQueue()V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xb9

    const/4 v2, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v3, p0, Lcom/hfufo/widget/RockerView;->isStop:Z

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mWheelPoint:Landroid/graphics/Point;

    .line 28
    const/16 v0, 0x23

    iput v0, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    .line 29
    const/16 v0, 0x80

    iput v0, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    .line 31
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    .line 32
    iget v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    .line 33
    iget v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->listener:Lcom/fh/listener/RudderListener;

    .line 106
    iput-object p1, p0, Lcom/hfufo/widget/RockerView;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/hfufo/widget/RockerView;->initQueue()V

    .line 108
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RockerView;->initValue(Landroid/util/AttributeSet;)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RockerView;->setKeepScreenOn(Z)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 115
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RockerView;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RockerView;->setFocusableInTouchMode(Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0xb9

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RockerView;->isStop:Z

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mWheelPoint:Landroid/graphics/Point;

    .line 28
    const/16 v0, 0x23

    iput v0, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    .line 29
    const/16 v0, 0x80

    iput v0, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    .line 31
    const/16 v0, 0x9

    iput v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    .line 32
    iget v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    .line 33
    iget v0, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->listener:Lcom/fh/listener/RudderListener;

    .line 122
    iput-object p1, p0, Lcom/hfufo/widget/RockerView;->mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Lcom/hfufo/widget/RockerView;->initQueue()V

    .line 124
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RockerView;->initValue(Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method private initQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    aput v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    aput v2, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_1
    return-void
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x12c

    .line 84
    iget-object v3, p0, Lcom/hfufo/widget/RockerView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/hfufo/rxdrone/R$styleable;->RxRudder:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 86
    .local v1, "ctrlX":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 87
    .local v2, "ctrlY":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    .line 88
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/hfufo/widget/RockerView;->mWheelPoint:Landroid/graphics/Point;

    .line 89
    const/4 v3, 0x0

    const/16 v4, 0x28

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    .line 90
    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    .line 91
    iget-object v3, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/hfufo/widget/RockerView;->offsetX:I

    .line 92
    iget-object v3, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/hfufo/widget/RockerView;->offsetY:I

    .line 93
    iget v3, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    iget v4, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/hfufo/widget/RockerView;->attachRadius:F

    .line 94
    return-void
.end method

.method private xAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 243
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->xQueue:[F

    iget v3, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 246
    add-float/2addr v1, p1

    .line 248
    iget v2, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method private yAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 255
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->yQueue:[F

    iget v3, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 258
    add-float/2addr v1, p1

    .line 260
    iget v2, p0, Lcom/hfufo/widget/RockerView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method


# virtual methods
.method public getAttachRadius()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/hfufo/widget/RockerView;->attachRadius:F

    return v0
.end method

.method public getCtrlPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getWheelRadius()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    return v0
.end method

.method public getmRockerPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getmWheelPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mWheelPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public inCircle(FF)Z
    .locals 2
    .param p1, "tx"    # F
    .param p2, "ty"    # F

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mWheelPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    invoke-static {p1, p2, v0, v1}, Lcom/fh/util/MathUtils;->inCircle(FFLandroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 138
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const v5, -0xff0001

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 145
    .local v0, "path1":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x12

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, -0xc

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x12

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 149
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 152
    .local v1, "path2":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x6

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x12

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, -0xc

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x12

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 156
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 158
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 159
    .local v2, "path3":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x12

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x12

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0xc

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 163
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 165
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 166
    .local v3, "path4":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 167
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x12

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x12

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0xc

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 170
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 172
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x50

    const/16 v6, 0xbf

    const/16 v7, 0x90

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v4, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/hfufo/widget/RockerView;->mRudderRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/widget/RockerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 177
    return-void
.end method

.method public setCtrlPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "mCtrlPoint"    # Landroid/graphics/Point;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 64
    return-void
.end method

.method public setRockerBack()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hfufo/widget/RockerView;->mCtrlPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 81
    return-void
.end method

.method public setRockerPosition(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "mCtrlPoint"    # Landroid/graphics/Point;

    .prologue
    const/high16 v5, 0x43800000    # 256.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 68
    iput-object p1, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 71
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->listener:Lcom/fh/listener/RudderListener;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/hfufo/widget/RockerView;->offsetX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/hfufo/widget/RockerView;->xAVG(F)F

    move-result v2

    float-to-int v0, v2

    .line 74
    .local v0, "vx":I
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/hfufo/widget/RockerView;->offsetY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/hfufo/widget/RockerView;->yAVG(F)F

    move-result v2

    float-to-int v1, v2

    .line 75
    .local v1, "vy":I
    iget-object v2, p0, Lcom/hfufo/widget/RockerView;->listener:Lcom/fh/listener/RudderListener;

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3, v4}, Lcom/fh/listener/RudderListener;->onSteeringWheelChanged(ILandroid/graphics/Point;)V

    .line 77
    .end local v0    # "vx":I
    .end local v1    # "vy":I
    :cond_0
    return-void
.end method

.method public setRudderListener(Lcom/fh/listener/RudderListener;)V
    .locals 0
    .param p1, "rockerListener"    # Lcom/fh/listener/RudderListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/hfufo/widget/RockerView;->listener:Lcom/fh/listener/RudderListener;

    .line 130
    return-void
.end method

.method public setWheelRadius(I)V
    .locals 0
    .param p1, "mWheelRadius"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/hfufo/widget/RockerView;->mWheelRadius:I

    .line 47
    return-void
.end method
