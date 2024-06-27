.class Lorg/wysaid/view/ImageGLSurfaceView$6;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->setImageBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "libCGE_java"

    const-string v1, "set image after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->initWithBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/ImageGLSurfaceView;->calcViewport()V

    .line 249
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$6;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/ImageGLSurfaceView;->requestRender()V

    goto :goto_0

    .line 252
    :cond_1
    const-string v0, "libCGE_java"

    const-string v1, "setImageBitmap: init handler failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
