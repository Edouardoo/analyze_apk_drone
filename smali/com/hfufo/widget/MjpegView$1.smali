.class Lcom/hfufo/widget/MjpegView$1;
.super Ljava/lang/Object;
.source "MjpegView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/MjpegView;->startRecordThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/MjpegView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/MjpegView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hfufo/widget/MjpegView;->access$702(Lcom/hfufo/widget/MjpegView;Z)Z

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$900(Lcom/hfufo/widget/MjpegView$VideoThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v20

    monitor-enter v20

    .line 919
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$700(Lcom/hfufo/widget/MjpegView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 922
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$900(Lcom/hfufo/widget/MjpegView$VideoThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$1002(Lcom/hfufo/widget/MjpegView$VideoThread;Z)Z

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$900(Lcom/hfufo/widget/MjpegView$VideoThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/fh/beans/StreamInfo;

    .line 927
    .local v17, "streamInfo":Lcom/fh/beans/StreamInfo;
    new-instance v16, Lorg/opencv/core/Mat;

    invoke-direct/range {v16 .. v16}, Lorg/opencv/core/Mat;-><init>()V

    .line 929
    .local v16, "rgbMat":Lorg/opencv/core/Mat;
    invoke-virtual/range {v17 .. v17}, Lcom/fh/beans/StreamInfo;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 930
    invoke-virtual/range {v17 .. v17}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v14

    .line 932
    .local v14, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    iget-boolean v2, v2, Lcom/hfufo/widget/MjpegView$VideoThread;->filterMode:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    iget-boolean v2, v2, Lcom/hfufo/widget/MjpegView$VideoThread;->rotateMode:Z

    if-eqz v2, :cond_1

    .line 934
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    iget-object v2, v2, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    const/4 v3, 0x0

    array-length v4, v14

    .line 935
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v14, v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 934
    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    .line 935
    invoke-static {v3}, Lcom/hfufo/widget/MjpegView;->access$1100(Lcom/hfufo/widget/MjpegView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1200(Lcom/hfufo/widget/MjpegView;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    .line 936
    invoke-virtual/range {v17 .. v17}, Lcom/fh/beans/StreamInfo;->getAngle()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {v17 .. v17}, Lcom/fh/beans/StreamInfo;->getScale()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    iget-object v11, v11, Lcom/hfufo/widget/MjpegView;->mPaint2:Landroid/graphics/Paint;

    const/4 v12, 0x0

    .line 934
    invoke-static/range {v2 .. v12}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 958
    .end local v14    # "data":[B
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$1300(Lcom/hfufo/widget/MjpegView;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 971
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 988
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "rgbMat":Lorg/opencv/core/Mat;
    .end local v17    # "streamInfo":Lcom/fh/beans/StreamInfo;
    .end local v18    # "start":J
    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 941
    .restart local v14    # "data":[B
    .restart local v16    # "rgbMat":Lorg/opencv/core/Mat;
    .restart local v17    # "streamInfo":Lcom/fh/beans/StreamInfo;
    .restart local v18    # "start":J
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    array-length v3, v14

    .line 942
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 941
    invoke-static {v14, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    .line 942
    invoke-static {v3}, Lcom/hfufo/widget/MjpegView;->access$1100(Lcom/hfufo/widget/MjpegView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1200(Lcom/hfufo/widget/MjpegView;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    iget-object v11, v11, Lcom/hfufo/widget/MjpegView;->mPaint2:Landroid/graphics/Paint;

    const/4 v12, 0x0

    .line 941
    invoke-static/range {v2 .. v12}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 947
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "data":[B
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/fh/beans/StreamInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 949
    invoke-virtual/range {v17 .. v17}, Lcom/fh/beans/StreamInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 954
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$1100(Lcom/hfufo/widget/MjpegView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v3}, Lcom/hfufo/widget/MjpegView;->access$1200(Lcom/hfufo/widget/MjpegView;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 976
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "rgbMat":Lorg/opencv/core/Mat;
    .end local v17    # "streamInfo":Lcom/fh/beans/StreamInfo;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$1002(Lcom/hfufo/widget/MjpegView$VideoThread;Z)Z

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$1;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView;->access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;

    move-result-object v2

    invoke-static {v2}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$900(Lcom/hfufo/widget/MjpegView$VideoThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 978
    :catch_0
    move-exception v15

    .line 979
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 988
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v18    # "start":J
    :cond_5
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 989
    return-void
.end method
