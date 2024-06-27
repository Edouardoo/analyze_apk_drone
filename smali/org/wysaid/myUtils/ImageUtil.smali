.class public Lorg/wysaid/myUtils/ImageUtil;
.super Lorg/wysaid/myUtils/FileUtil;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/myUtils/ImageUtil$FaceRects;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/wysaid/myUtils/FileUtil;-><init>()V

    return-void
.end method

.method public static findFaceByBitmap(Landroid/graphics/Bitmap;)Lorg/wysaid/myUtils/ImageUtil$FaceRects;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/wysaid/myUtils/ImageUtil;->findFaceByBitmap(Landroid/graphics/Bitmap;I)Lorg/wysaid/myUtils/ImageUtil$FaceRects;

    move-result-object v0

    return-object v0
.end method

.method public static findFaceByBitmap(Landroid/graphics/Bitmap;I)Lorg/wysaid/myUtils/ImageUtil$FaceRects;
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "maxFaces"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    if-nez p0, :cond_1

    .line 57
    const-string v5, "libCGE_java"

    const-string v6, "Invalid Bitmap for Face Detection!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 82
    :cond_0
    :goto_0
    return-object v3

    .line 61
    :cond_1
    move-object v2, p0

    .line 64
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_2

    .line 65
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    :cond_2
    new-instance v3, Lorg/wysaid/myUtils/ImageUtil$FaceRects;

    invoke-direct {v3}, Lorg/wysaid/myUtils/ImageUtil$FaceRects;-><init>()V

    .line 69
    .local v3, "rects":Lorg/wysaid/myUtils/ImageUtil$FaceRects;
    new-array v5, p1, [Landroid/media/FaceDetector$Face;

    iput-object v5, v3, Lorg/wysaid/myUtils/ImageUtil$FaceRects;->faces:[Landroid/media/FaceDetector$Face;

    .line 72
    :try_start_0
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v5, v6, p1}, Landroid/media/FaceDetector;-><init>(III)V

    .line 73
    .local v0, "detector":Landroid/media/FaceDetector;
    iget-object v5, v3, Lorg/wysaid/myUtils/ImageUtil$FaceRects;->faces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v2, v5}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v5

    iput v5, v3, Lorg/wysaid/myUtils/ImageUtil$FaceRects;->numOfFaces:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-eq v2, p0, :cond_0

    .line 80
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 74
    .end local v0    # "detector":Landroid/media/FaceDetector;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "libCGE_java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFaceByBitmap error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 76
    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    invoke-static {}, Lorg/wysaid/myUtils/ImageUtil;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    .local v0, "currentTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "filename":Ljava/lang/String;
    invoke-static {p0, v2}, Lorg/wysaid/myUtils/ImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v3, "libCGE_java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saving Bitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, "fileout":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    .local v0, "bufferOutStream":Ljava/io/BufferedOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 33
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 34
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const-string v3, "libCGE_java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " saved!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "bufferOutStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "fileout":Ljava/io/FileOutputStream;
    .end local p1    # "filename":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 35
    .restart local p1    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "libCGE_java"

    const-string v4, "Err when saving bitmap..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    const/4 p1, 0x0

    goto :goto_0
.end method
