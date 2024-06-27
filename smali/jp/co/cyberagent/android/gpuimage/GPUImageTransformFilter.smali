.class public Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageTransformFilter.java"


# static fields
.field public static final TRANSFORM_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"


# instance fields
.field private anchorTopLeft:Z

.field private ignoreAspectRatio:Z

.field private orthographicMatrix:[F

.field private orthographicMatrixUniform:I

.field private transform3D:[F

.field private transformMatrixUniform:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 39
    const-string v0, "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"

    const-string v4, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-array v0, v8, [F

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    .line 42
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    move v4, v2

    move v5, v3

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 44
    new-array v0, v8, [F

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transform3D:[F

    .line 45
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transform3D:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 46
    return-void
.end method


# virtual methods
.method public anchorTopLeft()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->anchorTopLeft:Z

    return v0
.end method

.method public getTransform3D()[F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transform3D:[F

    return-object v0
.end method

.method public ignoreAspectRatio()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->ignoreAspectRatio:Z

    return v0
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v5, 0x0

    .line 77
    move-object v2, p2

    .line 79
    .local v2, "vertBuffer":Ljava/nio/FloatBuffer;
    iget-boolean v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-nez v3, :cond_0

    .line 81
    const/16 v3, 0x8

    new-array v0, v3, [F

    .line 83
    .local v0, "adjustedVertices":[F
    invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 86
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->getOutputHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->getOutputWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 87
    .local v1, "normalizedHeight":F
    const/4 v3, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 88
    const/4 v3, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 89
    const/4 v3, 0x5

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 90
    const/4 v3, 0x7

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 92
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 93
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    .end local v0    # "adjustedVertices":[F
    .end local v1    # "normalizedHeight":F
    :cond_0
    invoke-super {p0, p1, v2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 100
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 51
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->getProgram()I

    move-result v0

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transformMatrixUniform:I

    .line 52
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->getProgram()I

    move-result v0

    const-string v1, "orthographicMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrixUniform:I

    .line 54
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transformMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transform3D:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 55
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 56
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInitialized()V

    .line 61
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 65
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 67
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v1, 0x0

    int-to-float v4, p2

    mul-float/2addr v4, v2

    int-to-float v5, p1

    div-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 69
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 71
    :cond_0
    return-void
.end method

.method public setAnchorTopLeft(Z)V
    .locals 1
    .param p1, "anchorTopLeft"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->anchorTopLeft:Z

    .line 128
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->ignoreAspectRatio:Z

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->setIgnoreAspectRatio(Z)V

    .line 129
    return-void
.end method

.method public setIgnoreAspectRatio(Z)V
    .locals 8
    .param p1, "ignoreAspectRatio"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 112
    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->ignoreAspectRatio:Z

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 116
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->getOutputWidth()I

    move-result v0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->getOutputHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->onOutputSizeChanged(II)V

    goto :goto_0
.end method

.method public setTransform3D([F)V
    .locals 1
    .param p1, "transform3D"    # [F

    .prologue
    .line 103
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transform3D:[F

    .line 104
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->transformMatrixUniform:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 105
    return-void
.end method
