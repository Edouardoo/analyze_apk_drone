.class public Lcom/task/ClearThumbTask;
.super Ljava/lang/Thread;
.source "ClearThumbTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/task/ClearThumbTask$OnClearThumbTaskListener;
    }
.end annotation


# instance fields
.field private appRootPath:Ljava/lang/String;

.field private isExitClear:Z

.field private listener:Lcom/task/ClearThumbTask$OnClearThumbTaskListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1, v1}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private clearOldThumbCache()V
    .locals 7

    .prologue
    .line 93
    iget-object v5, p0, Lcom/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/fh/hdutil/AppUtils;->queryThumbInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 94
    .local v4, "thumbList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-eqz v4, :cond_1

    .line 95
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 96
    .local v2, "listSize":I
    if-lez v2, :cond_1

    .line 97
    div-int/lit8 v3, v2, 0x3

    .line 98
    .local v3, "subSize":I
    if-lez v3, :cond_1

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    sub-int v5, v2, v3

    invoke-interface {v4, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 102
    .local v1, "info":Lcom/hfufo/bean/FileInfo;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/task/ClearThumbTask;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 109
    .end local v0    # "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v1    # "info":Lcom/hfufo/bean/FileInfo;
    .end local v2    # "listSize":I
    .end local v3    # "subSize":I
    :cond_1
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 86
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCache()J
    .locals 10

    .prologue
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .local v4, "totalSize":J
    iget-object v6, p0, Lcom/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/fh/hdutil/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "thumbPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "thumbPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    :try_start_0
    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getFolderSize(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "thumbPath":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/task/ClearThumbTask;->getCache()J

    move-result-wide v0

    .line 35
    .local v0, "thumbCacheSize":J
    :goto_0
    iget-boolean v2, p0, Lcom/task/ClearThumbTask;->isExitClear:Z

    if-nez v2, :cond_0

    const-wide/32 v2, 0xc800000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/task/ClearThumbTask;->clearOldThumbCache()V

    .line 37
    invoke-direct {p0}, Lcom/task/ClearThumbTask;->getCache()J

    move-result-wide v0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/task/ClearThumbTask;->listener:Lcom/task/ClearThumbTask$OnClearThumbTaskListener;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/task/ClearThumbTask;->listener:Lcom/task/ClearThumbTask$OnClearThumbTaskListener;

    invoke-interface {v2}, Lcom/task/ClearThumbTask$OnClearThumbTaskListener;->onFinish()V

    .line 42
    :cond_1
    return-void
.end method

.method public setOnClearThumbTaskListener(Lcom/task/ClearThumbTask$OnClearThumbTaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/task/ClearThumbTask$OnClearThumbTaskListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/task/ClearThumbTask;->listener:Lcom/task/ClearThumbTask$OnClearThumbTaskListener;

    .line 50
    return-void
.end method

.method public stopClear()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/task/ClearThumbTask;->isExitClear:Z

    .line 30
    return-void
.end method
