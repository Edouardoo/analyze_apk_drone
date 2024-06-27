.class public Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageToneCurveFilter.java"


# static fields
.field public static final TONE_CURVE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"


# instance fields
.field private mBlueControlPoints:[Landroid/graphics/PointF;

.field private mBlueCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mGreenControlPoints:[Landroid/graphics/PointF;

.field private mGreenCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRedControlPoints:[Landroid/graphics/PointF;

.field private mRedCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRgbCompositeControlPoints:[Landroid/graphics/PointF;

.field private mRgbCompositeCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 60
    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v2, " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"

    invoke-direct {p0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-array v1, v7, [I

    const/4 v2, -0x1

    aput v2, v1, v6

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    .line 62
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    .line 63
    .local v0, "defaultCurvePoints":[Landroid/graphics/PointF;
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 64
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 65
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 66
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    .line 67
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)[I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    .prologue
    .line 29
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    .prologue
    .line 29
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    .prologue
    .line 29
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    .prologue
    .line 29
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    .prologue
    .line 29
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "points"    # [Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    move-object/from16 v0, p1

    array-length v9, v0

    .line 313
    .local v9, "n":I
    const/4 v12, 0x1

    if-gt v9, v12, :cond_1

    .line 314
    const/4 v10, 0x0

    .line 362
    :cond_0
    return-object v10

    .line 317
    :cond_1
    const/4 v12, 0x3

    filled-new-array {v9, v12}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 318
    .local v8, "matrix":[[D
    new-array v11, v9, [D

    .line 319
    .local v11, "result":[D
    const/4 v12, 0x0

    aget-object v12, v8, v12

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v12, v13

    .line 321
    const/4 v12, 0x0

    aget-object v12, v8, v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v12, v13

    .line 322
    const/4 v12, 0x0

    aget-object v12, v8, v12

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    aput-wide v14, v12, v13

    .line 324
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    add-int/lit8 v12, v9, -0x1

    if-ge v5, v12, :cond_2

    .line 325
    add-int/lit8 v12, v5, -0x1

    aget-object v2, p1, v12

    .line 326
    .local v2, "P1":Landroid/graphics/Point;
    aget-object v3, p1, v5

    .line 327
    .local v3, "P2":Landroid/graphics/Point;
    add-int/lit8 v12, v5, 0x1

    aget-object v4, p1, v12

    .line 329
    .local v4, "P3":Landroid/graphics/Point;
    aget-object v12, v8, v5

    const/4 v13, 0x0

    iget v14, v3, Landroid/graphics/Point;->x:I

    iget v15, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    div-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 330
    aget-object v12, v8, v5

    const/4 v13, 0x1

    iget v14, v4, Landroid/graphics/Point;->x:I

    iget v15, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    div-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 331
    aget-object v12, v8, v5

    const/4 v13, 0x2

    iget v14, v4, Landroid/graphics/Point;->x:I

    iget v15, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    div-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 332
    iget v12, v4, Landroid/graphics/Point;->y:I

    iget v13, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    iget v14, v4, Landroid/graphics/Point;->x:I

    iget v15, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    div-double/2addr v12, v14

    iget v14, v3, Landroid/graphics/Point;->y:I

    iget v15, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "P1":Landroid/graphics/Point;
    .end local v3    # "P2":Landroid/graphics/Point;
    .end local v4    # "P3":Landroid/graphics/Point;
    :cond_2
    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 337
    add-int/lit8 v12, v9, -0x1

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 339
    add-int/lit8 v12, v9, -0x1

    aget-object v12, v8, v12

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v12, v13

    .line 341
    add-int/lit8 v12, v9, -0x1

    aget-object v12, v8, v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v12, v13

    .line 342
    add-int/lit8 v12, v9, -0x1

    aget-object v12, v8, v12

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    aput-wide v14, v12, v13

    .line 345
    const/4 v5, 0x1

    :goto_1
    if-ge v5, v9, :cond_3

    .line 346
    aget-object v12, v8, v5

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    add-int/lit8 v14, v5, -0x1

    aget-object v14, v8, v14

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    div-double v6, v12, v14

    .line 347
    .local v6, "k":D
    aget-object v12, v8, v5

    const/4 v13, 0x1

    aget-wide v14, v12, v13

    add-int/lit8 v16, v5, -0x1

    aget-object v16, v8, v16

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 348
    aget-object v12, v8, v5

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v12, v13

    .line 349
    aget-wide v12, v11, v5

    add-int/lit8 v14, v5, -0x1

    aget-wide v14, v11, v14

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 352
    .end local v6    # "k":D
    :cond_3
    add-int/lit8 v5, v9, -0x2

    :goto_2
    if-ltz v5, :cond_4

    .line 353
    aget-object v12, v8, v5

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    add-int/lit8 v14, v5, 0x1

    aget-object v14, v8, v14

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    div-double v6, v12, v14

    .line 354
    .restart local v6    # "k":D
    aget-object v12, v8, v5

    const/4 v13, 0x1

    aget-wide v14, v12, v13

    add-int/lit8 v16, v5, 0x1

    aget-object v16, v8, v16

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 355
    aget-object v12, v8, v5

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    aput-wide v14, v12, v13

    .line 356
    aget-wide v12, v11, v5

    add-int/lit8 v14, v5, 0x1

    aget-wide v14, v11, v14

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 352
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 359
    .end local v6    # "k":D
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .local v10, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_0

    aget-wide v12, v11, v5

    aget-object v14, v8, v5

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "points"    # [Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    if-gtz v13, :cond_2

    .line 201
    :cond_0
    const/4 v11, 0x0

    .line 259
    :cond_1
    return-object v11

    .line 205
    :cond_2
    invoke-virtual/range {p1 .. p1}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/PointF;

    .line 206
    .local v10, "pointsSorted":[Landroid/graphics/PointF;
    new-instance v13, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)V

    invoke-static {v10, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 220
    array-length v13, v10

    new-array v2, v13, [Landroid/graphics/Point;

    .line 221
    .local v2, "convertedPoints":[Landroid/graphics/Point;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v5, v13, :cond_3

    .line 222
    aget-object v9, v10, v5

    .line 223
    .local v9, "point":Landroid/graphics/PointF;
    new-instance v13, Landroid/graphics/Point;

    iget v14, v9, Landroid/graphics/PointF;->x:F

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v9, Landroid/graphics/PointF;->y:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    aput-object v13, v2, v5

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 226
    .end local v9    # "point":Landroid/graphics/PointF;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v12

    .line 230
    .local v12, "splinePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 231
    .local v4, "firstSplinePoint":Landroid/graphics/Point;
    iget v13, v4, Landroid/graphics/Point;->x:I

    if-lez v13, :cond_4

    .line 232
    iget v5, v4, Landroid/graphics/Point;->x:I

    :goto_1
    if-ltz v5, :cond_4

    .line 233
    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Point;

    const/4 v15, 0x0

    invoke-direct {v14, v5, v15}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 232
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 238
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 239
    .local v6, "lastSplinePoint":Landroid/graphics/Point;
    iget v13, v6, Landroid/graphics/Point;->x:I

    const/16 v14, 0xff

    if-ge v13, v14, :cond_5

    .line 240
    iget v13, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v13, 0x1

    :goto_2
    const/16 v13, 0xff

    if-gt v5, v13, :cond_5

    .line 241
    new-instance v13, Landroid/graphics/Point;

    const/16 v14, 0xff

    invoke-direct {v13, v5, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 246
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v11, "preparedSplinePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 248
    .local v7, "newPoint":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    iget v14, v7, Landroid/graphics/Point;->x:I

    iget v15, v7, Landroid/graphics/Point;->x:I

    invoke-direct {v8, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 250
    .local v8, "origPoint":Landroid/graphics/Point;
    iget v14, v8, Landroid/graphics/Point;->x:I

    iget v15, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v3, v14

    .line 252
    .local v3, "distance":F
    iget v14, v8, Landroid/graphics/Point;->y:I

    iget v15, v7, Landroid/graphics/Point;->y:I

    if-le v14, v15, :cond_6

    .line 253
    neg-float v3, v3

    .line 256
    :cond_6
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 30
    .param p1, "points"    # [Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct/range {p0 .. p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v14

    .line 267
    .local v14, "sdA":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 268
    .local v10, "n":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_1

    .line 269
    const/4 v12, 0x0

    .line 308
    :cond_0
    :goto_0
    return-object v12

    .line 271
    :cond_1
    new-array v13, v10, [D

    .line 274
    .local v13, "sd":[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v10, :cond_2

    .line 275
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    aput-wide v20, v13, v7

    .line 274
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 279
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v12, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 282
    aget-object v6, p1, v7

    .line 283
    .local v6, "cur":Landroid/graphics/Point;
    add-int/lit8 v20, v7, 0x1

    aget-object v11, p1, v20

    .line 285
    .local v11, "next":Landroid/graphics/Point;
    iget v15, v6, Landroid/graphics/Point;->x:I

    .local v15, "x":I
    :goto_3
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    .line 286
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v16, v20, v22

    .line 288
    .local v16, "t":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v2, v20, v16

    .line 289
    .local v2, "a":D
    move-wide/from16 v4, v16

    .line 290
    .local v4, "b":D
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v8, v0

    .line 292
    .local v8, "h":D
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v2

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v4

    add-double v20, v20, v22

    mul-double v22, v8, v8

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    div-double v22, v22, v24

    mul-double v24, v2, v2

    mul-double v24, v24, v2

    sub-double v24, v24, v2

    aget-wide v26, v13, v7

    mul-double v24, v24, v26

    mul-double v26, v4, v4

    mul-double v26, v26, v4

    sub-double v26, v26, v4

    add-int/lit8 v28, v7, 0x1

    aget-wide v28, v13, v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    mul-double v22, v22, v24

    add-double v18, v20, v22

    .line 294
    .local v18, "y":D
    const-wide v20, 0x406fe00000000000L    # 255.0

    cmpl-double v20, v18, v20

    if-lez v20, :cond_4

    .line 295
    const-wide v18, 0x406fe00000000000L    # 255.0

    .line 300
    :cond_3
    :goto_4
    new-instance v20, Landroid/graphics/Point;

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 296
    :cond_4
    const-wide/16 v20, 0x0

    cmpg-double v20, v18, v20

    if-gez v20, :cond_3

    .line 297
    const-wide/16 v18, 0x0

    goto :goto_4

    .line 281
    .end local v2    # "a":D
    .end local v4    # "b":D
    .end local v8    # "h":D
    .end local v16    # "t":D
    .end local v18    # "y":D
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 305
    .end local v6    # "cur":Landroid/graphics/Point;
    .end local v11    # "next":Landroid/graphics/Point;
    .end local v15    # "x":I
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 306
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private readShort(Ljava/io/InputStream;)S
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private updateToneCurveTexture()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$1;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 94
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 95
    const/16 v0, 0xde1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 96
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 98
    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 71
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 72
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->getProgram()I

    move-result v0

    const-string v1, "toneCurveTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTextureUniformLocation:I

    .line 73
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 75
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 76
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 77
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 78
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 79
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInitialized()V

    .line 85
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setRgbCompositeControlPoints([Landroid/graphics/PointF;)V

    .line 86
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setRedControlPoints([Landroid/graphics/PointF;)V

    .line 87
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setGreenControlPoints([Landroid/graphics/PointF;)V

    .line 88
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setBlueControlPoints([Landroid/graphics/PointF;)V

    .line 89
    return-void
.end method

.method public setBlueControlPoints([Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 161
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    .line 162
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueCurve:Ljava/util/ArrayList;

    .line 163
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    .line 164
    return-void
.end method

.method public setFromCurveFileInputStream(Ljava/io/InputStream;)V
    .locals 14
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v8

    .line 103
    .local v8, "version":I
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v7

    .line 105
    .local v7, "totalCurves":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v0, "curves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/PointF;>;"
    const v5, 0x3b808081

    .line 108
    .local v5, "pointRate":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 110
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v4

    .line 112
    .local v4, "pointCount":S
    new-array v6, v4, [Landroid/graphics/PointF;

    .line 118
    .local v6, "points":[Landroid/graphics/PointF;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 119
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v10

    .line 120
    .local v10, "y":S
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v9

    .line 122
    .local v9, "x":S
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v9

    mul-float/2addr v12, v5

    int-to-float v13, v10

    mul-float/2addr v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v11, v6, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v9    # "x":S
    .end local v10    # "y":S
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "j":I
    .end local v4    # "pointCount":S
    .end local v6    # "points":[Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/graphics/PointF;

    iput-object v11, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 130
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/graphics/PointF;

    iput-object v11, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 131
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/graphics/PointF;

    iput-object v11, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 132
    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/graphics/PointF;

    iput-object v11, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "curves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/PointF;>;"
    .end local v2    # "i":I
    .end local v5    # "pointRate":F
    .end local v7    # "totalCurves":I
    .end local v8    # "version":I
    :goto_2
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setGreenControlPoints([Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 155
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 156
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenCurve:Ljava/util/ArrayList;

    .line 157
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    .line 158
    return-void
.end method

.method public setRedControlPoints([Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 149
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 150
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedCurve:Ljava/util/ArrayList;

    .line 151
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    .line 152
    return-void
.end method

.method public setRgbCompositeControlPoints([Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 143
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 144
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeCurve:Ljava/util/ArrayList;

    .line 145
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    .line 146
    return-void
.end method
