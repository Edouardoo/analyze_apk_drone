.class public Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# static fields
.field public static final ROTATION_ANGLE_CW_270:I = 0x10e

.field public static final ROTATION_ANGLE_CW_90:I = 0x5a


# instance fields
.field private mIsDragging:Z

.field private mMethodSetProgressFromUser:Ljava/lang/reflect/Method;

.field private mRotationAngle:I

.field private mThumb_:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 64
    const/16 v0, 0x5a

    iput v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/16 v0, 0x5a

    iput v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    .line 73
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/16 v0, 0x5a

    iput v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method private declared-synchronized _setProgressFromUser(IZ)V
    .locals 6
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 293
    :try_start_1
    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "setProgress"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 294
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 295
    iput-object v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->refreshThumb()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 308
    :cond_1
    :try_start_5
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 305
    :catch_0
    move-exception v1

    goto :goto_1

    .line 304
    :catch_1
    move-exception v1

    goto :goto_1

    .line 303
    :catch_2
    move-exception v1

    goto :goto_1

    .line 296
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private attemptClaimDrag(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 220
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 223
    :cond_0
    return-void
.end method

.method private getWrapper()Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 396
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;

    if-eqz v1, :cond_0

    .line 397
    check-cast v0, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;

    .line 399
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 84
    if-eqz p2, :cond_1

    .line 85
    sget-object v2, Lcom/hfufo/rxdrone/R$styleable;->VerticalSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 87
    .local v1, "rotationAngle":I
    invoke-static {v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->isValidRotationAngle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iput v1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "rotationAngle":I
    :cond_1
    return-void
.end method

.method private static isValidRotationAngle(I)Z
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 404
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mIsDragging:Z

    .line 230
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mIsDragging:Z

    .line 238
    return-void
.end method

.method private onTouchEventTraditionalRotation(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 157
    goto :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setPressed(Z)V

    .line 117
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onStartTrackingTouch()V

    .line 118
    invoke-direct {p0, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 119
    invoke-direct {p0, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->attemptClaimDrag(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 124
    :pswitch_1
    iget-boolean v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 130
    :pswitch_2
    iget-boolean v2, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_2

    .line 131
    invoke-direct {p0, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 132
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onStopTrackingTouch()V

    .line 133
    invoke-virtual {p0, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setPressed(Z)V

    .line 146
    :goto_2
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onStartTrackingTouch()V

    .line 139
    invoke-direct {p0, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 140
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onStopTrackingTouch()V

    .line 141
    invoke-direct {p0, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->attemptClaimDrag(Z)V

    goto :goto_2

    .line 150
    :pswitch_3
    iget-boolean v2, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onStopTrackingTouch()V

    .line 152
    invoke-virtual {p0, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setPressed(Z)V

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onTouchEventUseViewRotation(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 163
    .local v1, "handled":Z
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 165
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 177
    .end local v0    # "action":I
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 167
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->attemptClaimDrag(Z)V

    goto :goto_0

    .line 172
    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->attemptClaimDrag(Z)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private refreshThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-super {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    invoke-super {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 385
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    .line 182
    .local v3, "paddingLeft":I
    invoke-super {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    .line 183
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getHeight()I

    move-result v1

    .line 185
    .local v1, "height":I
    sub-int v9, v1, v3

    sub-int v0, v9, v4

    .line 186
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 189
    .local v8, "y":I
    const/4 v7, 0x0

    .line 191
    .local v7, "value":F
    iget v9, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    sparse-switch v9, :sswitch_data_0

    .line 200
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-ltz v9, :cond_0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    const/4 v6, 0x0

    .line 208
    .local v6, "scale":F
    :goto_1
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMax()I

    move-result v2

    .line 209
    .local v2, "max":I
    int-to-float v9, v2

    mul-float v5, v6, v9

    .line 211
    .local v5, "progress":F
    float-to-int v9, v5

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->_setProgressFromUser(IZ)V

    .line 212
    return-void

    .line 193
    .end local v2    # "max":I
    .end local v5    # "progress":F
    .end local v6    # "scale":F
    :sswitch_0
    sub-int v9, v8, v3

    int-to-float v7, v9

    .line 194
    goto :goto_0

    .line 196
    :sswitch_1
    sub-int v9, v1, v3

    sub-int/2addr v9, v8

    int-to-float v7, v9

    goto :goto_0

    .line 202
    :cond_1
    int-to-float v9, v0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_2

    .line 203
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "scale":F
    goto :goto_1

    .line 205
    .end local v6    # "scale":F
    :cond_2
    int-to-float v9, v0

    div-float v6, v7, v9

    .restart local v6    # "scale":F
    goto :goto_1

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getRotationAngle()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget v0, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    sparse-switch v0, :sswitch_data_0

    .line 354
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 344
    :sswitch_0
    const/high16 v0, 0x42b40000    # 90.0f

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 345
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 348
    :sswitch_1
    const/high16 v0, -0x3d4c0000    # -90.0f

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 349
    invoke-super {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "direction":I
    packed-switch p1, :pswitch_data_0

    .line 260
    const/4 v1, 0x0

    .line 264
    .local v1, "handled":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getKeyProgressIncrement()I

    move-result v2

    .line 266
    .local v2, "keyProgressIncrement":I
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getProgress()I

    move-result v3

    .line 268
    .local v3, "progress":I
    mul-int v5, v0, v2

    add-int/2addr v3, v5

    .line 270
    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMax()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 271
    invoke-direct {p0, v3, v4}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->_setProgressFromUser(IZ)V

    .line 278
    .end local v0    # "direction":I
    .end local v1    # "handled":Z
    .end local v2    # "keyProgressIncrement":I
    .end local v3    # "progress":I
    :cond_0
    :goto_1
    return v4

    .line 248
    .restart local v0    # "direction":I
    :pswitch_0
    iget v6, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 249
    :goto_2
    const/4 v1, 0x1

    .line 250
    .restart local v1    # "handled":Z
    goto :goto_0

    .end local v1    # "handled":Z
    :cond_1
    move v0, v5

    .line 248
    goto :goto_2

    .line 252
    :pswitch_1
    iget v6, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_2

    move v0, v4

    .line 253
    :goto_3
    const/4 v1, 0x1

    .line 254
    .restart local v1    # "handled":Z
    goto :goto_0

    .end local v1    # "handled":Z
    :cond_2
    move v0, v5

    .line 252
    goto :goto_3

    .line 258
    :pswitch_2
    const/4 v4, 0x0

    goto :goto_1

    .line 278
    .end local v0    # "direction":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_1
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 320
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 322
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_1

    .line 323
    invoke-super {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 325
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :try_start_2
    invoke-super {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v1

    invoke-super {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onTouchEventUseViewRotation(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->onTouchEventTraditionalRotation(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 284
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->refreshThumb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_0
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRotationAngle(I)V
    .locals 4
    .param p1, "angle"    # I

    .prologue
    .line 362
    invoke-static {p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->isValidRotationAngle(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid angle specified :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    iget v1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    if-ne v1, p1, :cond_2

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    iput p1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mRotationAngle:I

    .line 372
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getWrapper()Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;

    move-result-object v0

    .line 374
    .local v0, "wrapper":Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->applyViewRotation()V

    goto :goto_0

    .line 378
    .end local v0    # "wrapper":Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;
    :cond_3
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->requestLayout()V

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->mThumb_:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method useViewRotation()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 388
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    move v1, v2

    .line 389
    .local v1, "isSupportedApiLevel":Z
    :goto_0
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->isInEditMode()Z

    move-result v0

    .line 390
    .local v0, "inEditMode":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "inEditMode":Z
    .end local v1    # "isSupportedApiLevel":Z
    :cond_0
    move v1, v3

    .line 388
    goto :goto_0

    .restart local v0    # "inEditMode":Z
    .restart local v1    # "isSupportedApiLevel":Z
    :cond_1
    move v2, v3

    .line 390
    goto :goto_1
.end method
