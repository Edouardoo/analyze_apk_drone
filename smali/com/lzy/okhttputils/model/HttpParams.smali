.class public Lcom/lzy/okhttputils/model/HttpParams;
.super Ljava/lang/Object;
.source "HttpParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    }
.end annotation


# instance fields
.field public fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field public urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpParams;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpParams;->init()V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpParams;->init()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    .line 131
    .local v1, "fileNameMap":Ljava/net/FileNameMap;
    invoke-interface {v1, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 133
    const-string v0, "application/octet-stream"

    .line 135
    :cond_0
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    return-object v2
.end method

.method private init()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 126
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 127
    return-void
.end method

.method public put(Lcom/lzy/okhttputils/model/HttpParams;)V
    .locals 2
    .param p1, "params"    # Lcom/lzy/okhttputils/model/HttpParams;

    .prologue
    .line 50
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileWrapper"    # Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 85
    iget-object v0, p2, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    iget-object v1, p2, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    iget-object v2, p2, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->contentType:Lokhttp3/MediaType;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 87
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 76
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p3}, Lcom/lzy/okhttputils/model/HttpParams;->guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 81
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Lokhttp3/MediaType;

    .prologue
    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    .local v0, "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .restart local v0    # "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    new-instance v1, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v0    # "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 58
    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    .local v0, "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v0    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v0    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public putFileParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 103
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 106
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    .line 111
    .local v0, "fileWrapper":Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;)V

    goto :goto_0

    .line 114
    .end local v0    # "fileWrapper":Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    :cond_0
    return-void
.end method

.method public putUrlParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public removeUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    iget-object v3, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
