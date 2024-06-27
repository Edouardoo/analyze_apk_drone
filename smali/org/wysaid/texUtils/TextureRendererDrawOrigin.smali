.class public Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.super Lorg/wysaid/texUtils/TextureRenderer;
.source "TextureRendererDrawOrigin.java"


# static fields
.field private static final fshDrawOrigin:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n}"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRenderer;-><init>()V

    .line 21
    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->defaultInitialize()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "noDefaultInitialize"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRenderer;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->defaultInitialize()V

    .line 27
    :cond_0
    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 30
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    .line 31
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->release()V

    .line 33
    const/4 v0, 0x0

    .line 35
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFragmentShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "precision mediump float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n}"

    return-object v0
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n}"

    return-object v0
.end method

.method public init(Z)Z
    .locals 2
    .param p1, "isExternalOES"    # Z

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->getFragmentShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->setProgramDefault(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V
    .locals 6
    .param p1, "texID"    # I
    .param p2, "viewport"    # Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget v1, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget v2, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget v3, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget v4, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 58
    :cond_0
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 59
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->TEXTURE_2D_BINDABLE:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->mVertexBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 62
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 63
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 65
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 66
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 67
    return-void
.end method

.method public setTextureSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 71
    iput p1, p0, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->mTextureWidth:I

    .line 72
    iput p2, p0, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->mTextureHeight:I

    .line 73
    return-void
.end method
