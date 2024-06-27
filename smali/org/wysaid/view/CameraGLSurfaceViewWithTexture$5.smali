.class Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;
.super Ljava/lang/Object;
.source "CameraGLSurfaceViewWithTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->takeShot(Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

.field final synthetic val$callback:Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iput-object p2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 239
    new-instance v9, Lorg/wysaid/common/FrameBufferObject;

    invoke-direct {v9}, Lorg/wysaid/common/FrameBufferObject;-><init>()V

    .line 244
    .local v9, "frameBufferObject":Lorg/wysaid/common/FrameBufferObject;
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v1, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v2, v2, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    invoke-static {v1, v2}, Lorg/wysaid/common/Common;->genBlankTextureID(II)I

    move-result v8

    .line 245
    .local v8, "bufferTexID":I
    invoke-virtual {v9, v8}, Lorg/wysaid/common/FrameBufferObject;->bindTexture(I)V

    .line 246
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v1, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v2, v2, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 247
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget-object v1, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->drawCache()V

    .line 248
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v1, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v2, v2, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 249
    .local v6, "buffer":Ljava/nio/IntBuffer;
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v2, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v3, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 250
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v1, v1, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v2, v2, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 251
    .local v7, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 252
    const-string v1, "libCGE_java"

    const-string v2, "w: %d, h: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v4, v4, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iget v4, v4, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v9}, Lorg/wysaid/common/FrameBufferObject;->release()V

    .line 255
    new-array v1, v10, [I

    aput v8, v1, v0

    invoke-static {v10, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 257
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;

    invoke-interface {v0, v7}, Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;->takePictureOK(Landroid/graphics/Bitmap;)V

    .line 258
    return-void
.end method
