.class public Lorg/wysaid/texUtils/TextureRendererEmboss;
.super Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.source "TextureRendererEmboss.java"


# static fields
.field protected static final SAMPLER_STEPS:Ljava/lang/String; = "samplerSteps"

.field private static final fshEmboss:Ljava/lang/String; = "precision mediump float;\nuniform %s inputImageTexture;\nvarying vec2 texCoord;\nuniform vec2 samplerSteps;\nconst float stride = 2.0;\nconst vec2 norm = vec2(0.72, 0.72);\nvoid main() {\n  vec4 src = texture2D(inputImageTexture, texCoord);\n  vec3 tmp = texture2D(inputImageTexture, texCoord + samplerSteps * stride * norm).rgb - src.rgb + 0.5;\n  float f = (tmp.r + tmp.g + tmp.b) / 3.0;\n  gl_FragColor = vec4(f, f, f, src.a);\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererEmboss;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 24
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererEmboss;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererEmboss;-><init>()V

    .line 25
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererEmboss;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererEmboss;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererEmboss;->release()V

    .line 27
    const/4 v0, 0x0

    .line 29
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererEmboss;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFragmentShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "precision mediump float;\nuniform %s inputImageTexture;\nvarying vec2 texCoord;\nuniform vec2 samplerSteps;\nconst float stride = 2.0;\nconst vec2 norm = vec2(0.72, 0.72);\nvoid main() {\n  vec4 src = texture2D(inputImageTexture, texCoord);\n  vec3 tmp = texture2D(inputImageTexture, texCoord + samplerSteps * stride * norm).rgb - src.rgb + 0.5;\n  float f = (tmp.r + tmp.g + tmp.b) / 3.0;\n  gl_FragColor = vec4(f, f, f, src.a);\n}"

    return-object v0
.end method

.method public init(Z)Z
    .locals 3
    .param p1, "isExternalOES"    # Z

    .prologue
    const v2, 0x3acccccd    # 0.0015625f

    .line 34
    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererEmboss;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wysaid/texUtils/TextureRendererEmboss;->getFragmentShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/texUtils/TextureRendererEmboss;->setProgramDefault(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererEmboss;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 36
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererEmboss;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v1, "samplerSteps"

    invoke-virtual {v0, v1, v2, v2}, Lorg/wysaid/common/ProgramObject;->sendUniformf(Ljava/lang/String;FF)V

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextureSize(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 44
    invoke-super {p0, p1, p2}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->setTextureSize(II)V

    .line 45
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererEmboss;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 46
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererEmboss;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v1, "samplerSteps"

    int-to-float v2, p1

    div-float v2, v4, v2

    int-to-float v3, p2

    div-float v3, v4, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/wysaid/common/ProgramObject;->sendUniformf(Ljava/lang/String;FF)V

    .line 47
    return-void
.end method
