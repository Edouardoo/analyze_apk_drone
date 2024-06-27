.class Lorg/wysaid/view/ImageGLSurfaceView$1;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->setFilterWithConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;

.field final synthetic val$config:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$1;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/ImageGLSurfaceView$1;->val$config:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$1;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "libCGE_java"

    const-string v1, "set config after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$1;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView$1;->val$config:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->setFilterWithConfig(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$1;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/ImageGLSurfaceView;->requestRender()V

    goto :goto_0
.end method
