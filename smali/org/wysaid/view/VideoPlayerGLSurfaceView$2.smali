.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setFilterWithConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

.field final synthetic val$config:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;->val$config:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;->val$config:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setFilterWidthConfig(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "setFilterWithConfig after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
