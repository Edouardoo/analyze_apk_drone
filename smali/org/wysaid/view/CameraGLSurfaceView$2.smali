.class Lorg/wysaid/view/CameraGLSurfaceView$2;
.super Ljava/lang/Object;
.source "CameraGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceView;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceView;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wysaid/camera/CameraInstance;->stopCamera()V

    .line 176
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/wysaid/view/CameraGLSurfaceView;->onSwitchCamera()V

    .line 177
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    iget-boolean v1, v1, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 179
    .local v0, "facing":I
    :goto_0
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    new-instance v2, Lorg/wysaid/view/CameraGLSurfaceView$2$1;

    invoke-direct {v2, p0}, Lorg/wysaid/view/CameraGLSurfaceView$2$1;-><init>(Lorg/wysaid/view/CameraGLSurfaceView$2;)V

    invoke-virtual {v1, v2, v0}, Lorg/wysaid/camera/CameraInstance;->tryOpenCamera(Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;I)Z

    .line 186
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/wysaid/view/CameraGLSurfaceView;->requestRender()V

    .line 187
    return-void

    .line 177
    .end local v0    # "facing":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
