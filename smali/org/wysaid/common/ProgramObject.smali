.class public Lorg/wysaid/common/ProgramObject;
.super Ljava/lang/Object;
.source "ProgramObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/common/ProgramObject$ShaderObject;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"


# instance fields
.field private mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

.field private mProgramID:I

.field private mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vsh"    # Ljava/lang/String;
    .param p2, "fsh"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public attributeLocation(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bind()V
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 91
    return-void
.end method

.method public bindAttribLocation(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 151
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-static {v0, p2, p1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public getUniformLoc(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iget v1, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "uniform":I
    if-gez v0, :cond_0

    .line 97
    const-string v1, "libCGE_java"

    const-string v2, "uniform name %s does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "vsh"    # Ljava/lang/String;
    .param p2, "fsh"    # Ljava/lang/String;

    .prologue
    .line 40
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "vsh"    # Ljava/lang/String;
    .param p2, "fsh"    # Ljava/lang/String;
    .param p3, "programID"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    if-nez p3, :cond_0

    .line 45
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p3

    .line 47
    if-nez p3, :cond_0

    .line 48
    const-string v3, "libCGE_java"

    const-string v4, "Invalid Program ID! Check if the context is bound!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return v2

    .line 53
    :cond_0
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    if-eqz v4, :cond_1

    .line 54
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject$ShaderObject;->release()V

    .line 55
    :cond_1
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject$ShaderObject;->release()V

    .line 58
    :cond_2
    new-instance v4, Lorg/wysaid/common/ProgramObject$ShaderObject;

    const v5, 0x8b31

    invoke-direct {v4, p1, v5}, Lorg/wysaid/common/ProgramObject$ShaderObject;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/wysaid/common/ProgramObject;->mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    .line 59
    new-instance v4, Lorg/wysaid/common/ProgramObject$ShaderObject;

    const v5, 0x8b30

    invoke-direct {v4, p2, v5}, Lorg/wysaid/common/ProgramObject$ShaderObject;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/wysaid/common/ProgramObject;->mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    .line 61
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject$ShaderObject;->shaderID()I

    move-result v4

    invoke-static {p3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 62
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject$ShaderObject;->shaderID()I

    move-result v4

    invoke-static {p3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 63
    const-string v4, "AttachShaders..."

    invoke-static {v4}, Lorg/wysaid/common/Common;->checkGLError(Ljava/lang/String;)V

    .line 64
    invoke-static {p3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 66
    new-array v1, v3, [I

    aput v2, v1, v2

    .line 67
    .local v1, "programStatus":[I
    const v4, 0x8b82

    invoke-static {p3, v4, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 70
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject$ShaderObject;->release()V

    .line 71
    iget-object v4, p0, Lorg/wysaid/common/ProgramObject;->mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject$ShaderObject;->release()V

    .line 72
    iput-object v6, p0, Lorg/wysaid/common/ProgramObject;->mVertexShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    .line 73
    iput-object v6, p0, Lorg/wysaid/common/ProgramObject;->mFragmentShader:Lorg/wysaid/common/ProgramObject$ShaderObject;

    .line 75
    aget v4, v1, v2

    if-eq v4, v3, :cond_3

    .line 76
    invoke-static {p3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "libCGE_java"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    iget v2, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    if-eq v2, p3, :cond_4

    iget v2, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    if-eqz v2, :cond_4

    .line 82
    iget v2, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 85
    :cond_4
    iput p3, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    move v2, v3

    .line 86
    goto :goto_0
.end method

.method public programID()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    return v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    if-eqz v0, :cond_0

    .line 34
    iget v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/wysaid/common/ProgramObject;->mProgramID:I

    .line 37
    :cond_0
    return-void
.end method

.method public sendUniformMat2(Ljava/lang/String;IZ[F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "matrix"    # [F

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 136
    return-void
.end method

.method public sendUniformMat3(Ljava/lang/String;IZ[F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "matrix"    # [F

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 140
    return-void
.end method

.method public sendUniformMat4(Ljava/lang/String;IZ[F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "matrix"    # [F

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 144
    return-void
.end method

.method public sendUniformf(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 104
    return-void
.end method

.method public sendUniformf(Ljava/lang/String;FF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 108
    return-void
.end method

.method public sendUniformf(Ljava/lang/String;FFF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 112
    return-void
.end method

.method public sendUniformf(Ljava/lang/String;FFFF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 116
    return-void
.end method

.method public sendUniformi(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 120
    return-void
.end method

.method public sendUniformi(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2i(III)V

    .line 124
    return-void
.end method

.method public sendUniformi(Ljava/lang/String;III)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3i(IIII)V

    .line 128
    return-void
.end method

.method public sendUniformi(Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4i(IIIII)V

    .line 132
    return-void
.end method
