.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    const-string v0, "libCGE_java"

    const-string v1, "Video player view release run..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 301
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 304
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$702(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;->release()V

    .line 309
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$302(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/nativePort/CGEFrameRenderer;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    .line 312
    :cond_2
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 314
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$002(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 317
    :cond_3
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$100(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    new-array v0, v4, [I

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$100(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 319
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0, v3}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$102(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I

    .line 322
    :cond_4
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0, v3}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$402(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Z)Z

    .line 323
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput-object v2, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;

    .line 324
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput-object v2, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    .line 326
    const-string v0, "libCGE_java"

    const-string v1, "Video player view release OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method
