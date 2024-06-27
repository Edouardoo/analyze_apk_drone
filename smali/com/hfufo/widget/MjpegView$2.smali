.class Lcom/hfufo/widget/MjpegView$2;
.super Ljava/lang/Object;
.source "MjpegView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/MjpegView;->startRecordThread_()V
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
    .line 999
    iput-object p1, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1002
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/hfufo/widget/MjpegView;->access$1402(Lcom/hfufo/widget/MjpegView;Z)Z

    .line 1004
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1400(Lcom/hfufo/widget/MjpegView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1006
    .local v2, "start":J
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1300(Lcom/hfufo/widget/MjpegView;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1007
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1300(Lcom/hfufo/widget/MjpegView;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    .line 1011
    .local v1, "sMat":Lorg/opencv/core/Mat;
    new-instance v0, Lorg/opencv/core/Mat;

    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    iget v4, v4, Lcom/hfufo/widget/MjpegView;->dstWidthV:I

    iget-object v5, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    iget v5, v5, Lcom/hfufo/widget/MjpegView;->dstHeightV:I

    sget v6, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v0, v4, v5, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 1012
    .local v0, "rgbMat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Size;

    iget-object v5, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    iget v5, v5, Lcom/hfufo/widget/MjpegView;->dstWidthV:I

    int-to-double v6, v5

    iget-object v5, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    iget v5, v5, Lcom/hfufo/widget/MjpegView;->dstHeightV:I

    int-to-double v8, v5

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v1, v0, v4}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    .line 1017
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1500(Lcom/hfufo/widget/MjpegView;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1021
    .end local v0    # "rgbMat":Lorg/opencv/core/Mat;
    .end local v1    # "sMat":Lorg/opencv/core/Mat;
    :cond_1
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    invoke-static {v4}, Lcom/hfufo/widget/MjpegView;->access$1600(Lcom/hfufo/widget/MjpegView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1022
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$2;->this$0:Lcom/hfufo/widget/MjpegView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/hfufo/widget/MjpegView;->access$1402(Lcom/hfufo/widget/MjpegView;Z)Z

    goto :goto_0

    .line 1026
    .end local v2    # "start":J
    :cond_2
    return-void
.end method
