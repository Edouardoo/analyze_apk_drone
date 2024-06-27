.class Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;
.super Ljava/lang/Object;
.source "OuterCheckerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternetCheckRunner"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

.field private mTimeout:J

.field final synthetic this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;


# direct methods
.method public constructor <init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Ljava/util/List;JLcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;)V
    .locals 1
    .param p3, "timeout"    # J
    .param p5, "callback"    # Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J",
            "Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    .line 97
    iput-wide p3, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    .line 98
    iput-object p5, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    .line 99
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 103
    const/16 v18, 0x0

    .line 104
    .local v18, "selector":Ljava/nio/channels/Selector;
    const/16 v16, 0x0

    .line 105
    .local v16, "result":Z
    const/4 v5, 0x0

    .line 106
    .local v5, "channels":[Ljava/nio/channels/SocketChannel;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 114
    .local v20, "ts":J
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v18

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v5, v0, [Ljava/nio/channels/SocketChannel;

    .line 116
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 120
    .local v13, "map":Ljava/util/HashMap;
    const-string v19, "host"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 121
    .local v9, "host":Ljava/lang/String;
    const-string v19, "port"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 122
    .local v15, "port":I
    if-nez v9, :cond_0

    .line 116
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 124
    .local v4, "channel":Ljava/nio/channels/SocketChannel;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 125
    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v19

    invoke-direct {v0, v9, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 126
    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 127
    aput-object v4, v5, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 151
    .end local v4    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v15    # "port":I
    :catch_0
    move-exception v8

    .line 152
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    const-string v19, "time"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v18, :cond_1

    .line 157
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/Selector;->close()V

    .line 158
    :cond_1
    if-eqz v5, :cond_d

    .line 159
    array-length v0, v5

    move/from16 v24, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    aget-object v4, v5, v19

    .line 160
    .restart local v4    # "channel":Ljava/nio/channels/SocketChannel;
    if-eqz v4, :cond_2

    .line 161
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 129
    .end local v4    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "i":I
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 132
    .local v22, "waitTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v14

    .line 133
    .local v14, "n":I
    if-lez v14, :cond_b

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v17

    .line 135
    .local v17, "selectedKeys":Ljava/util/Set;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 136
    .local v12, "keyIterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 137
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/channels/SelectionKey;

    .line 138
    .local v11, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isConnectable()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v19

    if-eqz v19, :cond_8

    .line 139
    const/16 v16, 0x1

    .line 144
    .end local v11    # "key":Ljava/nio/channels/SelectionKey;
    :cond_5
    if-eqz v16, :cond_b

    .line 154
    .end local v12    # "keyIterator":Ljava/util/Iterator;
    .end local v17    # "selectedKeys":Ljava/util/Set;
    :goto_4
    const-string v19, "time"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v18, :cond_6

    .line 157
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/Selector;->close()V

    .line 158
    :cond_6
    if-eqz v5, :cond_c

    .line 159
    array-length v0, v5

    move/from16 v24, v0

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    aget-object v4, v5, v19

    .line 160
    .restart local v4    # "channel":Ljava/nio/channels/SocketChannel;
    if-eqz v4, :cond_7

    .line 161
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 159
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 142
    .end local v4    # "channel":Ljava/nio/channels/SocketChannel;
    .restart local v11    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v12    # "keyIterator":Ljava/util/Iterator;
    .restart local v17    # "selectedKeys":Ljava/util/Set;
    :cond_8
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 154
    .end local v10    # "i":I
    .end local v11    # "key":Ljava/nio/channels/SelectionKey;
    .end local v12    # "keyIterator":Ljava/util/Iterator;
    .end local v14    # "n":I
    .end local v17    # "selectedKeys":Ljava/util/Set;
    .end local v22    # "waitTime":J
    :catchall_0
    move-exception v19

    const-string v24, "time"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v18, :cond_9

    .line 157
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/Selector;->close()V

    .line 158
    :cond_9
    if-eqz v5, :cond_e

    .line 159
    array-length v0, v5

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v4, v5, v24

    .line 160
    .restart local v4    # "channel":Ljava/nio/channels/SocketChannel;
    if-eqz v4, :cond_a

    .line 161
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 159
    :cond_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 146
    .end local v4    # "channel":Ljava/nio/channels/SocketChannel;
    .restart local v10    # "i":I
    .restart local v14    # "n":I
    .restart local v22    # "waitTime":J
    :cond_b
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 147
    .local v6, "current":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    move-wide/from16 v24, v0

    sub-long v26, v6, v22

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    .line 148
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    move-wide/from16 v24, v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v26, 0x0

    cmp-long v19, v24, v26

    if-gtz v19, :cond_4

    goto/16 :goto_4

    .line 164
    .end local v6    # "current":J
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;->onResult(Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 170
    .end local v10    # "i":I
    .end local v14    # "n":I
    .end local v22    # "waitTime":J
    :goto_7
    return-void

    .line 165
    .restart local v10    # "i":I
    .restart local v14    # "n":I
    .restart local v22    # "waitTime":J
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 164
    .end local v10    # "i":I
    .end local v14    # "n":I
    .end local v22    # "waitTime":J
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;->onResult(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    .line 165
    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 164
    .end local v8    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;->onResult(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 165
    :goto_8
    throw v19

    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method
