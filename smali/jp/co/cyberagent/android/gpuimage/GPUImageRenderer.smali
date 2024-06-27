.class public Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final CUBE:[F

.field public static final NO_IMAGE:I = -0x1


# instance fields
.field private mAddedPadding:I

.field private mBackgroundBlue:F

.field private mBackgroundGreen:F

.field private mBackgroundRed:F

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field private mFlipHorizontal:Z

.field private mFlipVertical:Z

.field private final mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLRgbBuffer:Ljava/nio/IntBuffer;

.field private final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLTextureId:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

.field private final mRunOnDraw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunOnDrawEnd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

.field public final mSurfaceChangedWaiter:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    return-void

    :array_0
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

.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 3
    .param p1, "filter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 76
    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundRed:F

    .line 77
    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundGreen:F

    .line 78
    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundBlue:F

    .line 81
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    .line 85
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 88
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 93
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    invoke-virtual {p0, v0, v2, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    return v0
.end method

.method static synthetic access$102(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    return p1
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    return v0
.end method

.method static synthetic access$202(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    return p1
.end method

.method static synthetic access$302(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    return p1
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    return-void
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$502(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 44
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method static synthetic access$602(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .param p1, "x1"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 44
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object p1
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    return v0
.end method

.method static synthetic access$800(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 44
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    return v0
.end method

.method static synthetic access$902(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mAddedPadding:I

    return p1
.end method

.method private addDistance(FF)F
    .locals 1
    .param p1, "coordinate"    # F
    .param p2, "distance"    # F

    .prologue
    .line 314
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .end local p2    # "distance":F
    :goto_0
    return p2

    .restart local p2    # "distance":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    goto :goto_0
.end method

.method private adjustImageScaling()V
    .locals 19

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 272
    .local v8, "outputWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v7, v0

    .line 273
    .local v7, "outputHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    move-object/from16 v16, v0

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    move-object/from16 v16, v0

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v7, v0

    .line 278
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v8, v16

    .line 279
    .local v9, "ratio1":F
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v7, v16

    .line 280
    .local v10, "ratio2":F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 281
    .local v12, "ratioMax":F
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 282
    .local v6, "imageWidthNew":I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 284
    .local v5, "imageHeightNew":I
    int-to-float v0, v6

    move/from16 v16, v0

    div-float v13, v16, v8

    .line 285
    .local v13, "ratioWidth":F
    int-to-float v0, v5

    move/from16 v16, v0

    div-float v11, v16, v7

    .line 287
    .local v11, "ratioHeight":F
    sget-object v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    .line 288
    .local v2, "cube":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipHorizontal:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipVertical:Z

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)[F

    move-result-object v14

    .line 289
    .local v14, "textureCords":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    move-object/from16 v16, v0

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 290
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v17, v17, v13

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, v16, v17

    .line 291
    .local v3, "distHorizontal":F
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v17, v17, v11

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v16, v17

    .line 292
    .local v4, "distVertical":F
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v15, v0, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v14, v17

    .line 293
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget v17, v14, v17

    .line 294
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget v17, v14, v17

    .line 295
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x6

    const/16 v17, 0x6

    aget v17, v14, v17

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x7

    const/16 v17, 0x7

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    .end local v14    # "textureCords":[F
    .local v15, "textureCords":[F
    move-object v14, v15

    .line 307
    .end local v3    # "distHorizontal":F
    .end local v4    # "distVertical":F
    .end local v15    # "textureCords":[F
    .restart local v14    # "textureCords":[F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    return-void

    .line 299
    :cond_2
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v2, v0, [F

    .end local v2    # "cube":[F
    const/16 v16, 0x0

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x0

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x1

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x1

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    const/16 v16, 0x2

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x2

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x3

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x3

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    const/16 v16, 0x4

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x4

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x5

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x5

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    const/16 v16, 0x6

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x6

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x7

    sget-object v17, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x7

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    .restart local v2    # "cube":[F
    goto/16 :goto_0
.end method

.method private runAll(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    monitor-enter p1

    .line 142
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    return-void
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$4;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method protected getFrameHeight()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    return v0
.end method

.method protected getFrameWidth()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    return v0
.end method

.method public getRotation()Ljp/co/cyberagent/android/gpuimage/Rotation;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object v0
.end method

.method public isFlippedHorizontally()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipHorizontal:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipVertical:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 118
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 119
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 120
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 121
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 122
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 125
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 151
    .local v0, "previewSize":Landroid/hardware/Camera$Size;
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_0

    .line 152
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    .line 154
    :cond_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;

    invoke-direct {v1, p0, p1, v0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;[BLandroid/hardware/Camera$Size;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 171
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 105
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    .line 106
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    .line 107
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 108
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 109
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v0, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 110
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    .line 111
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 98
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundRed:F

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundGreen:F

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundBlue:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 99
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 100
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->init()V

    .line 101
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 347
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runOnDrawEnd(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 353
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackgroundColor(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 135
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundRed:F

    .line 136
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundGreen:F

    .line 137
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundBlue:F

    .line 138
    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1
    .param p1, "filter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 192
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 223
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/Rotation;

    .prologue
    .line 323
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    .line 324
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    .line 325
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V
    .locals 0
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/Rotation;
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 329
    iput-boolean p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipHorizontal:Z

    .line 330
    iput-boolean p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipVertical:Z

    .line 331
    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V

    .line 332
    return-void
.end method

.method public setRotationCamera(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V
    .locals 0
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/Rotation;
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 319
    invoke-virtual {p0, p1, p3, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    .line 320
    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .prologue
    .line 259
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 260
    return-void
.end method

.method public setUpSurfaceTexture(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 174
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method
