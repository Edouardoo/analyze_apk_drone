.class Lorg/opencv/android/StaticHelper;
.super Ljava/lang/Object;
.source "StaticHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenCV/StaticHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getLibraryList()Ljava/lang/String;
.end method

.method public static initOpenCV(Z)Z
    .locals 9
    .param p0, "InitCuda"    # Z

    .prologue
    .line 13
    const-string v2, ""

    .line 15
    .local v2, "libs":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 17
    const-string v5, "cudart"

    invoke-static {v5}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    .line 18
    const-string v5, "nppc"

    invoke-static {v5}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    .line 19
    const-string v5, "nppi"

    invoke-static {v5}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    .line 20
    const-string v5, "npps"

    invoke-static {v5}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    .line 21
    const-string v5, "cufft"

    invoke-static {v5}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    .line 22
    const-string v5, "cublas"

    invoke-static {v5}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    .line 25
    :cond_0
    const-string v5, "OpenCV/StaticHelper"

    const-string v6, "Trying to get library list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    const-string v5, "opencv_info"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lorg/opencv/android/StaticHelper;->getLibraryList()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 37
    :goto_0
    const-string v5, "OpenCV/StaticHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library list: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v5, "OpenCV/StaticHelper"

    const-string v6, "First attempt to load libs"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {v2}, Lorg/opencv/android/StaticHelper;->initOpenCVLibs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    const-string v5, "OpenCV/StaticHelper"

    const-string v6, "First attempt to load libs is OK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "eol":Ljava/lang/String;
    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v4, v6, v5

    .line 44
    .local v4, "str":Ljava/lang/String;
    const-string v8, "OpenCV/StaticHelper"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    .end local v1    # "eol":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v5, "OpenCV/StaticHelper"

    const-string v6, "OpenCV error: Cannot load info library for OpenCV"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v1    # "eol":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    .line 54
    .end local v1    # "eol":Ljava/lang/String;
    .local v3, "result":Z
    :goto_2
    return v3

    .line 50
    .end local v3    # "result":Z
    :cond_2
    const-string v5, "OpenCV/StaticHelper"

    const-string v6, "First attempt to load libs fails"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_2
.end method

.method private static initOpenCVLibs(Ljava/lang/String;)Z
    .locals 4
    .param p0, "Libs"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v2, "OpenCV/StaticHelper"

    const-string v3, "Trying to init OpenCV libs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    .line 83
    .local v0, "result":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "OpenCV/StaticHelper"

    const-string v3, "Trying to load libs by dependency list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v1, "splitter":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_0

    .line 95
    .end local v1    # "splitter":Ljava/util/StringTokenizer;
    :cond_0
    const-string v2, "opencv_java3"

    invoke-static {v2}, Lorg/opencv/android/StaticHelper;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 98
    :cond_1
    return v0
.end method

.method private static loadLibrary(Ljava/lang/String;)Z
    .locals 5
    .param p0, "Name"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v1, 0x1

    .line 61
    .local v1, "result":Z
    const-string v2, "OpenCV/StaticHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to load library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    const-string v2, "OpenCV/StaticHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 67
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "OpenCV/StaticHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load library \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 71
    and-int/lit8 v1, v1, 0x0

    .local v1, "result":I
    goto :goto_0
.end method
