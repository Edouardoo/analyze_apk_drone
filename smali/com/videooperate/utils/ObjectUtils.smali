.class public Lcom/videooperate/utils/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;TV;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "v1":Ljava/lang/Object;, "TV;"
    .local p1, "v2":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .end local p0    # "v1":Ljava/lang/Object;, "TV;"
    :goto_0
    return v0

    .restart local p0    # "v1":Ljava/lang/Object;, "TV;"
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p0, Ljava/lang/Comparable;

    .line 103
    .end local p0    # "v1":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static convertToDouble(Ljava/lang/Object;I)I
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defalut"    # I

    .prologue
    .line 135
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    .end local p1    # "defalut":I
    :cond_0
    :goto_0
    return p1

    .line 138
    .restart local p1    # "defalut":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "str":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static convertToInt(Ljava/lang/Object;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defalut"    # I

    .prologue
    .line 112
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    .end local p1    # "defalut":I
    :cond_0
    :goto_0
    return p1

    .line 115
    .restart local p1    # "defalut":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "str":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result p1

    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    .line 125
    .local v1, "el":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static convertTolong(Ljava/lang/Object;I)J
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defalut"    # I

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    int-to-long v4, p1

    .line 168
    :goto_0
    return-wide v4

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    int-to-long v4, p1

    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    int-to-long v4, v3

    goto :goto_0

    .line 167
    :catch_1
    move-exception v1

    .line 168
    .local v1, "el":Ljava/lang/Exception;
    int-to-long v4, p1

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "actual"    # Ljava/lang/Object;
    .param p1, "expected"    # Ljava/lang/Object;

    .prologue
    .line 20
    if-eq p0, p1, :cond_0

    if-nez p0, :cond_1

    if-nez p1, :cond_2

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidTagAndAlias(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v2, "^[\u4e00-\u9fa50-9a-zA-Z_!@#$&*+=.|]+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 176
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 177
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static transformIntArray([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "source"    # [Ljava/lang/Integer;

    .prologue
    .line 73
    array-length v2, p0

    new-array v0, v2, [I

    .line 74
    .local v0, "destin":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 75
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method public static transformIntArray([I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "source"    # [I

    .prologue
    .line 59
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Integer;

    .line 60
    .local v0, "destin":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 61
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v0
.end method

.method public static transformLongArray([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "source"    # [Ljava/lang/Long;

    .prologue
    .line 45
    array-length v2, p0

    new-array v0, v2, [J

    .line 46
    .local v0, "destin":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 47
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public static transformLongArray([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # [J

    .prologue
    .line 31
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Long;

    .line 32
    .local v0, "destin":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 33
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method
