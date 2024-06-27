.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sItemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveButton:I

.field private final mActiveItemMaxWidth:I

.field private final mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

.field private mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private final mInactiveItemMaxWidth:I

.field private final mInactiveItemMinWidth:I

.field private mItemBackgroundRes:I

.field private final mItemHeight:I

.field private mItemIconTint:Landroid/content/res/ColorStateList;

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private mShiftingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    .line 68
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    .line 71
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    .line 73
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    .line 75
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 78
    new-instance v1, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;

    invoke-direct {v1}, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    .line 83
    :goto_0
    new-instance v1, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {v1, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    return-void

    .line 80
    :cond_0
    new-instance v1, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    invoke-direct {v1}, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->activateNewButton(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method private activateNewButton(I)V
    .locals 4
    .param p1, "newButton"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    if-ne v0, p1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    invoke-virtual {v0, p0}, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 269
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 270
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 271
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 272
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 274
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    goto :goto_0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .locals 2

    .prologue
    .line 278
    sget-object v1, Landroid/support/design/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 279
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 282
    .restart local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 225
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v3, :cond_0

    .line 226
    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v7, v6

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v2, v6, v3

    .line 227
    .local v2, "item":Landroid/support/design/internal/BottomNavigationItemView;
    sget-object v8, Landroid/support/design/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v8, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 231
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    new-array v3, v3, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 232
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v6, 0x3

    if-le v3, v6, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 234
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 235
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 236
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 237
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 238
    .local v0, "child":Landroid/support/design/internal/BottomNavigationItemView;
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v0, v3, v1

    .line 239
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 240
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 241
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 242
    iget-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 243
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3, v5}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 245
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "child":Landroid/support/design/internal/BottomNavigationItemView;
    .end local v1    # "i":I
    :cond_1
    move v3, v5

    .line 232
    goto :goto_1

    .line 248
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 97
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    if-le v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    .line 161
    .local v1, "count":I
    sub-int v5, p4, p2

    .line 162
    .local v5, "width":I
    sub-int v2, p5, p3

    .line 163
    .local v2, "height":I
    const/4 v4, 0x0

    .line 164
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 165
    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 164
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 170
    sub-int v6, v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    invoke-virtual {v0, v6, v8, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 174
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v4, v8, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 176
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 106
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v9

    .line 108
    .local v9, "count":I
    const/4 v6, 0x0

    .line 109
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 111
    .local v11, "heightSpec":I
    new-array v8, v9, [I

    .line 112
    .local v8, "childWidths":[I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 113
    add-int/lit8 v13, v9, -0x1

    .line 114
    .local v13, "inactiveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    move/from16 v20, v0

    mul-int v20, v20, v13

    sub-int v3, v19, v20

    .line 115
    .local v3, "activeMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 116
    .local v4, "activeWidth":I
    sub-int v20, v19, v4

    div-int v14, v20, v13

    .line 117
    .local v14, "inactiveMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 118
    .local v15, "inactiveWidth":I
    sub-int v20, v19, v4

    mul-int v21, v15, v13

    sub-int v10, v20, v21

    .line 119
    .local v10, "extra":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v12, v0, :cond_1

    move/from16 v20, v4

    :goto_1
    aput v20, v8, v12

    .line 121
    if-lez v10, :cond_0

    .line 122
    aget v20, v8, v12

    add-int/lit8 v20, v20, 0x1

    aput v20, v8, v12

    .line 123
    add-int/lit8 v10, v10, -0x1

    .line 119
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move/from16 v20, v15

    .line 120
    goto :goto_1

    .line 127
    .end local v3    # "activeMaxAvailable":I
    .end local v4    # "activeWidth":I
    .end local v10    # "extra":I
    .end local v12    # "i":I
    .end local v13    # "inactiveCount":I
    .end local v14    # "inactiveMaxAvailable":I
    .end local v15    # "inactiveWidth":I
    :cond_2
    div-int v16, v19, v9

    .line 128
    .local v16, "maxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 129
    .local v7, "childWidth":I
    mul-int v20, v7, v9

    sub-int v10, v19, v20

    .line 130
    .restart local v10    # "extra":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    if-ge v12, v9, :cond_4

    .line 131
    aput v7, v8, v12

    .line 132
    if-lez v10, :cond_3

    .line 133
    aget v20, v8, v12

    add-int/lit8 v20, v20, 0x1

    aput v20, v8, v12

    .line 134
    add-int/lit8 v10, v10, -0x1

    .line 130
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 139
    .end local v7    # "childWidth":I
    .end local v16    # "maxAvailable":I
    :cond_4
    const/16 v18, 0x0

    .line 140
    .local v18, "totalWidth":I
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_6

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 142
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 140
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 145
    :cond_5
    aget v20, v8, v12

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0, v11}, Landroid/view/View;->measure(II)V

    .line 147
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 148
    .local v17, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v18, v18, v20

    goto :goto_4

    .line 151
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/high16 v20, 0x40000000    # 2.0f

    .line 153
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    .line 152
    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    move/from16 v21, v0

    const/16 v22, 0x0

    .line 154
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v11, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v21

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    .line 185
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_1

    .line 189
    :cond_0
    return-void

    .line 186
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 187
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setItemBackgroundRes(I)V
    .locals 4
    .param p1, "background"    # I

    .prologue
    .line 209
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    .line 210
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 212
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 197
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 198
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_1

    .line 202
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 200
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/design/internal/BottomNavigationPresenter;

    .prologue
    .line 221
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 222
    return-void
.end method

.method public updateMenuView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 252
    .local v1, "menuSize":I
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 254
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    .line 262
    :cond_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 258
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 259
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v3, v2, v0

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 260
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
