.class Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;
.super Ljava/lang/Object;
.source "CameraGLSurfaceViewWithTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->setFilterIntensity(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

.field final synthetic val$intensity:F


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;F)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iput p2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;->val$intensity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;->val$intensity:F

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setFilterIntensity(F)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "setFilterIntensity after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
