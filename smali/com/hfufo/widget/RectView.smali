.class public Lcom/hfufo/widget/RectView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "RectView.java"


# instance fields
.field private clearL:Z

.field private isLines:Z

.field private isPalm:Z

.field private isShowf:Z

.field private isShowp:Z

.field private isVR:Z

.field private mColor:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/Rect;

.field mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private points:[F

.field private sRect:[Landroid/graphics/Rect;

.field private screenHeight:F

.field private screenWidth:F

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    .line 23
    const/16 v0, 0x20

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mRects:Ljava/util/List;

    .line 195
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->isVR:Z

    .line 236
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->isShowp:Z

    .line 237
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->isShowf:Z

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    .line 269
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->clearL:Z

    .line 38
    invoke-direct {p0}, Lcom/hfufo/widget/RectView;->init()V

    .line 39
    return-void

    .line 23
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    .line 23
    const/16 v0, 0x20

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mRects:Ljava/util/List;

    .line 195
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->isVR:Z

    .line 236
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->isShowp:Z

    .line 237
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->isShowf:Z

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    .line 269
    iput-boolean v1, p0, Lcom/hfufo/widget/RectView;->clearL:Z

    .line 43
    invoke-direct {p0}, Lcom/hfufo/widget/RectView;->init()V

    .line 44
    return-void

    .line 23
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private drawVrRect(Landroid/graphics/Rect;)[F
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/hfufo/widget/RectView;->screenWidth:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/hfufo/widget/RectView;->screenWidth:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 207
    .local v0, "vrrect":Landroid/graphics/Rect;
    const/16 v1, 0x20

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xc

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xd

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xe

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xf

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x11

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x12

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x13

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x14

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x15

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x18

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1a

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1b

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1c

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1d

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1e

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1f

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 216
    iget-object v1, p0, Lcom/hfufo/widget/RectView;->points:[F

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    iget-boolean v0, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    if-eqz v0, :cond_0

    .line 223
    const/16 v0, 0x20

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/widget/RectView;->invalidate()V

    .line 234
    return-void
.end method

.method public clearLines(Z)V
    .locals 0
    .param p1, "c"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/hfufo/widget/RectView;->clearL:Z

    .line 277
    return-void
.end method

.method public getShow()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    iget-boolean v0, p0, Lcom/hfufo/widget/RectView;->isShowp:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 250
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 251
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 252
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    if-eqz v0, :cond_1

    .line 255
    const/16 v0, 0x20

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 265
    :cond_1
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_2

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    invoke-virtual {p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 92
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    :cond_1
    return-void

    .line 74
    :cond_2
    iget-boolean v2, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    if-eqz v2, :cond_3

    .line 75
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->points:[F

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-boolean v2, p0, Lcom/hfufo/widget/RectView;->isPalm:Z

    if-eqz v2, :cond_4

    .line 79
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 81
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setLines(Z)V
    .locals 0
    .param p1, "islines"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    .line 273
    return-void
.end method

.method public setShowf(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/hfufo/widget/RectView;->isShowp:Z

    .line 241
    return-void
.end method

.method public setShowp(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/hfufo/widget/RectView;->isShowp:Z

    .line 245
    return-void
.end method

.method public setVR(ZLjava/lang/Float;F)V
    .locals 1
    .param p1, "isVr"    # Z
    .param p2, "width"    # Ljava/lang/Float;
    .param p3, "height"    # F

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/hfufo/widget/RectView;->isVR:Z

    .line 201
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/RectView;->screenWidth:F

    .line 202
    iput p3, p0, Lcom/hfufo/widget/RectView;->screenHeight:F

    .line 203
    return-void
.end method

.method public setValue(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    .line 98
    iput-boolean v6, p0, Lcom/hfufo/widget/RectView;->isPalm:Z

    .line 100
    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-boolean v1, p0, Lcom/hfufo/widget/RectView;->isVR:Z

    if-eqz v1, :cond_1

    .line 102
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x4

    .line 103
    .local v0, "a":I
    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    .end local v0    # "a":I
    :goto_0
    iget-boolean v1, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    if-eqz v1, :cond_0

    .line 108
    const/16 v1, 0x20

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/widget/RectView;->invalidate()V

    .line 119
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public setValue(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v3, 0x0

    .line 125
    iput-boolean v3, p0, Lcom/hfufo/widget/RectView;->isPalm:Z

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iput-object p2, p0, Lcom/hfufo/widget/RectView;->mColor:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mColor:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    :cond_0
    :goto_0
    const-string v0, "ddggpp111"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue00: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 136
    iput-object p1, p0, Lcom/hfufo/widget/RectView;->mRects:Ljava/util/List;

    .line 137
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    .line 138
    const-string v0, "ddggpp111"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue11: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_1
    iget-boolean v0, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    if-eqz v0, :cond_1

    .line 145
    const/16 v0, 0x20

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/widget/RectView;->invalidate()V

    .line 157
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mColor:Ljava/lang/String;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1
.end method

.method public setValue([Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4
    .param p1, "rects"    # [Landroid/graphics/Rect;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 162
    iput-boolean v3, p0, Lcom/hfufo/widget/RectView;->isPalm:Z

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iput-object p2, p0, Lcom/hfufo/widget/RectView;->mColor:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mColor:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    :cond_0
    :goto_0
    array-length v0, p1

    if-lez v0, :cond_3

    .line 173
    iput-object p1, p0, Lcom/hfufo/widget/RectView;->sRect:[Landroid/graphics/Rect;

    .line 174
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    .line 175
    const-string v0, "ddggpp111"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue11: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_1
    iget-boolean v0, p0, Lcom/hfufo/widget/RectView;->isLines:Z

    if-eqz v0, :cond_1

    .line 182
    const/16 v0, 0x20

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/hfufo/widget/RectView;->points:[F

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/widget/RectView;->invalidate()V

    .line 193
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mColor:Ljava/lang/String;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/hfufo/widget/RectView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1
.end method
