.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->_useUri()V
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
    .line 477
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 480
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$802(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I

    .line 481
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$902(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I

    .line 483
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    new-instance v1, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;

    invoke-direct {v1, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9$1;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;)V

    invoke-virtual {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 503
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;->playPrepared(Landroid/media/MediaPlayer;)V

    .line 509
    :goto_0
    const-string v0, "libCGE_java"

    const-string v1, "Video resolution 1: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v4}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$800(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v4}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$900(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 506
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
