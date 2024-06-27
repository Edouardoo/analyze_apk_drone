.class public abstract Lorg/opencv/android/CameraGLRendererBase;
.super Ljava/lang/Object;
.source "CameraGLRendererBase.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# instance fields
.field private FBO:[I

.field protected final LOGTAG:Ljava/lang/String;

.field private final fss2D:Ljava/lang/String;

.field private final fssOES:Ljava/lang/String;

.field protected mCameraHeight:I

.field protected mCameraIndex:I

.field protected mCameraWidth:I

.field protected mEnabled:Z

.field protected mFBOHeight:I

.field protected mFBOWidth:I

.field protected mHaveFBO:Z

.field protected mHaveSurface:Z

.field protected mIsStarted:Z

.field protected mMaxCameraHeight:I

.field protected mMaxCameraWidth:I

.field protected mSTexture:Landroid/graphics/SurfaceTexture;

.field protected mUpdateST:Z

.field protected mView:Lorg/opencv/android/CameraGLSurfaceView;

.field private prog2D:I

.field private progOES:I

.field private tex2D:Ljava/nio/FloatBuffer;

.field private texCamera:[I

.field private final texCoord2D:[F

.field private final texCoordOES:[F

.field private texDraw:[I

.field private texFBO:[I

.field private texOES:Ljava/nio/FloatBuffer;

.field private vPos2D:I

.field private vPosOES:I

.field private vTC2D:I

.field private vTCOES:I

.field private vert:Ljava/nio/FloatBuffer;

.field private final vertices:[F

.field private final vss:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/opencv/android/CameraGLSurfaceView;)V
    .locals 6
    .param p1, "view"    # Lorg/opencv/android/CameraGLSurfaceView;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, "CameraGLRendererBase"

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->LOGTAG:Ljava/lang/String;

    .line 26
    const-string v1, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vss:Ljava/lang/String;

    .line 33
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->fssOES:Ljava/lang/String;

    .line 41
    const-string v1, "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->fss2D:Ljava/lang/String;

    .line 49
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vertices:[F

    .line 54
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texCoordOES:[F

    .line 59
    new-array v1, v5, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texCoord2D:[F

    .line 65
    new-array v1, v4, [I

    aput v3, v1, v3

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    new-array v1, v4, [I

    aput v3, v1, v3

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    new-array v1, v4, [I

    aput v3, v1, v3

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    .line 66
    new-array v1, v4, [I

    aput v3, v1, v3

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    .line 67
    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    .line 72
    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    .line 73
    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    .line 74
    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraWidth:I

    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraHeight:I

    .line 75
    iput v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraIndex:I

    .line 79
    iput-boolean v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    .line 80
    iput-boolean v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 81
    iput-boolean v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 82
    iput-boolean v4, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    .line 83
    iput-boolean v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    .line 92
    iput-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    .line 93
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v0, v1, 0x8

    .line 94
    .local v0, "bytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texOES:Ljava/nio/FloatBuffer;

    .line 96
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->tex2D:Ljava/nio/FloatBuffer;

    .line 97
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->vertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texOES:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texCoordOES:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->tex2D:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texCoord2D:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    return-void

    .line 49
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 59
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private deleteFBO()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    const-string v0, "CameraGLRendererBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFBO("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 274
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 276
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    invoke-static {v0}, Lorg/opencv/android/CameraGLRendererBase;->deleteTex([I)V

    .line 277
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    invoke-static {v0}, Lorg/opencv/android/CameraGLRendererBase;->deleteTex([I)V

    .line 278
    iput v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    iput v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    .line 279
    return-void
.end method

.method private deleteSurfaceTexture()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "CameraGLRendererBase"

    const-string v1, "deleteSurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    .line 196
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    invoke-static {v0}, Lorg/opencv/android/CameraGLRendererBase;->deleteTex([I)V

    .line 198
    :cond_0
    return-void
.end method

.method private static deleteTex([I)V
    .locals 2
    .param p0, "tex"    # [I

    .prologue
    const/4 v1, 0x1

    .line 212
    array-length v0, p0

    if-ne v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 215
    :cond_0
    return-void
.end method

.method private drawTex(IZI)V
    .locals 6
    .param p1, "tex"    # I
    .param p2, "isOES"    # Z
    .param p3, "fbo"    # I

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 320
    const v0, 0x8d40

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 322
    if-nez p3, :cond_0

    .line 323
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v0}, Lorg/opencv/android/CameraGLSurfaceView;->getWidth()I

    move-result v0

    iget-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v5}, Lorg/opencv/android/CameraGLSurfaceView;->getHeight()I

    move-result v5

    invoke-static {v3, v3, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 327
    :goto_0
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 329
    if-eqz p2, :cond_1

    .line 330
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 331
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vPosOES:I

    iget-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 332
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vTCOES:I

    iget-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->texOES:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 339
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 341
    if-eqz p2, :cond_2

    .line 342
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 343
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 349
    :goto_2
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 350
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 351
    return-void

    .line 325
    :cond_0
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    iget v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    invoke-static {v3, v3, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 334
    :cond_1
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 335
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vPos2D:I

    iget-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 336
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vTC2D:I

    iget-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->tex2D:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    .line 345
    :cond_2
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 346
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_2
.end method

.method private initFBO(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v11, 0x812f

    const/16 v10, 0x2600

    const/16 v2, 0x1908

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 283
    const-string v3, "CameraGLRendererBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFBO("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->deleteFBO()V

    .line 287
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    invoke-static {v3, v4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 288
    iget-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 289
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 290
    const/16 v3, 0x2802

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 291
    const/16 v3, 0x2803

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 292
    const/16 v3, 0x2801

    invoke-static {v0, v3, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 293
    const/16 v3, 0x2800

    invoke-static {v0, v3, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 295
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    invoke-static {v3, v4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 296
    iget-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 297
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 298
    const/16 v2, 0x2802

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 299
    const/16 v2, 0x2803

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 300
    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 301
    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 304
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 305
    const v2, 0x8d40

    iget-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    aget v3, v3, v1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 306
    const v2, 0x8d40

    const v3, 0x8ce0

    iget-object v4, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    aget v4, v4, v1

    invoke-static {v2, v3, v0, v4, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 307
    const-string v0, "CameraGLRendererBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFBO error status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    .line 310
    .local v9, "FBOstatus":I
    const v0, 0x8cd5

    if-eq v9, v0, :cond_0

    .line 311
    const-string v0, "CameraGLRendererBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFBO failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    .line 314
    iput p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    .line 315
    return-void
.end method

.method private initShaders()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 164
    const/16 v1, 0x1f02

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "strGLVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "CameraGLRendererBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGL ES version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 170
    const-string v1, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    invoke-static {v1, v2}, Lorg/opencv/android/CameraGLRendererBase;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    .line 171
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    const-string v2, "vPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vPosOES:I

    .line 172
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    const-string v2, "vTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vTCOES:I

    .line 173
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vPosOES:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 174
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vTCOES:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 176
    const-string v1, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    const-string v2, "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    invoke-static {v1, v2}, Lorg/opencv/android/CameraGLRendererBase;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    .line 177
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    const-string v2, "vPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vPos2D:I

    .line 178
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    const-string v2, "vTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vTC2D:I

    .line 179
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vPos2D:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 180
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vTC2D:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 181
    return-void
.end method

.method private initSurfaceTexture()V
    .locals 3

    .prologue
    .line 184
    const-string v0, "CameraGLRendererBase"

    const-string v1, "initSurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->deleteSurfaceTexture()V

    .line 186
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    invoke-direct {p0, v0}, Lorg/opencv/android/CameraGLRendererBase;->initTexOES([I)V

    .line 187
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    .line 188
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 189
    return-void
.end method

.method private initTexOES([I)V
    .locals 6
    .param p1, "tex"    # [I

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2600

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x8d65

    .line 201
    array-length v0, p1

    if-ne v0, v3, :cond_0

    .line 202
    invoke-static {v3, p1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 203
    aget v0, p1, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 204
    const/16 v0, 0x2802

    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 205
    const/16 v0, 0x2803

    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 206
    const/16 v0, 0x2801

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 207
    const/16 v0, 0x2800

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 209
    :cond_0
    return-void
.end method

.method private static loadShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vss"    # Ljava/lang/String;
    .param p1, "fss"    # Ljava/lang/String;

    .prologue
    const v7, 0x8b81

    const/4 v4, 0x0

    .line 218
    const-string v5, "CameraGLRendererBase"

    const-string v6, "loadShader"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const v5, 0x8b31

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .line 220
    .local v3, "vshader":I
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 221
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 222
    const/4 v5, 0x1

    new-array v2, v5, [I

    .line 223
    .local v2, "status":[I
    invoke-static {v3, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 224
    aget v5, v2, v4

    if-nez v5, :cond_0

    .line 225
    const-string v5, "CameraGLRendererBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not compile vertex shader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 227
    const/4 v3, 0x0

    move v1, v4

    .line 267
    :goto_0
    return v1

    .line 231
    :cond_0
    const v5, 0x8b30

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 232
    .local v0, "fshader":I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 233
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 234
    invoke-static {v0, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 235
    aget v5, v2, v4

    if-nez v5, :cond_1

    .line 236
    const-string v5, "CameraGLRendererBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not compile fragment shader:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 238
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 239
    const/4 v0, 0x0

    move v1, v4

    .line 240
    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 244
    .local v1, "program":I
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 245
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 246
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 247
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 248
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 249
    const v5, 0x8b82

    invoke-static {v1, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 250
    aget v5, v2, v4

    if-nez v5, :cond_2

    .line 251
    const-string v5, "CameraGLRendererBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not link shader program: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    move v1, v4

    .line 253
    goto :goto_0

    .line 255
    :cond_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 256
    const v5, 0x8b83

    invoke-static {v1, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 257
    aget v5, v2, v4

    if-nez v5, :cond_3

    .line 259
    const-string v5, "CameraGLRendererBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shader program validation error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 261
    const/4 v1, 0x0

    move v1, v4

    .line 262
    goto/16 :goto_0

    .line 265
    :cond_3
    const-string v4, "CameraGLRendererBase"

    const-string v5, "Shader program is built OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract closeCamera()V
.end method

.method public declared-synchronized disableView()V
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraGLRendererBase"

    const-string v1, "disableView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    .line 362
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStart()V
    .locals 2

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraGLRendererBase"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->initSurfaceTexture()V

    .line 381
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraIndex:I

    invoke-virtual {p0, v0}, Lorg/opencv/android/CameraGLRendererBase;->openCamera(I)V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    .line 383
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    if-lez v0, :cond_0

    .line 384
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/opencv/android/CameraGLRendererBase;->setPreviewSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doStop()V
    .locals 3

    .prologue
    .line 389
    const-string v1, "CameraGLRendererBase"

    const-string v2, "doStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    monitor-enter p0

    .line 391
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 392
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 394
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->closeCamera()V

    .line 395
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->deleteSurfaceTexture()V

    .line 396
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/opencv/android/CameraGLSurfaceView;->getCameraTextureListener()Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;

    move-result-object v0

    .line 398
    .local v0, "listener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;->onCameraViewStopped()V

    .line 400
    :cond_0
    return-void

    .line 396
    .end local v0    # "listener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized enableView()V
    .locals 2

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraGLRendererBase"

    const-string v1, "enableView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    .line 356
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 113
    iget-boolean v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 122
    :cond_1
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 124
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v2}, Lorg/opencv/android/CameraGLSurfaceView;->getCameraTextureListener()Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;

    move-result-object v1

    .line 125
    .local v1, "texListener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    if-eqz v1, :cond_3

    .line 128
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    .line 131
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;->onCameraTexture(IIII)Z

    move-result v0

    .line 133
    .local v0, "modified":Z
    if-eqz v0, :cond_2

    .line 135
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    .line 146
    .end local v0    # "modified":Z
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "texListener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 138
    .restart local v0    # "modified":Z
    .restart local v1    # "texListener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    goto :goto_1

    .line 141
    .end local v0    # "modified":Z
    :cond_3
    const-string v2, "CameraGLRendererBase"

    const-string v3, "texCamera(OES) -> screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 105
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 106
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v0}, Lorg/opencv/android/CameraGLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "CameraGLRendererBase"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    .line 436
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    .line 438
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "CameraGLRendererBase"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I

    .prologue
    .line 151
    const-string v0, "CameraGLRendererBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    .line 153
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V

    .line 154
    invoke-virtual {p0, p2, p3}, Lorg/opencv/android/CameraGLRendererBase;->setPreviewSize(II)V

    .line 155
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 159
    const-string v0, "CameraGLRendererBase"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->initShaders()V

    .line 161
    return-void
.end method

.method protected abstract openCamera(I)V
.end method

.method public setCameraIndex(I)V
    .locals 0
    .param p1, "cameraIndex"    # I

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->disableView()V

    .line 418
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraIndex:I

    .line 419
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->enableView()V

    .line 420
    return-void
.end method

.method protected abstract setCameraPreviewSize(II)V
.end method

.method public setMaxCameraPreviewSize(II)V
    .locals 0
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->disableView()V

    .line 424
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraWidth:I

    .line 425
    iput p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraHeight:I

    .line 426
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->enableView()V

    .line 427
    return-void
.end method

.method protected setPreviewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 403
    monitor-enter p0

    .line 404
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 405
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    .line 406
    iput p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    .line 407
    invoke-virtual {p0, p1, p2}, Lorg/opencv/android/CameraGLRendererBase;->setCameraPreviewSize(II)V

    .line 408
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-direct {p0, v1, v2}, Lorg/opencv/android/CameraGLRendererBase;->initFBO(II)V

    .line 409
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 410
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/opencv/android/CameraGLSurfaceView;->getCameraTextureListener()Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;

    move-result-object v0

    .line 413
    .local v0, "listener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    if-eqz v0, :cond_0

    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-interface {v0, v1, v2}, Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;->onCameraViewStarted(II)V

    .line 414
    :cond_0
    return-void

    .line 410
    .end local v0    # "listener":Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected updateState()V
    .locals 4

    .prologue
    .line 366
    const-string v1, "CameraGLRendererBase"

    const-string v2, "updateState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v1, "CameraGLRendererBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mHaveSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v1}, Lorg/opencv/android/CameraGLSurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 369
    .local v0, "willStart":Z
    :goto_0
    iget-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    if-eq v0, v1, :cond_2

    .line 370
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->doStart()V

    .line 375
    :goto_1
    const-string v1, "CameraGLRendererBase"

    const-string v2, "updateState end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 368
    .end local v0    # "willStart":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    .restart local v0    # "willStart":Z
    :cond_1
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->doStop()V

    goto :goto_1

    .line 373
    :cond_2
    const-string v1, "CameraGLRendererBase"

    const-string v2, "keeping State unchanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
