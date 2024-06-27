.class Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer$1;
.super Ljava/lang/Object;
.source "CameraGLSurfaceViewWithBuffer.java"

# interfaces
.implements Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->resumePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer$1;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraReady()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "libCGE_java"

    const-string v1, "tryOpenCamera OK..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
