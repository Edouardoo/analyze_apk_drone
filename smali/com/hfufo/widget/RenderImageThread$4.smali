.class Lcom/hfufo/widget/RenderImageThread$4;
.super Ljava/lang/Object;
.source "RenderImageThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/RenderImageThread;->startProcessThread()V
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
    .line 282
    iput-object p1, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 285
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/hfufo/widget/RenderImageThread;->access$602(Lcom/hfufo/widget/RenderImageThread;Z)Z

    .line 287
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$600(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 289
    .local v4, "start":J
    sget-boolean v6, Lcom/hfufo/widget/RenderImageThread;->iSMVmode:Z

    if-eqz v6, :cond_3

    .line 290
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$300(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$300(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 293
    .local v2, "sBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 294
    .local v0, "rgbMat":Lorg/opencv/core/Mat;
    invoke-static {v2, v0}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 298
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitmapToMat\u8017\u65f6-mBitmapQueue\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v8}, Lcom/hfufo/widget/RenderImageThread;->access$300(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 305
    .end local v0    # "rgbMat":Lorg/opencv/core/Mat;
    .end local v2    # "sBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$400(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$100(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 306
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6, v12}, Lcom/hfufo/widget/RenderImageThread;->access$602(Lcom/hfufo/widget/RenderImageThread;Z)Z

    .line 307
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v6

    const-string v7, " "

    invoke-interface {v6, v12, v7}, Lcom/jieli/lib/stream/udp/IActionListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_2
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 313
    :cond_3
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$500(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 315
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$500(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Mat;

    .line 319
    .local v3, "sMat":Lorg/opencv/core/Mat;
    new-instance v0, Lorg/opencv/core/Mat;

    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v6, v6, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    iget-object v7, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v7, v7, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    sget v8, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v0, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 320
    .restart local v0    # "rgbMat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v6, v6, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    iget-object v7, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v7, v7, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    sget v8, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v1, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 321
    .local v1, "rgbMat2":Lorg/opencv/core/Mat;
    new-instance v6, Lorg/opencv/core/Size;

    iget-object v7, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v7, v7, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    int-to-double v8, v7

    iget-object v7, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iget v7, v7, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    int-to-double v10, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v3, v0, v6}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    .line 323
    invoke-static {v0, v1, v12}, Lorg/opencv/core/Core;->flip(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 327
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MatScale\u8017\u65f6-mMatQueue\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v8}, Lcom/hfufo/widget/RenderImageThread;->access$500(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 331
    .end local v0    # "rgbMat":Lorg/opencv/core/Mat;
    .end local v1    # "rgbMat2":Lorg/opencv/core/Mat;
    .end local v3    # "sMat":Lorg/opencv/core/Mat;
    :cond_4
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$400(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$100(Lcom/hfufo/widget/RenderImageThread;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 332
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6, v12}, Lcom/hfufo/widget/RenderImageThread;->access$602(Lcom/hfufo/widget/RenderImageThread;Z)Z

    .line 333
    iget-object v6, p0, Lcom/hfufo/widget/RenderImageThread$4;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v6}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v6

    const-string v7, " "

    invoke-interface {v6, v12, v7}, Lcom/jieli/lib/stream/udp/IActionListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v4    # "start":J
    :cond_5
    return-void
.end method
