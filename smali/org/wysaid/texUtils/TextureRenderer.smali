.class public abstract Lorg/wysaid/texUtils/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/texUtils/TextureRenderer$Viewport;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DRAW_FUNCTION:I = 0x6

.field protected static final FLIPSCALE_NAME:Ljava/lang/String; = "flipScale"

.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"

.field protected static final POSITION_NAME:Ljava/lang/String; = "vPosition"

.field protected static final REQUIRE_STRING_EXTERNAL_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n"

.field protected static final ROTATION_NAME:Ljava/lang/String; = "rotation"

.field protected static final SAMPLER2D_VAR:Ljava/lang/String; = "sampler2D"

.field protected static final SAMPLER2D_VAR_EXTERNAL_OES:Ljava/lang/String; = "samplerExternalOES"

.field protected static final TRANSFORM_NAME:Ljava/lang/String; = "transform"

.field public static final vertices:[F

.field protected static final vshDrawDefault:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat4 transform;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   vec2 coord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n   texCoord = (transform * vec4(coord, 0.0, 1.0)).xy;\n}"


# instance fields
.field protected TEXTURE_2D_BINDABLE:I

.field protected mFlipScaleLoc:I

.field protected mProgram:Lorg/wysaid/common/ProgramObject;

.field protected mRotationLoc:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mTransformLoc:I

.field protected mVertexBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/wysaid/texUtils/TextureRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/texUtils/TextureRenderer;->$assertionsDisabled:Z

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/wysaid/texUtils/TextureRenderer;->vertices:[F

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultInitialize()V
    .locals 6

    .prologue
    const v5, 0x8892

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 141
    new-array v1, v2, [I

    .line 142
    .local v1, "vertexBuffer":[I
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 143
    aget v2, v1, v4

    iput v2, p0, Lorg/wysaid/texUtils/TextureRenderer;->mVertexBuffer:I

    .line 145
    iget v2, p0, Lorg/wysaid/texUtils/TextureRenderer;->mVertexBuffer:I

    if-nez v2, :cond_0

    .line 146
    const-string v2, "libCGE_java"

    const-string v3, "Invalid VertexBuffer!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget v2, p0, Lorg/wysaid/texUtils/TextureRenderer;->mVertexBuffer:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 150
    sget-object v2, Lorg/wysaid/texUtils/TextureRenderer;->vertices:[F

    array-length v2, v2

    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 151
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    sget-object v2, Lorg/wysaid/texUtils/TextureRenderer;->vertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    const/16 v2, 0x20

    const v3, 0x88e4

    invoke-static {v5, v2, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 153
    return-void
.end method

.method public abstract getFragmentShaderString()Ljava/lang/String;
.end method

.method public abstract getVertexShaderString()Ljava/lang/String;
.end method

.method public abstract init(Z)Z
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    iget v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mVertexBuffer:I

    if-eqz v0, :cond_0

    .line 25
    new-array v0, v3, [I

    iget v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mVertexBuffer:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 26
    iput v2, p0, Lorg/wysaid/texUtils/TextureRenderer;->mVertexBuffer:I

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->release()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 33
    :cond_1
    return-void
.end method

.method public abstract renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V
.end method

.method public setFlipscale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 109
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 110
    iget v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mFlipScaleLoc:I

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 111
    return-void
.end method

.method protected setProgramDefault(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "vsh"    # Ljava/lang/String;
    .param p2, "fsh"    # Ljava/lang/String;
    .param p3, "isExternalOES"    # Z

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 119
    if-eqz p3, :cond_0

    const v1, 0x8d65

    :goto_0
    iput v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->TEXTURE_2D_BINDABLE:I

    .line 120
    new-instance v1, Lorg/wysaid/common/ProgramObject;

    invoke-direct {v1}, Lorg/wysaid/common/ProgramObject;-><init>()V

    iput-object v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 121
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v4, "vPosition"

    invoke-virtual {v1, v4, v3}, Lorg/wysaid/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz p3, :cond_2

    const-string v1, "samplerExternalOES"

    :goto_2
    aput-object v1, v5, v3

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "fshResult":Ljava/lang/String;
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1, p1, v0}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "rotation"

    invoke-virtual {v1, v3}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mRotationLoc:I

    .line 125
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "flipScale"

    invoke-virtual {v1, v3}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mFlipScaleLoc:I

    .line 126
    iget-object v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v3, "transform"

    invoke-virtual {v1, v3}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/wysaid/texUtils/TextureRenderer;->mTransformLoc:I

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/wysaid/texUtils/TextureRenderer;->setRotation(F)V

    .line 128
    invoke-virtual {p0, v6, v6}, Lorg/wysaid/texUtils/TextureRenderer;->setFlipscale(FF)V

    .line 129
    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/wysaid/texUtils/TextureRenderer;->setTransform([F)V

    move v1, v2

    .line 137
    :goto_3
    return v1

    .line 119
    .end local v0    # "fshResult":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xde1

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v1, "sampler2D"

    goto :goto_2

    .restart local v0    # "fshResult":Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 137
    goto :goto_3

    .line 129
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setRotation(F)V
    .locals 8
    .param p1, "rad"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 95
    .local v0, "cosRad":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 97
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

    .line 102
    .local v1, "rot":[F
    sget-boolean v3, Lorg/wysaid/texUtils/TextureRenderer;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "setRotation must not be called before init!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 104
    :cond_0
    iget-object v3, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v3}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 105
    iget v3, p0, Lorg/wysaid/texUtils/TextureRenderer;->mRotationLoc:I

    invoke-static {v3, v7, v6, v1, v6}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 106
    return-void
.end method

.method public abstract setTextureSize(II)V
.end method

.method public setTransform([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 115
    iget v0, p0, Lorg/wysaid/texUtils/TextureRenderer;->mTransformLoc:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 116
    return-void
.end method
