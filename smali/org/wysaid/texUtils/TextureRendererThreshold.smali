.class public Lorg/wysaid/texUtils/TextureRendererThreshold;
.super Lorg/wysaid/texUtils/TextureRendererDrawOrigin;
.source "TextureRendererThreshold.java"


# static fields
.field protected static final THRESHOLD_VALUE:Ljava/lang/String; = "thresholdValue"

.field private static final fshThreshold:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\n uniform %s inputImageTexture;\n uniform float thresholdValue;\n void main()\n{\n    vec4 color = texture2D(inputImageTexture, texCoord);\n    \n    float weight = (color.r + color.g + color.b) / 3.0;\n    color.a = smoothstep(0.0, thresholdValue, weight);\n    \n    gl_FragColor = color;\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;-><init>()V

    return-void
.end method

.method public static create(Z)Lorg/wysaid/texUtils/TextureRendererThreshold;
    .locals 2
    .param p0, "isExternalOES"    # Z

    .prologue
    .line 28
    new-instance v0, Lorg/wysaid/texUtils/TextureRendererThreshold;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRendererThreshold;-><init>()V

    .line 29
    .local v0, "renderer":Lorg/wysaid/texUtils/TextureRendererThreshold;
    invoke-virtual {v0, p0}, Lorg/wysaid/texUtils/TextureRendererThreshold;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRendererThreshold;->release()V

    .line 31
    const/4 v0, 0x0

    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFragmentShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "precision mediump float;\nvarying vec2 texCoord;\n uniform %s inputImageTexture;\n uniform float thresholdValue;\n void main()\n{\n    vec4 color = texture2D(inputImageTexture, texCoord);\n    \n    float weight = (color.r + color.g + color.b) / 3.0;\n    color.a = smoothstep(0.0, thresholdValue, weight);\n    \n    gl_FragColor = color;\n}"

    return-object v0
.end method

.method public setThresholdValue(F)V
    .locals 2
    .param p1, "thresholdValue"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererThreshold;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 38
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRendererThreshold;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v1, "thresholdValue"

    invoke-virtual {v0, v1, p1}, Lorg/wysaid/common/ProgramObject;->sendUniformf(Ljava/lang/String;F)V

    .line 39
    return-void
.end method
