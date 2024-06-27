.class public Lcom/bm/library/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bm/library/PhotoView$OTHER;,
        Lcom/bm/library/PhotoView$END;,
        Lcom/bm/library/PhotoView$START;,
        Lcom/bm/library/PhotoView$ClipCalculate;,
        Lcom/bm/library/PhotoView$Transform;,
        Lcom/bm/library/PhotoView$InterpolatorProxy;
    }
.end annotation


# static fields
.field private static final ANIMA_DURING:I = 0x154

.field private static final MAX_SCALE:F = 2.5f

.field private static final MIN_ROTATE:I = 0x23


# instance fields
.field private MAX_ANIM_FROM_WAITE:I

.field private MAX_FLING_OVER_SCROLL:I

.field private MAX_OVER_RESISTANCE:I

.field private MAX_OVER_SCROLL:I

.field private canRotate:Z

.field private hasDrawable:Z

.field private hasMultiTouch:Z

.field private hasOverTranslate:Z

.field private imgLargeHeight:Z

.field private imgLargeWidth:Z

.field private isEnable:Z

.field private isInit:Z

.field private isKnowSize:Z

.field private isZoonUp:Z

.field private mAdjustViewBounds:Z

.field private mAnimaDuring:I

.field private mAnimaMatrix:Landroid/graphics/Matrix;

.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRect:Landroid/graphics/RectF;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mClip:Landroid/graphics/RectF;

.field private mCommonRect:Landroid/graphics/RectF;

.field private mCompleteCallBack:Ljava/lang/Runnable;

.field private mDegrees:F

.field private mDetector:Landroid/view/GestureDetector;

.field private mFromInfo:Lcom/bm/library/Info;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHalfBaseRectHeight:F

.field private mHalfBaseRectWidth:F

.field private mImgRect:Landroid/graphics/RectF;

.field private mInfoTime:J

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mMaxScale:F

.field private mMinRotate:I

.field private mRotateCenter:Landroid/graphics/PointF;

.field private mRotateDetector:Lcom/bm/library/RotateGestureDetector;

.field private mRotateFlag:F

.field private mRotateListener:Lcom/bm/library/OnRotateListener;

.field private mScale:F

.field private mScaleCenter:Landroid/graphics/PointF;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSynthesisMatrix:Landroid/graphics/Matrix;

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRect:Landroid/graphics/RectF;

.field private mTranslate:Lcom/bm/library/PhotoView$Transform;

.field private mTranslateX:I

.field private mTranslateY:I

.field private mWidgetRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 38
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 39
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 40
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-boolean v1, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Lcom/bm/library/PhotoView$Transform;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$Transform;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    .line 670
    new-instance v0, Lcom/bm/library/PhotoView$1;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$1;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    .line 687
    new-instance v0, Lcom/bm/library/PhotoView$2;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$2;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 753
    new-instance v0, Lcom/bm/library/PhotoView$3;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$3;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance v0, Lcom/bm/library/PhotoView$4;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$4;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 38
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 39
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 40
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-boolean v1, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Lcom/bm/library/PhotoView$Transform;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$Transform;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    .line 670
    new-instance v0, Lcom/bm/library/PhotoView$1;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$1;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    .line 687
    new-instance v0, Lcom/bm/library/PhotoView$2;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$2;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 753
    new-instance v0, Lcom/bm/library/PhotoView$3;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$3;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance v0, Lcom/bm/library/PhotoView$4;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$4;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 103
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->init()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 38
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 39
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 40
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-boolean v1, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Lcom/bm/library/PhotoView$Transform;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$Transform;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    .line 670
    new-instance v0, Lcom/bm/library/PhotoView$1;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$1;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    .line 687
    new-instance v0, Lcom/bm/library/PhotoView$2;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$2;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 753
    new-instance v0, Lcom/bm/library/PhotoView$3;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$3;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance v0, Lcom/bm/library/PhotoView$4;

    invoke-direct {v0, p0}, Lcom/bm/library/PhotoView$4;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 108
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->init()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/bm/library/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mRotateFlag:F

    return v0
.end method

.method static synthetic access$002(Lcom/bm/library/PhotoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mRotateFlag:F

    return p1
.end method

.method static synthetic access$100(Lcom/bm/library/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->canRotate:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/bm/library/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/bm/library/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    return p1
.end method

.method static synthetic access$102(Lcom/bm/library/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->canRotate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bm/library/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->imgLargeWidth:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/bm/library/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->imgLargeHeight:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->doTranslateReset(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/bm/library/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    return v0
.end method

.method static synthetic access$1802(Lcom/bm/library/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/bm/library/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->checkRect()V

    return-void
.end method

.method static synthetic access$200(Lcom/bm/library/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    return v0
.end method

.method static synthetic access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bm/library/PhotoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    return p1
.end method

.method static synthetic access$2100(Lcom/bm/library/PhotoView;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bm/library/PhotoView;->resistanceScrollByX(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/bm/library/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    return v0
.end method

.method static synthetic access$2202(Lcom/bm/library/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    return p1
.end method

.method static synthetic access$2300(Lcom/bm/library/PhotoView;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bm/library/PhotoView;->resistanceScrollByY(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/bm/library/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isZoonUp:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/bm/library/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->isZoonUp:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/bm/library/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    return v0
.end method

.method static synthetic access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/bm/library/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    return v0
.end method

.method static synthetic access$3100(Lcom/bm/library/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    return v0
.end method

.method static synthetic access$3200(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/bm/library/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    return v0
.end method

.method static synthetic access$3500(Lcom/bm/library/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    return v0
.end method

.method static synthetic access$3600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/bm/library/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/bm/library/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mMinRotate:I

    return v0
.end method

.method static synthetic access$500(Lcom/bm/library/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    return v0
.end method

.method static synthetic access$502(Lcom/bm/library/PhotoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mScale:F

    return p1
.end method

.method static synthetic access$600(Lcom/bm/library/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    return-void
.end method

.method static synthetic access$700(Lcom/bm/library/PhotoView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bm/library/PhotoView;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bm/library/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasOverTranslate:Z

    return v0
.end method

.method static synthetic access$902(Lcom/bm/library/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bm/library/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->hasOverTranslate:Z

    return p1
.end method

.method private checkRect()V
    .locals 3

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasOverTranslate:Z

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/bm/library/PhotoView;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 751
    :cond_0
    return-void
.end method

.method private doTranslateReset(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "imgRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "tx":I
    const/4 v1, 0x0

    .line 634
    .local v1, "ty":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    .line 635
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->isImageCenterWidth(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v0, v2

    .line 645
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    .line 646
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->isImageCenterHeight(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v1, v2

    .line 656
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    .line 657
    :cond_2
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object v2, v2, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object v2, v2, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v3, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    iget v4, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    neg-int v5, v0

    neg-int v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/bm/library/PhotoView$Transform;->withTranslate(IIII)V

    .line 660
    :cond_4
    return-void

    .line 638
    :cond_5
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 639
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    .line 640
    :cond_6
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 641
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    .line 649
    :cond_7
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 650
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1

    .line 651
    :cond_8
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 652
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1
.end method

.method private executeTranslate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 457
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 458
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/bm/library/PhotoView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 460
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 462
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->imgLargeWidth:Z

    .line 463
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/bm/library/PhotoView;->imgLargeHeight:Z

    .line 464
    return-void

    :cond_0
    move v0, v2

    .line 462
    goto :goto_0

    :cond_1
    move v1, v2

    .line 463
    goto :goto_1
.end method

.method private static getDrawableHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 261
    .local v0, "height":I
    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 262
    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 263
    :cond_1
    return v0
.end method

.method private static getDrawableWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 254
    .local v0, "width":I
    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 255
    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 256
    :cond_1
    return v0
.end method

.method public static getImageViewInfo(Landroid/widget/ImageView;)Lcom/bm/library/Info;
    .locals 15
    .param p0, "imgView"    # Landroid/widget/ImageView;

    .prologue
    .line 1199
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 1200
    .local v12, "p":[I
    invoke-static {p0, v12}, Lcom/bm/library/PhotoView;->getLocation(Landroid/view/View;[I)V

    .line 1202
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1204
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 1206
    .local v11, "matrix":Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v13

    .line 1207
    .local v13, "width":I
    invoke-static {v9}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v10

    .line 1209
    .local v10, "height":I
    new-instance v2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v6, 0x0

    int-to-float v7, v13

    int-to-float v8, v10

    invoke-direct {v2, v0, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1210
    .local v2, "imgRect":Landroid/graphics/RectF;
    invoke-virtual {v11, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1212
    new-instance v1, Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget v0, v12, v0

    int-to-float v0, v0

    iget v6, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    const/4 v6, 0x1

    aget v6, v12, v6

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    const/4 v7, 0x0

    aget v7, v12, v7

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v12, v8

    int-to-float v8, v8

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v14

    invoke-direct {v1, v0, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1213
    .local v1, "rect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v0, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1214
    .local v3, "widgetRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1215
    .local v4, "baseRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-direct {v5, v0, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1217
    .local v5, "screenCenter":Landroid/graphics/PointF;
    new-instance v0, Lcom/bm/library/Info;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/bm/library/Info;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private static getLocation(Landroid/view/View;[I)V
    .locals 7
    .param p0, "target"    # Landroid/view/View;
    .param p1, "position"    # [I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1222
    aget v2, p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v4

    .line 1223
    aget v2, p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v5

    .line 1225
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1226
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1227
    check-cast v0, Landroid/view/View;

    .line 1229
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_0

    .line 1242
    .end local v0    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 1231
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    aget v2, p1, v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p1, v4

    .line 1232
    aget v2, p1, v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p1, v5

    .line 1234
    aget v2, p1, v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v4

    .line 1235
    aget v2, p1, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v5

    .line 1237
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1238
    goto :goto_0

    .line 1240
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    aget v2, p1, v4

    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, p1, v4

    .line 1241
    aget v2, p1, v5

    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_1
.end method

.method private hasSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_3

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-gtz v0, :cond_3

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_3

    .line 247
    :cond_2
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    .line 112
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 114
    :cond_0
    new-instance v1, Lcom/bm/library/RotateGestureDetector;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    invoke-direct {v1, v2}, Lcom/bm/library/RotateGestureDetector;-><init>(Lcom/bm/library/OnRotateListener;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView;->mRotateDetector:Lcom/bm/library/RotateGestureDetector;

    .line 115
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView;->mDetector:Landroid/view/GestureDetector;

    .line 116
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/bm/library/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 117
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 118
    .local v0, "density":F
    mul-float v1, v0, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 119
    mul-float v1, v0, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 120
    const/high16 v1, 0x430c0000    # 140.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 122
    const/16 v1, 0x23

    iput v1, p0, Lcom/bm/library/PhotoView;->mMinRotate:I

    .line 123
    const/16 v1, 0x154

    iput v1, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    .line 124
    const/high16 v1, 0x40200000    # 2.5f

    iput v1, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    .line 125
    return-void
.end method

.method private initBase()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    const/4 v13, 0x0

    .line 267
    iget-boolean v10, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v10, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-boolean v10, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    if-eqz v10, :cond_0

    .line 270
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 271
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 273
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/bm/library/PhotoView;->isZoonUp:Z

    .line 275
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 277
    .local v1, "img":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getWidth()I

    move-result v9

    .line 278
    .local v9, "w":I
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getHeight()I

    move-result v0

    .line 279
    .local v0, "h":I
    invoke-static {v1}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 280
    .local v3, "imgw":I
    invoke-static {v1}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 282
    .local v2, "imgh":I
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v11, v3

    int-to-float v12, v2

    invoke-virtual {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 285
    sub-int v10, v9, v3

    div-int/lit8 v7, v10, 0x2

    .line 286
    .local v7, "tx":I
    sub-int v10, v0, v2

    div-int/lit8 v8, v10, 0x2

    .line 288
    .local v8, "ty":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 289
    .local v5, "sx":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 292
    .local v6, "sy":F
    if-le v3, v9, :cond_2

    .line 293
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v5, v10, v11

    .line 296
    :cond_2
    if-le v2, v0, :cond_3

    .line 297
    int-to-float v10, v0

    int-to-float v11, v2

    div-float v6, v10, v11

    .line 300
    :cond_3
    cmpg-float v10, v5, v6

    if-gez v10, :cond_5

    move v4, v5

    .line 302
    .local v4, "scale":F
    :goto_1
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 303
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v7

    int-to-float v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 304
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v4, v4, v11, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 305
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 307
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v14

    iput v10, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    .line 308
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v14

    iput v10, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    .line 310
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 311
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 313
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 315
    sget-object v10, Lcom/bm/library/PhotoView$6;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 339
    :goto_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/bm/library/PhotoView;->isInit:Z

    .line 341
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    if-eqz v10, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/bm/library/PhotoView;->mInfoTime:J

    sub-long/2addr v10, v12

    iget v12, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 342
    iget-object v10, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    invoke-virtual {p0, v10}, Lcom/bm/library/PhotoView;->animaFrom(Lcom/bm/library/Info;)V

    .line 345
    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    goto/16 :goto_0

    .end local v4    # "scale":F
    :cond_5
    move v4, v6

    .line 300
    goto :goto_1

    .line 317
    .restart local v4    # "scale":F
    :pswitch_0
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initCenter()V

    goto :goto_2

    .line 320
    :pswitch_1
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initCenterCrop()V

    goto :goto_2

    .line 323
    :pswitch_2
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initCenterInside()V

    goto :goto_2

    .line 326
    :pswitch_3
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitCenter()V

    goto :goto_2

    .line 329
    :pswitch_4
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitStart()V

    goto :goto_2

    .line 332
    :pswitch_5
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitEnd()V

    goto :goto_2

    .line 335
    :pswitch_6
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitXY()V

    goto :goto_2

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private initCenter()V
    .locals 10

    .prologue
    .line 349
    iget-boolean v5, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-boolean v5, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    if-eqz v5, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 355
    .local v2, "imgw":I
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 357
    .local v1, "imgh":I
    int-to-float v5, v2

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    int-to-float v5, v1

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 358
    :cond_2
    int-to-float v5, v2

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v3, v5, v6

    .line 359
    .local v3, "scaleX":F
    int-to-float v5, v1

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v4, v5, v6

    .line 361
    .local v4, "scaleY":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_3

    .end local v3    # "scaleX":F
    :goto_1
    iput v3, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 363
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v7, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget-object v8, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 365
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 367
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    goto :goto_0

    .restart local v3    # "scaleX":F
    :cond_3
    move v3, v4

    .line 361
    goto :goto_1
.end method

.method private initCenterCrop()V
    .locals 7

    .prologue
    .line 372
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v0, v2, v3

    .line 374
    .local v0, "scaleX":F
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v1, v2, v3

    .line 376
    .local v1, "scaleY":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .end local v0    # "scaleX":F
    :goto_0
    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 378
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v4, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 380
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 381
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 383
    .end local v1    # "scaleY":F
    :cond_1
    return-void

    .restart local v0    # "scaleX":F
    .restart local v1    # "scaleY":F
    :cond_2
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method private initCenterInside()V
    .locals 7

    .prologue
    .line 386
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v0, v2, v3

    .line 388
    .local v0, "scaleX":F
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v1, v2, v3

    .line 390
    .local v1, "scaleY":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .end local v0    # "scaleX":F
    :goto_0
    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 392
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v4, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 394
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 395
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 397
    .end local v1    # "scaleY":F
    :cond_1
    return-void

    .restart local v0    # "scaleX":F
    .restart local v1    # "scaleY":F
    :cond_2
    move v0, v1

    .line 390
    goto :goto_0
.end method

.method private initFitCenter()V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 403
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v2, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 405
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 406
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 408
    :cond_0
    return-void
.end method

.method private initFitEnd()V
    .locals 3

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitCenter()V

    .line 423
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v2

    .line 424
    .local v0, "ty":F
    iget v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 425
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 426
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 427
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 428
    return-void
.end method

.method private initFitStart()V
    .locals 3

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitCenter()V

    .line 413
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v0, v1

    .line 414
    .local v0, "ty":F
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 415
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 416
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 417
    iget v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 418
    return-void
.end method

.method private initFitXY()V
    .locals 5

    .prologue
    .line 431
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v0, v2, v3

    .line 432
    .local v0, "scaleX":F
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v1, v2, v3

    .line 434
    .local v1, "scaleY":F
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 436
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 437
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 438
    return-void
.end method

.method private isImageCenterHeight(Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 663
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCenterWidth(Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 667
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "r1"    # Landroid/graphics/RectF;
    .param p2, "r2"    # Landroid/graphics/RectF;
    .param p3, "out"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x0

    .line 728
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 729
    .local v1, "l":F
    :goto_0
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 731
    .local v2, "r":F
    :goto_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    .line 732
    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 745
    :goto_2
    return-void

    .line 728
    .end local v1    # "l":F
    .end local v2    # "r":F
    :cond_0
    iget v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 729
    .restart local v1    # "l":F
    :cond_1
    iget v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 736
    .restart local v2    # "r":F
    :cond_2
    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 737
    .local v3, "t":F
    :goto_3
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 739
    .local v0, "b":F
    :goto_4
    cmpl-float v4, v3, v0

    if-lez v4, :cond_5

    .line 740
    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 736
    .end local v0    # "b":F
    .end local v3    # "t":F
    :cond_3
    iget v3, p2, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 737
    .restart local v3    # "t":F
    :cond_4
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 744
    .restart local v0    # "b":F
    :cond_5
    invoke-virtual {p3, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2
.end method

.method private onUp()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x42b40000    # 90.0f

    .line 584
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-boolean v5, v5, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz v5, :cond_0

    .line 628
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-boolean v5, p0, Lcom/bm/library/PhotoView;->canRotate:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    rem-float/2addr v5, v7

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 587
    :cond_1
    iget v5, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    div-float/2addr v5, v7

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x5a

    int-to-float v4, v5

    .line 588
    .local v4, "toDegrees":F
    iget v5, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    rem-float v2, v5, v7

    .line 590
    .local v2, "remainder":F
    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_5

    .line 591
    add-float/2addr v4, v7

    .line 595
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v6, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    float-to-int v6, v6

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/bm/library/PhotoView$Transform;->withRotate(II)V

    .line 597
    iput v4, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    .line 600
    .end local v2    # "remainder":F
    .end local v4    # "toDegrees":F
    :cond_3
    iget v3, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 602
    .local v3, "scale":F
    iget v5, p0, Lcom/bm/library/PhotoView;->mScale:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_6

    .line 603
    const/high16 v3, 0x3f800000    # 1.0f

    .line 604
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v6, p0, Lcom/bm/library/PhotoView;->mScale:F

    invoke-virtual {v5, v6, v8}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 610
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    add-float v0, v5, v6

    .line 611
    .local v0, "cx":F
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v9

    add-float v1, v5, v6

    .line 613
    .local v1, "cy":F
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 614
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 616
    iput v10, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 617
    iput v10, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 619
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 620
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 621
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    sub-float v6, v0, v6

    iget v7, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    sub-float v7, v1, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 622
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 623
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 624
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 626
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    invoke-direct {p0, v5}, Lcom/bm/library/PhotoView;->doTranslateReset(Landroid/graphics/RectF;)V

    .line 627
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v5}, Lcom/bm/library/PhotoView$Transform;->start()V

    goto/16 :goto_0

    .line 592
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    .end local v3    # "scale":F
    .restart local v2    # "remainder":F
    .restart local v4    # "toDegrees":F
    :cond_5
    const/high16 v5, -0x3dcc0000    # -45.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    .line 593
    sub-float/2addr v4, v7

    goto/16 :goto_1

    .line 605
    .end local v2    # "remainder":F
    .end local v4    # "toDegrees":F
    .restart local v3    # "scale":F
    :cond_6
    iget v5, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v6, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 606
    iget v3, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    .line 607
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v6, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v7, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    invoke-virtual {v5, v6, v7}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    goto/16 :goto_2
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1245
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1246
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 1247
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 1248
    iput v1, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 1249
    iput v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 1250
    return-void
.end method

.method private resetBase()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 442
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 443
    .local v2, "imgw":I
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 444
    .local v1, "imgh":I
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v5, v1

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 446
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 447
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    .line 448
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    .line 449
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 450
    iput v8, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 451
    iput v8, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 452
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 453
    return-void
.end method

.method private resistanceScrollByX(FF)F
    .locals 3
    .param p1, "overScroll"    # F
    .param p2, "detalX"    # F

    .prologue
    .line 712
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, p2, v1

    .line 713
    .local v0, "s":F
    return v0
.end method

.method private resistanceScrollByY(FF)F
    .locals 3
    .param p1, "overScroll"    # F
    .param p2, "detalY"    # F

    .prologue
    .line 717
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, p2, v1

    .line 718
    .local v0, "s":F
    return v0
.end method


# virtual methods
.method public animaFrom(Lcom/bm/library/Info;)V
    .locals 18
    .param p1, "info"    # Lcom/bm/library/Info;

    .prologue
    .line 1283
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bm/library/PhotoView;->isInit:Z

    if-eqz v2, :cond_7

    .line 1284
    invoke-direct/range {p0 .. p0}, Lcom/bm/library/PhotoView;->reset()V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/bm/library/PhotoView;->getInfo()Lcom/bm/library/Info;

    move-result-object v11

    .line 1288
    .local v11, "mine":Lcom/bm/library/Info;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v5, v11, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v15, v2, v5

    .line 1289
    .local v15, "scaleX":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v5, v11, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v16, v2, v5

    .line 1290
    .local v16, "scaleY":F
    cmpg-float v2, v15, v16

    if-gez v2, :cond_4

    move v14, v15

    .line 1292
    .local v14, "scale":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v12, v2, v5

    .line 1293
    .local v12, "ocx":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v13, v2, v5

    .line 1295
    .local v13, "ocy":F
    iget-object v2, v11, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, v11, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v9, v2, v5

    .line 1296
    .local v9, "mcx":F
    iget-object v2, v11, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, v11, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v10, v2, v5

    .line 1298
    .local v10, "mcy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    sub-float v5, v12, v9

    sub-float v6, v13, v10

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v14, v14, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/bm/library/Info;->mDegrees:F

    invoke-virtual {v2, v5, v12, v13}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1303
    invoke-direct/range {p0 .. p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v2, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    invoke-virtual {v2, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-float v7, v12, v9

    neg-float v7, v7

    float-to-int v7, v7

    sub-float v17, v13, v10

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v5, v6, v7, v0}, Lcom/bm/library/PhotoView$Transform;->withTranslate(IIII)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v14, v5}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/bm/library/Info;->mDegrees:F

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/bm/library/PhotoView$Transform;->withRotate(II)V

    .line 1312
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    .line 1313
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v2, v5

    .line 1314
    .local v3, "clipX":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v4, v2, v5

    .line 1315
    .local v4, "clipY":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1316
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1318
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v5, :cond_5

    new-instance v8, Lcom/bm/library/PhotoView$START;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/bm/library/PhotoView$START;-><init>(Lcom/bm/library/PhotoView;)V

    .line 1320
    .local v8, "c":Lcom/bm/library/PhotoView$ClipCalculate;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    div-int/lit8 v7, v7, 0x3

    invoke-virtual/range {v2 .. v8}, Lcom/bm/library/PhotoView$Transform;->withClip(FFFFILcom/bm/library/PhotoView$ClipCalculate;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-interface {v8}, Lcom/bm/library/PhotoView$ClipCalculate;->calculateTop()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object v5, v5, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object v2, v2, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    .line 1327
    .end local v3    # "clipX":F
    .end local v4    # "clipY":F
    .end local v8    # "c":Lcom/bm/library/PhotoView$ClipCalculate;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v2}, Lcom/bm/library/PhotoView$Transform;->start()V

    .line 1332
    .end local v9    # "mcx":F
    .end local v10    # "mcy":F
    .end local v11    # "mine":Lcom/bm/library/Info;
    .end local v12    # "ocx":F
    .end local v13    # "ocy":F
    .end local v14    # "scale":F
    .end local v15    # "scaleX":F
    .end local v16    # "scaleY":F
    :goto_2
    return-void

    .restart local v11    # "mine":Lcom/bm/library/Info;
    .restart local v15    # "scaleX":F
    .restart local v16    # "scaleY":F
    :cond_4
    move/from16 v14, v16

    .line 1290
    goto/16 :goto_0

    .line 1318
    .restart local v3    # "clipX":F
    .restart local v4    # "clipY":F
    .restart local v9    # "mcx":F
    .restart local v10    # "mcy":F
    .restart local v12    # "ocx":F
    .restart local v13    # "ocy":F
    .restart local v14    # "scale":F
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v5, :cond_6

    new-instance v8, Lcom/bm/library/PhotoView$END;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/bm/library/PhotoView$END;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    :cond_6
    new-instance v8, Lcom/bm/library/PhotoView$OTHER;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/bm/library/PhotoView$OTHER;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    .line 1329
    .end local v3    # "clipX":F
    .end local v4    # "clipY":F
    .end local v9    # "mcx":F
    .end local v10    # "mcy":F
    .end local v11    # "mine":Lcom/bm/library/Info;
    .end local v12    # "ocx":F
    .end local v13    # "ocy":F
    .end local v14    # "scale":F
    .end local v15    # "scaleX":F
    .end local v16    # "scaleY":F
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    .line 1330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/bm/library/PhotoView;->mInfoTime:J

    goto :goto_2
.end method

.method public animaTo(Lcom/bm/library/Info;Ljava/lang/Runnable;)V
    .locals 17
    .param p1, "info"    # Lcom/bm/library/Info;
    .param p2, "completeCallBack"    # Ljava/lang/Runnable;

    .prologue
    .line 1335
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/bm/library/PhotoView;->isInit:Z

    if-eqz v12, :cond_4

    .line 1336
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v12}, Lcom/bm/library/PhotoView$Transform;->stop()V

    .line 1338
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 1339
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 1341
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v10, v12, v13

    .line 1342
    .local v10, "tcx":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v11, v12, v13

    .line 1344
    .local v11, "tcy":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v12, v13}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bm/library/PhotoView;->mDegrees:F

    neg-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1352
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v8, v12, v13

    .line 1353
    .local v8, "scaleX":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v9, v12, v13

    .line 1354
    .local v9, "scaleY":F
    cmpl-float v12, v8, v9

    if-lez v12, :cond_5

    move v7, v8

    .line 1356
    .local v7, "scale":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bm/library/PhotoView;->mDegrees:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1359
    move-object/from16 v0, p0

    iget v12, v0, Lcom/bm/library/PhotoView;->mDegrees:F

    const/high16 v13, 0x43b40000    # 360.0f

    rem-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/bm/library/PhotoView;->mDegrees:F

    .line 1361
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float v15, v10, v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, v11, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/bm/library/PhotoView$Transform;->withTranslate(IIII)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bm/library/PhotoView;->mScale:F

    invoke-virtual {v12, v13, v7}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bm/library/PhotoView;->mDegrees:F

    float-to-int v13, v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/bm/library/Info;->mDegrees:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    mul-int/lit8 v15, v15, 0x2

    div-int/lit8 v15, v15, 0x3

    invoke-virtual {v12, v13, v14, v15}, Lcom/bm/library/PhotoView$Transform;->withRotate(III)V

    .line 1365
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 1366
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v3, v12, v13

    .line 1367
    .local v3, "clipX":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v4, v12, v13

    .line 1368
    .local v4, "clipY":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v3, v12

    if-lez v12, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1369
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1371
    :cond_2
    move v5, v3

    .line 1372
    .local v5, "cx":F
    move v6, v4

    .line 1373
    .local v6, "cy":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_6

    new-instance v2, Lcom/bm/library/PhotoView$START;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/bm/library/PhotoView$START;-><init>(Lcom/bm/library/PhotoView;)V

    .line 1375
    .local v2, "c":Lcom/bm/library/PhotoView$ClipCalculate;
    :goto_1
    new-instance v12, Lcom/bm/library/PhotoView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v6, v2}, Lcom/bm/library/PhotoView$5;-><init>(Lcom/bm/library/PhotoView;FFLcom/bm/library/PhotoView$ClipCalculate;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    div-int/lit8 v13, v13, 0x2

    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/bm/library/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1383
    .end local v2    # "c":Lcom/bm/library/PhotoView$ClipCalculate;
    .end local v3    # "clipX":F
    .end local v4    # "clipY":F
    .end local v5    # "cx":F
    .end local v6    # "cy":F
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bm/library/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    .line 1384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v12}, Lcom/bm/library/PhotoView$Transform;->start()V

    .line 1386
    .end local v7    # "scale":F
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    .end local v10    # "tcx":F
    .end local v11    # "tcy":F
    :cond_4
    return-void

    .restart local v8    # "scaleX":F
    .restart local v9    # "scaleY":F
    .restart local v10    # "tcx":F
    .restart local v11    # "tcy":F
    :cond_5
    move v7, v9

    .line 1354
    goto/16 :goto_0

    .line 1373
    .restart local v3    # "clipX":F
    .restart local v4    # "clipY":F
    .restart local v5    # "cx":F
    .restart local v6    # "cy":F
    .restart local v7    # "scale":F
    :cond_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_7

    new-instance v2, Lcom/bm/library/PhotoView$END;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/bm/library/PhotoView$END;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/bm/library/PhotoView$OTHER;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/bm/library/PhotoView$OTHER;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/bm/library/PhotoView;->canScrollHorizontallySelf(F)Z

    move-result v0

    goto :goto_0
.end method

.method public canScrollHorizontallySelf(F)Z
    .locals 4
    .param p1, "direction"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 925
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 926
    :cond_1
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 928
    :cond_2
    cmpl-float v1, p1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 930
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 951
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/bm/library/PhotoView;->canScrollVerticallySelf(F)Z

    move-result v0

    goto :goto_0
.end method

.method public canScrollVerticallySelf(F)Z
    .locals 4
    .param p1, "direction"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 934
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 935
    :cond_1
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 937
    :cond_2
    cmpl-float v1, p1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 939
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disenable()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    .line 205
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 567
    iget-boolean v2, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    if-eqz v2, :cond_3

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 569
    .local v0, "Action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iput-boolean v1, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 572
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mRotateDetector:Lcom/bm/library/RotateGestureDetector;

    invoke-virtual {v2, p1}, Lcom/bm/library/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 573
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 575
    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->onUp()V

    .line 579
    .end local v0    # "Action":I
    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    .line 562
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 563
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    .line 198
    return-void
.end method

.method public getAnimaDuring()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    return v0
.end method

.method public getDefaultAnimaDuring()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x154

    return v0
.end method

.method public getInfo()Lcom/bm/library/Info;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1191
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1192
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 1193
    .local v9, "p":[I
    invoke-static {p0, v9}, Lcom/bm/library/PhotoView;->getLocation(Landroid/view/View;[I)V

    .line 1194
    aget v0, v9, v4

    int-to-float v0, v0

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    aget v2, v9, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    aget v3, v9, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    aget v4, v9, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1195
    new-instance v0, Lcom/bm/library/Info;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v6, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v7, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    iget-object v8, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct/range {v0 .. v8}, Lcom/bm/library/Info;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v14, :cond_0

    .line 469
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 535
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 474
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 475
    .local v3, "drawableW":I
    invoke-static {v1}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 477
    .local v2, "drawableH":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 478
    .local v9, "pWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 480
    .local v8, "pHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 481
    .local v13, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 483
    .local v6, "heightMode":I
    const/4 v12, 0x0

    .line 484
    .local v12, "width":I
    const/4 v5, 0x0

    .line 486
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/bm/library/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 488
    .local v7, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_1

    .line 489
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .end local v7    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v7, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 492
    .restart local v7    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 493
    if-nez v13, :cond_3

    .line 494
    move v12, v3

    .line 508
    :goto_1
    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 509
    if-nez v6, :cond_8

    .line 510
    move v5, v2

    .line 524
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/bm/library/PhotoView;->mAdjustViewBounds:Z

    if-eqz v14, :cond_2

    int-to-float v14, v3

    int-to-float v15, v2

    div-float/2addr v14, v15

    int-to-float v15, v12

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    .line 526
    int-to-float v14, v5

    int-to-float v15, v2

    div-float v4, v14, v15

    .line 527
    .local v4, "hScale":F
    int-to-float v14, v12

    int-to-float v15, v3

    div-float v11, v14, v15

    .line 529
    .local v11, "wScale":F
    cmpg-float v14, v4, v11

    if-gez v14, :cond_d

    move v10, v4

    .line 530
    .local v10, "scale":F
    :goto_3
    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_e

    .line 531
    :goto_4
    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_f

    .line 534
    .end local v4    # "hScale":F
    .end local v10    # "scale":F
    .end local v11    # "wScale":F
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lcom/bm/library/PhotoView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 496
    :cond_3
    move v12, v9

    goto :goto_1

    .line 499
    :cond_4
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v13, v14, :cond_5

    .line 500
    move v12, v9

    goto :goto_1

    .line 501
    :cond_5
    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_7

    .line 502
    if-le v3, v9, :cond_6

    move v12, v9

    :goto_6
    goto :goto_1

    :cond_6
    move v12, v3

    goto :goto_6

    .line 504
    :cond_7
    move v12, v3

    goto :goto_1

    .line 512
    :cond_8
    move v5, v8

    goto :goto_2

    .line 515
    :cond_9
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v6, v14, :cond_a

    .line 516
    move v5, v8

    goto :goto_2

    .line 517
    :cond_a
    const/high16 v14, -0x80000000

    if-ne v6, v14, :cond_c

    .line 518
    if-le v2, v8, :cond_b

    move v5, v8

    :goto_7
    goto :goto_2

    :cond_b
    move v5, v2

    goto :goto_7

    .line 520
    :cond_c
    move v5, v2

    goto :goto_2

    .restart local v4    # "hScale":F
    .restart local v11    # "wScale":F
    :cond_d
    move v10, v11

    .line 529
    goto :goto_3

    .line 530
    .restart local v10    # "scale":F
    :cond_e
    int-to-float v14, v3

    mul-float/2addr v14, v10

    float-to-int v12, v14

    goto :goto_4

    .line 531
    :cond_f
    int-to-float v14, v2

    mul-float/2addr v14, v10

    float-to-int v5, v14

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 547
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 550
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    .line 552
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initBase()V

    .line 554
    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 540
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->mAdjustViewBounds:Z

    .line 541
    return-void
.end method

.method public setAnimaDuring(I)V
    .locals 0
    .param p1, "during"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    .line 177
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    if-nez p1, :cond_1

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->hasSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_2

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initBase()V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bm/library/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    return-void

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v0, p1}, Lcom/bm/library/PhotoView$Transform;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    return-void
.end method

.method public setMaxAnimFromWaiteTime(I)V
    .locals 0
    .param p1, "wait"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 211
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    .line 184
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 138
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 156
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 142
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 145
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 147
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isInit:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initBase()V

    goto :goto_0
.end method
