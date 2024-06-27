.class public Lcom/fh/util/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field private static final JELLY_BEAN_MR2:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdCardFreeBytes()J
    .locals 10

    .prologue
    .line 17
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 20
    .local v4, "stat":Landroid/os/StatFs;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 21
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    .line 27
    .local v2, "memory":J
    :goto_0
    return-wide v2

    .line 23
    .end local v2    # "memory":J
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 24
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    mul-long v2, v6, v0

    .restart local v2    # "memory":J
    goto :goto_0
.end method

.method public static getSdCardTotalBytes()J
    .locals 10

    .prologue
    .line 53
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, "stat":Landroid/os/StatFs;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 57
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    .line 63
    .local v2, "memory":J
    :goto_0
    return-wide v2

    .line 59
    .end local v2    # "memory":J
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 60
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    mul-long v2, v6, v0

    .restart local v2    # "memory":J
    goto :goto_0
.end method

.method public static getSdCardUsedBytes()J
    .locals 10

    .prologue
    .line 35
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 38
    .local v4, "stat":Landroid/os/StatFs;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 39
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    .line 45
    .local v2, "memory":J
    :goto_0
    return-wide v2

    .line 41
    .end local v2    # "memory":J
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 42
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v6, v5

    mul-long v2, v6, v0

    .restart local v2    # "memory":J
    goto :goto_0
.end method
