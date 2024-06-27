.class Lorg/wysaid/view/CameraGLSurfaceView$1;
.super Ljava/lang/Object;
.source "CameraGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceView;->stopPreview()V
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
    .line 156
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceView$1;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView$1;->this$0:Lorg/wysaid/view/CameraGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->stopPreview()V

    .line 160
    return-void
.end method
