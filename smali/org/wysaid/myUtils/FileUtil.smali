.class public Lorg/wysaid/myUtils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"

.field public static final externalStorageDirectory:Ljava/io/File;

.field private static mDefaultFolder:Ljava/lang/String;

.field public static packageFilesDirectory:Ljava/lang/String;

.field public static storagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lorg/wysaid/myUtils/FileUtil;->externalStorageDirectory:Ljava/io/File;

    .line 20
    sput-object v1, Lorg/wysaid/myUtils/FileUtil;->packageFilesDirectory:Ljava/lang/String;

    .line 21
    sput-object v1, Lorg/wysaid/myUtils/FileUtil;->storagePath:Ljava/lang/String;

    .line 22
    const-string v0, "libCGE"

    sput-object v0, Lorg/wysaid/myUtils/FileUtil;->mDefaultFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/wysaid/myUtils/FileUtil;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v1, Lorg/wysaid/myUtils/FileUtil;->storagePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wysaid/myUtils/FileUtil;->externalStorageDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/wysaid/myUtils/FileUtil;->mDefaultFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/wysaid/myUtils/FileUtil;->storagePath:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/wysaid/myUtils/FileUtil;->storagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/wysaid/myUtils/FileUtil;->getPathInPackage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/wysaid/myUtils/FileUtil;->storagePath:Ljava/lang/String;

    .line 44
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    sget-object v1, Lorg/wysaid/myUtils/FileUtil;->storagePath:Ljava/lang/String;

    return-object v1
.end method

.method public static getPathInPackage(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grantPermissions"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    if-eqz p0, :cond_0

    sget-object v2, Lorg/wysaid/myUtils/FileUtil;->packageFilesDirectory:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    sget-object v2, Lorg/wysaid/myUtils/FileUtil;->packageFilesDirectory:Ljava/lang/String;

    .line 80
    :goto_0
    return-object v2

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/wysaid/myUtils/FileUtil;->mDefaultFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    const-string v2, "libCGE_java"

    const-string v3, "Create package dir of CGE failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    :cond_2
    if-eqz p1, :cond_5

    .line 65
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const-string v2, "libCGE_java"

    const-string v3, "Package folder is executable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    const-string v2, "libCGE_java"

    const-string v3, "Package folder is readable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_4
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    const-string v2, "libCGE_java"

    const-string v3, "Package folder is writable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_5
    sput-object v1, Lorg/wysaid/myUtils/FileUtil;->packageFilesDirectory:Ljava/lang/String;

    .line 80
    sget-object v2, Lorg/wysaid/myUtils/FileUtil;->packageFilesDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTextContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 97
    const-string v6, "libCGE_java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading text : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-nez p0, :cond_1

    move-object v1, v5

    .line 125
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    const-string v1, ""

    .line 104
    .local v1, "content":Ljava/lang/String;
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 108
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "filein":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 114
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 120
    .end local v3    # "filein":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "libCGE_java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 122
    goto :goto_0
.end method

.method public static saveTextContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v2, "libCGE_java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "fileout":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 90
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "fileout":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "libCGE_java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDefaultFolder(Ljava/lang/String;)V
    .locals 0
    .param p0, "defaultFolder"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p0, Lorg/wysaid/myUtils/FileUtil;->mDefaultFolder:Ljava/lang/String;

    .line 26
    return-void
.end method
