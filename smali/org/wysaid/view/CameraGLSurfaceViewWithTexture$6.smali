.class Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;
.super Ljava/lang/Object;
.source "CameraGLSurfaceViewWithTexture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->takePicture(Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;Landroid/hardware/Camera$ShutterCallback;Ljava/lang/String;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

.field final synthetic val$config:Ljava/lang/String;

.field final synthetic val$intensity:F

.field final synthetic val$isFrontMirror:Z

.field final synthetic val$photoCallback:Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;ZLjava/lang/String;FLorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    .prologue
    .line 293
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iput-boolean p2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$isFrontMirror:Z

    iput-object p3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$config:Ljava/lang/String;

    iput p4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$intensity:F

    iput-object p5, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$photoCallback:Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 25
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 298
    .local v14, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 306
    .local v17, "sz":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 308
    const/16 v20, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 309
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 310
    .local v19, "width":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 311
    .local v11, "height":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    move/from16 v0, v19

    if-gt v0, v11, :cond_1

    :cond_0
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move/from16 v0, v19

    if-ge v0, v11, :cond_5

    :cond_1
    const/16 v16, 0x1

    .line 348
    .local v16, "shouldRotate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mMaxTextureSize:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mMaxTextureSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v11, v0, :cond_3

    .line 349
    :cond_2
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mMaxTextureSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v11

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mMaxTextureSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 350
    .local v15, "scaling":F
    const-string v20, "libCGE_java"

    const-string v21, "\u76ee\u6807\u5c3a\u5bf8(%d x %d)\u8d85\u8fc7\u5f53\u524d\u8bbe\u5907OpenGL \u80fd\u591f\u5904\u7406\u7684\u6700\u5927\u8303\u56f4(%d x %d)\uff0c \u73b0\u5728\u5c06\u56fe\u7247\u538b\u7f29\u81f3\u5408\u7406\u5927\u5c0f!"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mMaxTextureSize:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mMaxTextureSize:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 355
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 360
    .end local v15    # "scaling":F
    :cond_3
    if-eqz v16, :cond_9

    .line 361
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 363
    .local v4, "bmp2":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/wysaid/camera/CameraInstance;->getFacing()I

    move-result v20

    if-nez v20, :cond_7

    .line 366
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 367
    .local v12, "mat":Landroid/graphics/Matrix;
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    div-int/lit8 v10, v20, 0x2

    .line 368
    .local v10, "halfLen":I
    const/high16 v20, 0x42b40000    # 90.0f

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 369
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v3, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 387
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 411
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "halfLen":I
    .end local v12    # "mat":Landroid/graphics/Matrix;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$config:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$config:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$intensity:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lorg/wysaid/nativePort/CGENativeLibrary;->filterImage_MultipleEffectsWriteBack(Landroid/graphics/Bitmap;Ljava/lang/String;F)V

    .line 415
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$photoCallback:Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;->takePictureOK(Landroid/graphics/Bitmap;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/wysaid/camera/CameraInstance;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->startPreview()V

    .line 418
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "bmp2":Landroid/graphics/Bitmap;
    .end local v11    # "height":I
    .end local v16    # "shouldRotate":Z
    .end local v19    # "width":I
    :goto_3
    return-void

    .line 311
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v11    # "height":I
    .restart local v19    # "width":I
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 313
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "height":I
    .end local v19    # "width":I
    :cond_6
    const-string v20, "libCGE_java"

    const-string v21, "Cache image to get exif."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/picture_cache000.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 317
    .local v18, "tmpFilename":Ljava/lang/String;
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 318
    .local v9, "fileout":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 319
    .local v5, "bufferOutStream":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 320
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 321
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 323
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 324
    .local v8, "exifInterface":Landroid/media/ExifInterface;
    const-string v20, "Orientation"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    .line 326
    .local v13, "orientation":I
    packed-switch v13, :pswitch_data_0

    .line 332
    const/16 v16, 0x0

    .line 336
    .restart local v16    # "shouldRotate":Z
    :goto_4
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 337
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 338
    .restart local v19    # "width":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .restart local v11    # "height":I
    goto/16 :goto_0

    .line 329
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "height":I
    .end local v16    # "shouldRotate":Z
    .end local v19    # "width":I
    :pswitch_0
    const/16 v16, 0x1

    .line 330
    .restart local v16    # "shouldRotate":Z
    goto :goto_4

    .line 340
    .end local v5    # "bufferOutStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "exifInterface":Landroid/media/ExifInterface;
    .end local v9    # "fileout":Ljava/io/FileOutputStream;
    .end local v13    # "orientation":I
    .end local v16    # "shouldRotate":Z
    .end local v18    # "tmpFilename":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 341
    .local v7, "e":Ljava/io/IOException;
    const-string v20, "libCGE_java"

    const-string v21, "Err when saving bitmap..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 371
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v4    # "bmp2":Landroid/graphics/Bitmap;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v11    # "height":I
    .restart local v16    # "shouldRotate":Z
    .restart local v19    # "width":I
    :cond_7
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 373
    .restart local v12    # "mat":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$isFrontMirror:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 374
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    neg-int v0, v11

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 375
    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 376
    div-int/lit8 v20, v19, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v11, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 377
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    div-int/lit8 v10, v20, 0x2

    .line 378
    .restart local v10    # "halfLen":I
    const/high16 v20, 0x42b40000    # 90.0f

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 384
    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v3, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 380
    .end local v10    # "halfLen":I
    :cond_8
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v20

    div-int/lit8 v10, v20, 0x2

    .line 381
    .restart local v10    # "halfLen":I
    const/high16 v20, -0x3d4c0000    # -90.0f

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_5

    .line 389
    .end local v4    # "bmp2":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "halfLen":I
    .end local v12    # "mat":Landroid/graphics/Matrix;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/wysaid/camera/CameraInstance;->getFacing()I

    move-result v20

    if-nez v20, :cond_a

    .line 390
    move-object v4, v3

    .restart local v4    # "bmp2":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 393
    .end local v4    # "bmp2":Landroid/graphics/Bitmap;
    :cond_a
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 394
    .restart local v4    # "bmp2":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 395
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 396
    .restart local v12    # "mat":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;->val$isFrontMirror:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 397
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    neg-int v0, v11

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 398
    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, -0x40800000    # -1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 399
    div-int/lit8 v20, v19, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v11, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 406
    :goto_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v3, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 401
    :cond_b
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    neg-int v0, v11

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 402
    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 403
    div-int/lit8 v20, v19, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v11, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    .line 326
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
