.class public Lorg/wysaid/common/ProgramObject$ShaderObject;
.super Ljava/lang/Object;
.source "ProgramObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wysaid/common/ProgramObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mShaderID:I

.field private mShaderType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-class v0, Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/common/ProgramObject$ShaderObject;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderType:I

    .line 169
    iput v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "shaderCode"    # Ljava/lang/String;
    .param p2, "shaderType"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/wysaid/common/ProgramObject$ShaderObject;->init(Ljava/lang/String;I)Z

    .line 174
    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 6
    .param p0, "type"    # I
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 201
    .local v2, "shaderID":I
    if-eqz v2, :cond_0

    .line 202
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 203
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 204
    new-array v0, v5, [I

    aput v3, v0, v3

    .line 205
    .local v0, "compiled":[I
    const v4, 0x8b81

    invoke-static {v2, v4, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 206
    aget v4, v0, v3

    if-eq v4, v5, :cond_0

    .line 208
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "errMsg":Ljava/lang/String;
    const-string v4, "libCGE_java"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v2, v3

    .line 214
    .end local v0    # "compiled":[I
    .end local v1    # "errMsg":Ljava/lang/String;
    .end local v2    # "shaderID":I
    :cond_0
    return v2
.end method


# virtual methods
.method public init(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "shaderCode"    # Ljava/lang/String;
    .param p2, "shaderType"    # I

    .prologue
    .line 177
    iput p2, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderType:I

    .line 178
    invoke-static {p2, p1}, Lorg/wysaid/common/ProgramObject$ShaderObject;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    .line 181
    sget-boolean v0, Lorg/wysaid/common/ProgramObject$ShaderObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Shader Create Failed!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 183
    :cond_0
    iget v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_1

    .line 184
    const-string v0, "libCGE_java"

    const-string v1, "glCreateShader Failed!..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    goto :goto_0
.end method

.method public shaderID()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lorg/wysaid/common/ProgramObject$ShaderObject;->mShaderID:I

    return v0
.end method
