.class public Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_player/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerGestureListener"
.end annotation


# instance fields
.field private firstTouch:Z

.field final synthetic this$0:Lcom/jieli/jl_player/PlayerManager;

.field private toSeek:Z

.field private volumeControl:Z


# direct methods
.method public constructor <init>(Lcom/jieli/jl_player/PlayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v0}, Lcom/jieli/jl_player/PlayerManager;->access$400(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->toggleAspectRatio()I

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->firstTouch:Z

    .line 551
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "mOldX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 560
    .local v3, "mOldY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v3, v5

    .line 561
    .local v1, "deltaY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v2, v5

    .line 562
    .local v0, "deltaX":F
    iget-boolean v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->firstTouch:Z

    if-eqz v5, :cond_0

    .line 563
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->toSeek:Z

    .line 564
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v5}, Lcom/jieli/jl_player/PlayerManager;->access$500(Lcom/jieli/jl_player/PlayerManager;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v5, v8

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    :goto_1
    iput-boolean v6, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->volumeControl:Z

    .line 565
    iput-boolean v7, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->firstTouch:Z

    .line 568
    :cond_0
    iget-boolean v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->toSeek:Z

    if-eqz v5, :cond_4

    .line 569
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v5}, Lcom/jieli/jl_player/PlayerManager;->access$600(Lcom/jieli/jl_player/PlayerManager;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 570
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    neg-float v6, v0

    iget-object v7, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v7}, Lcom/jieli/jl_player/PlayerManager;->access$400(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/jieli/jl_player/PlayerManager;->access$700(Lcom/jieli/jl_player/PlayerManager;F)V

    .line 581
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    return v5

    :cond_2
    move v5, v7

    .line 563
    goto :goto_0

    :cond_3
    move v6, v7

    .line 564
    goto :goto_1

    .line 573
    :cond_4
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v5}, Lcom/jieli/jl_player/PlayerManager;->access$400(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v4, v1, v5

    .line 574
    .local v4, "percent":F
    iget-boolean v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->volumeControl:Z

    if-eqz v5, :cond_5

    .line 575
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v5, v4}, Lcom/jieli/jl_player/PlayerManager;->access$800(Lcom/jieli/jl_player/PlayerManager;F)V

    goto :goto_2

    .line 577
    :cond_5
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v5, v4}, Lcom/jieli/jl_player/PlayerManager;->access$900(Lcom/jieli/jl_player/PlayerManager;F)V

    goto :goto_2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method
