.class Lorg/wysaid/view/CameraGLSurfaceView$2$1;
.super Ljava/lang/Object;
.source "CameraGLSurfaceView.java"

# interfaces
.implements Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/wysaid/view/CameraGLSurfaceView$2;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceView$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/wysaid/view/CameraGLSurfaceView$2;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceView$2$1;->this$1:Lorg/wysaid/view/CameraGLSurfaceView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraReady()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView$2$1;->this$1:Lorg/wysaid/view/CameraGLSurfaceView$2;

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceView$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/CameraGLSurfaceView;->resumePreview()V

    .line 183
    return-void
.end method
