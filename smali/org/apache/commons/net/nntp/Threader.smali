.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/Threadable;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v2, :cond_3

    .line 112
    const/4 v0, 0x1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Bogus-id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v3

    .line 123
    :cond_0
    :goto_0
    if-nez v0, :cond_d

    .line 124
    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 125
    iput-object p1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 126
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 133
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object v5

    .line 134
    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-object v2, v3

    :goto_2
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    .line 136
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 139
    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 141
    invoke-virtual {p2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    if-eqz v2, :cond_2

    iget-object v7, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v7, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 152
    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 153
    iget-object v7, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v7, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 154
    iput-object v0, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 134
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v2, v0

    goto :goto_2

    .line 118
    :cond_3
    iput-object p1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_0

    .line 162
    :cond_4
    if-eqz v2, :cond_c

    if-eq v2, v1, :cond_5

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    move-object v0, v3

    .line 171
    :goto_3
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v2, :cond_9

    .line 174
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v2, v3

    .line 175
    :goto_4
    if-eqz v4, :cond_6

    .line 177
    if-ne v4, v1, :cond_7

    .line 182
    :cond_6
    if-nez v4, :cond_8

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didnt find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in parent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_7
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v2, v4

    move-object v4, v5

    goto :goto_4

    .line 191
    :cond_8
    if-nez v2, :cond_b

    .line 192
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 197
    :goto_5
    iput-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 198
    iput-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 202
    :cond_9
    if-eqz v0, :cond_a

    .line 203
    iput-object v0, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 204
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 205
    iput-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 207
    :cond_a
    return-void

    .line 194
    :cond_b
    iget-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    :cond_c
    move-object v0, v2

    goto :goto_3

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/ThreadContainer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;)",
            "Lorg/apache/commons/net/nntp/ThreadContainer;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 216
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 221
    iget-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_0

    .line 222
    iget-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_1

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.next is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 227
    iput-object v0, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 230
    :cond_2
    return-object v1
.end method

.method private gatherSubjects(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 305
    .line 307
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    move v3, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 308
    add-int/lit8 v3, v3, 0x1

    .line 307
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 312
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    int-to-double v4, v3

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v8

    double-to-int v0, v4

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v6, v0, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 315
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_5

    .line 316
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 321
    if-nez v0, :cond_1

    .line 322
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 325
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v4

    .line 327
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 315
    :goto_2
    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    move v1, v0

    goto :goto_1

    .line 331
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 340
    if-eqz v0, :cond_4

    iget-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v5, :cond_15

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v0}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v0, :cond_15

    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v0}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v0

    if-nez v0, :cond_15

    .line 346
    :cond_4
    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 352
    :cond_5
    if-nez v1, :cond_6

    .line 449
    :goto_3
    return-void

    .line 359
    :cond_6
    iget-object v3, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v5, v0

    move-object v1, v2

    .line 360
    :goto_4
    if-eqz v3, :cond_13

    .line 362
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 365
    if-nez v0, :cond_7

    .line 366
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 369
    :cond_7
    invoke-interface {v0}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    move-object v1, v3

    .line 361
    :goto_5
    if-nez v5, :cond_12

    move-object v0, v2

    :goto_6
    move-object v3, v5

    move-object v5, v0

    goto :goto_4

    .line 376
    :cond_8
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 378
    if-ne v0, v3, :cond_9

    move-object v1, v3

    .line 379
    goto :goto_5

    .line 384
    :cond_9
    if-nez v1, :cond_a

    .line 385
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 389
    :goto_7
    iput-object v2, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 391
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_e

    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_e

    .line 394
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 395
    :goto_8
    if-eqz v4, :cond_b

    iget-object v7, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v7, :cond_b

    .line 396
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_8

    .line 387
    :cond_a
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_7

    .line 400
    :cond_b
    if-eqz v4, :cond_c

    .line 401
    iget-object v7, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v7, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 404
    :cond_c
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_9
    if-eqz v4, :cond_d

    .line 405
    iput-object v0, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 404
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_9

    .line 408
    :cond_d
    iput-object v2, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 409
    :cond_e
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v4, :cond_f

    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v4, :cond_10

    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-nez v4, :cond_10

    .line 415
    :cond_f
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 416
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 417
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 421
    :cond_10
    new-instance v7, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v7}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 422
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v4, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 423
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 425
    iget-object v4, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 426
    :goto_a
    if-eqz v4, :cond_11

    .line 429
    iput-object v7, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 427
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    .line 432
    :cond_11
    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 433
    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 435
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 436
    iput-object v0, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 439
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 440
    iput-object v7, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto/16 :goto_5

    .line 361
    :cond_12
    iget-object v0, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto/16 :goto_6

    .line 446
    :cond_13
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :cond_14
    move-object v1, v3

    goto/16 :goto_5

    :cond_15
    move v0, v1

    goto/16 :goto_2
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v4, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v3, v1

    .line 240
    :goto_0
    if-eqz v4, :cond_8

    .line 246
    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_1

    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_1

    .line 247
    if-nez v3, :cond_0

    .line 248
    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v2, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    move-object v2, v0

    .line 243
    :goto_2
    if-nez v2, :cond_7

    move-object v0, v1

    :goto_3
    move-object v4, v2

    goto :goto_0

    .line 250
    :cond_0
    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v2, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 258
    :cond_1
    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_5

    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v2, :cond_5

    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_2

    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_5

    .line 265
    :cond_2
    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 268
    if-nez v3, :cond_3

    .line 269
    iput-object v2, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_4
    move-object v0, v2

    .line 277
    :goto_5
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_4

    .line 278
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 277
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 271
    :cond_3
    iput-object v2, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    .line 281
    :cond_4
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 282
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 290
    :cond_5
    iget-object v2, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v2, :cond_6

    .line 293
    invoke-direct {p0, v4}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    :cond_6
    move-object v2, v0

    move-object v3, v4

    goto :goto_2

    .line 243
    :cond_7
    iget-object v0, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3

    .line 296
    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/Threadable;

    .line 64
    invoke-interface {v0}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v4

    if-nez v4, :cond_2

    .line 65
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, v2}, Lorg/apache/commons/net/nntp/Threader;->findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object v3

    .line 74
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 77
    invoke-direct {p0, v3}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 79
    invoke-virtual {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    .line 80
    invoke-direct {p0, v3}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 82
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_4

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root node has a next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_4
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    if-eqz v0, :cond_6

    .line 87
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_5

    .line 88
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 86
    :cond_5
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 92
    :cond_6
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 93
    :goto_3
    invoke-virtual {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    move-object v1, v0

    .line 95
    goto :goto_0

    .line 92
    :cond_7
    iget-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_3
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    goto :goto_0
.end method
