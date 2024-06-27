.class public Lorg/wysaid/texUtils/TextureRendererWave;
.super Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.source "TextureRendererWave.java"


# static fields
.field private static final fshWave:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nuniform float motion;\nconst float angle = 20.0;void main()\n{\n   vec2 coord;\n   coord.x = texCoord.x + 0.01 * sin(motion + texCoord.x * angle);\n   coord.y = texCoord.y + 0.01 * sin(motion + texCoord.y * angle);\n   gl_FragColor = texture2D(inputImageTexture, coord);\n}"


# instance fields
.field private mAutoMotion:Z

.field private mMotion:F

.field private mMotionLoc:I

.field private mMotionSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    .line 25
    iput v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionLoc:I

    .line 27
    iput-boolean v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mAutoMotion:Z

    .line 28
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    .line 29
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionSpeed:F

    .line 32
    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererWave;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 35
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererWave;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererWave;-><init>()V

    .line 36
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererWave;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererWave;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererWave;->release()V

    .line 38
    const/4 v0, 0x0

    .line 40
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererWave;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public init(Z)Z
    .locals 2
    .param p1, "isExternalOES"    # Z

    .prologue
    .line 45
    const-string v0, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n}"

    const-string v1, "precision mediump float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nuniform float motion;\nconst float angle = 20.0;void main()\n{\n   vec2 coord;\n   coord.x = texCoord.x + 0.01 * sin(motion + texCoord.x * angle);\n   coord.y = texCoord.y + 0.01 * sin(motion + texCoord.y * angle);\n   gl_FragColor = texture2D(inputImageTexture, coord);\n}"

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/texUtils/TextureRendererWave;->setProgramDefault(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 47
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v1, "motion"

    invoke-virtual {v0, v1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionLoc:I

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V
    .locals 8
    .param p1, "texID"    # I
    .param p2, "viewport"    # Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .prologue
    const-wide v6, 0x404f6a7a2955385eL    # 62.83185307179586

    const/4 v0, 0x0

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget v1, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget v2, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget v3, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget v4, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 70
    :cond_0
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 71
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->TEXTURE_2D_BINDABLE:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 73
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mVertexBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 74
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 75
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 77
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 78
    iget-boolean v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mAutoMotion:Z

    if-eqz v1, :cond_1

    .line 79
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionSpeed:F

    add-float/2addr v1, v2

    iput v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    .line 80
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionLoc:I

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 81
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    float-to-double v2, v1

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1

    .line 82
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    float-to-double v2, v1

    sub-double/2addr v2, v6

    double-to-float v1, v2

    iput v1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotion:F

    .line 85
    :cond_1
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 86
    return-void
.end method

.method public setAutoMotion(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 59
    iput p1, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionSpeed:F

    .line 60
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mAutoMotion:Z

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWaveMotion(F)V
    .locals 1
    .param p1, "motion"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 55
    iget v0, p0, Lorg/wysaid/texUtils/TextureRendererWave;->mMotionLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 56
    return-void
.end method
