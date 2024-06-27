.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setMaskBitmap(Landroid/graphics/Bitmap;ZLorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;

.field final synthetic val$shouldRecycle:Z


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/graphics/Bitmap;Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;

    iput-boolean p4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$shouldRecycle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "libCGE_java"

    const-string v2, "setMaskBitmap after release!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setMaskTexture(IF)V

    .line 187
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1, v3}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$402(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Z)Z

    .line 188
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$500(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    const/16 v2, 0x2600

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Lorg/wysaid/common/Common;->genNormalTextureID(Landroid/graphics/Bitmap;II)I

    move-result v0

    .line 194
    .local v0, "texID":I
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v1

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setMaskTexture(IF)V

    .line 195
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$402(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Z)Z

    .line 196
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$602(Lorg/wysaid/view/VideoPlayerGLSurfaceView;F)F

    .line 198
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;->setMaskOK(Lorg/wysaid/nativePort/CGEFrameRenderer;)V

    .line 202
    :cond_2
    iget-boolean v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$shouldRecycle:Z

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    :cond_3
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$500(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    goto :goto_0
.end method
