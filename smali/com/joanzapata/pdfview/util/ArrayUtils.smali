.class public Lcom/joanzapata/pdfview/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static arrayToString([I)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 69
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 71
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static calculateIndexesInDuplicateArray([I)[I
    .locals 5
    .param p0, "originalUserPages"    # [I

    .prologue
    const/4 v4, 0x0

    .line 49
    array-length v3, p0

    new-array v2, v3, [I

    .line 50
    .local v2, "result":[I
    array-length v3, p0

    if-nez v3, :cond_1

    .line 63
    :cond_0
    return-object v2

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    .local v1, "index":I
    aget v3, p0, v4

    aput v3, v2, v4

    .line 56
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 57
    aget v3, p0, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p0, v4

    if-eq v3, v4, :cond_2

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 60
    :cond_2
    aput v1, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteDuplicatedPages([I)[I
    .locals 8
    .param p0, "pages"    # [I

    .prologue
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .line 34
    .local v3, "lastInt":I
    array-length v6, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget v7, p0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    .local v1, "currentInt":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v3, v7, :cond_0

    .line 36
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 34
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "currentInt":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 41
    .local v0, "arrayResult":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 42
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    :cond_2
    return-object v0
.end method
