.class Lcom/fh/lib/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static mDisplay:Landroid/view/Display;

.field protected static mHeight:F

.field protected static mSensorManager:Landroid/hardware/SensorManager;

.field protected static mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 528
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 529
    invoke-virtual {p0}, Lcom/fh/lib/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 531
    invoke-virtual {p0, v1}, Lcom/fh/lib/SDLSurface;->setFocusable(Z)V

    .line 532
    invoke-virtual {p0, v1}, Lcom/fh/lib/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/fh/lib/SDLSurface;->requestFocus()Z

    .line 535
    invoke-virtual {p0, p0}, Lcom/fh/lib/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 537
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcom/fh/lib/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 538
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 540
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 541
    new-instance v0, Lcom/fh/lib/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lcom/fh/lib/SDLGenericMotionListener_API12;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fh/lib/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 545
    :cond_0
    sput v2, Lcom/fh/lib/SDLSurface;->mWidth:F

    .line 546
    sput v2, Lcom/fh/lib/SDLSurface;->mHeight:F

    .line 547
    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .locals 4
    .param p1, "sensortype"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 751
    if-eqz p2, :cond_0

    .line 752
    sget-object v0, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    sget-object v0, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/fh/lib/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 762
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 661
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 672
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x401

    if-nez v1, :cond_0

    .line 674
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x201

    if-eqz v1, :cond_3

    .line 675
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 676
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1, p2}, Lcom/fh/lib/SDLActivity;->onNativePadDown(II)I

    move-result v1

    if-nez v1, :cond_3

    .line 698
    :cond_1
    :goto_0
    return v0

    .line 679
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 680
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1, p2}, Lcom/fh/lib/SDLActivity;->onNativePadUp(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x101

    if-eqz v1, :cond_5

    .line 687
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 689
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_0

    .line 691
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 693
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 698
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v6, 0x411ce80a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 766
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 768
    sget-object v2, Lcom/fh/lib/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 782
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 783
    .local v0, "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 786
    .local v1, "y":F
    :goto_0
    neg-float v2, v0

    div-float/2addr v2, v6

    div-float v3, v1, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    div-float/2addr v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/fh/lib/SDLActivity;->onNativeAccel(FFF)V

    .line 789
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void

    .line 770
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 771
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v4

    .line 772
    .restart local v1    # "y":F
    goto :goto_0

    .line 774
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 775
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 776
    .restart local v1    # "y":F
    goto :goto_0

    .line 778
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 779
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 780
    .restart local v1    # "y":F
    goto :goto_0

    .line 768
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 705
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 706
    .local v0, "touchDevId":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 707
    .local v7, "pointerCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 709
    .local v2, "action":I
    const/4 v6, -0x1

    .line 712
    .local v6, "i":I
    packed-switch v2, :pswitch_data_0

    .line 745
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v8, 0x1

    return v8

    .line 714
    :pswitch_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 715
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 716
    .local v1, "pointerFingerId":I
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mWidth:F

    div-float v3, v8, v9

    .line 717
    .local v3, "x":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mHeight:F

    div-float v4, v8, v9

    .line 718
    .local v4, "y":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    .line 719
    .local v5, "p":F
    invoke-static/range {v0 .. v5}, Lcom/fh/lib/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 714
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 726
    .end local v1    # "pointerFingerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "p":F
    :pswitch_2
    const/4 v6, 0x0

    .line 730
    :pswitch_3
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 731
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 734
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 735
    .restart local v1    # "pointerFingerId":I
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mWidth:F

    div-float v3, v8, v9

    .line 736
    .restart local v3    # "x":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mHeight:F

    div-float v4, v8, v9

    .line 737
    .restart local v4    # "y":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    .line 738
    .restart local v5    # "p":F
    invoke-static/range {v0 .. v5}, Lcom/fh/lib/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v4, 0x1

    .line 573
    const-string v1, "SDL"

    const-string v2, "surfaceChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const v0, 0x15151002

    .line 576
    .local v0, "sdlFormat":I
    packed-switch p2, :pswitch_data_0

    .line 616
    :pswitch_0
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pixel format unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    int-to-float v1, p3

    sput v1, Lcom/fh/lib/SDLSurface;->mWidth:F

    .line 621
    int-to-float v1, p4

    sput v1, Lcom/fh/lib/SDLSurface;->mHeight:F

    .line 622
    invoke-static {p3, p4, v0}, Lcom/fh/lib/SDLActivity;->onNativeResize(III)V

    .line 623
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    sput-boolean v4, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    .line 627
    invoke-static {}, Lcom/fh/lib/SDLActivity;->onNativeSurfaceChanged()V

    .line 629
    sget-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fh/lib/SDLMain;

    invoke-direct {v2}, Lcom/fh/lib/SDLMain;-><init>()V

    const-string v3, "SDLThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 635
    invoke-virtual {p0, v4, v4}, Lcom/fh/lib/SDLSurface;->enableSensor(IZ)V

    .line 636
    sget-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 639
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fh/lib/SDLSurface$1;

    invoke-direct {v2, p0}, Lcom/fh/lib/SDLSurface$1;-><init>(Lcom/fh/lib/SDLSurface;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 654
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 656
    :cond_0
    return-void

    .line 578
    :pswitch_1
    const-string v1, "SDL"

    const-string v2, "pixel format A_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :pswitch_2
    const-string v1, "SDL"

    const-string v2, "pixel format LA_88"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    :pswitch_3
    const-string v1, "SDL"

    const-string v2, "pixel format L_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :pswitch_4
    const-string v1, "SDL"

    const-string v2, "pixel format RGBA_4444"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const v0, 0x15421002

    .line 589
    goto :goto_0

    .line 591
    :pswitch_5
    const-string v1, "SDL"

    const-string v2, "pixel format RGBA_5551"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const v0, 0x15441002

    .line 593
    goto/16 :goto_0

    .line 595
    :pswitch_6
    const-string v1, "SDL"

    const-string v2, "pixel format RGBA_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const v0, 0x16462004

    .line 597
    goto/16 :goto_0

    .line 599
    :pswitch_7
    const-string v1, "SDL"

    const-string v2, "pixel format RGBX_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const v0, 0x16261804

    .line 601
    goto/16 :goto_0

    .line 603
    :pswitch_8
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_332"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const v0, 0x14110801

    .line 605
    goto/16 :goto_0

    .line 607
    :pswitch_9
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_565"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const v0, 0x15151002

    .line 609
    goto/16 :goto_0

    .line 611
    :pswitch_a
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const v0, 0x16161804

    .line 614
    goto/16 :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 556
    const-string v0, "SDL"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 558
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 563
    const-string v0, "SDL"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handlePause()V

    .line 566
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    .line 567
    invoke-static {}, Lcom/fh/lib/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 568
    return-void
.end method
