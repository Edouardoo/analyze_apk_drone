.class Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;
.super Ljava/lang/Object;
.source "CameraGLSurfaceViewWithTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->setFilterWithConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

.field final synthetic val$config:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iput-object p2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;->val$config:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;->val$config:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setFilterWidthConfig(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "setFilterWithConfig after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
