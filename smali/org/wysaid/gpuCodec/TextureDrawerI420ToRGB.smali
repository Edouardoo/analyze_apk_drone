.class public Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;
.super Lorg/wysaid/gpuCodec/TextureDrawerCodec;
.source "TextureDrawerI420ToRGB.java"


# static fields
.field protected static final fshI420ToRGB:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D textureY;\nuniform sampler2D textureU;\nuniform sampler2D textureV;\nuniform mat3 colorConversion;\nvoid main()\n{\n    vec3 yuv;\n    yuv.x = texture2D(textureY, texCoord).r;\n    yuv.y = texture2D(textureU, texCoord).r - 0.5;\n    yuv.z = texture2D(textureV, texCoord).r - 0.5;\n    vec3 rgb = colorConversion * yuv;\n    gl_FragColor = vec4(rgb, 1.0);\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/wysaid/gpuCodec/TextureDrawerCodec;-><init>()V

    return-void
.end method

.method public static create()Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;

    invoke-direct {v0}, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;-><init>()V

    .line 36
    .local v0, "drawer":Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;
    const-string v1, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

    const-string v2, "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D textureY;\nuniform sampler2D textureU;\nuniform sampler2D textureV;\nuniform mat3 colorConversion;\nvoid main()\n{\n    vec3 yuv;\n    yuv.x = texture2D(textureY, texCoord).r;\n    yuv.y = texture2D(textureU, texCoord).r - 0.5;\n    yuv.z = texture2D(textureV, texCoord).r - 0.5;\n    vec3 rgb = colorConversion * yuv;\n    gl_FragColor = vec4(rgb, 1.0);\n}"

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "libCGE_java"

    const-string v2, "TextureDrawerI420ToRGB create failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v0}, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->release()V

    .line 40
    const/4 v0, 0x0

    .line 42
    :cond_0
    return-object v0
.end method


# virtual methods
.method public drawTextures()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 62
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->mVertBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 63
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 64
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 65
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 66
    return-void
.end method

.method public drawTextures(III)V
    .locals 2
    .param p1, "texY"    # I
    .param p2, "texU"    # I
    .param p3, "texV"    # I

    .prologue
    const/16 v1, 0xde1

    .line 70
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 71
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 73
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 74
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 76
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 77
    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    invoke-virtual {p0}, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->drawTextures()V

    .line 80
    return-void
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "vsh"    # Ljava/lang/String;
    .param p2, "fsh"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    invoke-super {p0, p1, p2}, Lorg/wysaid/gpuCodec/TextureDrawerCodec;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v2}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 50
    iget-object v2, p0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "textureU"

    invoke-virtual {v2, v3, v0}, Lorg/wysaid/common/ProgramObject;->sendUniformi(Ljava/lang/String;I)V

    .line 51
    iget-object v2, p0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "textureV"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/wysaid/common/ProgramObject;->sendUniformi(Ljava/lang/String;I)V

    .line 52
    iget-object v2, p0, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "colorConversion"

    sget-object v4, Lorg/wysaid/gpuCodec/TextureDrawerI420ToRGB;->MATRIX_YUV2RGB:[F

    invoke-virtual {v2, v3, v0, v1, v4}, Lorg/wysaid/common/ProgramObject;->sendUniformMat3(Ljava/lang/String;IZ[F)V

    .line 56
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
