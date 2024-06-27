.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;)V
    .locals 0
    .param p1, "this$1"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    .prologue
    .line 483
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 487
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    new-instance v1, Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-direct {v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;-><init>()V

    invoke-static {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$302(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/nativePort/CGEFrameRenderer;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v1, v1, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$800(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v1

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v2, v2, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$900(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v2

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v3, v3, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v3}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$800(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v3

    iget-object v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v4, v4, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v4}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$900(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/wysaid/nativePort/CGEFrameRenderer;->init(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setSrcFlipScale(FF)V

    .line 494
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setRenderFlipScale(FF)V

    .line 499
    :goto_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;->this$1:Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$500(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    .line 500
    return-void

    .line 496
    :cond_1
    const-string v0, "libCGE_java"

    const-string v1, "Frame Recorder init failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
