.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 15

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 42
    iget-object v14, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 53
    const-string v0, "Date"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_a

    .line 55
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 58
    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_9

    .line 60
    const/4 v1, 0x1

    .line 61
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v0, v6

    move-wide v8, v4

    .line 62
    :goto_1
    array-length v6, v10

    if-lt v0, v6, :cond_1

    move v6, v1

    .line 77
    :goto_2
    const-string v0, "Expires"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    if-eqz v0, :cond_7

    .line 79
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    .line 82
    :goto_3
    const-string v0, "ETag"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v6, :cond_6

    .line 87
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v4, v12

    .line 93
    :cond_0
    :goto_4
    new-instance v1, Lcom/android/volley/Cache$Entry;

    invoke-direct {v1}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 94
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v6, v1, Lcom/android/volley/Cache$Entry;->data:[B

    .line 95
    iput-object v0, v1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 96
    iput-wide v4, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 97
    iget-wide v4, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v4, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 98
    iput-wide v2, v1, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 99
    iput-object v14, v1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    move-object v0, v1

    .line 101
    :goto_5
    return-object v0

    .line 63
    :cond_1
    aget-object v6, v10, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 64
    const-string v7, "no-cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "no-store"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    :cond_2
    const/4 v0, 0x0

    goto :goto_5

    .line 66
    :cond_3
    const-string v7, "max-age="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 68
    const/16 v7, 0x8

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    move-wide v6, v8

    .line 62
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-wide v8, v6

    goto :goto_1

    .line 69
    :catch_0
    move-exception v6

    move-wide v6, v8

    .line 71
    goto :goto_6

    :cond_4
    const-string v7, "must-revalidate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "proxy-revalidate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    move-wide v6, v4

    .line 72
    goto :goto_6

    .line 88
    :cond_6
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    cmp-long v1, v10, v2

    if-ltz v1, :cond_0

    .line 90
    sub-long v4, v10, v2

    add-long/2addr v4, v12

    goto :goto_4

    :cond_7
    move-wide v10, v4

    goto :goto_3

    :cond_8
    move-wide v6, v8

    goto :goto_6

    :cond_9
    move-wide v8, v4

    goto/16 :goto_2

    :cond_a
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 122
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 125
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 135
    :cond_0
    const-string v0, "ISO-8859-1"

    :goto_1
    return-object v0

    .line 126
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 128
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    aget-object v0, v3, v1

    goto :goto_1

    .line 125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
