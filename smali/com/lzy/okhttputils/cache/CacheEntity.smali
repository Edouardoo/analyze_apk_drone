.class public Lcom/lzy/okhttputils/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CACHE_NEVER_EXPIRE:J = -0x1L


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private id:J

.field private isExpire:Z

.field private key:Ljava/lang/String;

.field private localExpire:J

.field private responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkExpire(Lcom/lzy/okhttputils/cache/CacheMode;JJ)Z
    .locals 4
    .param p1, "cacheMode"    # Lcom/lzy/okhttputils/cache/CacheMode;
    .param p2, "cacheTime"    # J
    .param p4, "baseTime"    # J

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    sget-object v2, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-gez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    add-long/2addr v2, p2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iget-wide v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExpire()J
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iget-wide v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->localExpire:J

    return-wide v0
.end method

.method public getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    return-object v0
.end method

.method public isExpire()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iget-boolean v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->data:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public setExpire(Z)V
    .locals 0
    .param p1, "expire"    # Z

    .prologue
    .line 65
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iput-boolean p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire:Z

    .line 66
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 25
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iput-wide p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->id:J

    .line 26
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->key:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLocalExpire(J)V
    .locals 1
    .param p1, "localExpire"    # J

    .prologue
    .line 57
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iput-wide p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->localExpire:J

    .line 58
    return-void
.end method

.method public setResponseHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)V
    .locals 0
    .param p1, "responseHeaders"    # Lcom/lzy/okhttputils/model/HttpHeaders;

    .prologue
    .line 41
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localExpire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->localExpire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
