.class public Lorg/wysaid/geometryUtils/GeometryRenderer;
.super Ljava/lang/Object;
.source "GeometryRenderer.java"


# static fields
.field protected static final CANVAS_SIZE:Ljava/lang/String; = "canvasSize"

.field protected static final COLOR_NAME:Ljava/lang/String; = "color"

.field protected static final POSITION_NAME:Ljava/lang/String; = "vPosition"

.field private static final fshDrawOrigin:Ljava/lang/String; = "precision mediump float;\nuniform vec4 color;\nvoid main()\n{\n   gl_FragColor = color;\n}"

.field protected static final vshDrawDefault:Ljava/lang/String; = "attribute vec2 vPosition;\nuniform vec2 canvasSize;\nvoid main()\n{\n   gl_Position = vec4((vPosition / canvasSize) * 2.0 - 1.0, 0.0, 1.0);\n}"


# instance fields
.field protected mCanvasHeight:F

.field protected mCanvasWidth:F

.field protected mProgram:Lorg/wysaid/common/ProgramObject;

.field protected mVertexBuffer:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static create()Lorg/wysaid/geometryUtils/GeometryRenderer;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lorg/wysaid/geometryUtils/GeometryRenderer;

    invoke-direct {v0}, Lorg/wysaid/geometryUtils/GeometryRenderer;-><init>()V

    .line 74
    .local v0, "renderer":Lorg/wysaid/geometryUtils/GeometryRenderer;
    invoke-virtual {v0}, Lorg/wysaid/geometryUtils/GeometryRenderer;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lorg/wysaid/geometryUtils/GeometryRenderer;->release()V

    .line 76
    const/4 v0, 0x0

    .line 78
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bindBufferAttrib()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 106
    const v1, 0x8892

    iget v2, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mVertexBuffer:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 107
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 108
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 109
    return-void
.end method

.method public getProgram()Lorg/wysaid/common/ProgramObject;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    return-object v0
.end method

.method public getVertexBuffer()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mVertexBuffer:I

    return v0
.end method

.method protected init()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 49
    new-instance v1, Lorg/wysaid/common/ProgramObject;

    invoke-direct {v1}, Lorg/wysaid/common/ProgramObject;-><init>()V

    iput-object v1, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 50
    iget-object v1, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "vPosition"

    invoke-virtual {v1, v2, v0}, Lorg/wysaid/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 51
    iget-object v1, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v2, "attribute vec2 vPosition;\nuniform vec2 canvasSize;\nvoid main()\n{\n   gl_Position = vec4((vPosition / canvasSize) * 2.0 - 1.0, 0.0, 1.0);\n}"

    const-string v3, "precision mediump float;\nuniform vec4 color;\nvoid main()\n{\n   gl_FragColor = color;\n}"

    invoke-virtual {v1, v2, v3}, Lorg/wysaid/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/wysaid/geometryUtils/GeometryRenderer;->release()V

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lorg/wysaid/geometryUtils/GeometryRenderer;->setColor(FFFF)V

    .line 56
    invoke-virtual {p0, v4, v4}, Lorg/wysaid/geometryUtils/GeometryRenderer;->setCanvasSize(FF)V

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->release()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    .line 66
    :cond_0
    iget v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mVertexBuffer:I

    if-eqz v0, :cond_1

    .line 67
    new-array v0, v3, [I

    iget v1, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mVertexBuffer:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 68
    iput v2, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mVertexBuffer:I

    .line 70
    :cond_1
    return-void
.end method

.method public render(III)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/wysaid/geometryUtils/GeometryRenderer;->bindBufferAttrib()V

    .line 114
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 115
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 116
    return-void
.end method

.method public setCanvasSize(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 95
    iput p1, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mCanvasWidth:F

    .line 96
    iput p2, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mCanvasHeight:F

    .line 97
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 98
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v1, "canvasSize"

    invoke-virtual {v0, v1, p1, p2}, Lorg/wysaid/common/ProgramObject;->sendUniformf(Ljava/lang/String;FF)V

    .line 99
    return-void
.end method

.method public setColor(FFFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    invoke-virtual {v0}, Lorg/wysaid/common/ProgramObject;->bind()V

    .line 83
    iget-object v0, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mProgram:Lorg/wysaid/common/ProgramObject;

    const-string v1, "color"

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/wysaid/common/ProgramObject;->sendUniformf(Ljava/lang/String;FFFF)V

    .line 84
    return-void
.end method

.method public setVertexBuffer(I)V
    .locals 0
    .param p1, "buffer"    # I

    .prologue
    .line 91
    iput p1, p0, Lorg/wysaid/geometryUtils/GeometryRenderer;->mVertexBuffer:I

    .line 92
    return-void
.end method
