.class Lorg/wysaid/view/ImageGLSurfaceView$4;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->flush(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;

.field final synthetic val$runFilter:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->val$runnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->val$runFilter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 175
    const-string v0, "libCGE_java"

    const-string v1, "flush after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 178
    iget-boolean v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->val$runFilter:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEImageHandler;->revertImage()V

    .line 180
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEImageHandler;->processFilters()V

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$4;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/ImageGLSurfaceView;->requestRender()V

    goto :goto_0
.end method
