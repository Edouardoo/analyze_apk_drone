.class public Lcom/fh/hdutil/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "dstW"    # I
    .param p2, "dstH"    # I
    .param p3, "trW"    # F
    .param p4, "trH"    # F
    .param p5, "degree"    # I
    .param p6, "scale"    # F
    .param p7, "mpaint"    # Landroid/graphics/Paint;
    .param p8, "rev"    # Z

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 256
    .local v17, "width":I
    const/high16 v19, 0x447a0000    # 1000.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v18, v19, v20

    .line 257
    .local v18, "widthScale":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 258
    .local v11, "height":I
    const/high16 v19, 0x447a0000    # 1000.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v12, v19, v20

    .line 259
    .local v12, "heightScale":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p3

    sget v20, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float v16, v19, v20

    .line 260
    .local v16, "tW":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p4

    sget v20, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    div-float v15, v19, v20

    .line 262
    .local v15, "tH":F
    :try_start_0
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 263
    .local v6, "bm1":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    .local v14, "matrix":Landroid/graphics/Matrix;
    if-eqz p8, :cond_1

    .line 265
    const/16 v19, 0x0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 267
    neg-float v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 274
    :goto_0
    div-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    int-to-float v9, v0

    .line 275
    .local v9, "dw":F
    div-int/lit8 v19, p2, 0x2

    move/from16 v0, v19

    int-to-float v8, v0

    .line 276
    .local v8, "dh":F
    const/4 v4, 0x0

    .line 277
    .local v4, "a":F
    const/4 v5, 0x0

    .line 278
    .local v5, "b":F
    cmpl-float v19, v16, v9

    if-lez v19, :cond_3

    .line 279
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, p6, v19

    mul-float v4, v9, v19

    .line 285
    :goto_1
    cmpl-float v19, v15, v8

    if-lez v19, :cond_5

    .line 286
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, p6, v19

    mul-float v5, v8, v19

    .line 293
    :goto_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, p6

    move/from16 v1, p6

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 295
    invoke-virtual {v14, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 296
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 298
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/high16 v19, -0x1000000

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 301
    if-eqz p7, :cond_7

    .line 302
    move-object/from16 v13, p7

    .line 310
    .local v13, "mPaint2":Landroid/graphics/Paint;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 311
    const-string v19, "gaga"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "adjustBitmapSizeByC: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_0

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    const/16 p0, 0x0

    .line 323
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 325
    .end local v4    # "a":F
    .end local v5    # "b":F
    .end local v6    # "bm1":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "dh":F
    .end local v9    # "dw":F
    .end local v13    # "mPaint2":Landroid/graphics/Paint;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    :goto_4
    return-object v6

    .line 270
    .restart local v6    # "bm1":Landroid/graphics/Bitmap;
    .restart local v14    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v12, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 314
    .end local v6    # "bm1":Landroid/graphics/Bitmap;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v10

    .line 315
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_2

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    const/16 p0, 0x0

    .line 323
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 325
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    const/4 v6, 0x0

    goto :goto_4

    .line 280
    .restart local v4    # "a":F
    .restart local v5    # "b":F
    .restart local v6    # "bm1":Landroid/graphics/Bitmap;
    .restart local v8    # "dh":F
    .restart local v9    # "dw":F
    .restart local v14    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    neg-float v0, v9

    move/from16 v19, v0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_4

    .line 281
    neg-float v0, v9

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, p6, v20

    mul-float v4, v19, v20

    goto/16 :goto_1

    .line 283
    :cond_4
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, p6, v19

    mul-float v4, v16, v19

    goto/16 :goto_1

    .line 287
    :cond_5
    neg-float v0, v8

    move/from16 v19, v0

    cmpg-float v19, v15, v19

    if-gez v19, :cond_6

    .line 288
    neg-float v0, v8

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, p6, v20

    mul-float v5, v19, v20

    goto/16 :goto_2

    .line 290
    :cond_6
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, p6, v19

    mul-float v5, v15, v19

    goto/16 :goto_2

    .line 304
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_7
    :try_start_3
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 305
    .restart local v13    # "mPaint2":Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 306
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 307
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 316
    .end local v4    # "a":F
    .end local v5    # "b":F
    .end local v6    # "bm1":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "dh":F
    .end local v9    # "dw":F
    .end local v13    # "mPaint2":Landroid/graphics/Paint;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    :catch_1
    move-exception v10

    .line 317
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_8

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    const/16 p0, 0x0

    .line 323
    :cond_8
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_5

    .line 319
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_9

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    const/16 p0, 0x0

    .line 323
    :cond_9
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v19
.end method

.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "orientationDegree"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 140
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 150
    .local v7, "bm1":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    .end local v7    # "bm1":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 145
    :catch_0
    move-exception v9

    .line 146
    .local v9, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    .end local v9    # "ex":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v8

    .line 148
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method public static adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "dstW"    # I
    .param p2, "dstH"    # I
    .param p3, "trW"    # F
    .param p4, "trH"    # F
    .param p5, "scaleWidth"    # F
    .param p6, "scaleHeight"    # F
    .param p7, "Degree"    # I
    .param p8, "scale"    # F
    .param p9, "mPaint"    # Landroid/graphics/Paint;
    .param p10, "rev"    # Z

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 332
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 334
    .local v5, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 338
    .local v2, "bm1":Landroid/graphics/Bitmap;
    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, p5, v8

    if-nez v8, :cond_0

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, p6, v8

    if-nez v8, :cond_0

    .line 339
    const/high16 v8, 0x447a0000    # 1000.0f

    int-to-float v9, p1

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float p5, v8, v9

    .line 340
    const/high16 v8, 0x447a0000    # 1000.0f

    int-to-float v9, p2

    mul-float/2addr v8, v9

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float p6, v8, v9

    .line 346
    :cond_0
    :try_start_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    .local v6, "matrix":Landroid/graphics/Matrix;
    if-eqz p10, :cond_2

    .line 348
    const/4 v8, 0x0

    int-to-float v9, p2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 349
    move/from16 v0, p6

    neg-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p5

    invoke-virtual {v6, v0, v8, v9, v10}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 354
    :goto_0
    int-to-float v8, p1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v9, p2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, p8

    move/from16 v1, p8

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 355
    move/from16 v0, p7

    int-to-float v8, v0

    int-to-float v9, p1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 356
    move/from16 v0, p4

    invoke-virtual {v6, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 377
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 378
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/high16 v8, -0x1000000

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 379
    move-object/from16 v0, p9

    invoke-virtual {v3, p0, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 388
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    .end local v2    # "bm1":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    :goto_1
    return-object v2

    .line 351
    .restart local v2    # "bm1":Landroid/graphics/Bitmap;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_1
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Matrix;->preScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v4

    .line 382
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 388
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 383
    :catch_1
    move-exception v4

    .line 384
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 388
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 386
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 388
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    throw v8
.end method

.method public static adjustPhotoSizeByC(Landroid/graphics/Bitmap;IIFFIFFFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "dstW"    # I
    .param p2, "dstH"    # I
    .param p3, "tW"    # F
    .param p4, "tH"    # F
    .param p5, "degree"    # I
    .param p6, "scale"    # F
    .param p7, "sx"    # F
    .param p8, "sy"    # F
    .param p9, "mPaint"    # Landroid/graphics/Paint;
    .param p10, "rev"    # Z

    .prologue
    .line 188
    const-string v10, "adjustPhotoSizeByC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tw: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",th: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",rev:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p10

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    invoke-static {p1, v0, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 192
    .local v4, "bm1":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v9, "matrix":Landroid/graphics/Matrix;
    if-eqz p10, :cond_1

    .line 194
    const/4 v10, 0x0

    move/from16 v0, p2

    int-to-float v11, v0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 196
    move/from16 v0, p8

    neg-float v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v0, p7

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 204
    :goto_0
    div-int/lit8 v10, p1, 0x2

    int-to-float v7, v10

    .line 205
    .local v7, "dw":F
    div-int/lit8 v10, p2, 0x2

    int-to-float v6, v10

    .line 206
    .local v6, "dh":F
    const/4 v2, 0x0

    .line 207
    .local v2, "a":F
    const/4 v3, 0x0

    .line 208
    .local v3, "b":F
    cmpl-float v10, p3, v7

    if-lez v10, :cond_2

    .line 209
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, p6, v10

    mul-float v2, v7, v10

    .line 215
    :goto_1
    cmpl-float v10, p4, v6

    if-lez v10, :cond_4

    .line 216
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, p6, v10

    mul-float v3, v6, v10

    .line 223
    :goto_2
    int-to-float v10, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v0, p2

    int-to-float v11, v0

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move/from16 v0, p6

    move/from16 v1, p6

    invoke-virtual {v9, v0, v1, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 225
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    move/from16 v0, p5

    int-to-float v10, v0

    int-to-float v11, p1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move/from16 v0, p2

    int-to-float v12, v0

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 228
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/high16 v10, -0x1000000

    invoke-virtual {v5, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 230
    move-object/from16 v0, p9

    invoke-virtual {v5, p0, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 233
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const/4 p0, 0x0

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 250
    .end local v2    # "a":F
    .end local v3    # "b":F
    .end local v4    # "bm1":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "dh":F
    .end local v7    # "dw":F
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :goto_3
    return-object v4

    .line 199
    .restart local v4    # "bm1":Landroid/graphics/Bitmap;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_1
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v9, v0, v1, v10, v11}, Landroid/graphics/Matrix;->preScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    .end local v4    # "bm1":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 244
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 250
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    const/4 v4, 0x0

    goto :goto_3

    .line 210
    .restart local v2    # "a":F
    .restart local v3    # "b":F
    .restart local v4    # "bm1":Landroid/graphics/Bitmap;
    .restart local v6    # "dh":F
    .restart local v7    # "dw":F
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    neg-float v10, v7

    cmpg-float v10, p3, v10

    if-gez v10, :cond_3

    .line 211
    neg-float v10, v7

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, p6, v11

    mul-float v2, v10, v11

    goto :goto_1

    .line 213
    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, p6, v10

    mul-float v2, p3, v10

    goto :goto_1

    .line 217
    :cond_4
    neg-float v10, v6

    cmpg-float v10, p4, v10

    if-gez v10, :cond_5

    .line 218
    neg-float v10, v6

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, p6, v11

    mul-float v3, v10, v11

    goto :goto_2

    .line 220
    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, p6, v10

    mul-float v3, p4, v10

    goto :goto_2

    .line 245
    .end local v2    # "a":F
    .end local v3    # "b":F
    .end local v4    # "bm1":Landroid/graphics/Bitmap;
    .end local v6    # "dh":F
    .end local v7    # "dw":F
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :catch_1
    move-exception v8

    .line 246
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v10
.end method

.method public static adjustTran(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "mPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 157
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "bm1":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .local v3, "matrix":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 160
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 162
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 164
    invoke-virtual {v1, p0, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 p0, 0x0

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    .end local v0    # "bm1":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catch_1
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v4
.end method

.method public static bitmap2bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    .line 124
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x63

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static bitmap2bytesJ(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    .line 133
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x63

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static bitmapCompress(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v2, 0x0

    .line 118
    :goto_0
    return-object v2

    .line 102
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x59

    .line 105
    .local v1, "quality":I
    const-string v2, "zzc"

    const-string v3, "bitmap2Bytes start."

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 117
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static getBitmapByC(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "dstW"    # F
    .param p2, "dstH"    # F

    .prologue
    const/4 v9, 0x1

    .line 433
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 434
    .local v5, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 435
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 436
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 438
    .local v7, "width":I
    int-to-float v9, v7

    div-float v8, p1, v9

    .line 440
    .local v8, "widthScale":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 441
    .local v3, "height":I
    int-to-float v9, v3

    div-float v4, p2, v9

    .line 442
    .local v4, "heightScale":F
    float-to-int v9, p1

    float-to-int v10, p2

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    .local v0, "bm1":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 448
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v4, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 450
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 451
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 452
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 453
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    const/4 p0, 0x0

    .line 462
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 464
    .end local v0    # "bm1":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return-object v0

    .line 457
    .restart local v0    # "bm1":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 464
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :catch_1
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v9
.end method

.method public static getBitmapSizeByC(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "dstW"    # F
    .param p2, "dstH"    # F

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 401
    .local v6, "width":I
    int-to-float v8, v6

    div-float v7, p1, v8

    .line 403
    .local v7, "widthScale":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 404
    .local v3, "height":I
    int-to-float v8, v3

    div-float v4, p2, v8

    .line 405
    .local v4, "heightScale":F
    float-to-int v8, p1

    float-to-int v9, p2

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    .local v0, "bm1":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 411
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 413
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 414
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 415
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    const/4 p0, 0x0

    .line 425
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 427
    .end local v0    # "bm1":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return-object v0

    .line 420
    .restart local v0    # "bm1":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 427
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    :catch_1
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v8
.end method

.method public static rotateMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;FF)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "point"    # Lorg/opencv/core/Point;
    .param p2, "videoAngle"    # F
    .param p3, "videoScale"    # F

    .prologue
    .line 549
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 550
    .local v0, "dst":Lorg/opencv/core/Mat;
    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, p2

    float-to-double v2, v2

    float-to-double v4, p3

    invoke-static {p1, v2, v3, v4, v5}, Lorg/opencv/imgproc/Imgproc;->getRotationMatrix2D(Lorg/opencv/core/Point;DD)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 551
    .local v1, "rotateMat":Lorg/opencv/core/Mat;
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/opencv/imgproc/Imgproc;->warpAffine(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    .line 552
    return-object v0
.end method

.method public static yuv2Mat(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;FF)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "yuv"    # Lorg/opencv/core/Mat;
    .param p1, "point"    # Lorg/opencv/core/Point;
    .param p2, "videoAngle"    # F
    .param p3, "videoScale"    # F

    .prologue
    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 479
    .local v2, "start":J
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 480
    .local v1, "rgb":Lorg/opencv/core/Mat;
    const/16 v4, 0x64

    invoke-static {p0, v1, v4}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 489
    const-string v4, "dgptime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "warpAffine\u8017\u65f60: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 499
    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v4, p2

    invoke-static {v1, p1, v4, p3}, Lcom/fh/hdutil/BitmapUtil;->rotateMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;FF)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 501
    .local v0, "dst":Lorg/opencv/core/Mat;
    const-string v4, "dgptime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "warpAffine\u8017\u65f600: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v0
.end method

.method public static zoomImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v7, 0x0

    .line 72
    :goto_0
    return-object v7

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 62
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 64
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 65
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 67
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 72
    .local v7, "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static zoomImg([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "rawData"    # [B
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 23
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    .line 25
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0

    invoke-static {p0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 26
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 27
    invoke-static {v1, p1, p2}, Lcom/fh/hdutil/BitmapUtil;->zoomImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zoomImg2Byte([BII)[B
    .locals 6
    .param p0, "rawData"    # [B
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 40
    if-eqz p0, :cond_0

    array-length v4, p0

    if-lez v4, :cond_0

    .line 42
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    invoke-static {p0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 44
    invoke-static {v1, p1, p2}, Lcom/fh/hdutil/BitmapUtil;->zoomImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/fh/hdutil/BitmapUtil;->bitmapCompress(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 46
    .local v2, "bytes":[B
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "bytes":[B
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static zoomImgByC(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # F
    .param p2, "newHeight"    # F
    .param p3, "mPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 79
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 81
    .local v2, "height":I
    float-to-int v7, p1

    float-to-int v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bm1":Landroid/graphics/Bitmap;
    int-to-float v7, v6

    div-float v5, p1, v7

    .line 85
    .local v5, "scaleWidth":F
    int-to-float v7, v2

    div-float v4, p2, v7

    .line 87
    .local v4, "scaleHeight":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 91
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
