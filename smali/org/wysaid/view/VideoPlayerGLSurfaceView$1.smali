.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setVideoUri(Landroid/net/Uri;Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;)V
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
    .line 122
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    const-string v0, "libCGE_java"

    const-string v1, "setVideoUri..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$100(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {}, Lorg/wysaid/common/Common;->genSurfaceTextureID()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$102(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I

    .line 129
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$100(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$002(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 130
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$200(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    .line 133
    return-void
.end method
