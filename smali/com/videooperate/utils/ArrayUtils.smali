.class public Lcom/videooperate/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLast([IIIZ)I
    .locals 3
    .param p0, "sourceArray"    # [I
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I
    .param p3, "isCircle"    # Z

    .prologue
    .line 159
    array-length v1, p0

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/videooperate/utils/ObjectUtils;->transformIntArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 165
    .local v0, "array":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lcom/videooperate/utils/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getLast([JJJZ)J
    .locals 5
    .param p0, "sourceArray"    # [J
    .param p1, "value"    # J
    .param p3, "defaultValue"    # J
    .param p5, "isCircle"    # Z

    .prologue
    .line 128
    array-length v1, p0

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/videooperate/utils/ObjectUtils;->transformLongArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 134
    .local v0, "array":[Ljava/lang/Long;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, p5}, Lcom/videooperate/utils/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p3, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "sourceArray":[Ljava/lang/Object;, "[TV;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lcom/videooperate/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object p2

    .line 43
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v0, -0x1

    .line 44
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 45
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lcom/videooperate/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    move v0, v1

    .line 50
    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 54
    if-nez v0, :cond_4

    .line 55
    if-eqz p3, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p2, p0, v2

    goto :goto_0

    .line 44
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_4
    add-int/lit8 v2, v0, -0x1

    aget-object p2, p0, v2

    goto :goto_0
.end method

.method public static getLast([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "sourceArray":[Ljava/lang/Object;, "[TV;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/videooperate/utils/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getNext([IIIZ)I
    .locals 3
    .param p0, "sourceArray"    # [I
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I
    .param p3, "isCircle"    # Z

    .prologue
    .line 175
    array-length v1, p0

    if-nez v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    invoke-static {p0}, Lcom/videooperate/utils/ObjectUtils;->transformIntArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 181
    .local v0, "array":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lcom/videooperate/utils/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getNext([JJJZ)J
    .locals 5
    .param p0, "sourceArray"    # [J
    .param p1, "value"    # J
    .param p3, "defaultValue"    # J
    .param p5, "isCircle"    # Z

    .prologue
    .line 144
    array-length v1, p0

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/videooperate/utils/ObjectUtils;->transformLongArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 150
    .local v0, "array":[Ljava/lang/Long;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, p5}, Lcom/videooperate/utils/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p3, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "sourceArray":[Ljava/lang/Object;, "[TV;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lcom/videooperate/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object p2

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v0, -0x1

    .line 90
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 91
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lcom/videooperate/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    move v0, v1

    .line 96
    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 100
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4

    .line 101
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    aget-object p2, p0, v2

    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_4
    add-int/lit8 v2, v0, 0x1

    aget-object p2, p0, v2

    goto :goto_0
.end method

.method public static getNext([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "sourceArray":[Ljava/lang/Object;, "[TV;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/videooperate/utils/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;)Z"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "sourceArray":[Ljava/lang/Object;, "[TV;"
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
