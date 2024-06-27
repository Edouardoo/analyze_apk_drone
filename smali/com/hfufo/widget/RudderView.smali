.class public Lcom/hfufo/widget/RudderView;
.super Landroid/view/SurfaceView;
.source "RudderView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final ACTION_ATTACK:I = 0x2

.field public static final ACTION_RUDDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RudderView"


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private isStop:Z

.field private listener:Lcom/fh/listener/RudderListener;

.field private mContext:Landroid/content/Context;

.field private mCtrlPoint:Landroid/graphics/Point;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPaint:Landroid/graphics/Paint;

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRudderRadius:I

.field private mThread:Ljava/lang/Thread;

.field private mWheelRadius:I

.field private offsetX:I

.field private offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xb9

    .line 71
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RudderView;->isStop:Z

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    .line 35
    const/16 v0, 0x23

    iput v0, p0, Lcom/hfufo/widget/RudderView;->mRudderRadius:I

    .line 36
    const/16 v0, 0x80

    iput v0, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    .line 38
    iput-object v2, p0, Lcom/hfufo/widget/RudderView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object v2, p0, Lcom/hfufo/widget/RudderView;->listener:Lcom/fh/listener/RudderListener;

    .line 72
    iput-object p1, p0, Lcom/hfufo/widget/RudderView;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0xb9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v3, p0, Lcom/hfufo/widget/RudderView;->isStop:Z

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    .line 35
    const/16 v0, 0x23

    iput v0, p0, Lcom/hfufo/widget/RudderView;->mRudderRadius:I

    .line 36
    const/16 v0, 0x80

    iput v0, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    .line 38
    iput-object v4, p0, Lcom/hfufo/widget/RudderView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object v4, p0, Lcom/hfufo/widget/RudderView;->listener:Lcom/fh/listener/RudderListener;

    .line 78
    iput-object p1, p0, Lcom/hfufo/widget/RudderView;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RudderView;->initValue(Landroid/util/AttributeSet;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RudderView;->setKeepScreenOn(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/hfufo/widget/RudderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    .line 82
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mThread:Ljava/lang/Thread;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    .line 89
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RudderView;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RudderView;->setFocusableInTouchMode(Z)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/RudderView;->setZOrderOnTop(Z)V

    .line 92
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 94
    invoke-direct {p0}, Lcom/hfufo/widget/RudderView;->drawBg()V

    .line 95
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

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RudderView;->isStop:Z

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    .line 35
    const/16 v0, 0x23

    iput v0, p0, Lcom/hfufo/widget/RudderView;->mRudderRadius:I

    .line 36
    const/16 v0, 0x80

    iput v0, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    .line 38
    iput-object v2, p0, Lcom/hfufo/widget/RudderView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object v2, p0, Lcom/hfufo/widget/RudderView;->listener:Lcom/fh/listener/RudderListener;

    .line 99
    iput-object p1, p0, Lcom/hfufo/widget/RudderView;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RudderView;->initValue(Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method private drawBg()V
    .locals 10

    .prologue
    const/16 v6, 0x280

    const v9, -0xff0001

    .line 130
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/hfufo/widget/RudderView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 131
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 132
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 143
    .local v1, "path1":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x12

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0xc

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x12

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 147
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 150
    .local v2, "path2":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 151
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x12

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0xc

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x12

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 154
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 157
    .local v3, "path3":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 158
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x12

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x12

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, -0xc

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 161
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 164
    .local v4, "path4":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 165
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x12

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x12

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, -0xc

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 168
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x12c

    .line 58
    iget-object v3, p0, Lcom/hfufo/widget/RudderView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/hfufo/rxdrone/R$styleable;->RxRudder:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 60
    .local v1, "ctrlX":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 61
    .local v2, "ctrlY":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    .line 62
    const/4 v3, 0x0

    const/16 v4, 0x28

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/hfufo/widget/RudderView;->mRudderRadius:I

    .line 63
    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    .line 64
    iget-object v3, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/hfufo/widget/RudderView;->offsetX:I

    .line 65
    iget-object v3, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/hfufo/widget/RudderView;->offsetY:I

    .line 66
    return-void
.end method


# virtual methods
.method public getCtrlPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getWheelRadius()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 205
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 206
    .local v4, "y":F
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v5, v6, v3, v4}, Lcom/fh/util/MathUtils;->getLength(FFFF)I

    move-result v0

    .line 207
    .local v0, "len":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 209
    iget v5, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    if-le v0, v5, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v9

    .line 213
    :cond_1
    const-string v5, "RudderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 215
    iget v5, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    if-gt v0, v5, :cond_4

    .line 217
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 230
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 231
    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    invoke-direct {v5, v6}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    .line 234
    :cond_3
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->listener:Lcom/fh/listener/RudderListener;

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->offsetX:I

    sub-int v1, v5, v6

    .line 237
    .local v1, "vx":I
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/hfufo/widget/RudderView;->offsetY:I

    sub-int v2, v5, v6

    .line 238
    .local v2, "vy":I
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->listener:Lcom/fh/listener/RudderListener;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v9, v6}, Lcom/fh/listener/RudderListener;->onSteeringWheelChanged(ILandroid/graphics/Point;)V

    goto/16 :goto_0

    .line 221
    .end local v1    # "vx":I
    .end local v2    # "vy":I
    :cond_4
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    invoke-static {v5, v6, v7}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    .line 222
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    iget v8, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    invoke-static {v5, v6, v7, v8}, Lcom/fh/util/MathUtils;->inCircle(FFLandroid/graphics/Point;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 223
    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iget v7, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    invoke-static {v5, v6, v7}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "canvas":Landroid/graphics/Canvas;
    :goto_0
    iget-boolean v2, p0, Lcom/hfufo/widget/RudderView;->isStop:Z

    if-nez v2, :cond_2

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 179
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    iget-object v2, p0, Lcom/hfufo/widget/RudderView;->bgBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v2, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v2, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/hfufo/widget/RudderView;->mRudderRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RudderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 193
    :cond_0
    :goto_1
    const-wide/16 v2, 0x1e

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 189
    iget-object v3, p0, Lcom/hfufo/widget/RudderView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    throw v2

    .line 198
    :cond_2
    return-void
.end method

.method public setCtrlPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "mCtrlPoint"    # Landroid/graphics/Point;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/hfufo/widget/RudderView;->mCtrlPoint:Landroid/graphics/Point;

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/hfufo/widget/RudderView;->mRockerPosition:Landroid/graphics/Point;

    .line 55
    invoke-direct {p0}, Lcom/hfufo/widget/RudderView;->drawBg()V

    .line 56
    return-void
.end method

.method public setRudderListener(Lcom/fh/listener/RudderListener;)V
    .locals 0
    .param p1, "rockerListener"    # Lcom/fh/listener/RudderListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/hfufo/widget/RudderView;->listener:Lcom/fh/listener/RudderListener;

    .line 106
    return-void
.end method

.method public setWheelRadius(I)V
    .locals 0
    .param p1, "mWheelRadius"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/hfufo/widget/RudderView;->mWheelRadius:I

    .line 45
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 120
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hfufo/widget/RudderView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/RudderView;->isStop:Z

    .line 127
    return-void
.end method
