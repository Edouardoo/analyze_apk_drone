.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 450
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, -0x3f2

    invoke-interface {v0, v1, v2, v3}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;->playFailed(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;->playComplete(Landroid/media/MediaPlayer;)V

    .line 457
    :cond_0
    return-void
.end method
