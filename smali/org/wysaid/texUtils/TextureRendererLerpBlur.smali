.class public Lorg/wysaid/texUtils/TextureRendererLerpBlur;
.super Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.source "TextureRendererLerpBlur.java"


# static fields
.field private static final SAMPLER_STEPS:Ljava/lang/String; = "samplerSteps"

.field private static final fshBlur:Ljava/lang/String; = "precision highp float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nuniform vec2 samplerSteps;\nconst int samplerRadius = 5;\nconst float samplerRadiusFloat = 5.0;\nfloat random(vec2 seed)\n{\n  return fract(sin(dot(seed ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvoid main()\n{\n  vec3 resultColor = vec3(0.0);\n  float blurPixels = 0.0;\n  float offset = random(texCoord) - 0.5;\n  \n  for(int i = -samplerRadius; i <= samplerRadius; ++i)\n  {\n    float percent = (float(i) + offset) / samplerRadiusFloat;\n    float weight = 1.0 - abs(percent);\n    vec2 coord = texCoord + samplerSteps * percent;\n    resultColor += texture2D(inputImageTexture, coord).rgb * weight;\n    blurPixels += weight;\n  }\n  gl_FragColor = vec4(resultColor / blurPixels, 1.0);\n}"

.field private static final fshBlurUpScale:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoords[5];\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n  vec3 color = texture2D(inputImageTexture, texCoords[0]).rgb * 0.1;\n  color += texture2D(inputImageTexture, texCoords[1]).rgb * 0.2;\n  color += texture2D(inputImageTexture, texCoords[2]).rgb * 0.4;\n  color += texture2D(inputImageTexture, texCoords[3]).rgb * 0.2;\n  color += texture2D(inputImageTexture, texCoords[4]).rgb * 0.1;\n\n  gl_FragColor = vec4(color, 1.0);\n}"

.field private static final fshUpScale:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n}"

.field private static final vshBlurCache:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = vPosition / 2.0 + 0.5;\n}"

.field private static final vshBlurUpScale:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoords[5];\nuniform vec2 samplerSteps;\n\nvoid main()\n{\n  gl_Position = vec4(vPosition, 0.0, 1.0);\n  vec2 texCoord = vPosition / 2.0 + 0.5;\n  texCoords[0] = texCoord - 2.0 * samplerSteps;\n  texCoords[1] = texCoord - 1.0 * samplerSteps;\n  texCoords[2] = texCoord;\n  texCoords[3] = texCoord + 1.0 * samplerSteps;\n  texCoords[4] = texCoord + 2.0 * samplerSteps;\n}"

.field private static final vshUpScale:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = vPosition / 2.0 + 0.5;\n}"


# instance fields
.field private final mBase:F

.field private mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

.field private mIntensity:I

.field private final mLevel:I

.field private mSampleScaling:F

.field private mSamplerStepLoc:I

.field private mScaleProgram:Lorg/wysaid/common/ProgramObject;

.field private mTexViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

.field private mTextureDownScale:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    .line 113
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mSamplerStepLoc:I

    .line 115
    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mSampleScaling:F

    .line 119
    const/16 v0, 0x10

    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mLevel:I

    .line 120
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mBase:F

    return-void
.end method

.method private calcMips(II)I
    .locals 1
    .param p1, "len"    # I
    .param p2, "level"    # I

    .prologue
    .line 281
    add-int/lit8 v0, p2, 0x1

    div-int v0, p1, v0

    return v0
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererLerpBlur;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 123
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;-><init>()V

    .line 124
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererLerpBlur;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->release()V

    .line 126
    const/4 v0, 0x0

    .line 128
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererLerpBlur;
    :cond_0
    return-object v0
.end method

.method private genMipmaps(III)V
    .locals 12
    .param p1, "level"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/16 v11, 0x2601

    const/16 v2, 0x1908

    const/16 v10, 0x200

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 264
    new-array v3, p1, [I

    iput-object v3, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    .line 265
    iget-object v3, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    invoke-static {p1, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 267
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, p1, :cond_0

    .line 268
    iget-object v3, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    aget v3, v3, v9

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 269
    add-int/lit8 v3, v9, 0x1

    invoke-direct {p0, p2, v3}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v3

    add-int/lit8 v4, v9, 0x1

    invoke-direct {p0, p3, v4}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v4

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 270
    const/16 v3, 0x2801

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 271
    const/16 v3, 0x2800

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 272
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 273
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 267
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    invoke-direct {v0, v1, v1, v10, v10}, Lorg/wysaid/texUtils/TextureRenderer$Viewport;-><init>(IIII)V

    iput-object v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTexViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .line 277
    return-void
.end method

.method private initLocal()Z
    .locals 4

    .prologue
    const/16 v2, 0x200

    const/4 v0, 0x0

    .line 204
    const/16 v1, 0x10

    invoke-direct {p0, v1, v2, v2}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->genMipmaps(III)V

    .line 205
    new-instance v1, Lorg/wysaid/common/FrameBufferObject;

    invoke-direct {v1}, Lorg/wysaid/common/FrameBufferObject;-><init>()V

    iput-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

    .line 207
    new-instance v1, Lorg/wysaid/common/ProgramObject;

    invoke-direct {v1}, Lorg/wysaid/common/ProgramObject;-><init>()V

    iput-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mScaleProgram:Lorg/wysaid/common/ProgramObject;

    .line 208
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mScaleProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "vPosition"

    invoke-virtual {v1, v2, v0}, Lorg/wysaid/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 211
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mScaleProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = vPosition / 2.0 + 0.5;\n}"

    const-string v3, "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n}"

    invoke-virtual {v1, v2, v3}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "libCGE_java"

    const-string v2, "Lerp blur initLocal failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateTexture()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method


# virtual methods
.method public init(Z)Z
    .locals 1
    .param p1, "isExternalOES"    # Z

    .prologue
    .line 144
    invoke-super {p0, p1}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->init(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->initLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mScaleProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->release()V

    .line 196
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

    invoke-virtual {v0}, Lorg/wysaid/common/FrameBufferObject;->release()V

    .line 197
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 198
    iput-object v3, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mScaleProgram:Lorg/wysaid/common/ProgramObject;

    .line 199
    iput-object v3, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

    .line 200
    return-void
.end method

.method public renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V
    .locals 9
    .param p1, "texID"    # I
    .param p2, "viewport"    # Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/16 v4, 0x200

    const/4 v5, 0x0

    .line 150
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    if-nez v1, :cond_0

    .line 151
    const v1, 0x8d40

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 152
    invoke-super {p0, p1, p2}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V

    .line 191
    :goto_0
    return-void

    .line 160
    :cond_0
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/wysaid/common/FrameBufferObject;->bindTexture(I)V

    .line 165
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTexViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v2

    iput v2, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    .line 166
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTexViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v2

    iput v2, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    .line 167
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTexViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    invoke-super {p0, p1, v1}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V

    .line 169
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mScaleProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 170
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/wysaid/common/FrameBufferObject;->bindTexture(I)V

    .line 172
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 173
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v4, v1}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v4, v2}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v2

    invoke-static {v5, v5, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 174
    invoke-static {v7, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    iget v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-lez v0, :cond_2

    .line 178
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mFramebuffer:Lorg/wysaid/common/FrameBufferObject;

    iget-object v2, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/wysaid/common/FrameBufferObject;->bindTexture(I)V

    .line 179
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    aget v1, v1, v0

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 180
    invoke-direct {p0, v4, v0}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v1

    invoke-direct {p0, v4, v0}, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->calcMips(II)I

    move-result v2

    invoke-static {v5, v5, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 181
    invoke-static {v7, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 177
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 184
    :cond_2
    iget v1, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget v2, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget v3, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget v4, p2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 186
    const v1, 0x8d40

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 187
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mTextureDownScale:[I

    aget v1, v1, v5

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 190
    invoke-static {v7, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method public setIntensity(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    const/16 v1, 0x10

    .line 134
    iget v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iput p1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    .line 138
    iget v0, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    if-le v0, v1, :cond_0

    .line 139
    iput v1, p0, Lorg/wysaid/texUtils/TextureRendererLerpBlur;->mIntensity:I

    goto :goto_0
.end method

.method public setTextureSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->setTextureSize(II)V

    .line 261
    return-void
.end method
