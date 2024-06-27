.class Lcom/hfufo/rxdrone/ManualCtrlActivity$15;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->startDetectionFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 2327
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2330
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2332
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2333
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 2336
    :cond_1
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v5

    if-eq v5, v11, :cond_2

    .line 2337
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 2340
    :cond_2
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v5

    if-nez v5, :cond_3

    .line 2341
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 2344
    :cond_3
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 2345
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v5, v6, v7}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 2349
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;

    move-result-object v5

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v6, v7}, Lcom/opencv/openCVJni;->DeteFaceAndPlam(J)Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, "__data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2353
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2354
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2355
    const-string v5, "Rects"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rects-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v5, "---"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2357
    .local v2, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_7

    .line 2358
    aget-object v5, v2, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2360
    .local v3, "point":[Ljava/lang/String;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2361
    .local v4, "rect":Landroid/graphics/Rect;
    aget-object v5, v3, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    aget-object v6, v3, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aget-object v7, v3, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v8, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2362
    const-string v5, "Rects"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rects--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v6, 0x4

    aget-object v6, v3, v6

    iput-object v6, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->color:Ljava/lang/String;

    .line 2365
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->color:Ljava/lang/String;

    const-string v6, "G"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2366
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v6, "G"

    iput-object v6, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 2367
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2371
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9300(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Rect;)V

    .line 2357
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2374
    :cond_4
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    const-string v6, "G"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2375
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2379
    :cond_5
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 2387
    .end local v1    # "i":I
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v3    # "point":[Ljava/lang/String;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xb4

    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2388
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRects:Ljava/util/List;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2401
    :cond_7
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v6, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$1;

    invoke-direct {v6, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$1;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$15;)V

    invoke-virtual {v5, v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2409
    .end local v0    # "__data":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2411
    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v6, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$2;

    invoke-direct {v6, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$2;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$15;)V

    invoke-virtual {v5, v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2417
    return-void
.end method
