.class public Lcom/videooperate/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# static fields
.field public static final DEFAULT_JOIN_SEPARATOR:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDistinctEntry(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "entry":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addDistinctList(Ljava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;",
            "Ljava/util/List",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "entryList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    const/4 v2, 0x0

    .line 176
    :goto_0
    return v2

    .line 170
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    .local v1, "sourceCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "entry":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v0    # "entry":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0
.end method

.method public static addListNotNullValue(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static distinctList(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-static {p0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    const/4 v4, 0x0

    .line 202
    :goto_0
    return v4

    .line 191
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 192
    .local v2, "sourceCount":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 193
    .local v3, "sourceListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 194
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 195
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 198
    add-int/lit8 v1, v1, -0x1

    .line 194
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v1    # "j":I
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, v2, v4

    goto :goto_0
.end method

.method public static getLast(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 227
    invoke-static {v0, p1, v1}, Lcom/videooperate/utils/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNext(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 237
    invoke-static {v0, p1, v1}, Lcom/videooperate/utils/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSize(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static invertList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-static {p0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    .end local p0    # "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :goto_0
    return-object p0

    .line 253
    .restart local p0    # "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v1, "invertList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 255
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 257
    goto :goto_0
.end method

.method public static isArrEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "sourceList"    # [Ljava/lang/Object;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<k:",
            "Ljava/lang/Object;",
            "v:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<Tk;Tv;>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "sourceList":Ljava/util/Map;, "Ljava/util/Map<Tk;Tv;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isEmptys([Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/List",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "sourceLists":[Ljava/util/List;, "[Ljava/util/List<TV;>;"
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 53
    :cond_0
    const/4 v0, 0x1

    .line 61
    :cond_1
    return v0

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    .local v0, "flag":Z
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 57
    .local v1, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 58
    :cond_3
    const/4 v0, 0x1

    .line 56
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isIntArrEmpty([I)Z
    .locals 1
    .param p0, "sourceList"    # [I

    .prologue
    .line 69
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/videooperate/utils/ListUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;C)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0, v0}, Lcom/videooperate/utils/ListUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, ""

    .line 140
    :goto_0
    return-object v2

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    const-string p1, ","

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, "joinStr":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 135
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
