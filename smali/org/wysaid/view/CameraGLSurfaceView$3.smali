.class Lorg/wysaid/view/CameraGLSurfaceView$3;
.super Ljava/lang/Object;
.source "CameraGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceView;->release(Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceView;

.field final synthetic val$callback:Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceView;Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceView;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceView$3;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/CameraGLSurfaceView$3;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView$3;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/CameraGLSurfaceView;->onRelease()V

    .line 281
    const-string v0, "libCGE_java"

    const-string v1, "GLSurfaceview release..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView$3;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView$3;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;

    invoke-interface {v0}, Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;->releaseOK()V

    .line 284
    :cond_0
    return-void
.end method
