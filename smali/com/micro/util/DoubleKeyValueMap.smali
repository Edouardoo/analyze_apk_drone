.class public Lcom/micro/util/DoubleKeyValueMap;
.super Ljava/lang/Object;
.source "DoubleKeyValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "K2:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK1;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 100
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    .line 104
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_0
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)TV;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getAllValues()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    const/4 v2, 0x0

    .line 54
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 55
    .local v1, "k1Set":Ljava/util/Set;, "Ljava/util/Set<TK1;>;"
    if-eqz v1, :cond_1

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .restart local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "k1":Ljava/lang/Object;, "TK1;"
    iget-object v4, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 59
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v3, :cond_0

    .line 60
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 64
    .end local v0    # "k1":Ljava/lang/Object;, "TK1;"
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    return-object v2
.end method

.method public getAllValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public getFirstKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK1;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;TV;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 29
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v1, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    return-void
.end method

.method public size()I
    .locals 4

    .prologue
    .line 79
    .local p0, "this":Lcom/micro/util/DoubleKeyValueMap;, "Lcom/micro/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v2, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 85
    :cond_0
    return v1

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 82
    .local v1, "result":I
    iget-object v2, p0, Lcom/micro/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 84
    goto :goto_0
.end method
