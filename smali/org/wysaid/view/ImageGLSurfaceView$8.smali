.class Lorg/wysaid/view/ImageGLSurfaceView$8;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$8;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "libCGE_java"

    const-string v1, "ImageGLSurfaceView release..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$8;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$8;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEImageHandler;->release()V

    .line 348
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$8;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    .line 350
    :cond_0
    return-void
.end method
