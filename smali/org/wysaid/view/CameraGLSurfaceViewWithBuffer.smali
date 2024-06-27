.class public Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;
.super Lorg/wysaid/view/CameraGLSurfaceView;
.source "CameraGLSurfaceViewWithBuffer.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field protected mBufferSize:I

.field protected mBufferUV:Ljava/nio/ByteBuffer;

.field protected final mBufferUpdateLock:[I

.field protected mBufferUpdated:Z

.field protected mBufferY:Ljava/nio/ByteBuffer;

.field protected mPreviewBuffer0:[B

.field protected mPreviewBuffer1:[B

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mTextureHeight:I

.field protected mTextureUV:I

.field protected mTextureWidth:I

.field protected mTextureY:I

.field protected mUVSize:I

.field protected mYSize:I

.field protected mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/wysaid/view/CameraGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdated:Z

    .line 41
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdateLock:[I

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->setRenderMode(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public drawCurrentFrame()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 220
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 221
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->x:I

    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v1, v1, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->y:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v2, v2, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->width:I

    iget-object v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v3, v3, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 222
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->updateTextures()V

    .line 223
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-virtual {v0}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->drawTextures()V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->drawCurrentFrame()V

    .line 229
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 234
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdateLock:[I

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferY:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUV:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferY:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYSize:I

    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUV:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYSize:I

    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mUVSize:I

    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdated:Z

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 243
    return-void

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onRelease()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 50
    invoke-super {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->onRelease()V

    .line 51
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-virtual {v0}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->release()V

    .line 53
    iput-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 58
    iput-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 66
    :cond_1
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    if-eqz v0, :cond_3

    .line 67
    :cond_2
    new-array v0, v4, [I

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    aput v2, v0, v1

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 68
    iput v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    iput v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    .line 69
    iput v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    .line 70
    iput v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    .line 72
    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Lorg/wysaid/view/CameraGLSurfaceView;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 208
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->resumePreview()V

    .line 211
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    invoke-super {p0, p1, p2}, Lorg/wysaid/view/CameraGLSurfaceView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 126
    invoke-static {}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->create()Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    move-result-object v0

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    .line 127
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-virtual {v0, v1, v1}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->setFlipScale(FF)V

    .line 128
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    const v1, 0x3fc90fdb

    invoke-virtual {v0, v1}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->setRotation(F)V

    .line 132
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 136
    return-void
.end method

.method protected resizeTextures()V
    .locals 12

    .prologue
    const/16 v2, 0x1909

    const/16 v7, 0x1401

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 76
    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    if-nez v3, :cond_1

    .line 77
    :cond_0
    new-array v10, v4, [I

    .line 78
    .local v10, "textures":[I
    invoke-static {v4, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 79
    aget v3, v10, v1

    iput v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    .line 80
    const/4 v3, 0x1

    aget v3, v10, v3

    iput v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    .line 82
    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 83
    const/16 v3, 0x2601

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Lorg/wysaid/common/Common;->texParamHelper(III)V

    .line 85
    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 86
    const/16 v3, 0x2601

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Lorg/wysaid/common/Common;->texParamHelper(III)V

    .line 89
    .end local v10    # "textures":[I
    :cond_1
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wysaid/camera/CameraInstance;->previewWidth()I

    move-result v11

    .line 90
    .local v11, "width":I
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wysaid/camera/CameraInstance;->previewHeight()I

    move-result v9

    .line 92
    .local v9, "height":I
    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    if-ne v3, v11, :cond_2

    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    if-eq v3, v9, :cond_3

    .line 93
    :cond_2
    iput v11, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    .line 94
    iput v9, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    .line 96
    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 98
    iget v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    const/16 v2, 0x190a

    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    div-int/lit8 v4, v4, 0x2

    const/16 v6, 0x190a

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 101
    :cond_3
    return-void
.end method

.method public resumePreview()V
    .locals 12

    .prologue
    const/16 v11, 0x11

    const v10, 0x3fc90fdb

    const/high16 v9, 0x3f800000    # 1.0f

    .line 140
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    if-nez v7, :cond_0

    .line 202
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wysaid/camera/CameraInstance;->isCameraOpened()Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    iget-boolean v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mIsCameraBackForward:Z

    if-eqz v7, :cond_5

    const/4 v2, 0x0

    .line 147
    .local v2, "facing":I
    :goto_1
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v7

    new-instance v8, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer$1;

    invoke-direct {v8, p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer$1;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;)V

    invoke-virtual {v7, v8, v2}, Lorg/wysaid/camera/CameraInstance;->tryOpenCamera(Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;I)Z

    .line 155
    .end local v2    # "facing":I
    :cond_1
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wysaid/camera/CameraInstance;->isPreviewing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 156
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wysaid/camera/CameraInstance;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 157
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 158
    .local v5, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    .line 159
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 160
    .local v6, "sz":Landroid/hardware/Camera$Size;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    .line 162
    .local v3, "format":I
    if-eq v3, v11, :cond_2

    .line 165
    const/16 v7, 0x11

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 166
    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/16 v3, 0x11

    .line 174
    :cond_2
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    iput v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYSize:I

    .line 175
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYSize:I

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x8

    .line 177
    .local v4, "newBufferSize":I
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferSize:I

    if-eq v7, v4, :cond_3

    .line 178
    iput v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferSize:I

    .line 179
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferSize:I

    iget v8, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYSize:I

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mUVSize:I

    .line 180
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYSize:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferY:Ljava/nio/ByteBuffer;

    .line 181
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mUVSize:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUV:Ljava/nio/ByteBuffer;

    .line 183
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferSize:I

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mPreviewBuffer0:[B

    .line 184
    iget v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferSize:I

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mPreviewBuffer1:[B

    .line 187
    :cond_3
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mPreviewBuffer0:[B

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 188
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mPreviewBuffer1:[B

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 190
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v7

    iget-object v8, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7, v8, p0}, Lorg/wysaid/camera/CameraInstance;->startPreview(Landroid/graphics/SurfaceTexture;Landroid/hardware/Camera$PreviewCallback;)V

    .line 193
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v3    # "format":I
    .end local v4    # "newBufferSize":I
    .end local v5    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v6    # "sz":Landroid/hardware/Camera$Size;
    :cond_4
    iget-boolean v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mIsCameraBackForward:Z

    if-eqz v7, :cond_6

    .line 194
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->setFlipScale(FF)V

    .line 195
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-virtual {v7, v10}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->setRotation(F)V

    .line 201
    :goto_2
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->resizeTextures()V

    goto/16 :goto_0

    .line 145
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 168
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "format":I
    .restart local v5    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v6    # "sz":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 197
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "format":I
    .end local v5    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v6    # "sz":Landroid/hardware/Camera$Size;
    :cond_6
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-virtual {v7, v9, v9}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->setFlipScale(FF)V

    .line 198
    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mYUVDrawer:Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-virtual {v7, v10}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->setRotation(F)V

    goto :goto_2
.end method

.method protected updateTextures()V
    .locals 11

    .prologue
    const v3, 0x84c1

    const v2, 0x84c0

    const/16 v1, 0xde1

    .line 104
    iget-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdated:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v9, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdateLock:[I

    monitor-enter v9

    .line 106
    const v0, 0x84c0

    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 107
    const/16 v0, 0xde1

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 108
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    iget-object v8, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferY:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 109
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 110
    const/16 v0, 0xde1

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 111
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureHeight:I

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0x190a

    const/16 v7, 0x1401

    iget-object v8, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUV:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mBufferUpdated:Z

    .line 113
    monitor-exit v9

    .line 120
    :goto_0
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 116
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureY:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 117
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithBuffer;->mTextureUV:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method
