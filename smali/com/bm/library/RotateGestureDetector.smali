.class public Lcom/bm/library/RotateGestureDetector;
.super Ljava/lang/Object;
.source "RotateGestureDetector.java"


# static fields
.field private static final MAX_DEGREES_STEP:I = 0x78


# instance fields
.field private mCurrSlope:F

.field private mListener:Lcom/bm/library/OnRotateListener;

.field private mPrevSlope:F

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(Lcom/bm/library/OnRotateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/bm/library/OnRotateListener;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bm/library/RotateGestureDetector;->mListener:Lcom/bm/library/OnRotateListener;

    .line 25
    return-void
.end method

.method private caculateSlope(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/bm/library/RotateGestureDetector;->x1:F

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/bm/library/RotateGestureDetector;->y1:F

    .line 59
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/bm/library/RotateGestureDetector;->x2:F

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/bm/library/RotateGestureDetector;->y2:F

    .line 61
    iget v0, p0, Lcom/bm/library/RotateGestureDetector;->y2:F

    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->y1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->x2:F

    iget v2, p0, Lcom/bm/library/RotateGestureDetector;->x1:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 31
    .local v0, "Action":I
    packed-switch v0, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    invoke-direct {p0, p1}, Lcom/bm/library/RotateGestureDetector;->caculateSlope(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/bm/library/RotateGestureDetector;->mPrevSlope:F

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v8, 0x1

    if-le v1, v8, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/bm/library/RotateGestureDetector;->caculateSlope(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/bm/library/RotateGestureDetector;->mCurrSlope:F

    .line 40
    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->mCurrSlope:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 41
    .local v2, "currDegrees":D
    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->mPrevSlope:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 43
    .local v6, "prevDegrees":D
    sub-double v4, v2, v6

    .line 45
    .local v4, "deltaSlope":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x405e000000000000L    # 120.0

    cmpg-double v1, v8, v10

    if-gtz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/bm/library/RotateGestureDetector;->mListener:Lcom/bm/library/OnRotateListener;

    double-to-float v8, v4

    iget v9, p0, Lcom/bm/library/RotateGestureDetector;->x2:F

    iget v10, p0, Lcom/bm/library/RotateGestureDetector;->x1:F

    add-float/2addr v9, v10

    div-float/2addr v9, v12

    iget v10, p0, Lcom/bm/library/RotateGestureDetector;->y2:F

    iget v11, p0, Lcom/bm/library/RotateGestureDetector;->y1:F

    add-float/2addr v10, v11

    div-float/2addr v10, v12

    invoke-interface {v1, v8, v9, v10}, Lcom/bm/library/OnRotateListener;->onRotate(FFF)V

    .line 48
    :cond_1
    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->mCurrSlope:F

    iput v1, p0, Lcom/bm/library/RotateGestureDetector;->mPrevSlope:F

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
