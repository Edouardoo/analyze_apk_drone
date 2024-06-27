.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setFilterIntensity(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

.field final synthetic val$intensity:F


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;F)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;->val$intensity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v0

    iget v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;->val$intensity:F

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setFilterIntensity(F)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "setFilterIntensity after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
