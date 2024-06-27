.class public Lorg/wysaid/texUtils/TextureRendererEdge;
.super Lorg/wysaid/texUtils/TextureRendererEmboss;
.source "TextureRendererEdge.java"


# static fields
.field private static final fshEdge:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nvarying vec2 coords[8];\nvoid main()\n{\n  vec3 colors[8];\n  for(int i = 0; i < 8; ++i)\n  {\n    colors[i] = texture2D(inputImageTexture, coords[i]).rgb;\n  }\n  vec4 src = texture2D(inputImageTexture, texCoord);\n  vec3 h = -colors[0] - 2.0 * colors[1] - colors[2] + colors[5] + 2.0 * colors[6] + colors[7];\n  vec3 v = -colors[0] + colors[2] - 2.0 * colors[3] + 2.0 * colors[4] - colors[5] + colors[7];\n  gl_FragColor = vec4(sqrt(h * h + v * v), 1.0);\n}"

.field private static final vshEdge:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvarying vec2 coords[8];\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nuniform vec2 samplerSteps;\nconst float stride = 2.0;\nvoid main()\n{\n  gl_Position = vec4(vPosition, 0.0, 1.0);\n  vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n  texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n  coords[0] = texCoord - samplerSteps * stride;\n  coords[1] = texCoord + vec2(0.0, -samplerSteps.y) * stride;\n  coords[2] = texCoord + vec2(samplerSteps.x, -samplerSteps.y) * stride;\n  coords[3] = texCoord - vec2(samplerSteps.x, 0.0) * stride;\n  coords[4] = texCoord + vec2(samplerSteps.x, 0.0) * stride;\n  coords[5] = texCoord + vec2(-samplerSteps.x, samplerSteps.y) * stride;\n  coords[6] = texCoord + vec2(0.0, samplerSteps.y) * stride;\n  coords[7] = texCoord + vec2(samplerSteps.x, samplerSteps.y) * stride;\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererEmboss;-><init>()V

    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererEdge;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 64
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererEdge;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererEdge;-><init>()V

    .line 65
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererEdge;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererEdge;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererEdge;->release()V

    .line 67
    const/4 v0, 0x0

    .line 69
    .end local v0    # "renderer":Lorg/wysaid/texUtils/TextureRendererEdge;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFragmentShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "precision mediump float;\nvarying vec2 texCoord;\nuniform %s inputImageTexture;\nvarying vec2 coords[8];\nvoid main()\n{\n  vec3 colors[8];\n  for(int i = 0; i < 8; ++i)\n  {\n    colors[i] = texture2D(inputImageTexture, coords[i]).rgb;\n  }\n  vec4 src = texture2D(inputImageTexture, texCoord);\n  vec3 h = -colors[0] - 2.0 * colors[1] - colors[2] + colors[5] + 2.0 * colors[6] + colors[7];\n  vec3 v = -colors[0] + colors[2] - 2.0 * colors[3] + 2.0 * colors[4] - colors[5] + colors[7];\n  gl_FragColor = vec4(sqrt(h * h + v * v), 1.0);\n}"

    return-object v0
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nvarying vec2 coords[8];\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nuniform vec2 samplerSteps;\nconst float stride = 2.0;\nvoid main()\n{\n  gl_Position = vec4(vPosition, 0.0, 1.0);\n  vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n  texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n  coords[0] = texCoord - samplerSteps * stride;\n  coords[1] = texCoord + vec2(0.0, -samplerSteps.y) * stride;\n  coords[2] = texCoord + vec2(samplerSteps.x, -samplerSteps.y) * stride;\n  coords[3] = texCoord - vec2(samplerSteps.x, 0.0) * stride;\n  coords[4] = texCoord + vec2(samplerSteps.x, 0.0) * stride;\n  coords[5] = texCoord + vec2(-samplerSteps.x, samplerSteps.y) * stride;\n  coords[6] = texCoord + vec2(0.0, samplerSteps.y) * stride;\n  coords[7] = texCoord + vec2(samplerSteps.x, samplerSteps.y) * stride;\n}"

    return-object v0
.end method
