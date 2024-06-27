.class public Lcom/hfufo/widget/media/VideoTextureRenderer;
.super Lcom/hfufo/widget/media/TextureSurfaceRendererT;
.source "VideoTextureRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;
    }
.end annotation


# static fields
.field public static final CUBE:[F

.field private static drawOrder:[S = null

.field private static final fragmentShaderCode:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES texture;varying vec2 v_TexCoordinate;void main () {    vec4 color = texture2D(texture, v_TexCoordinate);    gl_FragColor = color;}"

.field private static squareCoords:[F = null

.field private static squareSize:F = 0.0f

.field private static final vertexShaderCode:Ljava/lang/String; = "attribute vec4 vPosition;attribute vec4 vTexCoordinate;uniform mat4 textureTransform;varying vec2 v_TexCoordinate;void main() {   v_TexCoordinate = (textureTransform * vTexCoordinate).xy;   gl_Position = vPosition;}"


# instance fields
.field private adjustViewport:Z

.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private dstVHeight:I

.field private dstVWidth:I

.field private fileName:Ljava/lang/String;

.field first:Z

.field private fragmentShaderHandle:I

.field private frameAvailable:Z

.field private imageAngel:F

.field private imageScale:F

.field private mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

.field private final mRecordCubeBuffer:Ljava/nio/FloatBuffer;

.field private final mRecordTextureBuffer:Ljava/nio/FloatBuffer;

.field private mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

.field positionHandle:I

.field private recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

.field private shaderProgram:I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field textureCoordinateHandle:I

.field private textureCoords:[F

.field textureParamHandle:I

.field textureTranformHandle:I

.field private textures:[I

.field private texturesID:I

.field private tranHeigth:F

.field private tranWidth:F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertexShaderHandle:I

.field private videoHeight:I

.field private videoRate:I

.field private videoTexture:Landroid/graphics/SurfaceTexture;

.field private videoTextureTransform:[F

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    sget v1, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    aput v1, v0, v4

    const/4 v1, 0x7

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    neg-float v2, v2

    aput v2, v0, v1

    aput v3, v0, v5

    const/16 v1, 0x9

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareSize:F

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    sput-object v0, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareCoords:[F

    .line 45
    new-array v0, v4, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawOrder:[S

    .line 47
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hfufo/widget/media/VideoTextureRenderer;->CUBE:[F

    return-void

    .line 45
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    .line 47
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    .line 59
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoords:[F

    .line 68
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    .line 79
    iput-boolean v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->frameAvailable:Z

    .line 84
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    float-to-int v0, v0

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoWidth:I

    .line 85
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    float-to-int v0, v0

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoHeight:I

    .line 87
    const/16 v0, 0x780

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->dstVWidth:I

    .line 88
    const/16 v0, 0x438

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->dstVHeight:I

    .line 89
    iput v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageAngel:F

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageScale:F

    .line 91
    iput v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->tranWidth:F

    .line 92
    iput v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->tranHeigth:F

    .line 93
    iput-boolean v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->adjustViewport:Z

    .line 218
    iput-boolean v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->first:Z

    .line 108
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTextureTransform:[F

    .line 110
    sget-object v0, Lcom/hfufo/widget/media/VideoTextureRenderer;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecordCubeBuffer:Ljava/nio/FloatBuffer;

    .line 113
    sget-object v0, Lcom/hfufo/widget/media/VideoTextureRenderer;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecordTextureBuffer:Ljava/nio/FloatBuffer;

    .line 117
    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addZoomData(Ljava/nio/IntBuffer;)V
    .locals 10
    .param p1, "buffer"    # Ljava/nio/IntBuffer;

    .prologue
    .line 636
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    if-eqz v0, :cond_0

    .line 638
    iget-object v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    new-instance v0, Lcom/fh/beans/StreamInfo;

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    iget v4, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->tranWidth:F

    iget v5, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->tranHeigth:F

    iget v6, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageAngel:F

    iget v7, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageScale:F

    const/4 v8, 0x7

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/fh/beans/StreamInfo;-><init>(Ljava/nio/IntBuffer;IIFFFFI)V

    invoke-virtual {v9, v0}, Lcom/hfufo/widget/RenderImageThread;->addData(Lcom/fh/beans/StreamInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    :cond_0
    return-void
.end method

.method private adjustViewport()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 291
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->width:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 292
    .local v3, "surfaceAspect":F
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoWidth:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 296
    .local v4, "videoAspect":F
    cmpl-float v8, v3, v4

    if-lez v8, :cond_0

    .line 297
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoHeight:I

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 298
    .local v0, "heightRatio":F
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v2, v8

    .line 299
    .local v2, "newWidth":I
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->width:I

    sub-int v8, v2, v8

    div-int/lit8 v6, v8, 0x2

    .line 300
    .local v6, "xOffset":I
    neg-int v8, v6

    iget v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->height:I

    invoke-static {v8, v10, v2, v9}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 308
    .end local v0    # "heightRatio":F
    .end local v2    # "newWidth":I
    .end local v6    # "xOffset":I
    :goto_0
    iput-boolean v10, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->adjustViewport:Z

    .line 309
    return-void

    .line 302
    :cond_0
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->width:I

    int-to-float v8, v8

    iget v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoWidth:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 303
    .local v5, "widthRatio":F
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v1, v8

    .line 304
    .local v1, "newHeight":I
    iget v8, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->height:I

    sub-int v8, v1, v8

    div-int/lit8 v7, v8, 0x2

    .line 305
    .local v7, "yOffset":I
    neg-int v8, v7

    iget v9, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->width:I

    invoke-static {v10, v8, v9, v1}, Landroid/opengl/GLES30;->glViewport(IIII)V

    goto :goto_0
.end method

.method private convertToBitmap()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method private getFomatType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 607
    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    mul-int/2addr v2, v3

    new-array v0, v2, [I

    .line 608
    .local v0, "bt":[I
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 609
    .local v1, "intbuffer":Ljava/nio/IntBuffer;
    const v2, 0x8b9a

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 610
    const-string v2, "tteesstt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readPixels0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const v2, 0x8b9b

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 612
    const-string v2, "tteesstt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readPixels1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private initFrameRenderer(II)V
    .locals 3
    .param p1, "mVideoWidth"    # I
    .param p2, "mVideoHeight"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 409
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-direct {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0, p1, p2, p1, p2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->init(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0, v2, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setSrcFlipScale(FF)V

    .line 417
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0, v2, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setRenderFlipScale(FF)V

    .line 424
    :cond_1
    return-void
.end method

.method private loadShaders()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const v1, 0x8b31

    invoke-static {v1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexShaderHandle:I

    .line 121
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexShaderHandle:I

    const-string v2, "attribute vec4 vPosition;attribute vec4 vTexCoordinate;uniform mat4 textureTransform;varying vec2 v_TexCoordinate;void main() {   v_TexCoordinate = (textureTransform * vTexCoordinate).xy;   gl_Position = vPosition;}"

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 122
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexShaderHandle:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glCompileShader(I)V

    .line 123
    const-string v1, "Vertex shader compile"

    invoke-virtual {p0, v1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 125
    const v1, 0x8b30

    invoke-static {v1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->fragmentShaderHandle:I

    .line 126
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->fragmentShaderHandle:I

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES texture;varying vec2 v_TexCoordinate;void main () {    vec4 color = texture2D(texture, v_TexCoordinate);    gl_FragColor = color;}"

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 127
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->fragmentShaderHandle:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glCompileShader(I)V

    .line 128
    const-string v1, "Pixel shader compile"

    invoke-virtual {p0, v1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    .line 131
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexShaderHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 132
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->fragmentShaderHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 133
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    .line 134
    const-string v1, "Shader program compile"

    invoke-virtual {p0, v1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 136
    new-array v0, v4, [I

    .line 137
    .local v0, "status":[I
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 138
    aget v1, v0, v3

    if-eq v1, v4, :cond_0

    .line 139
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 142
    :cond_0
    return-void
.end method

.method private releaseFrameRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;->release()V

    .line 430
    iput-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 435
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 436
    iput-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    .line 439
    :cond_1
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->texturesID:I

    if-eqz v0, :cond_2

    .line 440
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 441
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    .line 443
    iput v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->texturesID:I

    .line 445
    :cond_2
    return-void
.end method

.method private setupTexture(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x812f

    const/16 v2, 0x1406

    const v4, 0x46180400    # 9729.0f

    const v7, 0x8d65

    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 165
    .local v6, "texturebb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 168
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 174
    const-string v0, "Texture generate"

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 179
    const/16 v0, 0x2801

    invoke-static {v7, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 180
    const/16 v0, 0x2800

    invoke-static {v7, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 181
    const/16 v0, 0x2802

    invoke-static {v7, v0, v5}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 182
    const/16 v0, 0x2803

    invoke-static {v7, v0, v5}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 184
    invoke-static {v7, v3}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 186
    const-string v0, "Texture bind"

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->texturesID:I

    .line 188
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    aget v1, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    .line 189
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 191
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 193
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureParamHandle:I

    .line 194
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    const-string v1, "vTexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoordinateHandle:I

    .line 195
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->positionHandle:I

    .line 196
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    const-string v1, "textureTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureTranformHandle:I

    .line 198
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 199
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->positionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 202
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 203
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 206
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureParamHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 209
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 210
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoordinateHandle:I

    const/4 v1, 0x4

    iget-object v5, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 216
    :cond_0
    return-void
.end method

.method private setupVertexBuffer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    sget-object v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawOrder:[S

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 148
    .local v1, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 150
    iget-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    sget-object v3, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawOrder:[S

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 151
    iget-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    sget-object v2, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareCoords:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 155
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 158
    iget-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/hfufo/widget/media/VideoTextureRenderer;->squareCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 159
    iget-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    return-void
.end method

.method private startZoomImgThread(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, "mListener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    invoke-direct {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->stopZoomImgThread()V

    .line 621
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Lcom/hfufo/widget/RenderImageThread;

    invoke-direct {v0, p1}, Lcom/hfufo/widget/RenderImageThread;-><init>(Lcom/jieli/lib/stream/udp/IActionListener;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    .line 623
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->dstVWidth:I

    iget v4, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->dstVHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hfufo/widget/RenderImageThread;->setScale(FFII)V

    .line 624
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    invoke-virtual {v0}, Lcom/hfufo/widget/RenderImageThread;->start()V

    .line 626
    :cond_0
    return-void
.end method

.method private stopZoomImgThread()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    invoke-virtual {v0}, Lcom/hfufo/widget/RenderImageThread;->stopThread()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRenderImageThread:Lcom/hfufo/widget/RenderImageThread;

    .line 633
    :cond_0
    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 392
    :goto_0
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 393
    const-string v1, "SurfaceTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method protected deinitGLComponents()V
    .locals 2

    .prologue
    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->releaseFrameRenderer()V

    .line 332
    return-void
.end method

.method protected draw()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    monitor-exit p0

    move v0, v7

    .line 287
    :goto_0
    return v0

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->frameAvailable:Z

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 230
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTextureTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 232
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->texturesID:I

    iget-object v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTextureTransform:[F

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->update(I[F)V

    .line 233
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;->runProc()V

    .line 234
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 236
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->adjustViewport:Z

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->adjustViewport()V

    .line 240
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    .line 241
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 244
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnable(I)V

    .line 246
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoWidth:I

    iget v4, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/wysaid/nativePort/CGEFrameRenderer;->render(IIII)V

    .line 247
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 249
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 250
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 251
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->positionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 253
    const v0, 0x8d65

    iget-object v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 254
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 255
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureParamHandle:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 258
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 259
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoordinateHandle:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 262
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureTranformHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTextureTransform:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 264
    const/4 v0, 0x4

    sget-object v1, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawOrder:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES30;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 266
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 267
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->textureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->frameAvailable:Z

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecording:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->isFirst:Z

    if-eqz v0, :cond_6

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->readPixels()V

    :cond_4
    :goto_1
    move v0, v6

    .line 287
    goto/16 :goto_0

    .line 271
    :cond_5
    :try_start_1
    monitor-exit p0

    move v0, v7

    goto/16 :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 281
    :cond_6
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shouldTake:Z

    if-eqz v0, :cond_4

    .line 282
    iput-boolean v7, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shouldTake:Z

    .line 283
    invoke-virtual {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->getBitmap()V

    goto :goto_1
.end method

.method protected endRecord()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public endVideoRecord()V
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecording:Z

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecording:Z

    .line 485
    invoke-direct {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->stopZoomImgThread()V

    goto :goto_0
.end method

.method public getBitmap()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 527
    .local v8, "start":J
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 528
    .local v6, "buffer":Ljava/nio/IntBuffer;
    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 529
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    invoke-interface {v0, v6}, Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;->onBuffer(Ljava/nio/IntBuffer;)V

    .line 535
    :cond_0
    return-void
.end method

.method public getVideoTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected initGLComponents()V
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setupVertexBuffer()V

    .line 315
    invoke-direct {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->loadShaders()V

    .line 316
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->ctx:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setupTexture(Landroid/content/Context;)V

    .line 319
    iget v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoWidth:I

    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoHeight:I

    invoke-direct {p0, v0, v1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->initFrameRenderer(II)V

    .line 321
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecording:Z

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 403
    monitor-enter p0

    .line 404
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->frameAvailable:Z

    .line 405
    monitor-exit p0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readPixels()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 568
    .local v8, "start":J
    iget v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 569
    .local v6, "buffer":Ljava/nio/IntBuffer;
    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v8

    .line 572
    .local v10, "time":J
    const-string v1, "tteesstt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readPixels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-wide/16 v2, 0x29a

    cmp-long v1, v10, v2

    if-lez v1, :cond_3

    .line 576
    iget-boolean v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->isFirst:Z

    if-nez v1, :cond_2

    .line 577
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    const-string v1, "failed"

    invoke-interface {v0, v1}, Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;->onError(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->endVideoRecord()V

    .line 592
    :cond_0
    invoke-direct {p0, v6}, Lcom/hfufo/widget/media/VideoTextureRenderer;->addZoomData(Ljava/nio/IntBuffer;)V

    .line 593
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shouldTake:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    invoke-interface {v0, v6}, Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;->onBuffer(Ljava/nio/IntBuffer;)V

    .line 604
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->isFirst:Z

    .line 582
    sput-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    goto :goto_0

    .line 586
    :cond_3
    iget-boolean v1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->isFirst:Z

    if-eqz v1, :cond_0

    .line 587
    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->isFirst:Z

    .line 588
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    goto :goto_0
.end method

.method protected setFilter()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    sget-object v1, Lcom/fh/util/Common;->EFFECT_CONFIGS:[Ljava/lang/String;

    iget v2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->curentNumber:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setFilterWidthConfig(Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method public setFilterNumb(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 448
    iput p1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->curentNumber:I

    .line 450
    return-void
.end method

.method public setRecordingCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;
    .param p2, "isP"    # Z

    .prologue
    .line 453
    if-eqz p2, :cond_1

    .line 454
    iput-object p1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    if-nez v0, :cond_0

    .line 457
    iput-object p1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->recordingCallback:Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;

    goto :goto_0
.end method

.method public setRoSc(FFFF)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "tranW"    # F
    .param p4, "tranH"    # F

    .prologue
    .line 497
    iput p1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageAngel:F

    .line 498
    iput p2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageScale:F

    .line 499
    iput p3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->tranWidth:F

    .line 500
    iput p4, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->tranHeigth:F

    .line 501
    return-void
.end method

.method public setSize(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "dstW"    # I
    .param p4, "dstH"    # I

    .prologue
    .line 505
    iput p1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageWidth:I

    .line 506
    iput p2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->imageHeight:I

    .line 507
    iput p3, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->dstVWidth:I

    .line 508
    iput p4, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->dstVHeight:I

    .line 512
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoWidth:I

    .line 386
    iput p2, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->videoHeight:I

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->adjustViewport:Z

    .line 388
    return-void
.end method

.method protected startRecord()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public startVideoRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "mListener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    iget-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecording:Z

    if-eqz v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->startZoomImgThread(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->mRecording:Z

    goto :goto_0
.end method

.method public takePhoto()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/VideoTextureRenderer;->shouldTake:Z

    .line 494
    return-void
.end method
