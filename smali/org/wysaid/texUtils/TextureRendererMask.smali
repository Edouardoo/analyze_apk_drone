.class public Lorg/wysaid/texUtils/TextureRendererMask;
.super Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.source "TextureRendererMask.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final MASK_FLIPSCALE_NAME:Ljava/lang/String; = "maskFlipScale"

.field protected static final MASK_ROTATION_NAME:Ljava/lang/String; = "maskRotation"

.field protected static final MASK_TEXTURE_NAME:Ljava/lang/String; = "maskTexture"

.field private static final fshMask:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nvarying vec2 maskCoord;\nuniform %s inputImageTexture;\nuniform sampler2D maskTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n   vec4 maskColor = texture2D(maskTexture, maskCoord);\n   gl_FragColor *= maskColor;\n}"

.field private static final vshMask:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvarying vec2 maskCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nuniform mat2 maskRotation;\nuniform vec2 maskFlipScale;\nuniform mat4 transform;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n   maskCoord = maskFlipScale * (vPosition / 2.0 * maskRotation) + 0.5;\n}"


# instance fields
.field protected mMaskFlipscaleLoc:I

.field protected mMaskRotLoc:I

.field protected mMaskTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lorg/wysaid/texUtils/TextureRendererMask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/texUtils/TextureRendererMask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererMask;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 56
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererMask;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererMask;-><init>()V

    .line 57
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererMask;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererMask;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererMask;->release()V

    .line 59
    const/4 v0, 0x0

    .line 61
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererMask;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFragmentShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "precision mediump float;\nvarying vec2 texCoord;\nvarying vec2 maskCoord;\nuniform %s inputImageTexture;\nuniform sampler2D maskTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n   vec4 maskColor = texture2D(maskTexture, maskCoord);\n   gl_FragColor *= maskColor;\n}"

    return-object v0
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvarying vec2 maskCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nuniform mat2 maskRotation;\nuniform vec2 maskFlipScale;\nuniform mat4 transform;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n   maskCoord = maskFlipScale * (vPosition / 2.0 * maskRotation) + 0.5;\n}"

    return-object v0
.end method

.method public init(Z)Z
    .locals 4
    .param p1, "isExternalOES"    # Z

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererMask;->getVertexShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererMask;->getFragmentShaderString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lorg/wysaid/texUtils/TextureRendererMask;->setProgramDefault(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 68
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "maskRotation"

    invoke-virtual {v1, v2}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskRotLoc:I

    .line 69
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "maskFlipScale"

    invoke-virtual {v1, v2}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskFlipscaleLoc:I

    .line 70
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "maskTexture"

    invoke-virtual {v1, v2, v0}, Lorg/wysaid/common/ProgramObject;->sendUniformi(Ljava/lang/String;I)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/wysaid/texUtils/TextureRendererMask;->setMaskRotation(F)V

    .line 72
    invoke-virtual {p0, v3, v3}, Lorg/wysaid/texUtils/TextureRendererMask;->setMaskFlipscale(FF)V

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-super {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->release()V

    .line 140
    new-array v0, v3, [I

    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskTexture:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 141
    return-void
.end method

.method public renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V
    .locals 6
    .param p1, "texID"    # I
    .param p2, "viewport"    # Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .prologue
    const/4 v0, 0x0

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget v1, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget v2, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget v3, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget v4, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 113
    :cond_0
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 114
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->TEXTURE_2D_BINDABLE:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 116
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 117
    const/16 v1, 0xde1

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mVertexBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 121
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 123
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 124
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 125
    return-void
.end method

.method public setMaskFlipscale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 94
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 95
    iget v0, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskFlipscaleLoc:I

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 96
    return-void
.end method

.method public setMaskRotation(F)V
    .locals 8
    .param p1, "rad"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 80
    .local v0, "cosRad":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 82
    .local v2, "sinRad":F
    const/4 v3, 0x4

    new-array v1, v3, [F

    aput v0, v1, v6

    aput v2, v1, v7

    const/4 v3, 0x2

    neg-float v4, v2

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v0, v1, v3

    .line 87
    .local v1, "rot":[F
    sget-boolean v3, Lorg/wysaid/texUtils/TextureRendererMask;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "setRotation must not be called before init!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 89
    :cond_0
    iget-object v3, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v3}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 90
    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskRotLoc:I

    invoke-static {v3, v7, v6, v1, v6}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 91
    return-void
.end method

.method public setMaskTexture(I)V
    .locals 4
    .param p1, "texID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskTexture:I

    if-ne p1, v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    new-array v0, v3, [I

    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskTexture:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 103
    iput p1, p0, Lorg/wysaid/texUtils/TextureRendererMask;->mMaskTexture:I

    goto :goto_0
.end method
