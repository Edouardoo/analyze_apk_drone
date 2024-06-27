.class Lcom/lzy/okhttputils/cache/CacheDao;
.super Lcom/lzy/okhttputils/cache/DataBaseDao;
.source "CacheDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okhttputils/cache/DataBaseDao",
        "<",
        "Lcom/lzy/okhttputils/cache/CacheEntity",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    new-instance v0, Lcom/lzy/okhttputils/cache/CacheHelper;

    invoke-direct {v0}, Lcom/lzy/okhttputils/cache/CacheHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 20
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    const/4 v4, 0x0

    .line 87
    const-string v1, "key=?"

    .line 88
    .local v1, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v4

    .line 89
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/cache/CacheDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "cacheEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okhttputils/cache/CacheEntity;

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    const-string v0, "cache_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    new-instance v2, Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-direct {v2}, Lcom/lzy/okhttputils/cache/CacheEntity;-><init>()V

    .line 105
    .local v2, "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    const-string v16, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setId(J)V

    .line 106
    const-string v16, "key"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 107
    const-string v16, "localExpire"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setLocalExpire(J)V

    .line 109
    const-string v16, "head"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 110
    .local v13, "headerData":[B
    const/4 v11, 0x0

    .line 111
    .local v11, "headerBAIS":Ljava/io/ByteArrayInputStream;
    const/4 v14, 0x0

    .line 113
    .local v14, "headerOIS":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .local v12, "headerBAIS":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v15, Ljava/io/ObjectInputStream;

    invoke-direct {v15, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 115
    .end local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    .local v15, "headerOIS":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    .line 116
    .local v10, "header":Ljava/lang/Object;
    check-cast v10, Lcom/lzy/okhttputils/model/HttpHeaders;

    .end local v10    # "header":Ljava/lang/Object;
    invoke-virtual {v2, v10}, Lcom/lzy/okhttputils/cache/CacheEntity;->setResponseHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 121
    if-eqz v15, :cond_0

    :try_start_3
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V

    .line 122
    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v14, v15

    .end local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    move-object v11, v12

    .line 128
    .end local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    :cond_2
    :goto_0
    const-string v16, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 129
    .local v6, "dataData":[B
    const/4 v4, 0x0

    .line 130
    .local v4, "dataBAIS":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .line 132
    .local v7, "dataOIS":Ljava/io/ObjectInputStream;
    :try_start_4
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .local v5, "dataBAIS":Ljava/io/ByteArrayInputStream;
    :try_start_5
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 134
    .end local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    .local v8, "dataOIS":Ljava/io/ObjectInputStream;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 135
    .local v3, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v3}, Lcom/lzy/okhttputils/cache/CacheEntity;->setData(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 140
    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 141
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    move-object v7, v8

    .end local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    .restart local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .line 147
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    .end local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    :cond_5
    :goto_1
    return-object v2

    .line 123
    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .end local v6    # "dataData":[B
    .end local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    .end local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .end local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v9

    .line 124
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v15

    .end local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    move-object v11, v12

    .line 126
    .end local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 117
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 118
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 121
    if-eqz v14, :cond_6

    :try_start_9
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V

    .line 122
    :cond_6
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 123
    :catch_2
    move-exception v9

    .line 124
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 121
    :goto_3
    if-eqz v14, :cond_7

    :try_start_a
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V

    .line 122
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 125
    :cond_8
    :goto_4
    throw v16

    .line 123
    :catch_3
    move-exception v9

    .line 124
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 142
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "data":Ljava/lang/Object;, "TT;"
    .restart local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dataData":[B
    .restart local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v9

    .line 143
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .end local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    .restart local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .line 145
    .end local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 136
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 137
    .local v9, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 140
    if-eqz v7, :cond_9

    :try_start_c
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 141
    :cond_9
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 142
    :catch_6
    move-exception v9

    .line 143
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    .line 140
    :goto_6
    if-eqz v7, :cond_a

    :try_start_d
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 141
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 144
    :cond_b
    :goto_7
    throw v16

    .line 142
    :catch_7
    move-exception v9

    .line 143
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 139
    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v16

    move-object v4, v5

    .end local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .end local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    .restart local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v16

    move-object v7, v8

    .end local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    .restart local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .end local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 136
    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    :catch_8
    move-exception v9

    move-object v4, v5

    .end local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .end local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    .restart local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v9

    move-object v7, v8

    .end local v8    # "dataOIS":Ljava/io/ObjectInputStream;
    .restart local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .end local v5    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 120
    .end local v4    # "dataBAIS":Ljava/io/ByteArrayInputStream;
    .end local v6    # "dataData":[B
    .end local v7    # "dataOIS":Ljava/io/ObjectInputStream;
    .end local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    :catchall_4
    move-exception v16

    move-object v11, v12

    .end local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .end local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    :catchall_5
    move-exception v16

    move-object v14, v15

    .end local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    move-object v11, v12

    .end local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 117
    .end local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v9

    move-object v11, v12

    .end local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .end local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v9

    move-object v14, v15

    .end local v15    # "headerOIS":Ljava/io/ObjectInputStream;
    .restart local v14    # "headerOIS":Ljava/io/ObjectInputStream;
    move-object v11, v12

    .end local v12    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "headerBAIS":Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/CacheDao;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    const-string v2, "key=?"

    .line 96
    .local v2, "whereClause":Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v4

    .line 97
    .local v1, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lcom/lzy/okhttputils/cache/CacheDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "delete":I
    if-lez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public replace(Lcom/lzy/okhttputils/cache/CacheEntity;)J
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lzy/okhttputils/cache/CacheDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 34
    .local v10, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .local v20, "values":Landroid/content/ContentValues;
    const-string v21, "key"

    invoke-virtual/range {p1 .. p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v21, "localExpire"

    invoke-virtual/range {p1 .. p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v17

    .line 39
    .local v17, "headers":Lcom/lzy/okhttputils/model/HttpHeaders;
    const/4 v12, 0x0

    .line 40
    .local v12, "headerBAOS":Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 42
    .local v15, "headerOOS":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .local v13, "headerBAOS":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v16, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 44
    .end local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    .local v16, "headerOOS":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual/range {v16 .. v17}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 45
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectOutputStream;->flush()V

    .line 46
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 47
    .local v14, "headerData":[B
    const-string v21, "head"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 52
    if-eqz v16, :cond_0

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectOutputStream;->close()V

    .line 53
    :cond_0
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object/from16 v15, v16

    .end local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    .restart local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    move-object v12, v13

    .line 59
    .end local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "headerData":[B
    .restart local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 60
    .local v4, "data":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 61
    .local v5, "dataBAOS":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 63
    .local v8, "dataOOS":Ljava/io/ObjectOutputStream;
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .local v6, "dataBAOS":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 65
    .end local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    .local v9, "dataOOS":Ljava/io/ObjectOutputStream;
    :try_start_6
    invoke-virtual {v9, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->flush()V

    .line 67
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 68
    .local v7, "dataData":[B
    const-string v21, "data"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 73
    if-eqz v9, :cond_3

    :try_start_7
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V

    .line 74
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    move-object v8, v9

    .end local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    .restart local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 80
    .end local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "dataData":[B
    .restart local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lzy/okhttputils/cache/CacheDao;->getTableName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 81
    .local v18, "id":J
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/lzy/okhttputils/cache/CacheDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 82
    return-wide v18

    .line 54
    .end local v4    # "data":Ljava/lang/Object;, "TT;"
    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    .end local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    .end local v18    # "id":J
    .restart local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "headerData":[B
    .restart local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v11

    .line 55
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v15, v16

    .end local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    .restart local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    move-object v12, v13

    .line 57
    .end local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 48
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "headerData":[B
    :catch_1
    move-exception v11

    .line 49
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_8
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 52
    if-eqz v15, :cond_6

    :try_start_9
    invoke-virtual {v15}, Ljava/io/ObjectOutputStream;->close()V

    .line 53
    :cond_6
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 54
    :catch_2
    move-exception v11

    .line 55
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 52
    :goto_3
    if-eqz v15, :cond_7

    :try_start_a
    invoke-virtual {v15}, Ljava/io/ObjectOutputStream;->close()V

    .line 53
    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 56
    :cond_8
    :goto_4
    throw v21

    .line 54
    :catch_3
    move-exception v11

    .line 55
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 75
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v4    # "data":Ljava/lang/Object;, "TT;"
    .restart local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "dataData":[B
    .restart local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v11

    .line 76
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .end local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    .restart local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 78
    .end local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 69
    .end local v7    # "dataData":[B
    .end local v11    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 70
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_b
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 73
    if-eqz v8, :cond_9

    :try_start_c
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 74
    :cond_9
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 75
    :catch_6
    move-exception v11

    .line 76
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    .line 73
    :goto_6
    if-eqz v8, :cond_a

    :try_start_d
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 74
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 77
    :cond_b
    :goto_7
    throw v21

    .line 75
    :catch_7
    move-exception v11

    .line 76
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 72
    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v21

    move-object v5, v6

    .end local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    .restart local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v21

    move-object v8, v9

    .end local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    .restart local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .end local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 69
    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v11

    move-object v5, v6

    .end local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    .restart local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    :catch_9
    move-exception v11

    move-object v8, v9

    .end local v9    # "dataOOS":Ljava/io/ObjectOutputStream;
    .restart local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .end local v6    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 51
    .end local v4    # "data":Ljava/lang/Object;, "TT;"
    .end local v5    # "dataBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dataOOS":Ljava/io/ObjectOutputStream;
    .end local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v21

    move-object v12, v13

    .end local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    .restart local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    :catchall_5
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    .restart local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    move-object v12, v13

    .end local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 48
    .end local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v11

    move-object v12, v13

    .end local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    .restart local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    :catch_b
    move-exception v11

    move-object/from16 v15, v16

    .end local v16    # "headerOOS":Ljava/io/ObjectOutputStream;
    .restart local v15    # "headerOOS":Ljava/io/ObjectOutputStream;
    move-object v12, v13

    .end local v13    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "headerBAOS":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public bridge synthetic replace(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 16
    .local p0, "this":Lcom/lzy/okhttputils/cache/CacheDao;, "Lcom/lzy/okhttputils/cache/CacheDao<TT;>;"
    check-cast p1, Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/CacheDao;->replace(Lcom/lzy/okhttputils/cache/CacheEntity;)J

    move-result-wide v0

    return-wide v0
.end method
