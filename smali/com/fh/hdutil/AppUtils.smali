.class public Lcom/fh/hdutil/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fh/hdutil/AppUtils$HiddenFilter;
    }
.end annotation


# static fields
.field private static final REC_PATH:Ljava/lang/String; = "/DCIM/Camera"

.field private static final TAG:Ljava/lang/String; = "AppUtils"

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustRtsResolution(II)I
    .locals 2
    .param p0, "rtsWidth"    # I
    .param p1, "rtsHeight"    # I

    .prologue
    .line 2518
    const/16 v1, 0x780

    if-ne p0, v1, :cond_0

    const/16 v1, 0x438

    if-ne p1, v1, :cond_0

    .line 2519
    const/4 v0, 0x2

    .line 2525
    .local v0, "resolution":I
    :goto_0
    return v0

    .line 2520
    .end local v0    # "resolution":I
    :cond_0
    const/16 v1, 0x280

    if-ne p0, v1, :cond_1

    const/16 v1, 0x1e0

    if-ne p1, v1, :cond_1

    .line 2521
    const/4 v0, 0x0

    .restart local v0    # "resolution":I
    goto :goto_0

    .line 2523
    .end local v0    # "resolution":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "resolution":I
    goto :goto_0
.end method

.method public static bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 1028
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1029
    :cond_0
    const/4 v3, 0x0

    .line 1049
    :cond_1
    :goto_0
    return v3

    .line 1031
    :cond_2
    const/4 v1, 0x0

    .line 1032
    .local v1, "outStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1034
    .local v3, "result":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 1040
    if-eqz v2, :cond_4

    .line 1042
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1043
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1046
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1044
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1046
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1037
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1038
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1040
    if-eqz v1, :cond_1

    .line 1042
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1043
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1044
    :catch_2
    move-exception v0

    .line 1045
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1040
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_3

    .line 1042
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1043
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1046
    :cond_3
    :goto_3
    throw v4

    .line 1044
    :catch_3
    move-exception v0

    .line 1045
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1040
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1037
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static bytesToFile([BLjava/lang/String;)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "outputPath"    # Ljava/lang/String;

    .prologue
    .line 1060
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1061
    const/4 v1, 0x0

    .line 1063
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1066
    const/4 v3, 0x1

    .line 1070
    if-eqz v2, :cond_0

    .line 1072
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1079
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return v3

    .line 1073
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1067
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 1068
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1070
    if-eqz v1, :cond_1

    .line 1072
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1079
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1073
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1070
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 1072
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1075
    :cond_2
    :goto_4
    throw v3

    .line 1073
    :catch_3
    move-exception v0

    .line 1074
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1070
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 1067
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static cameraIsexit()Z
    .locals 5

    .prologue
    .line 2283
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 2284
    .local v2, "sd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getSettingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2285
    .local v1, "recordDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2288
    const/4 v3, 0x0

    .line 2290
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static changeAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1971
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1972
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1973
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1975
    .local v0, "config":Landroid/content/res/Configuration;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    .line 1976
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1979
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1980
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1981
    return-void

    .line 1977
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_0

    .line 1978
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static changeXonSpeed(ID)I
    .locals 13
    .param p0, "x"    # I
    .param p1, "speed"    # D

    .prologue
    const/16 v4, 0xff

    const/16 v3, 0x80

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 3005
    add-double v0, p1, v6

    .line 3006
    .local v0, "count":D
    if-ge p0, v3, :cond_0

    if-lez p0, :cond_0

    .line 3007
    div-double v4, v0, v10

    sub-double v4, v6, v4

    mul-double/2addr v4, v8

    div-double v6, v0, v10

    int-to-double v8, p0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 3017
    .local v2, "vy":I
    :goto_0
    const-string v3, "changeXonSpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-double v6, v0, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    return v2

    .line 3008
    .end local v2    # "vy":I
    :cond_0
    if-gtz p0, :cond_1

    .line 3009
    div-double v4, v0, v10

    sub-double v4, v6, v4

    mul-double/2addr v4, v8

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_0

    .line 3010
    .end local v2    # "vy":I
    :cond_1
    if-lt p0, v4, :cond_2

    .line 3011
    div-double v4, v0, v10

    mul-double/2addr v4, v8

    const-wide v6, 0x405fc00000000000L    # 127.0

    add-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_0

    .line 3012
    .end local v2    # "vy":I
    :cond_2
    if-le p0, v3, :cond_3

    if-ge p0, v4, :cond_3

    .line 3013
    div-double v4, v0, v10

    add-int/lit8 v3, p0, -0x80

    int-to-double v6, v3

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_0

    .line 3015
    .end local v2    # "vy":I
    :cond_3
    const/16 v2, 0x80

    .restart local v2    # "vy":I
    goto :goto_0
.end method

.method public static checkCameraDir(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 2534
    const-string v1, "FMedia"

    .line 2535
    .local v1, "cameraDir":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2536
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v0

    .line 2537
    .local v0, "camera":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2538
    const-string v1, "RMedia"

    .line 2541
    .end local v0    # "camera":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static checkCameraType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "dVersion"    # Ljava/lang/String;
    .param p1, "pVersion"    # Ljava/lang/String;

    .prologue
    .line 3181
    const/4 v0, 0x0

    .line 3182
    .local v0, "isH_Device":Z
    const/4 v1, 0x0

    .line 3184
    .local v1, "isH_Phone":Z
    const-string v2, "X"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3185
    const/4 v0, 0x0

    .line 3192
    :goto_0
    const-string v2, "X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3193
    const/4 v1, 0x0

    .line 3200
    :goto_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 3201
    :cond_1
    const/4 v2, 0x1

    .line 3204
    :goto_2
    return v2

    .line 3186
    :cond_2
    const-string v2, "H"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3187
    const/4 v0, 0x1

    goto :goto_0

    .line 3189
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 3194
    :cond_4
    const-string v2, "H"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3195
    const/4 v1, 0x1

    goto :goto_1

    .line 3197
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 3203
    :cond_6
    const-string v2, "hhhh"

    const-string v3, "\u955c\u5934\u4e0d\u540c"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static checkFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 255
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkFrameType([B)I
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 2554
    const/4 v1, 0x0

    .line 2555
    .local v1, "type":I
    if-eqz p0, :cond_0

    array-length v2, p0

    if-le v2, v7, :cond_0

    .line 2556
    new-array v0, v7, [B

    .line 2557
    .local v0, "head":[B
    invoke-static {p0, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2558
    aget-byte v2, v0, v3

    if-nez v2, :cond_0

    aget-byte v2, v0, v6

    if-nez v2, :cond_0

    .line 2559
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-ne v2, v6, :cond_3

    .line 2560
    aget-byte v2, v0, v4

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    .line 2561
    const v1, 0xa1a1

    .line 2582
    .end local v0    # "head":[B
    :cond_0
    :goto_0
    return v1

    .line 2562
    .restart local v0    # "head":[B
    :cond_1
    aget-byte v2, v0, v4

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2

    .line 2563
    const v1, 0xc2c2

    goto :goto_0

    .line 2564
    :cond_2
    aget-byte v2, v0, v4

    const/16 v3, 0x68

    if-eq v2, v3, :cond_0

    .line 2566
    aget-byte v2, v0, v4

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2569
    :cond_3
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    aget-byte v2, v0, v4

    if-ne v2, v6, :cond_0

    .line 2570
    aget-byte v2, v0, v5

    const/16 v3, 0x67

    if-ne v2, v3, :cond_4

    .line 2571
    const v1, 0xa1a1

    goto :goto_0

    .line 2572
    :cond_4
    aget-byte v2, v0, v5

    const/16 v3, 0x41

    if-ne v2, v3, :cond_5

    .line 2573
    const v1, 0xc2c2

    goto :goto_0

    .line 2574
    :cond_5
    aget-byte v2, v0, v5

    const/16 v3, 0x68

    if-eq v2, v3, :cond_0

    .line 2576
    aget-byte v2, v0, v5

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method public static checkIsEmptyFolder(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 2158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2159
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2160
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2161
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2162
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 2163
    :cond_0
    const/4 v2, 0x1

    .line 2167
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkNetworkIsAvailable()Z
    .locals 5

    .prologue
    const/16 v4, 0x50

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v1, "map":Ljava/util/HashMap;
    const-string v2, "name"

    const-string v3, "baidu.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "host"

    const-string v3, "111.13.101.208"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v2, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    .restart local v1    # "map":Ljava/util/HashMap;
    const-string v2, "name"

    const-string v3, "baidu.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "host"

    const-string v3, "123.125.114.144"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    .restart local v1    # "map":Ljava/util/HashMap;
    const-string v2, "name"

    const-string v3, "baidu.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "host"

    const-string v3, "180.149.132.47"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 208
    .restart local v1    # "map":Ljava/util/HashMap;
    const-string v2, "name"

    const-string v3, "baidu.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "host"

    const-string v3, "220.181.57.217"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v2, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    .restart local v1    # "map":Ljava/util/HashMap;
    const-string v2, "name"

    const-string v3, "qq.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "host"

    const-string v3, "125.39.240.113"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    .restart local v1    # "map":Ljava/util/HashMap;
    const-string v2, "name"

    const-string v3, "qq.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v2, "host"

    const-string v3, "61.135.157.156"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Lcom/zh_jieli/juson/netcheck/OuterChecker;->check(Ljava/util/List;I)Z

    move-result v2

    return v2
.end method

.method public static checkPcbType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "dVersion"    # Ljava/lang/String;
    .param p1, "pVersion"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3153
    const/4 v0, 0x0

    .line 3154
    .local v0, "isF_Device":Z
    const/4 v1, 0x0

    .line 3156
    .local v1, "isF_Phone":Z
    const-string v3, "F"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "f"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3157
    :cond_0
    const/4 v0, 0x1

    .line 3164
    :goto_0
    const-string v3, "F"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "f"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3165
    :cond_1
    const/4 v1, 0x1

    .line 3172
    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 3173
    :cond_3
    const/4 v2, 0x1

    .line 3176
    :cond_4
    :goto_2
    return v2

    .line 3158
    :cond_5
    const-string v3, "M"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3159
    const/4 v0, 0x0

    goto :goto_0

    .line 3166
    :cond_6
    const-string v3, "M"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3167
    const/4 v1, 0x0

    goto :goto_1

    .line 3175
    :cond_7
    const-string v3, "hhhh"

    const-string v4, "\u6a21\u5757\u4e0d\u540c"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 36
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "updateType"    # I

    .prologue
    .line 1711
    if-nez p0, :cond_1

    .line 1712
    const-string v31, "AppUtils"

    const-string v32, "mContext is null"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const/16 v26, 0x0

    .line 1856
    :cond_0
    :goto_0
    return-object v26

    .line 1716
    :cond_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v16

    .line 1717
    .local v16, "mApplication":Lcom/hfufo/rxdrone/MainApplication;
    if-nez v16, :cond_2

    .line 1718
    const-string v31, "AppUtils"

    const-string v32, "mApplication is null"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const/16 v26, 0x0

    goto :goto_0

    .line 1721
    :cond_2
    const v31, 0x7f070006

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/fh/hdutil/AppUtils;->getFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1722
    .local v3, "appDesc":Ljava/lang/String;
    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->parseApplicationMsg(Ljava/lang/String;)Lcom/hfufo/bean/AppInfo;

    move-result-object v4

    .line 1723
    .local v4, "appInfo":Lcom/hfufo/bean/AppInfo;
    if-nez v4, :cond_3

    .line 1724
    const-string v31, "AppUtils"

    const-string v32, "appInfo is null"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const/16 v26, 0x0

    goto :goto_0

    .line 1728
    :cond_3
    invoke-virtual {v4}, Lcom/hfufo/bean/AppInfo;->getAppVersion()I

    move-result v5

    .line 1729
    .local v5, "currentAPK":I
    if-nez v5, :cond_4

    .line 1730
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "currentAPK="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const/16 v26, 0x0

    goto :goto_0

    .line 1734
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "upgrade"

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v34}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1735
    .local v27, "uploadPath":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "version"

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v34}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1737
    .local v30, "versionPath":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "android"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "version.json"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1738
    .local v21, "serverAndroidPath":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "firmware"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "version.json"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1739
    .local v22, "serverFirmwarePath":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 1744
    invoke-static {}, Lcom/fh/hdutil/FTPClientUtil;->getInstance()Lcom/fh/hdutil/FTPClientUtil;

    move-result-object v14

    .line 1745
    .local v14, "ftpClientUtil":Lcom/fh/hdutil/FTPClientUtil;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    .local v19, "platforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v31, "android"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    const-string v31, "firmware"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V

    .line 1751
    .end local v14    # "ftpClientUtil":Lcom/fh/hdutil/FTPClientUtil;
    .end local v19    # "platforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/16 v26, 0x0

    .line 1752
    .local v26, "updatePath":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1753
    .local v24, "serverLatestAPK":I
    const-string v25, ""

    .line 1754
    .local v25, "serverLatestSDKStr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1755
    .local v15, "isSameVersion":Z
    packed-switch p1, :pswitch_data_0

    .line 1847
    :cond_6
    :goto_1
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1848
    if-eqz v15, :cond_16

    .line 1849
    const v31, 0x7f080073

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 1758
    :pswitch_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1760
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 1761
    .local v11, "files":[Ljava/io/File;
    array-length v0, v11

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_2
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v9, v11, v31

    .line 1762
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v34, ".apk"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v34, ".APK"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1763
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v33

    if-nez v33, :cond_8

    .line 1764
    const-string v33, "AppUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Delete failure:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :cond_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 1769
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "files":[Ljava/io/File;
    :cond_9
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-checkAndUpdate- serverAndroidPath : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-static/range {v21 .. v21}, Lcom/fh/hdutil/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1771
    .local v17, "newServerText":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 1772
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1774
    :cond_a
    const/16 v31, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/fh/hdutil/AppUtils;->parseServerTxtInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/hfufo/bean/ServerInfo;

    move-result-object v23

    .line 1775
    .local v23, "serverInfo":Lcom/hfufo/bean/ServerInfo;
    if-eqz v23, :cond_6

    .line 1776
    invoke-virtual/range {v23 .. v23}, Lcom/hfufo/bean/ServerInfo;->getAndroidVersionMap()Ljava/util/Map;

    move-result-object v2

    .line 1777
    .local v2, "androidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz v2, :cond_b

    .line 1778
    invoke-virtual {v4}, Lcom/hfufo/bean/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    .line 1779
    .local v28, "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v28, :cond_b

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_b

    .line 1780
    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1783
    .end local v28    # "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b
    if-lez v24, :cond_6

    .line 1784
    move/from16 v0, v24

    if-le v0, v5, :cond_c

    .line 1785
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "android"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/hfufo/bean/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1786
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " APK updatePath : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1787
    :cond_c
    move/from16 v0, v24

    if-ne v0, v5, :cond_d

    .line 1788
    const/4 v15, 0x1

    .line 1789
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-checkAndUpdate- currentAPK = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1791
    :cond_d
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-checkAndUpdate- serverLatestAPK = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ,currentAPK = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1797
    .end local v2    # "androidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v17    # "newServerText":Ljava/lang/String;
    .end local v23    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    :pswitch_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "dev_desc.txt"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1798
    .local v18, "output":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fh/hdutil/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1799
    .local v7, "descTxt":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 1800
    const-string v31, "AppUtils"

    const-string v32, " SDK update >> descTxt is empty!"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1803
    :cond_e
    invoke-static {v7}, Lcom/fh/hdutil/AppUtils;->parseDeviceDescTxt(Ljava/lang/String;)Lcom/hfufo/bean/DeviceDesc;

    move-result-object v8

    .line 1804
    .local v8, "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lcom/hfufo/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 1805
    :cond_f
    const-string v31, "AppUtils"

    const-string v32, " SDK update >> deviceInfo or Firmware_version is empty !"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1808
    :cond_10
    invoke-virtual {v8}, Lcom/hfufo/bean/DeviceDesc;->getProduct_type()Ljava/lang/String;

    move-result-object v20

    .line 1809
    .local v20, "product":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 1810
    const-string v31, "AppUtils"

    const-string v32, " SDK update >> product is empty!"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1813
    :cond_11
    invoke-virtual {v8}, Lcom/hfufo/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v6

    .line 1814
    .local v6, "currentSDK":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 1815
    const-string v31, "AppUtils"

    const-string v32, " SDK update >> currentSDK is empty!"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1818
    :cond_12
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " SDK update >> currentSDK : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lcom/hfufo/rxdrone/MainApplication;->setDeviceDesc(Lcom/hfufo/bean/DeviceDesc;)V

    .line 1820
    invoke-static/range {v22 .. v22}, Lcom/fh/hdutil/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1821
    .local v13, "firmwareServerText":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1822
    const-string v31, "AppUtils"

    const-string v32, " SDK update >> firmwareServerText is empty!"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1825
    :cond_13
    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v13}, Lcom/fh/hdutil/AppUtils;->parseServerTxtInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/hfufo/bean/ServerInfo;

    move-result-object v23

    .line 1826
    .restart local v23    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    if-eqz v23, :cond_14

    .line 1827
    invoke-virtual/range {v23 .. v23}, Lcom/hfufo/bean/ServerInfo;->getFirmwareVersionMap()Ljava/util/Map;

    move-result-object v12

    .line 1828
    .local v12, "firmwareMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v12, :cond_14

    .line 1829
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    .line 1830
    .local v29, "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v29, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_14

    .line 1831
    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "serverLatestSDKStr":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 1835
    .end local v12    # "firmwareMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v29    # "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "serverLatestSDKStr":Ljava/lang/String;
    :cond_14
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 1836
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " serverLatestSDKStr : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v31

    if-lez v31, :cond_15

    .line 1838
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "firmware"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1839
    const-string v31, "AppUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " SDK updatePath : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1840
    :cond_15
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 1841
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1851
    .end local v6    # "currentSDK":Ljava/lang/String;
    .end local v7    # "descTxt":Ljava/lang/String;
    .end local v8    # "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    .end local v13    # "firmwareServerText":Ljava/lang/String;
    .end local v18    # "output":Ljava/lang/String;
    .end local v20    # "product":Ljava/lang/String;
    .end local v23    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    :cond_16
    const-string v31, "AppUtils"

    const-string v32, " update failure"

    invoke-static/range {v31 .. v32}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static compareDeviceVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "deviceVersion"    # Ljava/lang/String;
    .param p1, "phoneVersion"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3117
    const/4 v0, 0x0

    .line 3118
    .local v0, "linesDev":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3119
    .local v1, "linesPho":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3120
    const-string v4, "hhhh"

    invoke-static {v4, p0}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3130
    const-string v4, "hhhh"

    invoke-static {v4, p1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3139
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 3140
    const-string v4, "hhhh"

    const-string v5, "\u578b\u53f7\u5224\u65ad"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    .line 3142
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3143
    const-string v3, "hhhh"

    const-string v4, "\u578b\u53f7\u76f8\u540c"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    :goto_2
    return v2

    .line 3127
    :cond_0
    const-string v4, "hhhh"

    const-string v5, "deviceVersion.isEmpty()"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3137
    :cond_1
    const-string v4, "hhhh"

    const-string v5, "phoneVersion.isEmpty()"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3146
    :cond_2
    const-string v2, "hhhh"

    const-string v4, "\u578b\u53f7\u5224\u65ad\u4e0d\u540c"

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    :cond_3
    const-string v2, "hhhh"

    const-string v4, "\u578b\u53f7\u4e0d\u76f8\u540c"

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3149
    goto :goto_2
.end method

.method public static computeCurrentAngle(FFFF)I
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "mPointX"    # F
    .param p3, "mPointY"    # F

    .prologue
    .line 3082
    sub-float v2, p0, p2

    sub-float v3, p0, p2

    mul-float/2addr v2, v3

    sub-float v3, p1, p3

    sub-float v4, p1, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 3083
    .local v1, "distance":F
    sub-float v2, p0, p2

    div-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 3084
    .local v0, "degree":I
    cmpg-float v2, p1, p3

    if-gez v2, :cond_0

    .line 3085
    neg-int v0, v0

    .line 3087
    :cond_0
    if-gez v0, :cond_1

    .line 3088
    add-int/lit16 v0, v0, 0x168

    .line 3091
    :cond_1
    const-string v2, "RoundSpinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",degreeCurrent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    return v0
.end method

.method public static convertDataList(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/ItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 647
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 649
    new-instance v3, Ljava/util/TreeSet;

    new-instance v9, Lcom/fh/hdutil/AppUtils$3;

    invoke-direct {v9}, Lcom/fh/hdutil/AppUtils$3;-><init>()V

    invoke-direct {v3, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 661
    .local v3, "dateSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hfufo/bean/FileInfo;

    .line 662
    .local v5, "info":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v5}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fh/hdutil/AppUtils;->subDateFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "date":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 664
    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    .end local v2    # "date":Ljava/lang/String;
    .end local v5    # "info":Lcom/hfufo/bean/FileInfo;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v8, "itemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/ItemBean;>;"
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 670
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 671
    .restart local v2    # "date":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v6, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v0, 0x0

    .line 673
    .local v0, "copyStart":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hfufo/bean/FileInfo;

    .line 674
    .local v4, "fileInfo":Lcom/hfufo/bean/FileInfo;
    if-eqz v4, :cond_3

    .line 675
    invoke-virtual {v4}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "createTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 677
    const/4 v0, 0x1

    .line 678
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 680
    :cond_4
    if-eqz v0, :cond_3

    .line 686
    .end local v1    # "createTime":Ljava/lang/String;
    .end local v4    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 687
    new-instance v7, Lcom/hfufo/bean/ItemBean;

    invoke-direct {v7}, Lcom/hfufo/bean/ItemBean;-><init>()V

    .line 688
    .local v7, "itemBean":Lcom/hfufo/bean/ItemBean;
    invoke-virtual {v7, v2}, Lcom/hfufo/bean/ItemBean;->setData(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v7, v6}, Lcom/hfufo/bean/ItemBean;->setInfoList(Ljava/util/List;)V

    .line 690
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 696
    .end local v0    # "copyStart":Z
    .end local v2    # "date":Ljava/lang/String;
    .end local v3    # "dateSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    .end local v6    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v7    # "itemBean":Lcom/hfufo/bean/ItemBean;
    .end local v8    # "itemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/ItemBean;>;"
    :cond_6
    const/4 v8, 0x0

    :cond_7
    return-object v8
.end method

.method public static createFilenameWidthTime(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileType"    # I
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 2203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2205
    .local v2, "time":J
    packed-switch p0, :pswitch_data_0

    .line 2215
    const-string v1, "AppUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2208
    :pswitch_0
    const-string v0, "REC"

    .line 2218
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2211
    .end local v0    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string v0, "EME"

    .line 2212
    .restart local v0    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 2205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1185
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1189
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1190
    const-string v2, "AppUtils"

    const-string v3, "delete file success!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1194
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1195
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1196
    .local v1, "childFiles":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_4

    .line 1197
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    const-string v2, "AppUtils"

    const-string v3, "delete empty file success!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    :cond_4
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    .line 1203
    .local v0, "childFile":Ljava/io/File;
    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->deleteFile(Ljava/io/File;)V

    .line 1202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1205
    .end local v0    # "childFile":Ljava/io/File;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    const-string v2, "AppUtils"

    const-string v3, "delete empty file success!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static descSort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "drs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    new-instance v0, Lcom/fh/hdutil/AppUtils$1;

    invoke-direct {v0}, Lcom/fh/hdutil/AppUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 453
    :cond_0
    return-void
.end method

.method private static descSort([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "drs"    # [Ljava/lang/String;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 471
    :cond_0
    return-object p0

    .line 462
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 463
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 464
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 465
    aget-object v2, p0, v1

    .line 466
    .local v2, "temp":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v1

    .line 467
    add-int/lit8 v3, v1, 0x1

    aput-object v2, p0, v3

    .line 463
    .end local v2    # "temp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static descSortWay(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 481
    new-instance v0, Lcom/fh/hdutil/AppUtils$2;

    invoke-direct {v0}, Lcom/fh/hdutil/AppUtils$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 498
    :cond_0
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 2785
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2786
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 148
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 149
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 717
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "url":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    return-object v0
.end method

.method public static getAppStoragePath(Lcom/hfufo/rxdrone/MainApplication;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "application"    # Lcom/hfufo/rxdrone/MainApplication;
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "isRearView"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2790
    if-nez p0, :cond_0

    .line 2791
    const-string v1, "AppUtils"

    const-string v2, "getAppStoragePath: application is null!"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    :goto_0
    return-object v0

    .line 2795
    :cond_0
    if-eqz p2, :cond_1

    .line 2796
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RearView"

    invoke-static {v0, v1, p1, v2}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2798
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAudioContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 907
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 908
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 911
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 913
    .local v9, "id":I
    const-string v0, "content://media/external/audio/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 914
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 921
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v9    # "id":I
    :cond_0
    :goto_0
    return-object v5

    .line 916
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 918
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2774
    const/4 v0, 0x0

    .line 2775
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_rear_camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2778
    :cond_0
    return-object v0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 2008
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2009
    .local v4, "file":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2012
    .local v5, "statFs":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 2013
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 2014
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 2019
    .local v0, "blockCount":J
    :goto_0
    mul-long v6, v2, v0

    return-wide v6

    .line 2016
    .end local v0    # "blockCount":J
    .end local v2    # "blockSize":J
    :cond_0
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 2017
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .restart local v0    # "blockCount":J
    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2060
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2272
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2273
    .local v4, "sd":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getSettingPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    .local v1, "recordDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2275
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .end local v1    # "recordDir":Ljava/lang/String;
    .local v2, "recordDir":Ljava/lang/String;
    move-object v3, v1

    .line 2279
    .end local v2    # "recordDir":Ljava/lang/String;
    .local v3, "recordDir":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "recordDir":Ljava/lang/String;
    .restart local v1    # "recordDir":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .end local v1    # "recordDir":Ljava/lang/String;
    .restart local v2    # "recordDir":Ljava/lang/String;
    move-object v3, v1

    .end local v2    # "recordDir":Ljava/lang/String;
    .restart local v3    # "recordDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCameraType(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 2766
    const/4 v0, 0x1

    .line 2767
    .local v0, "currentCamera":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/DCIM/2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2768
    const/4 v0, 0x2

    .line 2770
    :cond_0
    return v0
.end method

.method public static getCrashVideoName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2196
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mov"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDeviceVersion(I)Ljava/lang/String;
    .locals 7
    .param p0, "type"    # I

    .prologue
    .line 3096
    const-string v1, "-null"

    .line 3097
    .local v1, "deviceVersion":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 3098
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3099
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "device_version_msg"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3100
    .local v3, "deviceVersionMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->parseDeviceVersionText(Ljava/lang/String;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    move-result-object v2

    .line 3102
    .local v2, "deviceVersionInfo":Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    if-eqz v2, :cond_0

    .line 3103
    invoke-virtual {v2}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 3113
    .end local v2    # "deviceVersionInfo":Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    .end local v3    # "deviceVersionMsg":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 3107
    :cond_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v0

    .line 3108
    .local v0, "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v0, :cond_0

    .line 3109
    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDistance(FF)D
    .locals 4
    .param p0, "x1"    # F
    .param p1, "x2"    # F

    .prologue
    .line 3070
    const/4 v0, 0x0

    .line 3071
    .local v0, "x0":F
    cmpl-float v1, p0, p1

    if-lez v1, :cond_0

    .line 3072
    sub-float v0, p0, p1

    .line 3076
    :goto_0
    float-to-double v2, v0

    return-wide v2

    .line 3074
    :cond_0
    sub-float v0, p1, p0

    goto :goto_0
.end method

.method public static getDownloadFilename(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;
    .locals 9
    .param p0, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    const/4 v8, 0x1

    .line 933
    const/4 v5, 0x0

    .line 934
    .local v5, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, "filename":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getSource()I

    move-result v7

    if-ne v7, v8, :cond_1

    .line 938
    move-object v5, v3

    .line 957
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 940
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "createTime":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 942
    const-string v7, "\\."

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 943
    .local v6, "strings":[Ljava/lang/String;
    array-length v7, v6

    if-le v7, v8, :cond_0

    .line 944
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v2, v6, v7

    .line 945
    .local v2, "fileSuffix":Ljava/lang/String;
    const-string v1, ""

    .line 946
    .local v1, "filePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_2

    .line 947
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 949
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 952
    .end local v1    # "filePrefix":Ljava/lang/String;
    .end local v2    # "fileSuffix":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getExternalMemorySize()J
    .locals 8

    .prologue
    .line 2028
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2029
    .local v4, "file":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2032
    .local v5, "statFs":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 2033
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 2034
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    .line 2039
    .local v0, "blockCount":J
    :goto_0
    mul-long v6, v2, v0

    return-wide v6

    .line 2036
    .end local v0    # "blockCount":J
    .end local v2    # "blockSize":J
    :cond_0
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 2037
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .restart local v0    # "blockCount":J
    goto :goto_0
.end method

.method public static getExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2049
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getExternalMemorySize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileCreateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "drs"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 2946
    const/4 v0, 0x0

    .line 2947
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2948
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2949
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2950
    .local v2, "strs":[Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 2951
    aget-object v3, v2, v6

    .line 2952
    .local v3, "time":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2953
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xc

    const/16 v6, 0xe

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "strs":[Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    move-object v4, v0

    .line 2958
    :goto_0
    return-object v4

    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object v1, v0

    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "drs"    # Ljava/lang/String;

    .prologue
    .line 2923
    const/4 v1, 0x0

    .line 2924
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2925
    const-string v0, ""

    .line 2926
    .local v0, "endStr":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2927
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2929
    :cond_0
    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2930
    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2931
    .local v2, "strs":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 2933
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2937
    .end local v0    # "endStr":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 831
    const-string v0, "JPG_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    :cond_1
    const-string v0, "image/jpeg"

    .line 842
    :goto_0
    return-object v0

    .line 833
    :cond_2
    const-string v0, ".mov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".MOV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 834
    :cond_3
    const-string v0, "video/quicktime"

    goto :goto_0

    .line 835
    :cond_4
    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 836
    :cond_5
    const-string v0, "video/x-msvideo"

    goto :goto_0

    .line 838
    :cond_6
    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 839
    :cond_7
    const-string v0, "video/mp4"

    goto :goto_0

    .line 842
    :cond_8
    const-string v0, "*/*"

    goto :goto_0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2417
    const-wide/16 v2, 0x0

    .line 2418
    .local v2, "size":J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-wide v4, v2

    .end local v2    # "size":J
    .local v4, "size":J
    move-wide v6, v2

    .line 2436
    .end local v4    # "size":J
    .local v6, "size":J
    :goto_0
    return-wide v6

    .line 2422
    .end local v6    # "size":J
    .restart local v2    # "size":J
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2423
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v9, v1

    if-lez v9, :cond_3

    .line 2424
    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v8, v1, v9

    .line 2426
    .local v8, "subFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2427
    invoke-static {v8}, Lcom/fh/hdutil/AppUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 2424
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2429
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    add-long/2addr v2, v12

    goto :goto_2

    .line 2433
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v8    # "subFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v4, v2

    .end local v2    # "size":J
    .restart local v4    # "size":J
    move-wide v6, v2

    .line 2436
    .end local v4    # "size":J
    .restart local v6    # "size":J
    goto :goto_0
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 18
    .param p0, "size"    # D

    .prologue
    .line 2445
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v4, p0, v14

    .line 2446
    .local v4, "kiloByte":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v4, v14

    if-gez v14, :cond_0

    .line 2447
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Byte"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2471
    :goto_0
    return-object v14

    .line 2450
    :cond_0
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v6, v4, v14

    .line 2451
    .local v6, "megaByte":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v6, v14

    if-gez v14, :cond_1

    .line 2452
    new-instance v8, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2453
    .local v8, "result1":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 2454
    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 2457
    .end local v8    # "result1":Ljava/math/BigDecimal;
    :cond_1
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v2, v6, v14

    .line 2458
    .local v2, "gigaByte":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v2, v14

    if-gez v14, :cond_2

    .line 2459
    new-instance v9, Ljava/math/BigDecimal;

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2460
    .local v9, "result2":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 2461
    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 2464
    .end local v9    # "result2":Ljava/math/BigDecimal;
    :cond_2
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v12, v2, v14

    .line 2465
    .local v12, "teraBytes":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v12, v14

    if-gez v14, :cond_3

    .line 2466
    new-instance v10, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2467
    .local v10, "result3":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 2468
    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "GB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 2470
    .end local v10    # "result3":Ljava/math/BigDecimal;
    :cond_3
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2471
    .local v11, "result4":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "TB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0
.end method

.method public static getFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "rawId"    # I

    .prologue
    .line 1144
    if-nez p0, :cond_1

    .line 1145
    const/4 v4, 0x0

    .line 1175
    :cond_0
    :goto_0
    return-object v4

    .line 1147
    :cond_1
    const/4 v4, 0x0

    .line 1148
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1150
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 1152
    const/4 v6, 0x0

    .line 1153
    .local v6, "size":I
    if-eqz v2, :cond_2

    .line 1154
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 1156
    :cond_2
    if-lez v6, :cond_3

    .line 1157
    new-array v0, v6, [B

    .line 1159
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1160
    .local v3, "length":I
    if-lt v3, v6, :cond_3

    .line 1161
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    move-object v4, v5

    .line 1167
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_0

    .line 1169
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v1

    .line 1171
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1164
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "size":I
    :catch_1
    move-exception v1

    .line 1165
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1167
    if-eqz v2, :cond_0

    .line 1169
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1170
    :catch_2
    move-exception v1

    .line 1171
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1167
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_4

    .line 1169
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1172
    :cond_4
    :goto_1
    throw v7

    .line 1170
    :catch_3
    move-exception v1

    .line 1171
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 853
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 854
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 857
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 859
    .local v9, "id":I
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 860
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 867
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v9    # "id":I
    :cond_0
    :goto_0
    return-object v5

    .line 862
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 864
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static getLocalPhotoName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2244
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLocalPhotoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 2261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2262
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLocalPhotoNameJPG()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2254
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLocalVersionInfo(Ljava/lang/String;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2807
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v0, v9

    .line 2844
    :cond_0
    :goto_0
    return-object v0

    .line 2810
    :cond_1
    new-instance v0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    invoke-direct {v0}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;-><init>()V

    .line 2813
    .local v0, "deviceVersionInfo":Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2815
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "product_type"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2816
    const-string v10, "product_type"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2817
    .local v7, "productTypes":Ljava/lang/String;
    invoke-static {v7}, Lcom/fh/hdutil/AppUtils;->parseDeviceVersionInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2818
    .local v8, "products":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v10, v8

    if-lez v10, :cond_2

    .line 2819
    invoke-virtual {v0, v8}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setProductTypes([Ljava/lang/String;)V

    .line 2822
    .end local v7    # "productTypes":Ljava/lang/String;
    .end local v8    # "products":[Ljava/lang/String;
    :cond_2
    const-string v10, "android_version"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2823
    const-string v10, "android_version"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setLocalAndroidVersion(Ljava/lang/String;)V

    .line 2825
    :cond_3
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->getProductTypes()[Ljava/lang/String;

    move-result-object v7

    .line 2826
    .local v7, "productTypes":[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v10, v7

    if-lez v10, :cond_0

    .line 2827
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2828
    .local v5, "matchFirmwareVersions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    array-length v11, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v6, v7, v10

    .line 2829
    .local v6, "productType":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2830
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2831
    .local v3, "matchDeviceVersion":Ljava/lang/String;
    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->parseDeviceVersionInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2832
    .local v4, "matchDeviceVersions":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v12, v4

    if-lez v12, :cond_4

    .line 2833
    invoke-static {v4}, Lcom/fh/hdutil/AppUtils;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2834
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2828
    .end local v3    # "matchDeviceVersion":Ljava/lang/String;
    .end local v4    # "matchDeviceVersions":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2838
    .end local v6    # "productType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v5}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setFirmwareVersions(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2840
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "matchFirmwareVersions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v7    # "productTypes":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2841
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v9

    .line 2842
    goto :goto_0
.end method

.method public static getMediaDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 2758
    const-string v0, "FMedia"

    .line 2759
    .local v0, "cameraDir":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/DCIM/2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2760
    const-string v0, "RMedia"

    .line 2762
    :cond_0
    return-object v0
.end method

.method public static getQJPhotoName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2249
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPG_QJ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRecordAviName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2236
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".avi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRecordMp4Name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2231
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRecordVideoName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2226
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mov"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRootPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2266
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2267
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2268
    .local v0, "recordDir":Ljava/lang/String;
    return-object v0
.end method

.method public static getRtsFormat()I
    .locals 4

    .prologue
    .line 2638
    const/4 v0, 0x1

    .line 2639
    .local v0, "format":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v1

    .line 2640
    .local v1, "settingInfo":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v1, :cond_0

    .line 2641
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceDesc;->getVideoType()I

    move-result v0

    .line 2645
    :goto_0
    return v0

    .line 2643
    :cond_0
    const-string v2, "AppUtils"

    const-string v3, "getRtsFormat: settingInfo is null"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRtsResolution(I)[I
    .locals 5
    .param p0, "level"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 2481
    new-array v1, v3, [I

    .line 2484
    .local v1, "resolution":[I
    if-ne v3, p0, :cond_0

    .line 2485
    const/16 v2, 0x780

    .line 2486
    .local v2, "width":I
    const/16 v0, 0x438

    .line 2505
    .local v0, "height":I
    :goto_0
    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2506
    aput v0, v1, v4

    .line 2507
    return-object v1

    .line 2487
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_0
    if-nez p0, :cond_1

    .line 2488
    const/16 v2, 0x280

    .line 2489
    .restart local v2    # "width":I
    const/16 v0, 0x1e0

    .restart local v0    # "height":I
    goto :goto_0

    .line 2492
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_1
    if-ne p0, v4, :cond_2

    .line 2493
    const/16 v2, 0x500

    .line 2494
    .restart local v2    # "width":I
    const/16 v0, 0x2d0

    .restart local v0    # "height":I
    goto :goto_0

    .line 2495
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    const/4 v3, 0x3

    if-ne p0, v3, :cond_3

    .line 2496
    const/16 v2, 0x370

    .line 2497
    .restart local v2    # "width":I
    const/16 v0, 0x220

    .restart local v0    # "height":I
    goto :goto_0

    .line 2498
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_3
    const/4 v3, 0x4

    if-ne p0, v3, :cond_4

    .line 2499
    const/16 v2, 0x2d0

    .line 2500
    .restart local v2    # "width":I
    const/16 v0, 0x1e0

    .restart local v0    # "height":I
    goto :goto_0

    .line 2502
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_4
    const/16 v2, 0x500

    .line 2503
    .restart local v2    # "width":I
    const/16 v0, 0x2d0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public static getRtspResolutionLevel()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2654
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v6

    .line 2655
    .local v6, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2658
    .local v0, "cameraType":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    .line 2659
    invoke-static {v6}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "rtsp_front_res_level"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2660
    .local v1, "currentLevel":I
    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceDesc;->getRtspFrontSupport()[Ljava/lang/String;

    move-result-object v5

    .line 2665
    .local v5, "levels":[Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    array-length v7, v5

    if-lez v7, :cond_1

    .line 2666
    const/4 v3, 0x0

    .line 2667
    .local v3, "isExit":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 2668
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2669
    .local v4, "l":I
    if-ne v1, v4, :cond_3

    .line 2670
    const/4 v3, 0x1

    .line 2674
    .end local v4    # "l":I
    :cond_0
    if-nez v3, :cond_1

    .line 2675
    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2678
    .end local v2    # "i":I
    .end local v3    # "isExit":Z
    :cond_1
    return v1

    .line 2662
    .end local v1    # "currentLevel":I
    .end local v5    # "levels":[Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "rtsp_rear_res_level"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2663
    .restart local v1    # "currentLevel":I
    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceDesc;->getRtspRearSupport()[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "levels":[Ljava/lang/String;
    goto :goto_0

    .line 2667
    .restart local v2    # "i":I
    .restart local v3    # "isExit":Z
    .restart local v4    # "l":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getRtspResolutions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2729
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    .line 2730
    .local v2, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2732
    .local v0, "cameraType":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2733
    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/bean/DeviceDesc;->getRtspRearSupport()[Ljava/lang/String;

    move-result-object v1

    .line 2737
    .local v1, "levels":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2735
    .end local v1    # "levels":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/bean/DeviceDesc;->getRtspFrontSupport()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "levels":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRtspUrl()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 2702
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRtspResolutionLevel()I

    move-result v1

    .line 2703
    .local v1, "currentLevel":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v3

    .line 2704
    .local v3, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2705
    .local v0, "cameraType":I
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRtsFormat()I

    move-result v2

    .line 2707
    .local v2, "format":I
    if-ne v7, v2, :cond_1

    .line 2708
    if-ne v0, v7, :cond_0

    .line 2709
    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2720
    .local v4, "urls":[Ljava/lang/String;
    :goto_0
    aget-object v5, v4, v1

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2711
    .end local v4    # "urls":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "urls":[Ljava/lang/String;
    goto :goto_0

    .line 2714
    .end local v4    # "urls":[Ljava/lang/String;
    :cond_1
    if-ne v0, v7, :cond_2

    .line 2715
    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "urls":[Ljava/lang/String;
    goto :goto_0

    .line 2717
    .end local v4    # "urls":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "urls":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getScreenBrightness(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1923
    const/16 v0, 0x7d

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v1, v2

    check-cast v1, Landroid/view/WindowManager;

    .line 137
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 138
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    return v2
.end method

.method public static getScreenMode(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1899
    const/4 v0, 0x0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v1, v2

    check-cast v1, Landroid/view/WindowManager;

    .line 126
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 127
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    return v2
.end method

.method public static getSettingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2294
    const-string v0, "/DCIM/Camera"

    return-object v0
.end method

.method public static getStreamResolutionLevel()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2591
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v6

    .line 2592
    .local v6, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2595
    .local v0, "cameraType":I
    if-ne v0, v9, :cond_2

    .line 2596
    invoke-static {v6}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "rt_front_res_level"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2597
    .local v1, "currentLevel":I
    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceDesc;->getFront_support()[Ljava/lang/String;

    move-result-object v5

    .line 2603
    .local v5, "levels":[Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    array-length v7, v5

    if-lez v7, :cond_1

    .line 2604
    const/4 v3, 0x0

    .line 2605
    .local v3, "isExit":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 2607
    aget-object v7, v5, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2608
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2609
    .local v4, "l":I
    if-ne v1, v4, :cond_3

    .line 2610
    const/4 v3, 0x1

    .line 2615
    .end local v4    # "l":I
    :cond_0
    if-nez v3, :cond_1

    .line 2616
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2619
    .end local v2    # "i":I
    .end local v3    # "isExit":Z
    :cond_1
    return v1

    .line 2600
    .end local v1    # "currentLevel":I
    .end local v5    # "levels":[Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "rt_rear_res_level"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2601
    .restart local v1    # "currentLevel":I
    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hfufo/bean/DeviceDesc;->getRear_support()[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "levels":[Ljava/lang/String;
    goto :goto_0

    .line 2605
    .restart local v2    # "i":I
    .restart local v3    # "isExit":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getStreamResolutions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2746
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    .line 2747
    .local v2, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2749
    .local v0, "cameraType":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2750
    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/bean/DeviceDesc;->getRear_support()[Ljava/lang/String;

    move-result-object v1

    .line 2754
    .local v1, "levels":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2752
    .end local v1    # "levels":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/bean/DeviceDesc;->getFront_support()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "levels":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSysPreferredLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 1986
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 1988
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1999
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 1997
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public static getSystemMemory(Landroid/app/Activity;)V
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v12, 0x400

    const/16 v10, 0xa

    .line 2990
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2991
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2992
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2993
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 2994
    .local v4, "rt":Ljava/lang/Runtime;
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 2995
    .local v2, "maxMemory":J
    const-string v5, "Memory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxMemory:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0x100000

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const-string v5, "Memory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7cfb\u7edf\u5269\u4f59\u5185\u5b58:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    shr-long/2addr v8, v10

    div-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    const-string v5, "Memory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7cfb\u7edf\u662f\u5426\u5904\u4e8e\u4f4e\u5185\u5b58\u8fd0\u884c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const-string v5, "Memory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f53\u7cfb\u7edf\u5269\u4f59\u5185\u5b58\u4f4e\u4e8e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    shr-long/2addr v8, v10

    div-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m\u65f6\u5c31\u770b\u6210\u4f4e\u5185\u5b58\u8fd0\u884c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    return-void
.end method

.method public static getVideoContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 880
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 881
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 884
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 886
    .local v9, "id":I
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 887
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 894
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v9    # "id":I
    :cond_0
    :goto_0
    return-object v5

    .line 889
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 891
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static getVideoThumbName(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;
    .locals 10
    .param p0, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 966
    const-string v7, ""

    .line 967
    .local v7, "thumbName":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 969
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 970
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "createTime":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 972
    const-string v8, "\\."

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "strings":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_1

    .line 974
    const-string v3, "jpg"

    .line 975
    .local v3, "fileSuffix":Ljava/lang/String;
    const-string v2, ""

    .line 976
    .local v2, "filePrefix":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_0

    .line 977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 976
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 980
    invoke-virtual {p0}, Lcom/hfufo/bean/FileInfo;->getDuration()I

    move-result v1

    .line 981
    .local v1, "duration":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 991
    .end local v0    # "createTime":Ljava/lang/String;
    .end local v1    # "duration":I
    .end local v2    # "filePrefix":Ljava/lang/String;
    .end local v3    # "fileSuffix":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 983
    .restart local v0    # "createTime":Ljava/lang/String;
    .restart local v2    # "filePrefix":Ljava/lang/String;
    .restart local v3    # "fileSuffix":Ljava/lang/String;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "strings":[Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 987
    .end local v2    # "filePrefix":Ljava/lang/String;
    .end local v3    # "fileSuffix":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static getWindowParams(Landroid/content/Context;)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 109
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object v2, v3

    check-cast v2, Landroid/view/WindowManager;

    .line 110
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    const/4 v3, 0x3

    new-array v1, v3, [I

    .line 113
    .local v1, "params":[I
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    aput v3, v1, v6

    .line 114
    const/4 v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v5, v1, v6

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    aput v4, v1, v3

    .line 115
    const/4 v3, 0x2

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aget v5, v1, v6

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    aput v4, v1, v3

    .line 116
    return-object v1
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 3209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is52(Ljava/lang/String;)Z
    .locals 6
    .param p0, "wifiName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2977
    if-nez p0, :cond_1

    .line 2986
    :cond_0
    :goto_0
    return v2

    .line 2980
    :cond_1
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2981
    .local v1, "apps":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 2982
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2983
    const/4 v2, 0x1

    goto :goto_0

    .line 2981
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isAppInBackground(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 160
    const/4 v3, 0x1

    .line 161
    .local v3, "isInBackground":Z
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 162
    .local v1, "am":Landroid/app/ActivityManager;
    if-nez v1, :cond_0

    move v4, v3

    .line 182
    .end local v3    # "isInBackground":Z
    .local v4, "isInBackground":Z
    :goto_0
    return v8

    .line 163
    .end local v4    # "isInBackground":Z
    .restart local v3    # "isInBackground":Z
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-le v9, v10, :cond_4

    .line 164
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 165
    .local v6, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_1

    move v4, v3

    .end local v3    # "isInBackground":Z
    .restart local v4    # "isInBackground":Z
    goto :goto_0

    .line 166
    .end local v4    # "isInBackground":Z
    .restart local v3    # "isInBackground":Z
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 167
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0x64

    if-ne v9, v11, :cond_2

    .line 168
    iget-object v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v11

    move v9, v8

    :goto_1
    if-ge v9, v12, :cond_2

    aget-object v0, v11, v9

    .line 169
    .local v0, "activeProcess":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 170
    const/4 v3, 0x0

    .line 168
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "activeProcess":Ljava/lang/String;
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 177
    .local v7, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 178
    .local v2, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 179
    const/4 v3, 0x0

    .end local v2    # "componentInfo":Landroid/content/ComponentName;
    .end local v7    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    move v4, v3

    .end local v3    # "isInBackground":Z
    .restart local v4    # "isInBackground":Z
    move v8, v3

    .line 182
    goto :goto_0
.end method

.method public static isFastDoubleClick(I)Z
    .locals 8
    .param p0, "delayTime"    # I

    .prologue
    const/4 v2, 0x0

    .line 2176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2177
    .local v0, "time":J
    sget-wide v4, Lcom/fh/hdutil/AppUtils;->lastClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2178
    sput-wide v0, Lcom/fh/hdutil/AppUtils;->lastClickTime:J

    .line 2186
    :goto_0
    return v2

    .line 2181
    :cond_0
    sget-wide v4, Lcom/fh/hdutil/AppUtils;->lastClickTime:J

    sub-long v4, v0, v4

    int-to-long v6, p0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 2182
    sput-wide v0, Lcom/fh/hdutil/AppUtils;->lastClickTime:J

    goto :goto_0

    .line 2185
    :cond_1
    sput-wide v0, Lcom/fh/hdutil/AppUtils;->lastClickTime:J

    .line 2186
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isHD(Ljava/lang/String;)Z
    .locals 6
    .param p0, "wifiName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2963
    if-nez p0, :cond_1

    .line 2972
    :cond_0
    :goto_0
    return v2

    .line 2966
    :cond_1
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2967
    .local v1, "apps":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 2968
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2969
    const/4 v2, 0x1

    goto :goto_0

    .line 2967
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 3023
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 3024
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3029
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3030
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3031
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v10, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v5, v10

    float-to-double v10, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 3032
    .local v6, "x":D
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v10, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v5, v10

    float-to-double v10, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 3034
    .local v8, "y":D
    add-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 3040
    .local v2, "screenInches":D
    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    cmpl-double v5, v2, v10

    if-ltz v5, :cond_0

    .line 3041
    const/4 v5, 0x1

    .line 3043
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static judgeFileType(Ljava/lang/String;)I
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 801
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 802
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".JPEG"

    .line 803
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpg"

    .line 804
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    :cond_0
    const/4 v0, 0x1

    .line 813
    :goto_0
    return v0

    .line 806
    :cond_1
    const-string v0, ".mov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".MOV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".mp4"

    .line 807
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".avi"

    .line 808
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 813
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static judgeFileType1(Ljava/lang/String;)I
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 818
    const-string v0, "JPG_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    :cond_1
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    .line 820
    :cond_2
    const-string v0, "REC_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".mov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ".avi"

    .line 821
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 826
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/ItemBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/ItemBean;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/ItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/ItemBean;>;"
    .local p1, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/ItemBean;>;"
    const/4 v9, 0x0

    .line 607
    if-nez p0, :cond_0

    .line 608
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/ItemBean;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .restart local p0    # "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/ItemBean;>;"
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 612
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 636
    :cond_1
    return-object p0

    .line 614
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/ItemBean;

    .line 615
    .local v1, "bean":Lcom/hfufo/bean/ItemBean;
    invoke-virtual {v1}, Lcom/hfufo/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "addDate":Ljava/lang/String;
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hfufo/bean/ItemBean;

    .line 617
    .local v5, "temp":Lcom/hfufo/bean/ItemBean;
    invoke-virtual {v5}, Lcom/hfufo/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_4

    .line 618
    invoke-interface {p0, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 620
    :cond_4
    const/4 v2, 0x0

    .line 621
    .local v2, "isCopying":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hfufo/bean/ItemBean;

    .line 622
    .local v3, "item":Lcom/hfufo/bean/ItemBean;
    invoke-virtual {v3}, Lcom/hfufo/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "srcDate":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 624
    const/4 v2, 0x1

    .line 625
    invoke-virtual {v3}, Lcom/hfufo/bean/ItemBean;->getInfoList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hfufo/bean/ItemBean;->getInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 629
    .end local v3    # "item":Lcom/hfufo/bean/ItemBean;
    .end local v4    # "srcDate":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_3

    .line 630
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parseApplicationMsg(Ljava/lang/String;)Lcom/hfufo/bean/AppInfo;
    .locals 18
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 1257
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v10, 0x0

    .line 1327
    :cond_0
    :goto_0
    return-object v10

    .line 1259
    :cond_1
    new-instance v10, Lcom/hfufo/bean/AppInfo;

    invoke-direct {v10}, Lcom/hfufo/bean/AppInfo;-><init>()V

    .line 1260
    .local v10, "info":Lcom/hfufo/bean/AppInfo;
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/hfufo/bean/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 1261
    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/hfufo/bean/AppInfo;->setAppPlatform(Ljava/lang/String;)V

    .line 1262
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/hfufo/rxdrone/MainApplication;->getAppVersion()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/hfufo/bean/AppInfo;->setAppVersion(I)V

    .line 1263
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v6, "devTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v16, "dev_type"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1267
    const-string v16, "dev_type"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, "devTypeContent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1269
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v11, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 1271
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1272
    .local v4, "devType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1273
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1276
    .end local v4    # "devType":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_4

    .line 1277
    invoke-virtual {v10, v6}, Lcom/hfufo/bean/AppInfo;->setDev_type(Ljava/util/List;)V

    .line 1281
    .end local v5    # "devTypeContent":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    const-string v16, "dev_list"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1282
    const-string v16, "dev_list"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1283
    .local v1, "devListContent":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v2, "devListJson":Lorg/json/JSONObject;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 1285
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1286
    .local v3, "devListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1287
    .local v13, "type":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1288
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1289
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1290
    .local v7, "deviceVersionContent":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1291
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1292
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v15, "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 1294
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1295
    .local v14, "version":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1296
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1300
    .end local v14    # "version":Ljava/lang/String;
    :cond_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 1301
    new-instance v17, Lcom/fh/hdutil/AppUtils$4;

    invoke-direct/range {v17 .. v17}, Lcom/fh/hdutil/AppUtils$4;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1313
    invoke-interface {v3, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1323
    .end local v1    # "devListContent":Ljava/lang/String;
    .end local v2    # "devListJson":Lorg/json/JSONObject;
    .end local v3    # "devListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "deviceVersionContent":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "type":Ljava/lang/String;
    .end local v15    # "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 1324
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 1325
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1318
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v1    # "devListContent":Ljava/lang/String;
    .restart local v2    # "devListJson":Lorg/json/JSONObject;
    .restart local v3    # "devListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_8
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 1319
    invoke-virtual {v10, v3}, Lcom/hfufo/bean/AppInfo;->setDev_list(Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static parseDeviceDescTxt(Ljava/lang/String;)Lcom/hfufo/bean/DeviceDesc;
    .locals 25
    .param p0, "deviceDescTxt"    # Ljava/lang/String;

    .prologue
    .line 1337
    const/4 v7, 0x0

    .line 1338
    .local v7, "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 1339
    new-instance v7, Lcom/hfufo/bean/DeviceDesc;

    .end local v7    # "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    invoke-direct {v7}, Lcom/hfufo/bean/DeviceDesc;-><init>()V

    .line 1341
    .restart local v7    # "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v23, "uuid"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1343
    const-string v23, "uuid"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1344
    .local v20, "uuid":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1345
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setUuid(Ljava/lang/String;)V

    .line 1348
    .end local v20    # "uuid":Ljava/lang/String;
    :cond_0
    const-string v23, "product_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1349
    const-string v23, "product_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1350
    .local v15, "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 1351
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setProduct_type(Ljava/lang/String;)V

    .line 1354
    .end local v15    # "product":Ljava/lang/String;
    :cond_1
    const-string v23, "match_app_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1355
    const-string v23, "match_app_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1356
    .local v5, "appName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1357
    invoke-virtual {v7, v5}, Lcom/hfufo/bean/DeviceDesc;->setMatch_app_type(Ljava/lang/String;)V

    .line 1360
    .end local v5    # "appName":Ljava/lang/String;
    :cond_2
    const-string v23, "firmware_version"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1361
    const-string v23, "firmware_version"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1362
    .local v21, "version":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 1363
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setFirmware_version(Ljava/lang/String;)V

    .line 1366
    .end local v21    # "version":Ljava/lang/String;
    :cond_3
    const-string v23, "device_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1367
    const-string v23, "device_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1368
    .local v19, "type":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 1369
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setDevice_type(Ljava/lang/String;)V

    .line 1372
    .end local v19    # "type":Ljava/lang/String;
    :cond_4
    const-string v23, "support_bumping"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1373
    const-string v23, "support_bumping"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1374
    .local v6, "bumping":Ljava/lang/String;
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1375
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setSupport_bumping(Z)V

    .line 1380
    .end local v6    # "bumping":Ljava/lang/String;
    :cond_5
    :goto_0
    const-string v23, "rts_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1381
    const-string v23, "rts_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1382
    .restart local v19    # "type":Ljava/lang/String;
    const-string v23, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1383
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setVideoType(I)V

    .line 1388
    .end local v19    # "type":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v23, "net_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1389
    const-string v23, "net_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1390
    .restart local v19    # "type":Ljava/lang/String;
    const-string v23, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1391
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setNetMode(I)V

    .line 1398
    .end local v19    # "type":Ljava/lang/String;
    :cond_7
    :goto_2
    const-string v23, "support_projection"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1399
    const-string v23, "support_projection"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1400
    .local v16, "projection":Ljava/lang/String;
    const-string v23, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1401
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setSupport_projection(Z)V

    .line 1406
    .end local v16    # "projection":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v23, "forward_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1407
    const-string v23, "forward_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1408
    .local v9, "frontSupport":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_10

    .line 1409
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v11, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1411
    .local v18, "support":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_f

    .line 1412
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1414
    .local v14, "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 1415
    aput-object v14, v18, v10

    .line 1411
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1377
    .end local v9    # "frontSupport":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "level":Ljava/lang/String;
    .end local v18    # "support":[Ljava/lang/String;
    .restart local v6    # "bumping":Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setSupport_bumping(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1582
    .end local v6    # "bumping":Ljava/lang/String;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 1583
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 1586
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_b
    :goto_5
    return-object v7

    .line 1385
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v19    # "type":Ljava/lang/String;
    :cond_c
    const/16 v23, 0x1

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setVideoType(I)V

    goto/16 :goto_1

    .line 1392
    :cond_d
    const-string v23, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1393
    const-string v23, "PreviewActivityTAG"

    const-string v24, "\u8bbe\u7f6eudp"

    invoke-static/range {v23 .. v24}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setNetMode(I)V

    goto/16 :goto_2

    .line 1403
    .end local v19    # "type":Ljava/lang/String;
    .restart local v16    # "projection":Ljava/lang/String;
    :cond_e
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setSupport_projection(Z)V

    goto :goto_3

    .line 1418
    .end local v16    # "projection":Ljava/lang/String;
    .restart local v9    # "frontSupport":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "support":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setFront_support([Ljava/lang/String;)V

    .line 1421
    .end local v9    # "frontSupport":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "support":[Ljava/lang/String;
    :cond_10
    const-string v23, "behind_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1422
    const-string v23, "behind_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1423
    .local v17, "rearSupport":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 1424
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1425
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1426
    .restart local v18    # "support":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_12

    .line 1427
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1428
    .restart local v14    # "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_11

    .line 1429
    aput-object v14, v18, v10

    .line 1426
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1432
    .end local v14    # "level":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setRear_support([Ljava/lang/String;)V

    .line 1435
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v17    # "rearSupport":Ljava/lang/String;
    .end local v18    # "support":[Ljava/lang/String;
    :cond_13
    const-string v23, "rtsp_forward_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 1436
    const-string v23, "rtsp_forward_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1437
    .restart local v9    # "frontSupport":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_16

    .line 1438
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1439
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1440
    .restart local v18    # "support":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_15

    .line 1441
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1442
    .restart local v14    # "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_14

    .line 1443
    aput-object v14, v18, v10

    .line 1440
    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1446
    .end local v14    # "level":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setRtspFrontSupport([Ljava/lang/String;)V

    .line 1449
    .end local v9    # "frontSupport":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "support":[Ljava/lang/String;
    :cond_16
    const-string v23, "rtsp_behind_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1450
    const-string v23, "rtsp_behind_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1451
    .restart local v17    # "rearSupport":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_19

    .line 1452
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1453
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1454
    .restart local v18    # "support":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_18

    .line 1455
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1456
    .restart local v14    # "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_17

    .line 1457
    aput-object v14, v18, v10

    .line 1454
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1460
    .end local v14    # "level":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setRtspRearSupport([Ljava/lang/String;)V

    .line 1463
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v17    # "rearSupport":Ljava/lang/String;
    .end local v18    # "support":[Ljava/lang/String;
    :cond_19
    const-string v23, "forward_record_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1464
    const-string v23, "forward_record_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1465
    .restart local v9    # "frontSupport":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 1466
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1467
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1468
    .restart local v18    # "support":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_1b

    .line 1469
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1470
    .restart local v14    # "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 1471
    aput-object v14, v18, v10

    .line 1468
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1474
    .end local v14    # "level":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setRecordFrontSupport([Ljava/lang/String;)V

    .line 1477
    .end local v9    # "frontSupport":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "support":[Ljava/lang/String;
    :cond_1c
    const-string v23, "behind_record_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 1478
    const-string v23, "behind_record_support"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1479
    .restart local v17    # "rearSupport":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1f

    .line 1480
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1481
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1482
    .restart local v18    # "support":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_1e

    .line 1483
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1484
    .restart local v14    # "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1d

    .line 1485
    aput-object v14, v18, v10

    .line 1482
    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1488
    .end local v14    # "level":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setRecordRearSupport([Ljava/lang/String;)V

    .line 1491
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v17    # "rearSupport":Ljava/lang/String;
    .end local v18    # "support":[Ljava/lang/String;
    :cond_1f
    const-string v23, "app_list"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 1492
    const-string v23, "app_list"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    .local v2, "appList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_22

    .line 1494
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v13, "jsonObject1":Lorg/json/JSONObject;
    const-string v23, "match_android_ver"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 1496
    const-string v23, "match_android_ver"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1497
    .local v4, "appMatchVer":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_22

    .line 1498
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1499
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v22, "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_21

    .line 1501
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1502
    .restart local v21    # "version":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_20

    .line 1503
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1506
    .end local v21    # "version":Ljava/lang/String;
    :cond_21
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_22

    .line 1507
    new-instance v23, Lcom/fh/hdutil/AppUtils$5;

    invoke-direct/range {v23 .. v23}, Lcom/fh/hdutil/AppUtils$5;-><init>()V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1519
    new-instance v3, Lcom/hfufo/bean/DeviceDesc$AppListBean;

    invoke-direct {v3}, Lcom/hfufo/bean/DeviceDesc$AppListBean;-><init>()V

    .line 1520
    .local v3, "appListBean":Lcom/hfufo/bean/DeviceDesc$AppListBean;
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/hfufo/bean/DeviceDesc$AppListBean;->setMatch_android_ver(Ljava/util/List;)V

    .line 1521
    invoke-virtual {v7, v3}, Lcom/hfufo/bean/DeviceDesc;->setApp_list(Lcom/hfufo/bean/DeviceDesc$AppListBean;)V

    .line 1529
    .end local v2    # "appList":Ljava/lang/String;
    .end local v3    # "appListBean":Lcom/hfufo/bean/DeviceDesc$AppListBean;
    .end local v4    # "appMatchVer":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "jsonObject1":Lorg/json/JSONObject;
    .end local v22    # "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    const-string v23, "products_model"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 1530
    const-string v23, "products_model"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1531
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_23

    .line 1532
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setProducts_model(Ljava/lang/String;)V

    .line 1535
    .end local v15    # "product":Ljava/lang/String;
    :cond_23
    const-string v23, "products_version"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_24

    .line 1536
    const-string v23, "products_version"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1537
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_24

    .line 1538
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setProtocol_version(Ljava/lang/String;)V

    .line 1541
    .end local v15    # "product":Ljava/lang/String;
    :cond_24
    const-string v23, "camera_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_25

    .line 1542
    const-string v23, "camera_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1543
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_25

    .line 1544
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setCamera_type(Ljava/lang/String;)V

    .line 1548
    .end local v15    # "product":Ljava/lang/String;
    :cond_25
    const-string v23, "videc_size"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_29

    .line 1549
    const-string v23, "videc_size"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1550
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_26

    .line 1551
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setStream_size(Ljava/lang/String;)V

    .line 1556
    .end local v15    # "product":Ljava/lang/String;
    :cond_26
    :goto_c
    const-string v23, "videc_save"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2a

    .line 1557
    const-string v23, "videc_save"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1558
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_27

    .line 1559
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setVidec_save(Ljava/lang/String;)V

    .line 1564
    .end local v15    # "product":Ljava/lang/String;
    :cond_27
    :goto_d
    const-string v23, "photo_size"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2b

    .line 1565
    const-string v23, "photo_size"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1566
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_28

    .line 1567
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setPhoto_size(Ljava/lang/String;)V

    .line 1573
    .end local v15    # "product":Ljava/lang/String;
    :cond_28
    :goto_e
    const-string v23, "flw_ctl_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 1574
    const-string v23, "flw_ctl_type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1575
    .restart local v15    # "product":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 1576
    invoke-virtual {v7, v15}, Lcom/hfufo/bean/DeviceDesc;->setCtl_type(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1554
    .end local v15    # "product":Ljava/lang/String;
    :cond_29
    const-string v23, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setStream_size(Ljava/lang/String;)V

    goto :goto_c

    .line 1562
    :cond_2a
    const-string v23, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setVidec_save(Ljava/lang/String;)V

    goto :goto_d

    .line 1570
    :cond_2b
    const-string v23, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setPhoto_size(Ljava/lang/String;)V

    goto :goto_e

    .line 1579
    :cond_2c
    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/DeviceDesc;->setCtl_type(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private static parseDeviceVersionInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "androidVersionString"    # Ljava/lang/String;

    .prologue
    .line 2895
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2896
    const/4 v0, 0x0

    .line 2914
    :goto_0
    return-object v0

    .line 2898
    :cond_0
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2899
    const-string v1, "["

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2901
    :cond_1
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2902
    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2904
    :cond_2
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2905
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2908
    :cond_3
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2909
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "resultStr":[Ljava/lang/String;
    goto :goto_0

    .line 2911
    .end local v0    # "resultStr":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 2912
    .restart local v0    # "resultStr":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method private static parseServerTxtInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/hfufo/bean/ServerInfo;
    .locals 16
    .param p0, "serverAndroidTxt"    # Ljava/lang/String;
    .param p1, "serverFirmwareTxt"    # Ljava/lang/String;

    .prologue
    .line 1596
    const/4 v9, 0x0

    .line 1597
    .local v9, "serverInfo":Lcom/hfufo/bean/ServerInfo;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1598
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1600
    .local v7, "serverAndroidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1602
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 1603
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1604
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1605
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1606
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1607
    .local v12, "versionData":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1608
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1609
    .local v13, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1610
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_6

    .line 1611
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1612
    .local v10, "version":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-nez v15, :cond_1

    .line 1613
    const/4 v11, 0x0

    .line 1615
    .local v11, "versionCode":I
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1619
    :goto_2
    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    .end local v11    # "versionCode":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1616
    .restart local v11    # "versionCode":I
    :catch_0
    move-exception v1

    .line 1617
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1641
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "versionCode":I
    .end local v12    # "versionData":Ljava/lang/String;
    .end local v13    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    .line 1642
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1645
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 1646
    new-instance v9, Lcom/hfufo/bean/ServerInfo;

    .end local v9    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    invoke-direct {v9}, Lcom/hfufo/bean/ServerInfo;-><init>()V

    .line 1647
    .restart local v9    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    invoke-virtual {v9, v7}, Lcom/hfufo/bean/ServerInfo;->setAndroidVersionMap(Ljava/util/Map;)V

    .line 1651
    .end local v7    # "serverAndroidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1652
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1654
    .local v8, "serverFirmwareMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1655
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1656
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v3, :cond_8

    .line 1657
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1658
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1659
    .restart local v6    # "key":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1660
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1661
    .restart local v12    # "versionData":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1662
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .local v14, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1664
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_7

    .line 1665
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1666
    .restart local v10    # "version":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1667
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1664
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1622
    .end local v8    # "serverFirmwareMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "version":Ljava/lang/String;
    .end local v14    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "serverAndroidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v13    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 1623
    new-instance v15, Lcom/fh/hdutil/AppUtils$6;

    invoke-direct {v15}, Lcom/fh/hdutil/AppUtils$6;-><init>()V

    invoke-static {v13, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1635
    invoke-interface {v7, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1670
    .end local v7    # "serverAndroidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v13    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "serverFirmwareMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v14    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 1671
    new-instance v15, Lcom/fh/hdutil/AppUtils$7;

    invoke-direct {v15}, Lcom/fh/hdutil/AppUtils$7;-><init>()V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1683
    invoke-interface {v8, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1689
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "versionData":Ljava/lang/String;
    .end local v14    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    .line 1690
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1693
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_8
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_a

    .line 1694
    if-nez v9, :cond_9

    .line 1695
    new-instance v9, Lcom/hfufo/bean/ServerInfo;

    .end local v9    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    invoke-direct {v9}, Lcom/hfufo/bean/ServerInfo;-><init>()V

    .line 1697
    .restart local v9    # "serverInfo":Lcom/hfufo/bean/ServerInfo;
    :cond_9
    invoke-virtual {v9, v8}, Lcom/hfufo/bean/ServerInfo;->setFirmwareVersionMap(Ljava/util/Map;)V

    .line 1701
    .end local v8    # "serverFirmwareMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_a
    return-object v9
.end method

.method public static parseThumbPathForDuration(Ljava/lang/String;)I
    .locals 6
    .param p0, "thumbPath"    # Ljava/lang/String;

    .prologue
    .line 2391
    const/4 v1, 0x0

    .line 2392
    .local v1, "duration":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2393
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2394
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2395
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2397
    :cond_0
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2398
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2399
    .local v0, "args":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 2401
    :try_start_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2408
    .end local v0    # "args":[Ljava/lang/String;
    .end local v3    # "index":I
    :cond_1
    :goto_0
    return v1

    .line 2402
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v3    # "index":I
    :catch_0
    move-exception v2

    .line 2403
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "targetDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 508
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, "srcFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v1, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fh/hdutil/AppUtils;->queryLocalFileListFromDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 532
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 533
    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 538
    .end local v1    # "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v3    # "srcFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 518
    .restart local v1    # "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v3    # "srcFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 519
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 520
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 521
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/fh/hdutil/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 523
    .local v4, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 524
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    .end local v4    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 538
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "srcFile":Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryLocalFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v9, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 267
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 269
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .local v10, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 272
    .local v12, "files":[Ljava/io/File;
    if-eqz v12, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_7

    .line 273
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v11, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v7, "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, v12

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v6, v12, v15

    .line 276
    .local v6, "file1":Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "createTime":Ljava/lang/String;
    new-instance v8, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v8}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 279
    .local v8, "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "EME"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 280
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 284
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 287
    invoke-virtual {v8, v2}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fh/hdutil/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 289
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setSource(I)V

    .line 290
    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v17, "RMedia"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 291
    const-string v14, "1"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 297
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_0
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_0

    .line 282
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_1
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 338
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v6    # "file1":Ljava/io/File;
    .end local v7    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v11    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    .end local v12    # "files":[Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 339
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_5
    return-object v9

    .line 288
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "file1":Ljava/io/File;
    .restart local v7    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v11    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    .restart local v12    # "files":[Ljava/io/File;
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 293
    :cond_4
    :try_start_2
    const-string v14, "0"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    goto :goto_3

    .line 301
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v6    # "file1":Ljava/io/File;
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 302
    invoke-static {v7}, Lcom/fh/hdutil/AppUtils;->descSort(Ljava/util/List;)V

    .line 303
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    .local v3, "date":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 305
    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hfufo/bean/FileInfo;

    .line 306
    .local v13, "info":Lcom/hfufo/bean/FileInfo;
    if-eqz v13, :cond_6

    .line 307
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v3    # "date":Ljava/lang/String;
    .end local v7    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    .end local v13    # "info":Lcom/hfufo/bean/FileInfo;
    :cond_7
    move-object v9, v10

    .line 313
    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    goto :goto_5

    .line 314
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v12    # "files":[Ljava/io/File;
    .restart local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v2

    .line 315
    .restart local v2    # "createTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 316
    new-instance v8, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v8}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 317
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "EME"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 318
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 322
    :goto_7
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 325
    invoke-virtual {v8, v2}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fh/hdutil/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    const/4 v14, 0x1

    :goto_8
    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 327
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setSource(I)V

    .line 328
    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "RMedia"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 329
    const-string v14, "1"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 333
    :goto_9
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_9
    move-object v9, v10

    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    goto/16 :goto_5

    .line 320
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_a
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    goto :goto_7

    .line 326
    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    .line 331
    :cond_c
    const-string v14, "0"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 338
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :catch_1
    move-exception v4

    goto/16 :goto_4
.end method

.method public static queryLocalFileListFromDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v9, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 354
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 356
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .local v10, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 358
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 359
    .local v12, "files":[Ljava/io/File;
    if-eqz v12, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_8

    .line 360
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v11, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v7, "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, v12

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v6, v12, v15

    .line 363
    .local v6, "file1":Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 364
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "REC"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "JPG"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 362
    :cond_0
    :goto_1
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "createTime":Ljava/lang/String;
    new-instance v8, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v8}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 369
    .local v8, "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "EME"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 370
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 374
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 377
    invoke-virtual {v8, v2}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fh/hdutil/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 379
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setSource(I)V

    .line 380
    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v17, "RMedia"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 381
    const-string v14, "1"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 387
    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 429
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v6    # "file1":Ljava/io/File;
    .end local v7    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v11    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    .end local v12    # "files":[Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 430
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_6
    return-object v9

    .line 372
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "file1":Ljava/io/File;
    .restart local v7    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v11    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    .restart local v12    # "files":[Ljava/io/File;
    :cond_3
    const/4 v14, 0x1

    :try_start_2
    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    goto :goto_2

    .line 378
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 383
    :cond_5
    const-string v14, "0"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    goto :goto_4

    .line 391
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v6    # "file1":Ljava/io/File;
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 392
    invoke-static {v7}, Lcom/fh/hdutil/AppUtils;->descSort(Ljava/util/List;)V

    .line 393
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "date":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 395
    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hfufo/bean/FileInfo;

    .line 396
    .local v13, "info":Lcom/hfufo/bean/FileInfo;
    if-eqz v13, :cond_7

    .line 397
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "date":Ljava/lang/String;
    .end local v7    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/hfufo/bean/FileInfo;>;"
    .end local v13    # "info":Lcom/hfufo/bean/FileInfo;
    :cond_8
    move-object v9, v10

    .line 403
    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    goto :goto_6

    .line 404
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v12    # "files":[Ljava/io/File;
    .restart local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "createTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 407
    new-instance v8, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v8}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 408
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "EME"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 409
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 413
    :goto_8
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 416
    invoke-virtual {v8, v2}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fh/hdutil/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    const/4 v14, 0x1

    :goto_9
    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 418
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setSource(I)V

    .line 419
    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v8}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "RMedia"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 420
    const-string v14, "1"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 424
    :goto_a
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_a
    move-object v9, v10

    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    goto/16 :goto_6

    .line 411
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_b
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    goto :goto_8

    .line 417
    :cond_c
    const/4 v14, 0x0

    goto :goto_9

    .line 422
    :cond_d
    const-string v14, "0"

    invoke-virtual {v8, v14}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    .line 429
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v10    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :catch_1
    move-exception v4

    goto/16 :goto_5
.end method

.method public static queryLocalFileMusicList(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v8, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v11, 0x0

    .line 550
    .local v11, "i":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 551
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 553
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    .end local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .local v9, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 555
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 556
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 557
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v6, "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v14, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_2

    aget-object v5, v10, v13

    .line 559
    .local v5, "file1":Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 560
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "createTime":Ljava/lang/String;
    new-instance v7, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v7}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 563
    .local v7, "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 566
    invoke-virtual {v7, v2}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/fh/hdutil/AppUtils;->judgeFileType1(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 568
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setSource(I)V

    .line 569
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_0
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 567
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .end local v2    # "createTime":Ljava/lang/String;
    .end local v5    # "file1":Ljava/io/File;
    .end local v6    # "fileDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_2
    move-object v8, v9

    .line 597
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v10    # "files":[Ljava/io/File;
    .restart local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_3
    :goto_2
    return-object v8

    .line 574
    .end local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v2

    .line 575
    .restart local v2    # "createTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 576
    new-instance v7, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v7}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 577
    .restart local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 578
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 582
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 585
    invoke-virtual {v7, v2}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/fh/hdutil/AppUtils;->judgeFileType1(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 587
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setSource(I)V

    .line 588
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_5
    move-object v8, v9

    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    goto :goto_2

    .line 580
    .end local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_6
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/hfufo/bean/FileInfo;->setType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 593
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 594
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .local v3, "e":Ljava/lang/Exception;
    .restart local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 586
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 593
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v8    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :catch_1
    move-exception v3

    goto :goto_5
.end method

.method public static queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2303
    const/4 v2, 0x0

    .line 2304
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2305
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v3, "srcFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2307
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2308
    .restart local v2    # "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2309
    const-string v5, ".thumbnail"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2310
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2327
    .end local v3    # "srcFile":Ljava/io/File;
    :cond_0
    return-object v2

    .line 2312
    .restart local v3    # "srcFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2313
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 2314
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 2315
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2316
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fh/hdutil/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2317
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 2318
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2314
    .end local v4    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static queryThumbInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2336
    const/4 v3, 0x0

    .line 2337
    .local v3, "thumbList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz p0, :cond_2

    .line 2338
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2339
    .local v0, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2340
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "thumbList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2341
    .restart local v3    # "thumbList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2342
    .local v1, "sub":Ljava/lang/String;
    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->queryLocalFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2343
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz v2, :cond_0

    .line 2344
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2347
    .end local v1    # "sub":Ljava/lang/String;
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2348
    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 2352
    .end local v0    # "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public static queryThumbPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2362
    const-string v5, ""

    .line 2363
    .local v5, "thumbName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2365
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2366
    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 2367
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, "flag":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->queryThumbInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2372
    .local v4, "thumbList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz v4, :cond_1

    .line 2373
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 2374
    .local v2, "info":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2375
    .local v3, "savePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2376
    move-object v5, v3

    .line 2382
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "info":Lcom/hfufo/bean/FileInfo;
    .end local v3    # "savePath":Ljava/lang/String;
    .end local v4    # "thumbList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_1
    return-object v5

    .line 2369
    .restart local v1    # "index":I
    :cond_2
    move-object v0, p0

    .restart local v0    # "flag":Ljava/lang/String;
    goto :goto_0
.end method

.method public static readTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string v7, ""

    .line 1216
    .local v7, "textStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v8, v7

    .end local v7    # "textStr":Ljava/lang/String;
    .local v8, "textStr":Ljava/lang/String;
    move-object v9, v7

    .line 1248
    .end local v8    # "textStr":Ljava/lang/String;
    .local v9, "textStr":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1219
    .end local v9    # "textStr":Ljava/lang/String;
    .restart local v7    # "textStr":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 1221
    .local v5, "read":Ljava/io/InputStreamReader;
    :try_start_0
    const-string v2, "UTF-8"

    .line 1222
    .local v2, "encoding":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1224
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    .end local v5    # "read":Ljava/io/InputStreamReader;
    .local v6, "read":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1228
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "lineTxt":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1231
    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 1239
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "lineTxt":Ljava/lang/String;
    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    :goto_2
    if-eqz v5, :cond_3

    .line 1241
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_3
    move-object v8, v7

    .end local v7    # "textStr":Ljava/lang/String;
    .restart local v8    # "textStr":Ljava/lang/String;
    move-object v9, v7

    .line 1248
    .end local v8    # "textStr":Ljava/lang/String;
    .restart local v9    # "textStr":Ljava/lang/String;
    goto :goto_0

    .line 1233
    .end local v9    # "textStr":Ljava/lang/String;
    .restart local v2    # "encoding":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "textStr":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v10, "AppUtils"

    const-string v11, "Cannot find the specified file"

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1235
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1236
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v10, "AppUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " err : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1239
    if-eqz v5, :cond_3

    .line 1241
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1242
    :catch_1
    move-exception v1

    .line 1243
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "AppUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1242
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "encoding":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 1243
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "AppUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1239
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v5, :cond_5

    .line 1241
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1245
    :cond_5
    :goto_6
    throw v10

    .line 1242
    :catch_3
    move-exception v1

    .line 1243
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "AppUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1239
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "read":Ljava/io/InputStreamReader;
    .restart local v2    # "encoding":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "read":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 1235
    .end local v5    # "read":Ljava/io/InputStreamReader;
    .restart local v6    # "read":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    goto/16 :goto_4
.end method

.method public static saveRtspResolutionLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 2687
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    .line 2688
    .local v1, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2689
    .local v0, "cameraType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2690
    const-string v2, "rtsp_rear_res_level"

    invoke-static {v1, v2, p0}, Lcom/micro/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2694
    :goto_0
    return-void

    .line 2692
    :cond_0
    const-string v2, "rtsp_front_res_level"

    invoke-static {v1, v2, p0}, Lcom/micro/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static saveStreamResolutionLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 2628
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    .line 2629
    .local v1, "mainApplication":Lcom/hfufo/rxdrone/MainApplication;
    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2630
    .local v0, "cameraType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2631
    const-string v2, "rt_rear_res_level"

    invoke-static {v1, v2, p0}, Lcom/micro/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2635
    :goto_0
    return-void

    .line 2633
    :cond_0
    const-string v2, "rt_front_res_level"

    invoke-static {v1, v2, p0}, Lcom/micro/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 2073
    if-nez p0, :cond_1

    .line 2074
    const/4 v7, 0x0

    .line 2086
    :cond_0
    :goto_0
    return-object v7

    .line 2076
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2077
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2078
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 2079
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 2080
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2081
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2082
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2083
    .local v7, "newBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2084
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static selectTypeList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "fileType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    .local p0, "drsList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v2, p0

    .line 1017
    :cond_1
    return-object v2

    .line 1004
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 1006
    .local v1, "info":Lcom/hfufo/bean/FileInfo;
    if-eqz v1, :cond_3

    .line 1007
    if-nez p1, :cond_4

    .line 1008
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    :cond_4
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 1012
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setBrightness(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "brightness"    # I

    .prologue
    .line 1945
    return-void
.end method

.method public static setScreenManualMode(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1865
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fh/hdutil/AppUtils;->setScreenMode(Landroid/app/Activity;I)V

    .line 1866
    return-void
.end method

.method public static setScreenMode(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mode"    # I

    .prologue
    .line 1876
    return-void
.end method

.method private static sort([D)[Ljava/lang/String;
    .locals 10
    .param p0, "drs"    # [D

    .prologue
    .line 2870
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_2

    .line 2871
    :cond_0
    const/4 v2, 0x0

    .line 2886
    :cond_1
    return-object v2

    .line 2873
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_5

    .line 2874
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    .line 2875
    aget-wide v6, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-wide v8, p0, v3

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 2876
    aget-wide v4, p0, v1

    .line 2877
    .local v4, "temp":D
    add-int/lit8 v3, v1, 0x1

    aget-wide v6, p0, v3

    aput-wide v6, p0, v1

    .line 2878
    add-int/lit8 v3, v1, 0x1

    aput-wide v4, p0, v3

    .line 2874
    .end local v4    # "temp":D
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2873
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2882
    .end local v1    # "j":I
    :cond_5
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/String;

    .line 2883
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2884
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2883
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static sort([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "drs"    # [Ljava/lang/String;

    .prologue
    .line 2851
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 2863
    :cond_0
    :goto_0
    return-object p0

    .line 2854
    :cond_1
    array-length v3, p0

    new-array v2, v3, [D

    .line 2855
    .local v2, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 2857
    :try_start_0
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2855
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2858
    :catch_0
    move-exception v0

    .line 2859
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 2862
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->sort([D)[Ljava/lang/String;

    move-result-object p0

    .line 2863
    goto :goto_0
.end method

.method public static spacing(Landroid/view/MotionEvent;)D
    .locals 6
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3053
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3054
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 3055
    .local v0, "x":F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 3056
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 3058
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static spacingCenter(Landroid/view/MotionEvent;)D
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 3064
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 3065
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 3066
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "rootName"    # Ljava/lang/String;
    .param p1, "oneDirName"    # Ljava/lang/String;
    .param p2, "twoDirName"    # Ljava/lang/String;
    .param p3, "threeDirName"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 736
    sget-object v3, Lcom/fh/hdutil/AppUtils;->ROOT_PATH:Ljava/lang/String;

    .line 737
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 738
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "dirNames":[Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 740
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 742
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 744
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 745
    const-string v6, "AppUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create root dir success! path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "dirNames":[Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 752
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    const-string v4, "AppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create root dir success! path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 791
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v3

    .line 762
    .restart local v3    # "path":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 763
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 765
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 766
    const-string v4, "AppUtils"

    const-string v5, "create one dir success!"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 775
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 776
    const-string v4, "AppUtils"

    const-string v5, "create two dir success!"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 783
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 785
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 786
    const-string v4, "AppUtils"

    const-string v5, "create three sub dir success!"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 791
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_7
    sget-object v3, Lcom/fh/hdutil/AppUtils;->ROOT_PATH:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private static subDateFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "createTime"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 704
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
