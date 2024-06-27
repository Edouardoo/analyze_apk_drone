.class public Lcom/opencv/openCVJni;
.super Ljava/lang/Object;
.source "openCVJni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FILEUTIL"

.field private static storagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "opencvjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opencv/openCVJni;->storagePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DeteFaceAndPlam(J)Ljava/lang/String;
.end method

.method public static native DeteFaceAndPlamInit(Ljava/lang/String;)V
.end method

.method public static native JpegDeteFaceAndPlam([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static ProcessFrame(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "matAddr"    # J
    .param p2, "a"    # Ljava/lang/String;
    .param p3, "b"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public static native SetInixy(II)V
.end method

.method public static native SetModel(I)V
.end method

.method public static native StreamDeteFaceAndPlam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native addImage(J)I
.end method

.method public static copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v3, "/app/"

    .line 81
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    invoke-static {}, Lcom/fh/util/StorageUtil;->getSdCardFreeBytes()J

    move-result-wide v0

    .line 84
    .local v0, "availableMemory":J
    const-wide/32 v8, 0x3200000

    cmp-long v7, v0, v8

    if-gtz v7, :cond_1

    .line 114
    .end local v0    # "availableMemory":J
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v0    # "availableMemory":J
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/opencv/openCVJni;->storagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "recordDir":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    const-string v7, "FILEUTIL"

    const-string v8, "Record dir is null"

    invoke-static {v7, v8}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_3

    .line 97
    new-instance v7, Ljava/lang/IllegalAccessError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failure."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 101
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 103
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/opencv/openCVJni;->storagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/opencv/openCVJni;->readInputStream(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static initFile(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/opencv/openCVJni$1;

    invoke-direct {v1, p0}, Lcom/opencv/openCVJni$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method public static readInputStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .param p0, "storagePath"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 117
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 122
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 123
    .local v4, "lenght":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 130
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "lenght":I
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 135
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 126
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "lenght":I
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 127
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 128
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 132
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "lenght":I
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setMaxSize(II)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 51
    return-void
.end method

.method public static setMinSize(II)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 48
    return-void
.end method

.method public static native stitchImageRelease()V
.end method

.method public static native stitchImageStart(JJ)I
.end method
