.class public Lcom/lzy/okhttputils/utils/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultHeaders(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;Lcom/lzy/okhttputils/cache/CacheMode;)V
    .locals 8
    .param p0, "request"    # Lcom/lzy/okhttputils/request/BaseRequest;
    .param p2, "cacheMode"    # Lcom/lzy/okhttputils/cache/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okhttputils/request/BaseRequest;",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;",
            "Lcom/lzy/okhttputils/cache/CacheMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    if-eqz p1, :cond_1

    sget-object v6, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne p2, v6, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v4

    .line 126
    .local v4, "responseHeaders":Lcom/lzy/okhttputils/model/HttpHeaders;
    const-string v6, "ETag"

    invoke-virtual {v4, v6}, Lcom/lzy/okhttputils/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "eTag":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, "If-None-Match"

    invoke-virtual {p0, v6, v1}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 128
    :cond_0
    const-string v6, "Last-Modified"

    invoke-virtual {v4, v6}, Lcom/lzy/okhttputils/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lzy/okhttputils/model/HttpHeaders;->getLastModified(Ljava/lang/String;)J

    move-result-wide v2

    .line 129
    .local v2, "lastModified":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const-string v6, "If-Modified-Since"

    invoke-static {v2, v3}, Lcom/lzy/okhttputils/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 133
    .end local v1    # "eTag":Ljava/lang/String;
    .end local v2    # "lastModified":J
    .end local v4    # "responseHeaders":Lcom/lzy/okhttputils/model/HttpHeaders;
    :cond_1
    invoke-static {}, Lcom/lzy/okhttputils/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "acceptLanguage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Accept-Language"

    invoke-virtual {p0, v6, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 137
    :cond_2
    invoke-static {}, Lcom/lzy/okhttputils/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "userAgent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "User-Agent"

    invoke-virtual {p0, v6, v5}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 139
    :cond_3
    return-void
.end method

.method public static createCacheEntity(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okhttputils/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 22
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .param p2, "cacheMode"    # Lcom/lzy/okhttputils/cache/CacheMode;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Headers;",
            "TT;",
            "Lcom/lzy/okhttputils/cache/CacheMode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const-wide/16 v12, 0x0

    .line 48
    .local v12, "localExpire":J
    sget-object v19, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 49
    const-string v19, "Date"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lzy/okhttputils/model/HttpHeaders;->getDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 50
    .local v4, "date":J
    const-string v19, "Expires"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lzy/okhttputils/model/HttpHeaders;->getExpiration(Ljava/lang/String;)J

    move-result-wide v8

    .line 51
    .local v8, "expires":J
    const-string v19, "Cache-Control"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "Pragma"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lzy/okhttputils/model/HttpHeaders;->getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "cacheControl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-gtz v19, :cond_0

    const/4 v3, 0x0

    .line 104
    .end local v2    # "cacheControl":Ljava/lang/String;
    .end local v4    # "date":J
    .end local v8    # "expires":J
    :goto_0
    return-object v3

    .line 56
    .restart local v2    # "cacheControl":Ljava/lang/String;
    .restart local v4    # "date":J
    .restart local v8    # "expires":J
    :cond_0
    const-wide/16 v14, 0x0

    .line 57
    .local v14, "maxAge":J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 58
    new-instance v18, Ljava/util/StringTokenizer;

    const-string v19, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v18, "tokens":Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 60
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, "token":Ljava/lang/String;
    const-string v19, "no-cache"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "no-store"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 63
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 64
    :cond_3
    const-string v19, "max-age="

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 67
    const/16 v19, 0x8

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 69
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-gtz v19, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "token":Ljava/lang/String;
    .end local v18    # "tokens":Ljava/util/StringTokenizer;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 79
    .local v16, "now":J
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-lez v19, :cond_5

    move-wide/from16 v16, v4

    .line 81
    :cond_5
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_7

    .line 83
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v14

    add-long v12, v16, v20

    .line 93
    .end local v2    # "cacheControl":Ljava/lang/String;
    .end local v4    # "date":J
    .end local v8    # "expires":J
    .end local v14    # "maxAge":J
    .end local v16    # "now":J
    :cond_6
    :goto_2
    new-instance v10, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-direct {v10}, Lcom/lzy/okhttputils/model/HttpHeaders;-><init>()V

    .line 94
    .local v10, "headers":Lcom/lzy/okhttputils/model/HttpHeaders;
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 95
    .local v7, "headerName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v7, v0}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 84
    .end local v7    # "headerName":Ljava/lang/String;
    .end local v10    # "headers":Lcom/lzy/okhttputils/model/HttpHeaders;
    .restart local v2    # "cacheControl":Ljava/lang/String;
    .restart local v4    # "date":J
    .restart local v8    # "expires":J
    .restart local v14    # "maxAge":J
    .restart local v16    # "now":J
    :cond_7
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-ltz v19, :cond_6

    .line 86
    move-wide v12, v8

    goto :goto_2

    .line 89
    .end local v2    # "cacheControl":Ljava/lang/String;
    .end local v4    # "date":J
    .end local v8    # "expires":J
    .end local v14    # "maxAge":J
    .end local v16    # "now":J
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto :goto_2

    .line 99
    .restart local v10    # "headers":Lcom/lzy/okhttputils/model/HttpHeaders;
    :cond_9
    new-instance v3, Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-direct {v3}, Lcom/lzy/okhttputils/cache/CacheEntity;-><init>()V

    .line 100
    .local v3, "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->setData(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v3, v12, v13}, Lcom/lzy/okhttputils/cache/CacheEntity;->setLocalExpire(J)V

    .line 103
    invoke-virtual {v3, v10}, Lcom/lzy/okhttputils/cache/CacheEntity;->setResponseHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    goto/16 :goto_0
.end method
