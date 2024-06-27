.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDetectionFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1598
    const-string v7, "ggppptime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7ebf\u7a0b-DetectionFace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1602
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1605
    :cond_1
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1608
    :cond_2
    sget-object v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v7}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v7

    if-eq v7, v14, :cond_3

    .line 1609
    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 1613
    :cond_3
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1614
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1615
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 1616
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v8

    const/16 v9, 0xb

    invoke-static {v7, v8, v9}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 1630
    :goto_1
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7, v13}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 1632
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1637
    .local v2, "l":J
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v7

    iget-wide v8, v7, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v8, v9}, Lcom/opencv/openCVJni;->DeteFaceAndPlam(J)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "__data":Ljava/lang/String;
    const-string v7, "ggppptime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8017\u65f6: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    if-eqz v0, :cond_0

    .line 1652
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1653
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1655
    const-string v7, "---"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1656
    .local v4, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_8

    .line 1657
    aget-object v7, v4, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1659
    .local v5, "point":[Ljava/lang/String;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1660
    .local v6, "rect":Landroid/graphics/Rect;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    aget-object v9, v5, v13

    .line 1661
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v10}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    aget-object v10, v5, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x3

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 1660
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1662
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-static {v7, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1663
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1664
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const-string v8, "G"

    invoke-static {v7, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1665
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Rect;)V

    .line 1656
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1621
    .end local v0    # "__data":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "l":J
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "point":[Ljava/lang/String;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_4
    const-class v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    monitor-enter v8

    .line 1622
    :try_start_0
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v10, v10, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->temp_yuv420:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v12, v12, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    array-length v12, v12

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1623
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->temp_yuv420:[B

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v9

    iget-object v10, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v10}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v7, v8, v9, v10, v11}, Lcom/utility/MatUtil;->getMat([BIIJ)V

    goto/16 :goto_1

    .line 1623
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1671
    .restart local v0    # "__data":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "l":J
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v5    # "point":[Ljava/lang/String;
    .restart local v6    # "rect":Landroid/graphics/Rect;
    :cond_5
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1672
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1675
    :cond_6
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v14, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 1682
    .end local v1    # "i":I
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "point":[Ljava/lang/String;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_7
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0xb4

    invoke-virtual {v7, v14, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1683
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v13, v13, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_8
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11$1;

    invoke-direct {v8, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;)V

    invoke-virtual {v7, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1701
    .end local v0    # "__data":Ljava/lang/String;
    .end local v2    # "l":J
    :cond_9
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1703
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11$2;

    invoke-direct {v8, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;)V

    invoke-virtual {v7, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1709
    return-void
.end method
