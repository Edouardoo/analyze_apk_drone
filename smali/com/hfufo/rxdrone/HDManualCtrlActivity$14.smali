.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDetectionHand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final YEAH_MAX:I

.field okCount:I

.field palmCount:I

.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

.field yeahCount:I


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    const/4 v0, 0x0

    .line 1827
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1828
    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1829
    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    .line 1830
    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1831
    const/4 v0, 0x3

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->YEAH_MAX:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 1835
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ebf\u7a0b-DetectionHand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1837
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    :cond_2
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    if-ne v0, v12, :cond_3

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1844
    :cond_3
    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1845
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto :goto_0

    .line 1862
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1865
    .local v10, "l":J
    :try_start_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1866
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureDetect(Landroid/graphics/Bitmap;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    :goto_1
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8017\u65f6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1891
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 1892
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;

    .line 1906
    .local v7, "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1907
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1909
    :cond_5
    iget v0, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1997
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1998
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1999
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    .line 2017
    .end local v7    # "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :goto_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$1;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2024
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 1870
    :cond_6
    :try_start_1
    const-class v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1871
    :try_start_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->temp_yuv420:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    array-length v5, v5

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1872
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1874
    :try_start_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->temp_yuv420:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureDetect([BIIILjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1883
    :catch_0
    move-exception v6

    .line 1884
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1872
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1912
    .restart local v7    # "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :pswitch_0
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1913
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1914
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    goto :goto_2

    .line 1917
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v2, v2, v9

    iget v2, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v4, v4, v12

    iget v4, v4, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1919
    const-string v0, "startDetectionHand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###startDetectionHand###PALM ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1922
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Rect;)V

    .line 1924
    :cond_7
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    if-le v0, v13, :cond_8

    .line 1925
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1926
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1927
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "gesture_takevideo"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1929
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1930
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1936
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_3
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1937
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    .line 1938
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    goto/16 :goto_2

    .line 1932
    :cond_9
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 1942
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v2, v2, v9

    iget v2, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 1943
    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v4, v4, v12

    iget v4, v4, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1942
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1945
    const-string v0, "startDetectionHand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###startDetectionHand###PALM ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1948
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Rect;)V

    .line 1950
    :cond_a
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    if-le v0, v13, :cond_b

    .line 1951
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1952
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1953
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "gesture_takevideo"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1955
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    .line 1956
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1962
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_b
    :goto_4
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    .line 1963
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1964
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    goto/16 :goto_2

    .line 1958
    :cond_c
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 1968
    :pswitch_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1969
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1971
    :cond_d
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1972
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v2, v2, v9

    iget v2, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v4, v4, v12

    iget v4, v4, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1973
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    if-le v0, v13, :cond_e

    .line 1974
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1975
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1976
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "gesture_take"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1978
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1979
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1985
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_e
    :goto_5
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1986
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1987
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    goto/16 :goto_2

    .line 1981
    :cond_f
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 1991
    :pswitch_4
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->yeahCount:I

    .line 1992
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->palmCount:I

    .line 1993
    iput v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->okCount:I

    goto/16 :goto_2

    .line 2004
    .end local v7    # "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :cond_10
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2006
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2008
    :cond_11
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 2028
    .end local v10    # "l":J
    :cond_12
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2030
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$2;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2036
    return-void

    .line 1909
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
