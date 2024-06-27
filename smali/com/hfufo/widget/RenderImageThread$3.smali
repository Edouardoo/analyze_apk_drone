.class Lcom/hfufo/widget/RenderImageThread$3;
.super Ljava/lang/Object;
.source "RenderImageThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/RenderImageThread;->startProcessThread_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/RenderImageThread;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/RenderImageThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hfufo/widget/RenderImageThread;->access$102(Lcom/hfufo/widget/RenderImageThread;Z)Z

    .line 232
    const-string v2, "ggppptime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ebf\u7a0b-ProcessThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$100(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 236
    .local v16, "start":J
    sget-boolean v2, Lcom/hfufo/widget/RenderImageThread;->iSMVmode:Z

    if-eqz v2, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fh/beans/StreamInfo;

    .line 240
    .local v15, "streamInfo":Lcom/fh/beans/StreamInfo;
    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v3, v3, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v4, v4, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->getTranslateW()F

    move-result v5

    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->getTranslateH()F

    move-result v6

    .line 241
    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->getAngle()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->getScale()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v9, v9, Lcom/hfufo/widget/RenderImageThread;->widthScale:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v10, v10, Lcom/hfufo/widget/RenderImageThread;->heightScale:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget-object v11, v11, Lcom/hfufo/widget/RenderImageThread;->mPaint2:Landroid/graphics/Paint;

    const/4 v12, 0x1

    .line 240
    invoke-static/range {v2 .. v12}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoSizeByC(Landroid/graphics/Bitmap;IIFFIFFFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 245
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmapscale\u8017\u65f6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v4}, Lcom/hfufo/widget/RenderImageThread;->access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$300(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->recycleBitmap()V

    goto/16 :goto_0

    .line 249
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "streamInfo":Lcom/fh/beans/StreamInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$400(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hfufo/widget/RenderImageThread;->access$102(Lcom/hfufo/widget/RenderImageThread;Z)Z

    goto/16 :goto_0

    .line 256
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fh/beans/StreamInfo;

    .line 259
    .restart local v15    # "streamInfo":Lcom/fh/beans/StreamInfo;
    new-instance v14, Lorg/opencv/core/Mat;

    invoke-direct {v14}, Lorg/opencv/core/Mat;-><init>()V

    .line 261
    .local v14, "rgbMat":Lorg/opencv/core/Mat;
    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v14}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 263
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmapToMat\u8017\u65f6-mStreamBQueue\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v4}, Lcom/hfufo/widget/RenderImageThread;->access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$500(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v15}, Lcom/fh/beans/StreamInfo;->recycleBitmap()V

    goto/16 :goto_0

    .line 267
    .end local v14    # "rgbMat":Lorg/opencv/core/Mat;
    .end local v15    # "streamInfo":Lcom/fh/beans/StreamInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v2}, Lcom/hfufo/widget/RenderImageThread;->access$400(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/RenderImageThread$3;->this$0:Lcom/hfufo/widget/RenderImageThread;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hfufo/widget/RenderImageThread;->access$102(Lcom/hfufo/widget/RenderImageThread;Z)Z

    goto/16 :goto_0

    .line 270
    :cond_4
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 275
    .end local v16    # "start":J
    :cond_5
    return-void
.end method
