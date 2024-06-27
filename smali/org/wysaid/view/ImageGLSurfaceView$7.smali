.class Lorg/wysaid/view/ImageGLSurfaceView$7;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->getResultBitmap(Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;

.field final synthetic val$callback:Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$7;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/ImageGLSurfaceView$7;->val$callback:Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView$7;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v1, v1, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v1}, Lorg/wysaid/nativePort/CGEImageHandler;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView$7;->val$callback:Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;

    invoke-interface {v1, v0}, Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;->get(Landroid/graphics/Bitmap;)V

    .line 273
    return-void
.end method
