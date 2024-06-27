.class public Lorg/wysaid/texUtils/TextureRendererBlur;
.super Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.source "TextureRendererBlur.java"


# static fields
.field private static final SAMPLER_STEPS:Ljava/lang/String; = "samplerSteps"

.field private static final fshBlur:Ljava/lang/String; = "precision highp float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nuniform vec2 samplerSteps;\nconst int samplerRadius = 5;\nconst float samplerRadiusFloat = 5.0;\nfloat random(vec2 seed)\n{\n  return fract(sin(dot(seed ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvoid main()\n{\n  vec3 resultColor = vec3(0.0);\n  float blurPixels = 0.0;\n  float offset = random(texCoord) - 0.5;\n  \n  for(int i = -samplerRadius; i <= samplerRadius; ++i)\n  {\n    float percent = (float(i) + offset) / samplerRadiusFloat;\n    float weight = 1.0 - abs(percent);\n    vec2 coord = texCoord + samplerSteps * percent;\n    resultColor += texture2D(inputImageTexture, coord).rgb * weight;\n    blurPixels += weight;\n  }\n  gl_FragColor = vec4(resultColor / blurPixels, 1.0);\n}"

.field private static final vshBlur:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n}"

.field private static final vshBlurCache:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = vPosition / 2.0 + 0.5;\n}"


# instance fields
.field protected mCacheTexHeight:I

.field protected mCacheTexWidth:I

.field protected mFBO:Lorg/wysaid/common/FrameBufferObject;

.field private mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

.field private mSamplerScale:F

.field private mStepsLoc:I

.field private mStepsLocCache:I

.field protected mTexCache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    .line 59
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    .line 67
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mStepsLoc:I

    .line 68
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mStepsLocCache:I

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mSamplerScale:F

    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererBlur;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 74
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererBlur;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererBlur;-><init>()V

    .line 75
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererBlur;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererBlur;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererBlur;->release()V

    .line 77
    const/4 v0, 0x0

    .line 79
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererBlur;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFragmentShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "precision highp float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nuniform vec2 samplerSteps;\nconst int samplerRadius = 5;\nconst float samplerRadiusFloat = 5.0;\nfloat random(vec2 seed)\n{\n  return fract(sin(dot(seed ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvoid main()\n{\n  vec3 resultColor = vec3(0.0);\n  float blurPixels = 0.0;\n  float offset = random(texCoord) - 0.5;\n  \n  for(int i = -samplerRadius; i <= samplerRadius; ++i)\n  {\n    float percent = (float(i) + offset) / samplerRadiusFloat;\n    float weight = 1.0 - abs(percent);\n    vec2 coord = texCoord + samplerSteps * percent;\n    resultColor += texture2D(inputImageTexture, coord).rgb * weight;\n    blurPixels += weight;\n  }\n  gl_FragColor = vec4(resultColor / blurPixels, 1.0);\n}"

    return-object v0
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n}"

    return-object v0
.end method

.method public init(Z)Z
    .locals 8
    .param p1, "isExternalOES"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    if-eqz p1, :cond_0

    const v2, 0x8d65

    :goto_0
    iput v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->TEXTURE_2D_BINDABLE:I

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "#extension GL_OES_EGL_image_external : require\n"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "precision highp float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nuniform vec2 samplerSteps;\nconst int samplerRadius = 5;\nconst float samplerRadiusFloat = 5.0;\nfloat random(vec2 seed)\n{\n  return fract(sin(dot(seed ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvoid main()\n{\n  vec3 resultColor = vec3(0.0);\n  float blurPixels = 0.0;\n  float offset = random(texCoord) - 0.5;\n  \n  for(int i = -samplerRadius; i <= samplerRadius; ++i)\n  {\n    float percent = (float(i) + offset) / samplerRadiusFloat;\n    float weight = 1.0 - abs(percent);\n    vec2 coord = texCoord + samplerSteps * percent;\n    resultColor += texture2D(inputImageTexture, coord).rgb * weight;\n    blurPixels += weight;\n  }\n  gl_FragColor = vec4(resultColor / blurPixels, 1.0);\n}"

    new-array v7, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v2, "samplerExternalOES"

    :goto_2
    aput-object v2, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "fshBlurExtOES":Ljava/lang/String;
    const-string v2, "precision highp float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nuniform vec2 samplerSteps;\nconst int samplerRadius = 5;\nconst float samplerRadiusFloat = 5.0;\nfloat random(vec2 seed)\n{\n  return fract(sin(dot(seed ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvoid main()\n{\n  vec3 resultColor = vec3(0.0);\n  float blurPixels = 0.0;\n  float offset = random(texCoord) - 0.5;\n  \n  for(int i = -samplerRadius; i <= samplerRadius; ++i)\n  {\n    float percent = (float(i) + offset) / samplerRadiusFloat;\n    float weight = 1.0 - abs(percent);\n    vec2 coord = texCoord + samplerSteps * percent;\n    resultColor += texture2D(inputImageTexture, coord).rgb * weight;\n    blurPixels += weight;\n  }\n  gl_FragColor = vec4(resultColor / blurPixels, 1.0);\n}"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "sampler2D"

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "fshBlurTex2D":Ljava/lang/String;
    new-instance v2, Lorg/wysaid/common/FrameBufferObject;

    invoke-direct {v2}, Lorg/wysaid/common/FrameBufferObject;-><init>()V

    iput-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mFBO:Lorg/wysaid/common/FrameBufferObject;

    .line 95
    new-instance v2, Lorg/wysaid/common/ProgramObject;

    invoke-direct {v2}, Lorg/wysaid/common/ProgramObject;-><init>()V

    iput-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    .line 96
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    const-string v5, "vPosition"

    invoke-virtual {v2, v5, v3}, Lorg/wysaid/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 98
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    const-string v5, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = vPosition / 2.0 + 0.5;\n}"

    invoke-virtual {v2, v5, v0}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    const-string v2, "libCGE_java"

    const-string v4, "blur filter program init failed - 1..."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 118
    :goto_3
    return v2

    .line 90
    .end local v0    # "fshBlurExtOES":Ljava/lang/String;
    .end local v1    # "fshBlurTex2D":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xde1

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    const-string v2, "sampler2D"

    goto :goto_2

    .line 103
    .restart local v0    # "fshBlurExtOES":Ljava/lang/String;
    .restart local v1    # "fshBlurTex2D":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v2}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 104
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    const-string v5, "samplerSteps"

    invoke-virtual {v2, v5}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mStepsLocCache:I

    .line 106
    new-instance v2, Lorg/wysaid/common/ProgramObject;

    invoke-direct {v2}, Lorg/wysaid/common/ProgramObject;-><init>()V

    iput-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 107
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v5, "vPosition"

    invoke-virtual {v2, v5, v3}, Lorg/wysaid/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 109
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v5, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n}"

    invoke-virtual {v2, v5, v1}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 110
    const-string v2, "libCGE_java"

    const-string v4, "blur filter program init failed - 2..."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 111
    goto :goto_3

    .line 114
    :cond_4
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v2}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 115
    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "samplerSteps"

    invoke-virtual {v2, v3}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mStepsLoc:I

    .line 116
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/wysaid/texUtils/TextureRendererBlur;->setRotation(F)V

    move v2, v4

    .line 118
    goto :goto_3
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->release()V

    .line 125
    :cond_0
    invoke-super {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->release()V

    .line 126
    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 127
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mFBO:Lorg/wysaid/common/FrameBufferObject;

    invoke-virtual {v0}, Lorg/wysaid/common/FrameBufferObject;->release()V

    .line 128
    iput-object v4, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mFBO:Lorg/wysaid/common/FrameBufferObject;

    .line 129
    new-array v0, v3, [I

    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 130
    iput v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    .line 131
    iput-object v4, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    .line 132
    return-void
.end method

.method public renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V
    .locals 10
    .param p1, "texID"    # I
    .param p2, "viewport"    # Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 137
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexWidth:I

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTextureWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexHeight:I

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTextureHeight:I

    if-eq v1, v2, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererBlur;->resetCacheTexture()V

    .line 141
    :cond_1
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mFBO:Lorg/wysaid/common/FrameBufferObject;

    invoke-virtual {v1}, Lorg/wysaid/common/FrameBufferObject;->bind()V

    .line 143
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexWidth:I

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexHeight:I

    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 145
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mVertexBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 146
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 147
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 149
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 150
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->TEXTURE_2D_BINDABLE:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 152
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgramDrawCache:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 153
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mStepsLocCache:I

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTextureWidth:I

    int-to-float v2, v2

    div-float v2, v7, v2

    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mSamplerScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 155
    invoke-static {v9, v0, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 157
    if-eqz p2, :cond_2

    .line 158
    iget v1, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget v2, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget v3, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget v4, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 160
    :cond_2
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 161
    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 162
    const/16 v1, 0xde1

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mStepsLoc:I

    iget v2, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexWidth:I

    int-to-float v2, v2

    div-float v2, v7, v2

    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mSamplerScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 164
    invoke-static {v9, v0, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 165
    return-void
.end method

.method protected resetCacheTexture()V
    .locals 11

    .prologue
    const/16 v10, 0x2601

    const/16 v2, 0x1908

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 184
    const-string v3, "libCGE_java"

    const-string v4, "resetCacheTexture..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTextureWidth:I

    iput v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexWidth:I

    .line 186
    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTextureHeight:I

    iput v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexHeight:I

    .line 187
    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    if-nez v3, :cond_0

    .line 189
    new-array v9, v5, [I

    .line 190
    .local v9, "texCache":[I
    invoke-static {v5, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 191
    aget v3, v9, v1

    iput v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    .line 194
    .end local v9    # "texCache":[I
    :cond_0
    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 196
    iget v3, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexWidth:I

    iget v4, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mCacheTexHeight:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 198
    const/16 v1, 0x2801

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 199
    const/16 v1, 0x2800

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 200
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 201
    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 203
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mFBO:Lorg/wysaid/common/FrameBufferObject;

    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mTexCache:I

    invoke-virtual {v0, v1}, Lorg/wysaid/common/FrameBufferObject;->bindTexture(I)V

    .line 204
    return-void
.end method

.method public setSamplerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 83
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p1, v0

    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererBlur;->mSamplerScale:F

    .line 84
    return-void
.end method

.method public setTextureSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->setTextureSize(II)V

    .line 170
    return-void
.end method
