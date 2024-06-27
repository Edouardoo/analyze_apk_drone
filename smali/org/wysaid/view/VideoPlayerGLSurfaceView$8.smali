.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 467
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 470
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;->playComplete(Landroid/media/MediaPlayer;)V

    .line 473
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "Video Play Over"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method
