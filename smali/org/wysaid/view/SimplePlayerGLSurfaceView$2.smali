.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setMaskBitmap(Landroid/graphics/Bitmap;ZLorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

.field final synthetic val$shouldRecycle:Z


# direct methods
.method constructor <init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/graphics/Bitmap;Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

    iput-boolean p4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$shouldRecycle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x812f

    const/16 v6, 0x2600

    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 179
    const-string v1, "libCGE_java"

    const-string v2, "Cancel Mask Bitmap!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setMaskTexture(IF)V

    .line 183
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$300(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;->unsetMaskOK(Lorg/wysaid/texUtils/TextureRenderer;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v1, "libCGE_java"

    const-string v2, "Use Mask Bitmap!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-array v0, v5, [I

    aput v3, v0, v3

    .line 193
    .local v0, "texID":[I
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 194
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 195
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 196
    const/16 v1, 0x2801

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 197
    const/16 v1, 0x2800

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 198
    const/16 v1, 0x2802

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 199
    const/16 v1, 0x2803

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 201
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    aget v2, v0, v3

    iget-object v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setMaskTexture(IF)V

    .line 203
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$300(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer;

    move-result-object v1

    instance-of v1, v1, Lorg/wysaid/texUtils/TextureRendererMask;

    if-eqz v1, :cond_2

    .line 204
    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$300(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer;

    move-result-object v1

    check-cast v1, Lorg/wysaid/texUtils/TextureRendererMask;

    invoke-interface {v2, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;->setMaskOK(Lorg/wysaid/texUtils/TextureRendererMask;)V

    .line 206
    :cond_2
    iget-boolean v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$shouldRecycle:Z

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
