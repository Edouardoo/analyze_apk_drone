.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->takeShot(Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

.field final synthetic val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 556
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 560
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v0

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v1

    iget v1, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 562
    .local v6, "buffer":Ljava/nio/IntBuffer;
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v0

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v1

    iget v1, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v2

    iget v2, v2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v3}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v3

    iget v3, v3, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 563
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v0

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v1

    iget v1, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 564
    .local v7, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 566
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v0

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v1

    iget v1, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 568
    .local v8, "bmp2":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 569
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 570
    .local v10, "mat":Landroid/graphics/Matrix;
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v0

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v12

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 571
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 572
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    move-result-object v0

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v12

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 574
    const/4 v0, 0x0

    invoke-virtual {v9, v7, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 575
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;

    invoke-interface {v0, v8}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;->takeShotOK(Landroid/graphics/Bitmap;)V

    .line 578
    return-void
.end method
