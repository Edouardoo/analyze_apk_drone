.class public Lcom/appl/library/CoverFlowCarousel;
.super Lcom/appl/library/Carousel;
.source "CoverFlowCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appl/library/CoverFlowCarousel$CoverFrame;
    }
.end annotation


# instance fields
.field private mAdjustPositionMultiplier:F

.field private mAdjustPositionThreshold:F

.field private mMaxRotationAngle:F

.field private mMaxScaleFactor:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPerspectiveMultiplier:F

.field private mRadius:F

.field private final mReflectionCanvas:Landroid/graphics/Canvas;

.field private mReflectionHeight:F

.field private final mReflectionMatrix:Landroid/graphics/Matrix;

.field private mReflectionOpacity:I

.field private mRotationThreshold:F

.field private mScalingThreshold:F

.field private mTuningWidgetSize:I

.field private final mXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    invoke-direct {p0, p1}, Lcom/appl/library/Carousel;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mTuningWidgetSize:I

    .line 34
    iput v3, p0, Lcom/appl/library/CoverFlowCarousel;->mRotationThreshold:F

    .line 40
    iput v3, p0, Lcom/appl/library/CoverFlowCarousel;->mScalingThreshold:F

    .line 47
    iput v2, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionThreshold:F

    .line 52
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionMultiplier:F

    .line 57
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxRotationAngle:F

    .line 62
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxScaleFactor:F

    .line 67
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mRadius:F

    .line 72
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mPerspectiveMultiplier:F

    .line 77
    iput v2, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionHeight:F

    .line 82
    const/16 v0, 0x70

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionOpacity:I

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 89
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionCanvas:Landroid/graphics/Canvas;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/appl/library/Carousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mTuningWidgetSize:I

    .line 34
    iput v3, p0, Lcom/appl/library/CoverFlowCarousel;->mRotationThreshold:F

    .line 40
    iput v3, p0, Lcom/appl/library/CoverFlowCarousel;->mScalingThreshold:F

    .line 47
    iput v2, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionThreshold:F

    .line 52
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionMultiplier:F

    .line 57
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxRotationAngle:F

    .line 62
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxScaleFactor:F

    .line 67
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mRadius:F

    .line 72
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mPerspectiveMultiplier:F

    .line 77
    iput v2, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionHeight:F

    .line 82
    const/16 v0, 0x70

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionOpacity:I

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 89
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionCanvas:Landroid/graphics/Canvas;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/appl/library/Carousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mTuningWidgetSize:I

    .line 34
    iput v3, p0, Lcom/appl/library/CoverFlowCarousel;->mRotationThreshold:F

    .line 40
    iput v3, p0, Lcom/appl/library/CoverFlowCarousel;->mScalingThreshold:F

    .line 47
    iput v2, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionThreshold:F

    .line 52
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionMultiplier:F

    .line 57
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxRotationAngle:F

    .line 62
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxScaleFactor:F

    .line 67
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mRadius:F

    .line 72
    iput v1, p0, Lcom/appl/library/CoverFlowCarousel;->mPerspectiveMultiplier:F

    .line 77
    iput v2, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionHeight:F

    .line 82
    const/16 v0, 0x70

    iput v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionOpacity:I

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 89
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/appl/library/CoverFlowCarousel;->mReflectionCanvas:Landroid/graphics/Canvas;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/appl/library/CoverFlowCarousel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/appl/library/CoverFlowCarousel;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->createReflectionBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createReflectionBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "original"    # Landroid/graphics/Bitmap;

    .prologue
    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 265
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 266
    .local v17, "h":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appl/library/CoverFlowCarousel;->mReflectionHeight:F

    mul-float/2addr v1, v2

    float-to-int v3, v1

    .line 267
    .local v3, "rh":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/appl/library/CoverFlowCarousel;->mReflectionOpacity:I

    const/16 v2, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v1, v2, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .line 269
    .local v10, "gradientColor":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appl/library/CoverFlowCarousel;->mReflectionMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v5, v3

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 271
    .local v18, "reflection":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v9, v1

    const v11, 0xffffff

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 272
    .local v5, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appl/library/CoverFlowCarousel;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appl/library/CoverFlowCarousel;->mReflectionCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/appl/library/CoverFlowCarousel;->mReflectionCanvas:Landroid/graphics/Canvas;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v14, v1

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v15, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appl/library/CoverFlowCarousel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    return-object v18
.end method

.method private getAngleOnCircle(I)F
    .locals 6
    .param p1, "childCenter"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getRelativePosition(I)F

    move-result v1

    iget v2, p0, Lcom/appl/library/CoverFlowCarousel;->mRadius:F

    div-float v0, v1, v2

    .line 163
    .local v0, "x":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 164
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 166
    :cond_1
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method private getChildAdjustPosition(Landroid/view/View;)F
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getChildCenter(Landroid/view/View;)I

    move-result v0

    .line 208
    .local v0, "c":I
    invoke-direct {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getRelativePosition(I)F

    move-result v3

    iget v4, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionThreshold:F

    invoke-direct {p0}, Lcom/appl/library/CoverFlowCarousel;->getWidgetSizeMultiplier()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/appl/library/CoverFlowCarousel;->getClampedRelativePosition(FF)F

    move-result v1

    .line 209
    .local v1, "crp":F
    iget v3, p0, Lcom/appl/library/CoverFlowCarousel;->mChildWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/appl/library/CoverFlowCarousel;->mAdjustPositionMultiplier:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/appl/library/CoverFlowCarousel;->mSpacing:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    invoke-direct {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getSpacingMultiplierOnCirlce(I)F

    move-result v4

    mul-float v2, v3, v4

    .line 211
    .local v2, "d":F
    return v2
.end method

.method private getChildCircularPathZOffset(I)F
    .locals 3
    .param p1, "center"    # I

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getOffsetOnCircle(I)F

    move-result v0

    .line 235
    .local v0, "v":F
    iget v2, p0, Lcom/appl/library/CoverFlowCarousel;->mPerspectiveMultiplier:F

    mul-float v1, v2, v0

    .line 237
    .local v1, "z":F
    return v1
.end method

.method private getClampedRelativePosition(FF)F
    .locals 1
    .param p1, "position"    # F
    .param p2, "threshold"    # F

    .prologue
    .line 180
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 181
    neg-float v0, p2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 186
    :goto_0
    return v0

    .line 182
    :cond_0
    div-float v0, p1, p2

    goto :goto_0

    .line 185
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 186
    :cond_2
    div-float v0, p1, p2

    goto :goto_0
.end method

.method private getOffsetOnCircle(I)F
    .locals 6
    .param p1, "childCenter"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getRelativePosition(I)F

    move-result v1

    iget v2, p0, Lcom/appl/library/CoverFlowCarousel;->mRadius:F

    div-float v0, v1, v2

    .line 226
    .local v0, "x":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 227
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 229
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method private getRelativePosition(I)F
    .locals 4
    .param p1, "pixexPos"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 197
    .local v1, "half":I
    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel;->getScrollX()I

    move-result v2

    add-int v0, v2, v1

    .line 199
    .local v0, "centerPos":I
    sub-int v2, p1, v0

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private getRotationAngle(I)F
    .locals 4
    .param p1, "childCenter"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxRotationAngle:F

    neg-float v0, v0

    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getRelativePosition(I)F

    move-result v1

    iget v2, p0, Lcom/appl/library/CoverFlowCarousel;->mRotationThreshold:F

    invoke-direct {p0}, Lcom/appl/library/CoverFlowCarousel;->getWidgetSizeMultiplier()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/appl/library/CoverFlowCarousel;->getClampedRelativePosition(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaleFactor(I)F
    .locals 5
    .param p1, "childCenter"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 170
    iget v0, p0, Lcom/appl/library/CoverFlowCarousel;->mMaxScaleFactor:F

    sub-float/2addr v0, v4

    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getRelativePosition(I)F

    move-result v1

    iget v2, p0, Lcom/appl/library/CoverFlowCarousel;->mScalingThreshold:F

    invoke-direct {p0}, Lcom/appl/library/CoverFlowCarousel;->getWidgetSizeMultiplier()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/appl/library/CoverFlowCarousel;->getClampedRelativePosition(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    return v0
.end method

.method private getSpacingMultiplierOnCirlce(I)F
    .locals 4
    .param p1, "childCenter"    # I

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getRelativePosition(I)F

    move-result v1

    iget v2, p0, Lcom/appl/library/CoverFlowCarousel;->mRadius:F

    div-float v0, v1, v2

    .line 216
    .local v0, "x":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method private getWidgetSizeMultiplier()F
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/appl/library/CoverFlowCarousel;->mTuningWidgetSize:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private setTransformation(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getChildCenter(Landroid/view/View;)I

    move-result v0

    .line 107
    .local v0, "c":I
    invoke-direct {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getRotationAngle(I)F

    move-result v2

    invoke-direct {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getAngleOnCircle(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 108
    invoke-direct {p0, p1}, Lcom/appl/library/CoverFlowCarousel;->getChildAdjustPosition(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    invoke-direct {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getScaleFactor(I)F

    move-result v2

    invoke-direct {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getChildCircularPathZOffset(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 110
    .local v1, "scale":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 112
    return-void
.end method


# virtual methods
.method protected addAndMeasureChild(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutMode"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/appl/library/CoverFlowCarousel;->mChildWidth:I

    iget v5, p0, Lcom/appl/library/CoverFlowCarousel;->mChildHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :cond_0
    if-ne p2, v6, :cond_1

    const/4 v0, 0x0

    .line 253
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/appl/library/CoverFlowCarousel;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 255
    iget v3, p0, Lcom/appl/library/CoverFlowCarousel;->mChildWidth:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 256
    .local v2, "pwms":I
    iget v3, p0, Lcom/appl/library/CoverFlowCarousel;->mChildHeight:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 257
    .local v1, "phms":I
    invoke-virtual {p0, p1, v2, v1}, Lcom/appl/library/CoverFlowCarousel;->measureChild(Landroid/view/View;II)V

    .line 258
    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel;->isChildrenDrawnWithCacheEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 260
    return-object p1

    .line 252
    .end local v0    # "index":I
    .end local v1    # "phms":I
    .end local v2    # "pwms":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/appl/library/Carousel;->computeScroll()V

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/appl/library/CoverFlowCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/appl/library/CoverFlowCarousel;->setTransformation(Landroid/view/View;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    const/4 v0, 0x3

    .line 117
    .local v0, "bitmask":I
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 118
    invoke-super {p0, p1}, Lcom/appl/library/Carousel;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method protected getPartOfViewCoveredBySibling()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected getViewFromAdapter(I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 137
    iget-object v3, p0, Lcom/appl/library/CoverFlowCarousel;->mCache:Lcom/appl/library/Carousel$ViewCache;

    invoke-virtual {v3}, Lcom/appl/library/Carousel$ViewCache;->getCachedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;

    .line 138
    .local v0, "frame":Lcom/appl/library/CoverFlowCarousel$CoverFrame;
    const/4 v1, 0x0

    .line 139
    .local v1, "recycled":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/appl/library/CoverFlowCarousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, "v":Landroid/view/View;
    if-nez v0, :cond_2

    .line 145
    new-instance v0, Lcom/appl/library/CoverFlowCarousel$CoverFrame;

    .end local v0    # "frame":Lcom/appl/library/CoverFlowCarousel$CoverFrame;
    invoke-virtual {p0}, Lcom/appl/library/CoverFlowCarousel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;-><init>(Lcom/appl/library/CoverFlowCarousel;Landroid/content/Context;Landroid/view/View;)V

    .line 151
    .restart local v0    # "frame":Lcom/appl/library/CoverFlowCarousel$CoverFrame;
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 152
    :cond_1
    invoke-virtual {v0, v5}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->setDrawingCacheEnabled(Z)V

    .line 154
    return-object v0

    .line 147
    :cond_2
    invoke-virtual {v0, v2}, Lcom/appl/library/CoverFlowCarousel$CoverFrame;->setCover(Landroid/view/View;)V

    goto :goto_0
.end method
