.class public Lorg/wysaid/common/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final FULLSCREEN_VERTICES:[F

.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/wysaid/common/Common;->FULLSCREEN_VERTICES:[F

    return-void

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

.method public static checkGLError(Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "loopCnt":I
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "err":I
    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 38
    :pswitch_0
    const-string v2, "unknown error"

    .line 40
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    const-string v3, "libCGE_java"

    const-string v4, "After tag \"%s\" glGetError %s(0x%x) "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_1
    const-string v2, "invalid enum"

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 31
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_2
    const-string v2, "invalid framebuffer operation"

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 33
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_3
    const-string v2, "invalid operation"

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 35
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_4
    const-string v2, "invalid value"

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 37
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_5
    const-string v2, "out of memory"

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 42
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 26
    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static deleteTextureID(I)V
    .locals 3
    .param p0, "texID"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    new-array v0, v2, [I

    aput p0, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 87
    return-void
.end method

.method public static genBlankTextureID(II)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 52
    const/16 v0, 0x2601

    const v1, 0x812f

    invoke-static {p0, p1, v0, v1}, Lorg/wysaid/common/Common;->genBlankTextureID(IIII)I

    move-result v0

    return v0
.end method

.method public static genBlankTextureID(IIII)I
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "filter"    # I
    .param p3, "wrap"    # I

    .prologue
    const/16 v2, 0x1908

    const/4 v3, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 56
    new-array v9, v3, [I

    .line 57
    .local v9, "texID":[I
    invoke-static {v3, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 58
    aget v3, v9, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 59
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p0

    move v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 60
    invoke-static {v0, p2, p3}, Lorg/wysaid/common/Common;->texParamHelper(III)V

    .line 61
    aget v0, v9, v1

    return v0
.end method

.method public static genFullscreenVertexArrayBuffer()I
    .locals 6

    .prologue
    const v5, 0x8892

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v1, v3, [I

    .line 91
    .local v1, "vertexBuffer":[I
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 93
    aget v3, v1, v2

    if-nez v3, :cond_0

    .line 94
    const-string v3, "libCGE_java"

    const-string v4, "Invalid VertexBuffer! You must call this within an OpenGL thread!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return v2

    .line 98
    :cond_0
    aget v3, v1, v2

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 99
    sget-object v3, Lorg/wysaid/common/Common;->FULLSCREEN_VERTICES:[F

    array-length v3, v3

    invoke-static {v3}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 100
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    sget-object v3, Lorg/wysaid/common/Common;->FULLSCREEN_VERTICES:[F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    const/16 v3, 0x20

    const v4, 0x88e4

    invoke-static {v5, v3, v0, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 102
    aget v2, v1, v2

    goto :goto_0
.end method

.method public static genNormalTextureID(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    const/16 v0, 0x2601

    const v1, 0x812f

    invoke-static {p0, v0, v1}, Lorg/wysaid/common/Common;->genNormalTextureID(Landroid/graphics/Bitmap;II)I

    move-result v0

    return v0
.end method

.method public static genNormalTextureID(Landroid/graphics/Bitmap;II)I
    .locals 4
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filter"    # I
    .param p2, "wrap"    # I

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 69
    new-array v0, v1, [I

    .line 70
    .local v0, "texID":[I
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 71
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 72
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 73
    invoke-static {v3, p1, p2}, Lorg/wysaid/common/Common;->texParamHelper(III)V

    .line 74
    aget v1, v0, v2

    return v1
.end method

.method public static genSurfaceTextureID()I
    .locals 5

    .prologue
    const v4, 0x8d65

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 78
    new-array v0, v1, [I

    .line 79
    .local v0, "texID":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 80
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    const/16 v1, 0x2601

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Lorg/wysaid/common/Common;->texParamHelper(III)V

    .line 82
    aget v1, v0, v3

    return v1
.end method

.method public static texParamHelper(III)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "filter"    # I
    .param p2, "wrap"    # I

    .prologue
    .line 45
    const/16 v0, 0x2801

    int-to-float v1, p1

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 46
    const/16 v0, 0x2800

    int-to-float v1, p1

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 47
    const/16 v0, 0x2802

    invoke-static {p0, v0, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 48
    const/16 v0, 0x2803

    invoke-static {p0, v0, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 49
    return-void
.end method
