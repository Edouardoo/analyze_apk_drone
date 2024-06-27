.class public Lcom/videooperate/view/MusicButton;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "MusicButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/view/MusicButton$MusicAnim;
    }
.end annotation


# static fields
.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_STOP:I = 0x3


# instance fields
.field private angle:F

.field private angle2:F

.field private musicAnim:Lcom/videooperate/view/MusicButton$MusicAnim;

.field public state:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/videooperate/view/MusicButton;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/videooperate/view/MusicButton;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/videooperate/view/MusicButton;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/videooperate/view/MusicButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/view/MusicButton;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/videooperate/view/MusicButton;->angle:F

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/videooperate/view/MusicButton;->state:I

    .line 45
    iput v1, p0, Lcom/videooperate/view/MusicButton;->angle:F

    .line 46
    iput v1, p0, Lcom/videooperate/view/MusicButton;->angle2:F

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    iget v0, p0, Lcom/videooperate/view/MusicButton;->angle2:F

    iget v1, p0, Lcom/videooperate/view/MusicButton;->viewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/videooperate/view/MusicButton;->viewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 59
    return-void
.end method

.method public declared-synchronized playMusic()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 80
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/videooperate/view/MusicButton;->state:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/videooperate/view/MusicButton;->stopMusic()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Lcom/videooperate/view/MusicButton$MusicAnim;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/videooperate/view/MusicButton;->viewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget v1, p0, Lcom/videooperate/view/MusicButton;->viewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/videooperate/view/MusicButton$MusicAnim;-><init>(Lcom/videooperate/view/MusicButton;FFFF)V

    iput-object v0, p0, Lcom/videooperate/view/MusicButton;->musicAnim:Lcom/videooperate/view/MusicButton$MusicAnim;

    .line 88
    iget-object v0, p0, Lcom/videooperate/view/MusicButton;->musicAnim:Lcom/videooperate/view/MusicButton$MusicAnim;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/videooperate/view/MusicButton$MusicAnim;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/videooperate/view/MusicButton;->musicAnim:Lcom/videooperate/view/MusicButton$MusicAnim;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/videooperate/view/MusicButton$MusicAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    iget-object v0, p0, Lcom/videooperate/view/MusicButton;->musicAnim:Lcom/videooperate/view/MusicButton$MusicAnim;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/videooperate/view/MusicButton$MusicAnim;->setRepeatCount(I)V

    .line 91
    iget-object v0, p0, Lcom/videooperate/view/MusicButton;->musicAnim:Lcom/videooperate/view/MusicButton$MusicAnim;

    invoke-virtual {p0, v0}, Lcom/videooperate/view/MusicButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/videooperate/view/MusicButton;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setViewWidthAndHeight(II)V
    .locals 0
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/videooperate/view/MusicButton;->viewWidth:I

    .line 53
    iput p2, p0, Lcom/videooperate/view/MusicButton;->viewHeight:I

    .line 54
    return-void
.end method

.method public declared-synchronized stopMusic()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/videooperate/view/MusicButton;->angle2:F

    .line 98
    invoke-virtual {p0}, Lcom/videooperate/view/MusicButton;->clearAnimation()V

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/videooperate/view/MusicButton;->state:I

    .line 100
    invoke-virtual {p0}, Lcom/videooperate/view/MusicButton;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
