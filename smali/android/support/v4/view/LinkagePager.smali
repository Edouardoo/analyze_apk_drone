.class public Landroid/support/v4/view/LinkagePager;
.super Landroid/view/ViewGroup;
.source "LinkagePager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LinkagePager$ViewPositionComparator;,
        Landroid/support/v4/view/LinkagePager$LayoutParams;,
        Landroid/support/v4/view/LinkagePager$PagerObserver;,
        Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/LinkagePager$SavedState;,
        Landroid/support/v4/view/LinkagePager$Decor;,
        Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;,
        Landroid/support/v4/view/LinkagePager$PageTransformer;,
        Landroid/support/v4/view/LinkagePager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/LinkagePager$OnPageChangeListener;,
        Landroid/support/v4/view/LinkagePager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/LinkagePager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/LinkagePager$ViewPositionComparator;


# instance fields
.field private linkagePager:Landroid/support/v4/view/LinkagePager;

.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/LinkagePager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/LinkagePager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/LinkagePager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/LinkagePager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/LinkagePager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/LinkagePager;->LAYOUT_ATTRS:[I

    .line 110
    new-instance v0, Landroid/support/v4/view/LinkagePager$1;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/LinkagePager;->COMPARATOR:Ljava/util/Comparator;

    .line 117
    new-instance v0, Landroid/support/v4/view/LinkagePager$2;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/LinkagePager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 220
    new-instance v0, Landroid/support/v4/view/LinkagePager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/LinkagePager;->sPositionComparator:Landroid/support/v4/view/LinkagePager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 341
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Landroid/support/v4/view/LinkagePager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mTempItem:Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mTempRect:Landroid/graphics/Rect;

    .line 131
    iput v1, p0, Landroid/support/v4/view/LinkagePager;->mRestoredCurItem:I

    .line 132
    iput-object v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 133
    iput-object v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 148
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    .line 149
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    .line 158
    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    .line 176
    iput v1, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    .line 203
    iput-boolean v3, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    .line 204
    iput-boolean v2, p0, Landroid/support/v4/view/LinkagePager;->mNeedCalculatePageOffsets:Z

    .line 238
    new-instance v0, Landroid/support/v4/view/LinkagePager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/LinkagePager$3;-><init>(Landroid/support/v4/view/LinkagePager;)V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 245
    iput v2, p0, Landroid/support/v4/view/LinkagePager;->mScrollState:I

    .line 342
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->initViewPager()V

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 346
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Landroid/support/v4/view/LinkagePager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mTempItem:Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mTempRect:Landroid/graphics/Rect;

    .line 131
    iput v1, p0, Landroid/support/v4/view/LinkagePager;->mRestoredCurItem:I

    .line 132
    iput-object v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 133
    iput-object v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 148
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    .line 149
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    .line 158
    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    .line 176
    iput v1, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    .line 203
    iput-boolean v3, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    .line 204
    iput-boolean v2, p0, Landroid/support/v4/view/LinkagePager;->mNeedCalculatePageOffsets:Z

    .line 238
    new-instance v0, Landroid/support/v4/view/LinkagePager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/LinkagePager$3;-><init>(Landroid/support/v4/view/LinkagePager;)V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 245
    iput v2, p0, Landroid/support/v4/view/LinkagePager;->mScrollState:I

    .line 347
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->initViewPager()V

    .line 348
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/LinkagePager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/view/LinkagePager;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/LinkagePager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/view/LinkagePager;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/LinkagePager;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/view/LinkagePager;

    .prologue
    .line 75
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Landroid/support/v4/view/LinkagePager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/LinkagePager$ItemInfo;ILandroid/support/v4/view/LinkagePager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Landroid/support/v4/view/LinkagePager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Landroid/support/v4/view/LinkagePager$ItemInfo;

    .prologue
    .line 1222
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1223
    .local v1, "N":I
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v11

    .line 1224
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1226
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1227
    move-object/from16 v0, p3

    iget v8, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 1229
    .local v8, "oldCurPosition":I
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1230
    const/4 v5, 0x0

    .line 1231
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1232
    .local v3, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1233
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1234
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1235
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1236
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_2
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1237
    add-int/lit8 v5, v5, 0x1

    .line 1238
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    goto :goto_2

    .line 1224
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1240
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1243
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1244
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1246
    :cond_2
    iput v7, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 1247
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1234
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1249
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1250
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1251
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1252
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 1253
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1254
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1255
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1256
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_5
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1257
    add-int/lit8 v5, v5, -0x1

    .line 1258
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    goto :goto_5

    .line 1260
    :cond_4
    :goto_6
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1263
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1264
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1266
    :cond_5
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1267
    iput v7, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 1254
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1273
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1274
    .local v4, "itemCount":I
    iget v7, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 1275
    .restart local v7    # "offset":F
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1276
    .restart local v9    # "pos":I
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    .line 1277
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    iget v13, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    .line 1280
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1281
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1282
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_a
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1283
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1276
    .end local v2    # "i":I
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1277
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1285
    .restart local v2    # "i":I
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_9
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1286
    iput v7, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 1287
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    .line 1280
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1289
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_b
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    iget v13, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1290
    iget v12, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1292
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1293
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1294
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_c
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1295
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1297
    :cond_c
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1298
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    .line 1300
    :cond_d
    iput v7, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 1301
    iget v12, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1292
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1304
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/support/v4/view/LinkagePager;->mNeedCalculatePageOffsets:Z

    .line 1305
    return-void
.end method

.method private completeScroll(Z)V
    .locals 11
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1880
    iget v9, p0, Landroid/support/v4/view/LinkagePager;->mScrollState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    move v2, v5

    .line 1881
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1883
    invoke-direct {p0, v8}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 1884
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1885
    .local v5, "wasScrolling":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 1886
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1887
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v3

    .line 1888
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v4

    .line 1889
    .local v4, "oldY":I
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 1890
    .local v6, "x":I
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 1891
    .local v7, "y":I
    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_1

    .line 1892
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 1893
    if-eq v6, v3, :cond_1

    .line 1894
    invoke-direct {p0, v6}, Landroid/support/v4/view/LinkagePager;->pageScrolled(I)Z

    .line 1899
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "wasScrolling":Z
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_1
    iput-boolean v8, p0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 1900
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 1901
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1902
    .local v1, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget-boolean v9, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->scrolling:Z

    if-eqz v9, :cond_2

    .line 1903
    const/4 v2, 0x1

    .line 1904
    iput-boolean v8, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->scrolling:Z

    .line 1900
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v8

    .line 1880
    goto :goto_0

    .restart local v2    # "needPopulate":Z
    :cond_4
    move v5, v8

    .line 1884
    goto :goto_1

    .line 1907
    .restart local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 1908
    if-eqz p1, :cond_7

    .line 1909
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v8}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1914
    :cond_6
    :goto_3
    return-void

    .line 1911
    :cond_7
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2312
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/view/LinkagePager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/view/LinkagePager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2313
    if-lez p3, :cond_1

    move v2, p1

    .line 2319
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2320
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2321
    .local v0, "firstItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2324
    .local v1, "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v4, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v5, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2327
    .end local v0    # "firstItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v1    # "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_0
    return v2

    .line 2313
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2315
    :cond_2
    iget v4, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2316
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2315
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1829
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 1830
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1832
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1833
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1834
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .line 1835
    .local v1, "listener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    if-eqz v1, :cond_1

    .line 1836
    invoke-interface {v1, p1, p2, p3}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1833
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1840
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 1841
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1843
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1846
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 1847
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageSelected(I)V

    .line 1849
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1850
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1851
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .line 1852
    .local v1, "listener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    if-eqz v1, :cond_1

    .line 1853
    invoke-interface {v1, p1}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageSelected(I)V

    .line 1850
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1857
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 1858
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageSelected(I)V

    .line 1860
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1863
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 1864
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1866
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1867
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1868
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .line 1869
    .local v1, "listener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    if-eqz v1, :cond_1

    .line 1870
    invoke-interface {v1, p1}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1867
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 1875
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/LinkagePager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1877
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1921
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v0

    .line 1922
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1923
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1925
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1923
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1927
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2566
    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    .line 2567
    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsUnableToDrag:Z

    .line 2569
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2571
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2573
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2747
    if-nez p1, :cond_0

    .line 2748
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2750
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2751
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2769
    :cond_1
    return-object p1

    .line 2754
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2755
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2756
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2757
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2759
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2760
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2761
    check-cast v0, Landroid/view/ViewGroup;

    .line 2762
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2763
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2764
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2765
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2767
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2768
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/LinkagePager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2269
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v12

    .line 2270
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2271
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2272
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2273
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2274
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2275
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2277
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2278
    .local v3, "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2279
    iget-object v13, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2281
    .local v2, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2283
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mTempItem:Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2284
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 2285
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 2286
    iget-object v13, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    .line 2287
    add-int/lit8 v1, v1, -0x1

    .line 2289
    :cond_1
    iget v9, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 2291
    .local v9, "offset":F
    move v7, v9

    .line 2292
    .local v7, "leftBound":F
    iget v13, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2293
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2294
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2307
    .end local v2    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v3    # "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2270
    goto :goto_0

    .line 2300
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .restart local v3    # "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2301
    iget v5, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 2302
    move v4, v9

    .line 2303
    iget v6, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    .line 2304
    move-object v3, v2

    .line 2278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1917
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2551
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2552
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2553
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2556
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2557
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2558
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    .line 2559
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2560
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2563
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2556
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1729
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1730
    iput-boolean v7, p0, Landroid/support/v4/view/LinkagePager;->mCalledSuper:Z

    .line 1731
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Landroid/support/v4/view/LinkagePager;->onPageScrolled(IFI)V

    .line 1732
    iget-boolean v8, p0, Landroid/support/v4/view/LinkagePager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1733
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1738
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->infoForCurrentScrollPosition()Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v1

    .line 1739
    .local v1, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v5

    .line 1740
    .local v5, "width":I
    iget v8, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1741
    .local v6, "widthWithMargin":I
    iget v8, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1742
    .local v2, "marginOffset":F
    iget v0, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 1743
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1745
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1747
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Landroid/support/v4/view/LinkagePager;->mCalledSuper:Z

    .line 1748
    invoke-virtual {p0, v0, v4, v3}, Landroid/support/v4/view/LinkagePager;->onPageScrolled(IFI)V

    .line 1749
    iget-boolean v7, p0, Landroid/support/v4/view/LinkagePager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1750
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1753
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 18
    .param p1, "x"    # F

    .prologue
    .line 2213
    const/4 v7, 0x0

    .line 2215
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    sub-float v2, v15, p1

    .line 2216
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2218
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v15

    int-to-float v8, v15

    .line 2219
    .local v8, "oldScrollX":F
    add-float v13, v8, v2

    .line 2220
    .local v13, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v14

    .line 2222
    .local v14, "width":I
    int-to-float v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    move/from16 v16, v0

    mul-float v6, v15, v16

    .line 2223
    .local v6, "leftBound":F
    int-to-float v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    move/from16 v16, v0

    mul-float v12, v15, v16

    .line 2224
    .local v12, "rightBound":F
    const/4 v5, 0x1

    .line 2225
    .local v5, "leftAbsolute":Z
    const/4 v11, 0x1

    .line 2227
    .local v11, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2228
    .local v3, "firstItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2229
    .local v4, "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v15, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-eqz v15, :cond_0

    .line 2230
    const/4 v5, 0x0

    .line 2231
    iget v15, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    int-to-float v0, v14

    move/from16 v16, v0

    mul-float v6, v15, v16

    .line 2233
    :cond_0
    iget v15, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 2234
    const/4 v11, 0x0

    .line 2235
    iget v15, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    int-to-float v0, v14

    move/from16 v16, v0

    mul-float v12, v15, v16

    .line 2238
    :cond_1
    cmpg-float v15, v13, v6

    if-gez v15, :cond_5

    .line 2239
    if-eqz v5, :cond_2

    .line 2240
    sub-float v9, v6, v13

    .line 2241
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v16

    int-to-float v0, v14

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2243
    .end local v9    # "over":F
    :cond_2
    move v13, v6

    .line 2252
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    float-to-int v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v13, v16

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2253
    float-to-int v15, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 2255
    int-to-float v15, v14

    div-float v10, v13, v15

    .line 2256
    .local v10, "pageOffset":F
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    if-eqz v15, :cond_4

    .line 2257
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v10

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 2260
    :cond_4
    float-to-int v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/support/v4/view/LinkagePager;->pageScrolled(I)Z

    .line 2261
    return v7

    .line 2244
    .end local v10    # "pageOffset":F
    :cond_5
    cmpl-float v15, v13, v12

    if-lez v15, :cond_3

    .line 2245
    if-eqz v11, :cond_6

    .line 2246
    sub-float v9, v13, v12

    .line 2247
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v16

    int-to-float v0, v14

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2249
    .end local v9    # "over":F
    :cond_6
    move v13, v12

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1568
    if-lez p2, :cond_2

    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1569
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1570
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getCurrentItem()I

    move-result v9

    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v6, v8, p3

    .line 1573
    .local v6, "widthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v2, v8, p4

    .line 1575
    .local v2, "oldWidthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v7

    .line 1576
    .local v7, "xpos":I
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v3, v8, v9

    .line 1577
    .local v3, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v3

    float-to-int v1, v8

    .line 1579
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v1, v8}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    goto :goto_0

    .line 1582
    .end local v1    # "newOffsetPixels":I
    .end local v2    # "oldWidthWithMargin":I
    .end local v3    # "pageOffset":F
    .end local v6    # "widthWithMargin":I
    .end local v7    # "xpos":I
    :cond_2
    iget v8, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    invoke-virtual {p0, v8}, Landroid/support/v4/view/LinkagePager;->infoForPosition(I)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v0

    .line 1583
    .local v0, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v0, :cond_3

    iget v8, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    iget v9, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1585
    .local v4, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1586
    .local v5, "scrollPos":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v8

    if-eq v5, v8, :cond_0

    .line 1587
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/support/v4/view/LinkagePager;->completeScroll(Z)V

    .line 1588
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    goto :goto_0

    .line 1583
    .end local v4    # "scrollOffset":F
    .end local v5    # "scrollPos":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 507
    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 509
    .local v2, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 510
    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->removeViewAt(I)V

    .line 511
    add-int/lit8 v1, v1, -0x1

    .line 506
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2207
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2208
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2210
    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 3

    .prologue
    .line 2199
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    .line 2200
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->endDrag()V

    .line 2201
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int v0, v1, v2

    .line 2202
    .local v0, "needsInvalidate":Z
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 606
    invoke-virtual {p0, p1}, Landroid/support/v4/view/LinkagePager;->infoForPosition(I)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v0

    .line 607
    .local v0, "curInfo":Landroid/support/v4/view/LinkagePager$ItemInfo;
    const/4 v1, 0x0

    .line 608
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 609
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v2

    .line 610
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    iget v5, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    iget v6, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    .line 611
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 610
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 613
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_2

    .line 614
    invoke-virtual {p0, v1, v7, p3}, Landroid/support/v4/view/LinkagePager;->smoothScrollTo(III)V

    .line 615
    if-eqz p4, :cond_1

    .line 616
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager;->dispatchOnPageSelected(I)V

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    if-eqz p4, :cond_3

    .line 620
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager;->dispatchOnPageSelected(I)V

    .line 622
    :cond_3
    invoke-direct {p0, v7}, Landroid/support/v4/view/LinkagePager;->completeScroll(Z)V

    .line 623
    invoke-virtual {p0, v1, v7}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 624
    invoke-direct {p0, v1}, Landroid/support/v4/view/LinkagePager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 442
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 446
    :cond_0
    iput p1, p0, Landroid/support/v4/view/LinkagePager;->mScrollState:I

    .line 447
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mPageTransformer:Landroid/support/v4/view/LinkagePager$PageTransformer;

    if-eqz v0, :cond_1

    .line 449
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->enableLayers(Z)V

    .line 451
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager;->dispatchOnScrollStateChanged(I)V

    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2576
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2577
    iput-boolean p1, p0, Landroid/support/v4/view/LinkagePager;->mScrollingCacheEnabled:Z

    .line 2588
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1206
    iget v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1207
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1212
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v1

    .line 1213
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1214
    invoke-virtual {p0, v2}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1215
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1210
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1217
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Landroid/support/v4/view/LinkagePager;->sPositionComparator:Landroid/support/v4/view/LinkagePager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1219
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2793
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2795
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getDescendantFocusability()I

    move-result v1

    .line 2797
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2798
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2799
    invoke-virtual {p0, v3}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2800
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2801
    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v4

    .line 2802
    .local v4, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v6, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2803
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2798
    .end local v4    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2813
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 2816
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2819
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2830
    :cond_3
    :goto_1
    return-void

    .line 2822
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 2823
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2826
    :cond_5
    if-eqz p1, :cond_3

    .line 2827
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Landroid/support/v4/view/LinkagePager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 932
    new-instance v0, Landroid/support/v4/view/LinkagePager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$ItemInfo;-><init>()V

    .line 933
    .local v0, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 934
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    .line 935
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    .line 936
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 937
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :goto_0
    return-object v0

    .line 939
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/LinkagePager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2840
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2841
    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2842
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2843
    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v2

    .line 2844
    .local v2, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2845
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2840
    .end local v2    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2849
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1392
    invoke-virtual {p0, p3}, Landroid/support/v4/view/LinkagePager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1393
    invoke-virtual {p0, p3}, Landroid/support/v4/view/LinkagePager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1395
    check-cast v0, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1396
    .local v0, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/support/v4/view/LinkagePager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    .line 1397
    iget-boolean v1, p0, Landroid/support/v4/view/LinkagePager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1398
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1399
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->needsMeasure:Z

    .line 1402
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/LinkagePager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1414
    :goto_0
    return-void

    .line 1404
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2681
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2682
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2683
    const/4 v1, 0x0

    .line 2707
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2709
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2711
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2712
    if-ne p1, v11, :cond_8

    .line 2715
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Landroid/support/v4/view/LinkagePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2716
    .local v5, "nextLeft":I
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Landroid/support/v4/view/LinkagePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2717
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2718
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->pageLeft()Z

    move-result v2

    .line 2740
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2741
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/support/v4/view/LinkagePager;->playSoundEffect(I)V

    .line 2743
    :cond_2
    return v2

    .line 2684
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2685
    const/4 v3, 0x0

    .line 2686
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2688
    if-ne v6, p0, :cond_5

    .line 2689
    const/4 v3, 0x1

    .line 2693
    :cond_4
    if-nez v3, :cond_0

    .line 2695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2696
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2699
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2687
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2701
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2702
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2701
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2720
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .line 2722
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2725
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Landroid/support/v4/view/LinkagePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2726
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Landroid/support/v4/view/LinkagePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Landroid/support/v4/view/LinkagePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2727
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2728
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    .line 2730
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .line 2733
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2735
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    .line 2736
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2738
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2434
    iget-boolean v2, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2450
    :goto_0
    return v4

    .line 2437
    :cond_0
    iput-boolean v9, p0, Landroid/support/v4/view/LinkagePager;->mFakeDragging:Z

    .line 2438
    invoke-direct {p0, v9}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    .line 2439
    iput v5, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    iput v5, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    .line 2440
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2441
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2445
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2446
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2447
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2448
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2449
    iput-wide v0, p0, Landroid/support/v4/view/LinkagePager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2450
    goto :goto_0

    .line 2443
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2618
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2619
    check-cast v7, Landroid/view/ViewGroup;

    .line 2620
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2621
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2622
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2624
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2627
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2628
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 2629
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 2630
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 2631
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2630
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/LinkagePager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    const/4 v0, 0x1

    .line 2637
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2624
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2637
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2591
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v4, :cond_1

    .line 2602
    :cond_0
    :goto_0
    return v3

    .line 2595
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v1

    .line 2596
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v0

    .line 2597
    .local v0, "scrollX":I
    if-gez p1, :cond_3

    .line 2598
    int-to-float v4, v1

    iget v5, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2599
    :cond_3
    if-lez p1, :cond_0

    .line 2600
    int-to-float v4, v1

    iget v5, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2919
    instance-of v0, p1, Landroid/support/v4/view/LinkagePager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 678
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1704
    iput-boolean v5, p0, Landroid/support/v4/view/LinkagePager;->mIsScrollStarted:Z

    .line 1705
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1706
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v0

    .line 1707
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v1

    .line 1708
    .local v1, "oldY":I
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1709
    .local v2, "x":I
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1711
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1712
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 1713
    invoke-direct {p0, v2}, Landroid/support/v4/view/LinkagePager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1714
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1715
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 1720
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1726
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1725
    :cond_2
    invoke-direct {p0, v5}, Landroid/support/v4/view/LinkagePager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 947
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 948
    .local v0, "adapterCount":I
    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mExpectedAdapterCount:I

    .line 949
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    .line 950
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 951
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    .line 953
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 954
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 955
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 956
    .local v4, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v13, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 958
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 954
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 950
    goto :goto_0

    .line 962
    .restart local v3    # "i":I
    .restart local v4    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 963
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 964
    add-int/lit8 v3, v3, -0x1

    .line 966
    if-nez v5, :cond_3

    .line 967
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 968
    const/4 v5, 0x1

    .line 971
    :cond_3
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget-object v14, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 972
    const/4 v7, 0x1

    .line 974
    iget v12, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    iget v13, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 976
    iget v12, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 977
    const/4 v7, 0x1

    goto :goto_2

    .line 982
    :cond_4
    iget v12, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 983
    iget v12, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v13, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 985
    move v8, v9

    .line 988
    :cond_5
    iput v9, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 989
    const/4 v7, 0x1

    goto :goto_2

    .line 993
    .end local v4    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 994
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 997
    :cond_7
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Landroid/support/v4/view/LinkagePager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 999
    if-eqz v7, :cond_a

    .line 1001
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v2

    .line 1002
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 1003
    invoke-virtual {p0, v3}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1004
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1005
    .local v6, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    iget-boolean v12, v6, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 1006
    const/4 v12, 0x0

    iput v12, v6, Landroid/support/v4/view/LinkagePager$LayoutParams;->widthFactor:F

    .line 1002
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1010
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZ)V

    .line 1011
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->requestLayout()V

    .line 1013
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2643
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/LinkagePager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2887
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2888
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2904
    :goto_0
    return v4

    .line 2892
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v1

    .line 2893
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2894
    invoke-virtual {p0, v2}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2895
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2896
    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v3

    .line 2897
    .local v3, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 2898
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2899
    const/4 v4, 0x1

    goto :goto_0

    .line 2893
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2904
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 851
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 852
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 853
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2332
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2333
    const/4 v1, 0x0

    .line 2335
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 2336
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2338
    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2339
    :cond_0
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2341
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2342
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v4

    .line 2344
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2345
    neg-int v5, v0

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2346
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2347
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2348
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2350
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2352
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v4

    .line 2353
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2355
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2356
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2357
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2358
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2359
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2366
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2368
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2370
    :cond_3
    return-void

    .line 2362
    :cond_4
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2363
    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 839
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 840
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 841
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 844
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2460
    iget-boolean v9, p0, Landroid/support/v4/view/LinkagePager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2461
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2464
    :cond_0
    iget-object v9, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v9, :cond_1

    .line 2465
    iget-object v7, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2466
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Landroid/support/v4/view/LinkagePager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2467
    iget v9, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    invoke-static {v7, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    float-to-int v2, v9

    .line 2469
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 2470
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v8

    .line 2471
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v5

    .line 2472
    .local v5, "scrollX":I
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->infoForCurrentScrollPosition()Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v1

    .line 2473
    .local v1, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v0, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 2474
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2475
    .local v4, "pageOffset":F
    iget v9, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    iget v10, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2476
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Landroid/support/v4/view/LinkagePager;->determineTargetPage(IFII)I

    move-result v3

    .line 2478
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZI)V

    .line 2480
    .end local v0    # "currentPage":I
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v2    # "initialVelocity":I
    .end local v3    # "nextPage":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollX":I
    .end local v6    # "totalDelta":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v8    # "width":I
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->endDrag()V

    .line 2482
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/support/v4/view/LinkagePager;->mFakeDragging:Z

    .line 2483
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2655
    const/4 v0, 0x0

    .line 2656
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2657
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2677
    :cond_0
    :goto_0
    return v0

    .line 2659
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->arrowScroll(I)Z

    move-result v0

    .line 2660
    goto :goto_0

    .line 2662
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->arrowScroll(I)Z

    move-result v0

    .line 2663
    goto :goto_0

    .line 2665
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2668
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2669
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/LinkagePager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2670
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2671
    invoke-virtual {p0, v3}, Landroid/support/v4/view/LinkagePager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2657
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/LinkagePager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2494
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2497
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_1

    .line 2535
    :goto_0
    return-void

    .line 2501
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2503
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2504
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2505
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v17

    .line 2507
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/LinkagePager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2508
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/LinkagePager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2510
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2511
    .local v11, "firstItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2512
    .local v12, "lastItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v2, v11, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-eqz v2, :cond_2

    .line 2513
    iget v2, v11, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2515
    :cond_2
    iget v2, v12, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2516
    iget v2, v12, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2519
    :cond_3
    cmpg-float v2, v16, v13

    if-gez v2, :cond_5

    .line 2520
    move/from16 v16, v13

    .line 2525
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2526
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 2527
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/view/LinkagePager;->pageScrolled(I)Z

    .line 2530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2531
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/view/LinkagePager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2533
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2534
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 2521
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_5
    cmpl-float v2, v16, v15

    if-lez v2, :cond_4

    .line 2522
    move/from16 v16, v15

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2909
    new-instance v0, Landroid/support/v4/view/LinkagePager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/LinkagePager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2924
    new-instance v0, Landroid/support/v4/view/LinkagePager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/LinkagePager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2914
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 727
    iget v2, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 728
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/LinkagePager$LayoutParams;

    iget v1, v2, Landroid/support/v4/view/LinkagePager$LayoutParams;->childIndex:I

    .line 729
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 727
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1437
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1438
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1439
    :cond_0
    const/4 v1, 0x0

    .line 1443
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1441
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1443
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1427
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1428
    .local v1, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1432
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_1
    return-object v1

    .line 1426
    .restart local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1432
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Landroid/support/v4/view/LinkagePager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1448
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1449
    .local v1, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v2, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1453
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_1
    return-object v1

    .line 1447
    .restart local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1453
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 351
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/LinkagePager;->setWillNotDraw(Z)V

    .line 352
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Landroid/support/v4/view/LinkagePager;->setDescendantFocusability(I)V

    .line 353
    invoke-virtual {p0, v5}, Landroid/support/v4/view/LinkagePager;->setFocusable(Z)V

    .line 354
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Landroid/support/v4/view/LinkagePager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    .line 356
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 357
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 359
    .local v2, "density":F
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    .line 360
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mMinimumVelocity:I

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mMaximumVelocity:I

    .line 362
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/LinkagePager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 363
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/LinkagePager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 365
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mFlingDistance:I

    .line 366
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mCloseEnough:I

    .line 367
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mDefaultGutterSize:I

    .line 369
    new-instance v3, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/LinkagePager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 371
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 377
    :cond_0
    new-instance v3, Landroid/support/v4/view/LinkagePager$4;

    invoke-direct {v3, p0}, Landroid/support/v4/view/LinkagePager$4;-><init>(Landroid/support/v4/view/LinkagePager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 425
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2547
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1458
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    .line 1460
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 438
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 439
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2374
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2377
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2378
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v10

    .line 2379
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v11

    .line 2381
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2382
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2383
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 2384
    .local v3, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v8, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    .line 2385
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2386
    .local v4, "itemCount":I
    iget v2, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 2387
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/LinkagePager$ItemInfo;

    iget v6, v13, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 2388
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2389
    :goto_1
    iget v13, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2390
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    goto :goto_1

    .line 2394
    :cond_0
    iget v13, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2395
    iget v13, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    iget v14, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2396
    .local v1, "drawAt":F
    iget v13, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    iget v14, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2403
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2404
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/LinkagePager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2409
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2414
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2398
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v13, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2399
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2400
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2388
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1940
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    .line 1943
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->resetTouch()Z

    .line 1944
    const/4 v0, 0x0

    .line 2065
    :goto_0
    return v0

    .line 1949
    :cond_1
    if-eqz v6, :cond_3

    .line 1950
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    .line 1952
    const/4 v0, 0x1

    goto :goto_0

    .line 1954
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_3

    .line 1956
    const/4 v0, 0x0

    goto :goto_0

    .line 1960
    :cond_3
    sparse-switch v6, :sswitch_data_0

    .line 2056
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 2057
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2059
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2065
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1971
    :sswitch_0
    iget v7, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    .line 1972
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    .line 1977
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1978
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1979
    .local v10, "x":F
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1980
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1981
    .local v11, "xDiff":F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1982
    .local v12, "y":F
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1985
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/LinkagePager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 1986
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/LinkagePager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1988
    iput v10, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 1989
    iput v12, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionY:F

    .line 1990
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsUnableToDrag:Z

    .line 1991
    const/4 v0, 0x0

    goto :goto_0

    .line 1993
    :cond_6
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_9

    .line 1995
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    .line 1996
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1997
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    .line 1998
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2000
    iput v12, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionY:F

    .line 2001
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 2010
    :cond_7
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 2012
    invoke-direct {p0, v10}, Landroid/support/v4/view/LinkagePager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2013
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1998
    :cond_8
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 2002
    :cond_9
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_7

    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 2024
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mInitialMotionY:F

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mLastMotionY:F

    .line 2026
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    .line 2027
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsUnableToDrag:Z

    .line 2029
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsScrollStarted:Z

    .line 2030
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2031
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    .line 2032
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mCloseEnough:I

    if-le v0, v1, :cond_a

    .line 2034
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2035
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 2036
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    .line 2038
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2039
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    goto/16 :goto_1

    .line 2041
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/LinkagePager;->completeScroll(Z)V

    .line 2042
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 2052
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1960
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1595
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v9

    .line 1596
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1597
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1598
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v19

    .line 1599
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingTop()I

    move-result v21

    .line 1600
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v20

    .line 1601
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingBottom()I

    move-result v18

    .line 1602
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v22

    .line 1604
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1608
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1609
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1610
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1611
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1612
    .local v17, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    const/4 v6, 0x0

    .line 1613
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1614
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1615
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1616
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1617
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1619
    :pswitch_0
    move/from16 v6, v19

    .line 1634
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1636
    move/from16 v7, v21

    .line 1651
    :goto_2
    add-int v6, v6, v22

    .line 1653
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1654
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1652
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1655
    add-int/lit8 v10, v10, 0x1

    .line 1608
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1622
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1623
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1624
    goto :goto_1

    .line 1626
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1628
    goto :goto_1

    .line 1630
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1631
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1639
    :sswitch_0
    move/from16 v7, v21

    .line 1640
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1641
    goto :goto_2

    .line 1643
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1645
    goto :goto_2

    .line 1647
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1648
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1660
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1662
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1663
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1664
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1665
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1667
    .restart local v17    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1668
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1669
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1670
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1671
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1674
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager$LayoutParams;->needsMeasure:Z

    .line 1675
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1678
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1681
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1687
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1688
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1686
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1662
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1692
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mTopPageBounds:I

    .line 1693
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mBottomPageBounds:I

    .line 1694
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/LinkagePager;->mDecorChildCount:I

    .line 1696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1697
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/LinkagePager;->scrollToItem(IZIZ)V

    .line 1699
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    .line 1700
    return-void

    .line 1617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1634
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1469
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/LinkagePager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    .line 1470
    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/support/v4/view/LinkagePager;->getDefaultSize(II)I

    move-result v22

    .line 1469
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/LinkagePager;->setMeasuredDimension(II)V

    .line 1472
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getMeasuredWidth()I

    move-result v15

    .line 1473
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1474
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mGutterSize:I

    .line 1477
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1478
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1485
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v16

    .line 1486
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1487
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1488
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1489
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1490
    .local v13, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1491
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1492
    .local v11, "hgrav":I
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1493
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1494
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1495
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1496
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1498
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1499
    const/high16 v18, 0x40000000    # 2.0f

    .line 1504
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1505
    .local v19, "widthSize":I
    move v9, v4

    .line 1506
    .local v9, "heightSize":I
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1507
    const/high16 v18, 0x40000000    # 2.0f

    .line 1508
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1509
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1512
    :cond_3
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1513
    const/high16 v8, 0x40000000    # 2.0f

    .line 1514
    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1515
    iget v9, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->height:I

    .line 1518
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1519
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1520
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1522
    if-eqz v7, :cond_9

    .line 1523
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1486
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1495
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1496
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1500
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1501
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1524
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1525
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1531
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mChildWidthMeasureSpec:I

    .line 1532
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mChildHeightMeasureSpec:I

    .line 1535
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager;->mInLayout:Z

    .line 1536
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 1537
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager;->mInLayout:Z

    .line 1540
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v16

    .line 1541
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1542
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1543
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1547
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1548
    .restart local v13    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1549
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Landroid/support/v4/view/LinkagePager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1551
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1541
    .end local v13    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1555
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1771
    iget v12, p0, Landroid/support/v4/view/LinkagePager;->mDecorChildCount:I

    if-lez v12, :cond_2

    .line 1772
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v9

    .line 1773
    .local v9, "scrollX":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v7

    .line 1774
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v8

    .line 1775
    .local v8, "paddingRight":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v11

    .line 1776
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v1

    .line 1777
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 1778
    invoke-virtual {p0, v5}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1779
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1780
    .local v6, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    iget-boolean v12, v6, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_1

    .line 1777
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1782
    :cond_1
    iget v12, v6, Landroid/support/v4/view/LinkagePager$LayoutParams;->gravity:I

    and-int/lit8 v4, v12, 0x7

    .line 1783
    .local v4, "hgrav":I
    const/4 v2, 0x0

    .line 1784
    .local v2, "childLeft":I
    packed-switch v4, :pswitch_data_0

    .line 1786
    :pswitch_0
    move v2, v7

    .line 1801
    :goto_2
    add-int/2addr v2, v9

    .line 1803
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v3, v2, v12

    .line 1804
    .local v3, "childOffset":I
    if-eqz v3, :cond_0

    .line 1805
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1789
    .end local v3    # "childOffset":I
    :pswitch_1
    move v2, v7

    .line 1790
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v7, v12

    .line 1791
    goto :goto_2

    .line 1793
    :pswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1795
    goto :goto_2

    .line 1797
    :pswitch_3
    sub-int v12, v11, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v2, v12, v13

    .line 1798
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v8, v12

    goto :goto_2

    .line 1810
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childLeft":I
    .end local v4    # "hgrav":I
    .end local v5    # "i":I
    .end local v6    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    .end local v9    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    invoke-direct/range {p0 .. p3}, Landroid/support/v4/view/LinkagePager;->dispatchOnPageScrolled(IFI)V

    .line 1812
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mPageTransformer:Landroid/support/v4/view/LinkagePager$PageTransformer;

    if-eqz v12, :cond_4

    .line 1813
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v9

    .line 1814
    .restart local v9    # "scrollX":I
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v1

    .line 1815
    .restart local v1    # "childCount":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_4

    .line 1816
    invoke-virtual {p0, v5}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1817
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1819
    .restart local v6    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    iget-boolean v12, v6, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    if-eqz v12, :cond_3

    .line 1815
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1820
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v12, v9

    int-to-float v12, v12

    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v12, v13

    .line 1821
    .local v10, "transformPos":F
    iget-object v12, p0, Landroid/support/v4/view/LinkagePager;->mPageTransformer:Landroid/support/v4/view/LinkagePager$PageTransformer;

    invoke-interface {v12, v0, v10}, Landroid/support/v4/view/LinkagePager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1825
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v5    # "i":I
    .end local v6    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .end local v9    # "scrollX":I
    .end local v10    # "transformPos":F
    :cond_4
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/support/v4/view/LinkagePager;->mCalledSuper:Z

    .line 1826
    return-void

    .line 1784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2860
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v1

    .line 2861
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2862
    const/4 v6, 0x0

    .line 2863
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2864
    .local v5, "increment":I
    move v2, v1

    .line 2870
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2871
    invoke-virtual {p0, v3}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2872
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2873
    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v4

    .line 2874
    .local v4, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2875
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2876
    const/4 v7, 0x1

    .line 2881
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_2
    return v7

    .line 2866
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2867
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2868
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2870
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2881
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1372
    instance-of v1, p1, Landroid/support/v4/view/LinkagePager$SavedState;

    if-nez v1, :cond_0

    .line 1373
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1388
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1377
    check-cast v0, Landroid/support/v4/view/LinkagePager$SavedState;

    .line 1378
    .local v0, "ss":Landroid/support/v4/view/LinkagePager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/LinkagePager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1380
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1381
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/LinkagePager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/LinkagePager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1382
    iget v1, v0, Landroid/support/v4/view/LinkagePager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1384
    :cond_1
    iget v1, v0, Landroid/support/v4/view/LinkagePager$SavedState;->position:I

    iput v1, p0, Landroid/support/v4/view/LinkagePager;->mRestoredCurItem:I

    .line 1385
    iget-object v1, v0, Landroid/support/v4/view/LinkagePager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/LinkagePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1386
    iget-object v1, v0, Landroid/support/v4/view/LinkagePager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/LinkagePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1361
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1362
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/view/LinkagePager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1363
    .local v0, "ss":Landroid/support/v4/view/LinkagePager$SavedState;
    iget v2, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    iput v2, v0, Landroid/support/v4/view/LinkagePager$SavedState;->position:I

    .line 1364
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1365
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/LinkagePager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1367
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1559
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1562
    if-eq p1, p3, :cond_0

    .line 1563
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/LinkagePager;->recomputeScrollPosition(IIII)V

    .line 1565
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2070
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2074
    const/16 v24, 0x1

    .line 2194
    :goto_0
    return v24

    .line 2077
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 2080
    const/16 v24, 0x0

    goto :goto_0

    .line 2083
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 2085
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 2088
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 2089
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2091
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2093
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 2094
    .local v5, "action":I
    const/4 v11, 0x0

    .line 2096
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2191
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_6

    .line 2192
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2194
    :cond_6
    const/16 v24, 0x1

    goto :goto_0

    .line 2098
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2099
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 2103
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionY:F

    .line 2105
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    goto :goto_1

    .line 2109
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 2110
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 2111
    .local v15, "pointerIndex":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_7

    .line 2113
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->resetTouch()Z

    move-result v11

    .line 2114
    goto :goto_1

    .line 2116
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2117
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 2118
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 2119
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 2121
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_8

    cmpl-float v24, v21, v23

    if-lez v24, :cond_8

    .line 2123
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    .line 2124
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2127
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionY:F

    .line 2128
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    .line 2129
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 2132
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 2133
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_8

    .line 2134
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2139
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2141
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2143
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2144
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 2145
    goto/16 :goto_1

    .line 2125
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 2148
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2150
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2151
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2153
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 2154
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v19

    .line 2155
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v16

    .line 2156
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->infoForCurrentScrollPosition()Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v8

    .line 2157
    .local v8, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget v7, v8, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    .line 2158
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Landroid/support/v4/view/LinkagePager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2159
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    move/from16 v24, v0

    .line 2160
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2161
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2162
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2163
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Landroid/support/v4/view/LinkagePager;->determineTargetPage(IFII)I

    move-result v12

    .line 2165
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZI)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v12, v1, v2, v10}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZI)V

    .line 2169
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->resetTouch()Z

    move-result v11

    .line 2170
    goto/16 :goto_1

    .line 2173
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2174
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/LinkagePager;->scrollToItem(IZIZ)V

    .line 2175
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->resetTouch()Z

    move-result v11

    goto/16 :goto_1

    .line 2179
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    .line 2180
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2181
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    .line 2182
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2186
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/LinkagePager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2187
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mActivePointerId:I

    move/from16 v24, v0

    .line 2188
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    .line 2187
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2096
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2773
    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2774
    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/LinkagePager;->setCurrentItem(IZ)V

    .line 2777
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2781
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2782
    iget v1, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/LinkagePager;->setCurrentItem(IZ)V

    .line 2785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->populate(I)V

    .line 1017
    return-void
.end method

.method populate(I)V
    .locals 29
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 1020
    const/16 v20, 0x0

    .line 1021
    .local v20, "oldCurInfo":Landroid/support/v4/view/LinkagePager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1022
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/view/LinkagePager;->infoForPosition(I)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v20

    .line 1023
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    .line 1026
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1027
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->sortChildDrawingOrder()V

    .line 1203
    :cond_1
    :goto_0
    return-void

    .line 1035
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1037
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->sortChildDrawingOrder()V

    goto :goto_0

    .line 1044
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1050
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    move/from16 v21, v0

    .line 1051
    .local v21, "pageLimit":I
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v27, v0

    sub-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1052
    .local v25, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 1053
    .local v4, "N":I
    add-int/lit8 v26, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v27, v0

    add-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1055
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mExpectedAdapterCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v4, v0, :cond_4

    .line 1058
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 1062
    .local v23, "resName":Ljava/lang/String;
    :goto_1
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mExpectedAdapterCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Pager id: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Pager class: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1066
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Problematic adapter: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    .line 1067
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1059
    .end local v23    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1060
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 1071
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v23    # "resName":Ljava/lang/String;
    :cond_4
    const/4 v8, -0x1

    .line 1072
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 1073
    .local v9, "curItem":Landroid/support/v4/view/LinkagePager$ItemInfo;
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_5

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 1075
    .local v16, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 1076
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v9, v16

    .line 1081
    .end local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_5
    if-nez v9, :cond_6

    if-lez v4, :cond_6

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/support/v4/view/LinkagePager;->addNewItem(II)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v9

    .line 1088
    :cond_6
    if-eqz v9, :cond_9

    .line 1089
    const/4 v13, 0x0

    .line 1090
    .local v13, "extraWidthLeft":F
    add-int/lit8 v17, v8, -0x1

    .line 1091
    .local v17, "itemIndex":I
    if-ltz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    .line 1092
    .restart local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v7

    .line 1093
    .local v7, "clientWidth":I
    if-gtz v7, :cond_d

    const/16 v18, 0x0

    .line 1095
    .local v18, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    .local v22, "pos":I
    :goto_5
    if-ltz v22, :cond_7

    .line 1096
    cmpl-float v26, v13, v18

    if-ltz v26, :cond_11

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 1097
    if-nez v16, :cond_e

    .line 1123
    :cond_7
    iget v14, v9, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    .line 1124
    .local v14, "extraWidthRight":F
    add-int/lit8 v17, v8, 0x1

    .line 1125
    const/high16 v26, 0x40000000    # 2.0f

    cmpg-float v26, v14, v26

    if-gez v26, :cond_8

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    .line 1127
    :goto_6
    if-gtz v7, :cond_16

    const/16 v24, 0x0

    .line 1129
    .local v24, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, 0x1

    :goto_8
    move/from16 v0, v22

    if-ge v0, v4, :cond_8

    .line 1130
    cmpl-float v26, v14, v24

    if-ltz v26, :cond_1a

    move/from16 v0, v22

    if-le v0, v12, :cond_1a

    .line 1131
    if-nez v16, :cond_17

    .line 1156
    .end local v24    # "rightWidthNeeded":F
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v8, v1}, Landroid/support/v4/view/LinkagePager;->calculatePageOffsets(Landroid/support/v4/view/LinkagePager$ItemInfo;ILandroid/support/v4/view/LinkagePager$ItemInfo;)V

    .line 1166
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v17    # "itemIndex":I
    .end local v18    # "leftWidthNeeded":F
    .end local v22    # "pos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v28, v0

    if-eqz v9, :cond_1e

    iget-object v0, v9, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    :goto_9
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v6

    .line 1173
    .local v6, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a
    if-ge v15, v6, :cond_1f

    .line 1174
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1175
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/LinkagePager$LayoutParams;

    .line 1176
    .local v19, "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    move-object/from16 v0, v19

    iput v15, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->childIndex:I

    .line 1177
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/LinkagePager$LayoutParams;->widthFactor:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_a

    .line 1179
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v16

    .line 1180
    .restart local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    if-eqz v16, :cond_a

    .line 1181
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/LinkagePager$LayoutParams;->widthFactor:F

    .line 1182
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/LinkagePager$LayoutParams;->position:I

    .line 1173
    .end local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 1073
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v19    # "lp":Landroid/support/v4/view/LinkagePager$LayoutParams;
    .restart local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1091
    .end local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v17    # "itemIndex":I
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1093
    .restart local v7    # "clientWidth":I
    .restart local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_d
    const/high16 v26, 0x40000000    # 2.0f

    iget v0, v9, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingLeft()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    add-float v18, v26, v27

    goto/16 :goto_4

    .line 1100
    .restart local v18    # "leftWidthNeeded":F
    .restart local v22    # "pos":I
    :cond_e
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->scrolling:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1107
    add-int/lit8 v17, v17, -0x1

    .line 1108
    add-int/lit8 v8, v8, -0x1

    .line 1109
    if-ltz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    .line 1095
    :cond_f
    :goto_b
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_5

    .line 1109
    :cond_10
    const/16 v16, 0x0

    goto :goto_b

    .line 1111
    :cond_11
    if-eqz v16, :cond_13

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 1112
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v13, v13, v26

    .line 1113
    add-int/lit8 v17, v17, -0x1

    .line 1114
    if-ltz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    :goto_c
    goto :goto_b

    :cond_12
    const/16 v16, 0x0

    goto :goto_c

    .line 1116
    :cond_13
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/LinkagePager;->addNewItem(II)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v16

    .line 1117
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v13, v13, v26

    .line 1118
    add-int/lit8 v8, v8, 0x1

    .line 1119
    if-ltz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    :goto_d
    goto :goto_b

    :cond_14
    const/16 v16, 0x0

    goto :goto_d

    .line 1126
    .restart local v14    # "extraWidthRight":F
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1128
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getPaddingRight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v7

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    add-float v24, v26, v27

    goto/16 :goto_7

    .line 1134
    .restart local v24    # "rightWidthNeeded":F
    :cond_17
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->scrolling:Z

    move/from16 v26, v0

    if-nez v26, :cond_18

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    .line 1129
    :cond_18
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 1141
    :cond_19
    const/16 v16, 0x0

    goto :goto_e

    .line 1143
    :cond_1a
    if-eqz v16, :cond_1c

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1144
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v14, v14, v26

    .line 1145
    add-int/lit8 v17, v17, 0x1

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    :goto_f
    goto :goto_e

    :cond_1b
    const/16 v16, 0x0

    goto :goto_f

    .line 1148
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/LinkagePager;->addNewItem(II)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v16

    .line 1149
    add-int/lit8 v17, v17, 0x1

    .line 1150
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v14, v14, v26

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-object/from16 v16, v26

    :goto_10
    goto :goto_e

    :cond_1d
    const/16 v16, 0x0

    goto :goto_10

    .line 1166
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    .end local v17    # "itemIndex":I
    .end local v18    # "leftWidthNeeded":F
    .end local v22    # "pos":I
    .end local v24    # "rightWidthNeeded":F
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 1186
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->sortChildDrawingOrder()V

    .line 1188
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->hasFocus()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1189
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1190
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/LinkagePager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v16

    .line 1191
    .restart local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :goto_11
    if-eqz v16, :cond_20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 1192
    :cond_20
    const/4 v15, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    .line 1193
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1194
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/LinkagePager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/LinkagePager$ItemInfo;

    move-result-object v16

    .line 1195
    if-eqz v16, :cond_21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    .line 1196
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1192
    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 1190
    .end local v5    # "child":Landroid/view/View;
    .end local v16    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_22
    const/16 v16, 0x0

    goto :goto_11
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/LinkagePager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .prologue
    .line 666
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 669
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1418
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0, p1}, Landroid/support/v4/view/LinkagePager;->removeViewInLayout(Landroid/view/View;)V

    .line 1423
    :goto_0
    return-void

    .line 1421
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 460
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_1

    .line 461
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 462
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 464
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager$ItemInfo;

    .line 465
    .local v1, "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget-object v6, v1, Landroid/support/v4/view/LinkagePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "ii":Landroid/support/v4/view/LinkagePager$ItemInfo;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 468
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 469
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager;->removeNonDecorViews()V

    .line 470
    iput v7, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    .line 471
    invoke-virtual {p0, v7, v7}, Landroid/support/v4/view/LinkagePager;->scrollTo(II)V

    .line 474
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 475
    .local v2, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 476
    iput v7, p0, Landroid/support/v4/view/LinkagePager;->mExpectedAdapterCount:I

    .line 478
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_3

    .line 479
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mObserver:Landroid/support/v4/view/LinkagePager$PagerObserver;

    if-nez v4, :cond_2

    .line 480
    new-instance v4, Landroid/support/v4/view/LinkagePager$PagerObserver;

    invoke-direct {v4, p0, v8}, Landroid/support/v4/view/LinkagePager$PagerObserver;-><init>(Landroid/support/v4/view/LinkagePager;Landroid/support/v4/view/LinkagePager$1;)V

    iput-object v4, p0, Landroid/support/v4/view/LinkagePager;->mObserver:Landroid/support/v4/view/LinkagePager$PagerObserver;

    .line 482
    :cond_2
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mObserver:Landroid/support/v4/view/LinkagePager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 483
    iput-boolean v7, p0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 484
    iget-boolean v3, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    .line 485
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    .line 486
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/LinkagePager;->mExpectedAdapterCount:I

    .line 487
    iget v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 488
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Landroid/support/v4/view/LinkagePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroid/support/v4/view/LinkagePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 489
    iget v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZ)V

    .line 490
    const/4 v4, -0x1

    iput v4, p0, Landroid/support/v4/view/LinkagePager;->mRestoredCurItem:I

    .line 491
    iput-object v8, p0, Landroid/support/v4/view/LinkagePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 492
    iput-object v8, p0, Landroid/support/v4/view/LinkagePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 500
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapterChangeListener:Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 501
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mAdapterChangeListener:Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 503
    :cond_4
    return-void

    .line 493
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 494
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    goto :goto_1

    .line 496
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 708
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 709
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 711
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/LinkagePager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    :cond_1
    :goto_1
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 719
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 541
    iput-boolean v1, p0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 542
    iget-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZ)V

    .line 543
    return-void

    :cond_0
    move v0, v1

    .line 542
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Landroid/support/v4/view/LinkagePager;->mPopulatePending:Z

    .line 553
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZ)V

    .line 554
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/LinkagePager;->setCurrentItemInternal(IZZI)V

    .line 562
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 565
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 566
    :cond_0
    invoke-direct {p0, v4}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 602
    :goto_0
    return-void

    .line 569
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    invoke-direct {p0, v4}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 574
    :cond_2
    if-gez p1, :cond_5

    .line 575
    const/4 p1, 0x0

    .line 579
    :cond_3
    :goto_1
    iget v2, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    .line 580
    .local v2, "pageLimit":I
    iget v3, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 584
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 585
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/LinkagePager$ItemInfo;

    iput-boolean v0, v3, Landroid/support/v4/view/LinkagePager$ItemInfo;->scrolling:Z

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 576
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 577
    iget-object v3, p0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 588
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    if-eq v3, p1, :cond_8

    .line 590
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Landroid/support/v4/view/LinkagePager;->mFirstLayout:Z

    if-eqz v3, :cond_9

    .line 593
    iput p1, p0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    .line 594
    if-eqz v0, :cond_7

    .line 595
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager;->dispatchOnPageSelected(I)V

    .line 597
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->requestLayout()V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_8
    move v0, v4

    .line 588
    goto :goto_3

    .line 599
    .restart local v0    # "dispatchSelected":Z
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/view/LinkagePager;->populate(I)V

    .line 600
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/support/v4/view/LinkagePager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/LinkagePager$OnPageChangeListener;)Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .prologue
    .line 739
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .line 740
    .local v0, "oldListener":Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager;->mInternalPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .line 741
    return-object v0
.end method

.method public setLinkagePager(Landroid/support/v4/view/LinkagePager;)V
    .locals 0
    .param p1, "linkagePager"    # Landroid/support/v4/view/LinkagePager;

    .prologue
    .line 428
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager;->linkagePager:Landroid/support/v4/view/LinkagePager;

    .line 429
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 773
    if-ge p1, v3, :cond_0

    .line 774
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 p1, 0x1

    .line 778
    :cond_0
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 779
    iput p1, p0, Landroid/support/v4/view/LinkagePager;->mOffscreenPageLimit:I

    .line 780
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 782
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;

    .prologue
    .line 526
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager;->mAdapterChangeListener:Landroid/support/v4/view/LinkagePager$OnAdapterChangeListener;

    .line 527
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/LinkagePager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/LinkagePager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 639
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager;->mOnPageChangeListener:Landroid/support/v4/view/LinkagePager$OnPageChangeListener;

    .line 640
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 793
    iget v0, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    .line 794
    .local v0, "oldMargin":I
    iput p1, p0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    .line 796
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v1

    .line 797
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/LinkagePager;->recomputeScrollPosition(IIII)V

    .line 799
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->requestLayout()V

    .line 800
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 829
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 817
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 818
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->refreshDrawableState()V

    .line 819
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->setWillNotDraw(Z)V

    .line 820
    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->invalidate()V

    .line 821
    return-void

    .line 819
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/LinkagePager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroid/support/v4/view/LinkagePager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 693
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 694
    if-eqz p2, :cond_2

    move v0, v2

    .line 695
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Landroid/support/v4/view/LinkagePager;->mPageTransformer:Landroid/support/v4/view/LinkagePager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 696
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Landroid/support/v4/view/LinkagePager;->mPageTransformer:Landroid/support/v4/view/LinkagePager$PageTransformer;

    .line 697
    invoke-virtual {p0, v0}, Landroid/support/v4/view/LinkagePager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 698
    if-eqz v0, :cond_5

    .line 699
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrder:I

    .line 703
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 705
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 694
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 695
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 701
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Landroid/support/v4/view/LinkagePager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/LinkagePager;->smoothScrollTo(III)V

    .line 864
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 874
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 876
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 929
    :goto_0
    return-void

    .line 881
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v12, 0x1

    .line 882
    .local v12, "wasScrolling":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 887
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/LinkagePager;->mIsScrollStarted:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 889
    .local v2, "sx":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 890
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 894
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollY()I

    move-result v3

    .line 895
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 896
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 897
    .local v5, "dy":I
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 898
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->completeScroll(Z)V

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 900
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    goto :goto_0

    .line 881
    .end local v2    # "sx":I
    .end local v3    # "sy":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v12    # "wasScrolling":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 887
    .restart local v12    # "wasScrolling":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    goto :goto_2

    .line 892
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getScrollX()I

    move-result v2

    .restart local v2    # "sx":I
    goto :goto_3

    .line 904
    .restart local v3    # "sy":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollingCacheEnabled(Z)V

    .line 905
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/LinkagePager;->setScrollState(I)V

    .line 907
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/LinkagePager;->getClientWidth()I

    move-result v13

    .line 908
    .local v13, "width":I
    div-int/lit8 v9, v13, 0x2

    .line 909
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    int-to-float v15, v13

    div-float/2addr v14, v15

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 910
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v14, v9

    .line 911
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/LinkagePager;->distanceInfluenceForSnapDuration(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v7, v1, v14

    .line 914
    .local v7, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 915
    if-lez p3, :cond_5

    .line 916
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v14, v0

    div-float v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 922
    .local v6, "duration":I
    :goto_4
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 926
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/LinkagePager;->mIsScrollStarted:Z

    .line 927
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/LinkagePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 928
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 918
    .end local v6    # "duration":I
    :cond_5
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/LinkagePager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/LinkagePager;->mCurItem:I

    invoke-virtual {v14, v15}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v14

    mul-float v11, v1, v14

    .line 919
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/LinkagePager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    div-float v10, v1, v14

    .line 920
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v1, v14

    float-to-int v6, v1

    .restart local v6    # "duration":I
    goto :goto_4
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/LinkagePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
