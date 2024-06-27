.class public Lcom/fh/hdutil/ScanFilesHelper;
.super Ljava/lang/Object;
.source "ScanFilesHelper.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fh/hdutil/ScanFilesHelper;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 30
    :cond_0
    return-void
.end method

.method private scanFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 34
    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "ScanFilesHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scan file absolutePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 42
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 43
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 47
    .local v2, "temp":Ljava/io/File;
    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fh/hdutil/ScanFilesHelper;->scanFile(Ljava/lang/String;)V

    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fh/hdutil/ScanFilesHelper;->scanFile(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 81
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 88
    :cond_0
    iput-object v1, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iput-object v1, p0, Lcom/fh/hdutil/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 94
    iput-object v1, p0, Lcom/fh/hdutil/ScanFilesHelper;->mContext:Landroid/content/Context;

    .line 96
    :cond_3
    return-void
.end method

.method public scanFiles(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fh/hdutil/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/fh/hdutil/ScanFilesHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 65
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method

.method public updateToDeleteFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "deletePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/fh/hdutil/ScanFilesHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 57
    return-void
.end method
