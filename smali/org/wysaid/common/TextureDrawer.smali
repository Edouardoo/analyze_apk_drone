.class public Lorg/wysaid/common/TextureDrawer;
.super Ljava/lang/Object;
.source "TextureDrawer.java"


# static fields
.field public static final DRAW_FUNCTION:I = 0x6

.field protected static final fshDrawer:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n}"

.field public static final vertices:[F

.field protected static final vshDrawer:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"


# instance fields
.field protected mFlipScaleLoc:I

.field protected mProgram:Lorg/wysaid/common/ProgramObject;

.field protected mRotLoc:I

.field protected mVertBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/wysaid/common/TextureDrawer;->vertices:[F

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

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private _rotate(IF)V
    .locals 8
    .param p1, "location"    # I
    .param p2, "rad"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 130
    .local v0, "cosRad":F
    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 132
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

    .line 137
    .local v1, "rotation":[F
    iget-object v3, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v3}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 138
    invoke-static {p1, v7, v6, v1, v6}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 139
    return-void
.end method

.method public static create()Lorg/wysaid/common/TextureDrawer;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lorg/wysaid/common/TextureDrawer;

    invoke-direct {v0}, Lorg/wysaid/common/TextureDrawer;-><init>()V

    .line 81
    .local v0, "drawer":Lorg/wysaid/common/TextureDrawer;
    const-string v1, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

    const-string v2, "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n}"

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/common/TextureDrawer;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const-string v1, "libCGE_java"

    const-string v2, "TextureDrawer create failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Lorg/wysaid/common/TextureDrawer;->release()V

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bindVertexBuffer()V
    .locals 2

    .prologue
    .line 116
    const v0, 0x8892

    iget v1, p0, Lorg/wysaid/common/TextureDrawer;->mVertBuffer:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 117
    return-void
.end method

.method public drawTexture(I)V
    .locals 1
    .param p1, "texID"    # I

    .prologue
    .line 100
    const/16 v0, 0xde1

    invoke-virtual {p0, p1, v0}, Lorg/wysaid/common/TextureDrawer;->drawTexture(II)V

    .line 101
    return-void
.end method

.method public drawTexture(II)V
    .locals 6
    .param p1, "texID"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 104
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 105
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 107
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/common/TextureDrawer;->mVertBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 108
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 109
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 110
    iget-object v1, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v1}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 111
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 112
    return-void
.end method

.method public getProgram()Lorg/wysaid/common/ProgramObject;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    return-object v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "vsh"    # Ljava/lang/String;
    .param p2, "fsh"    # Ljava/lang/String;

    .prologue
    const v7, 0x8892

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v4, Lorg/wysaid/common/ProgramObject;

    invoke-direct {v4}, Lorg/wysaid/common/ProgramObject;-><init>()V

    iput-object v4, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 52
    iget-object v4, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v5, "vPosition"

    invoke-virtual {v4, v5, v2}, Lorg/wysaid/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 53
    iget-object v4, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v4, p1, p2}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    iget-object v3, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v3}, Lorg/wysaid/common/ProgramObject;->release()V

    .line 55
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 75
    :goto_0
    return v2

    .line 59
    :cond_0
    iget-object v4, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v4}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 61
    iget-object v4, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v5, "rotation"

    invoke-virtual {v4, v5}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/wysaid/common/TextureDrawer;->mRotLoc:I

    .line 62
    iget-object v4, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v5, "flipScale"

    invoke-virtual {v4, v5}, Lorg/wysaid/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/wysaid/common/TextureDrawer;->mFlipScaleLoc:I

    .line 64
    new-array v1, v3, [I

    .line 65
    .local v1, "vertBuffer":[I
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 66
    aget v4, v1, v2

    iput v4, p0, Lorg/wysaid/common/TextureDrawer;->mVertBuffer:I

    .line 68
    iget v4, p0, Lorg/wysaid/common/TextureDrawer;->mVertBuffer:I

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 69
    sget-object v4, Lorg/wysaid/common/TextureDrawer;->vertices:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 70
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    sget-object v4, Lorg/wysaid/common/TextureDrawer;->vertices:[F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    const/16 v2, 0x20

    const v4, 0x88e4

    invoke-static {v7, v2, v0, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/wysaid/common/TextureDrawer;->setRotation(F)V

    .line 74
    invoke-virtual {p0, v6, v6}, Lorg/wysaid/common/TextureDrawer;->setFlipScale(FF)V

    move v2, v3

    .line 75
    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->release()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 95
    :cond_0
    new-array v0, v3, [I

    iget v1, p0, Lorg/wysaid/common/TextureDrawer;->mVertBuffer:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 96
    iput v2, p0, Lorg/wysaid/common/TextureDrawer;->mVertBuffer:I

    .line 97
    return-void
.end method

.method public setFlipScale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lorg/wysaid/common/TextureDrawer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 125
    iget v0, p0, Lorg/wysaid/common/TextureDrawer;->mFlipScaleLoc:I

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 126
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rad"    # F

    .prologue
    .line 120
    iget v0, p0, Lorg/wysaid/common/TextureDrawer;->mRotLoc:I

    invoke-direct {p0, v0, p1}, Lorg/wysaid/common/TextureDrawer;->_rotate(IF)V

    .line 121
    return-void
.end method
