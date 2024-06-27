.class Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1142
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failed, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-interface {p1}, Lokhttp3/Call;->isExecuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 1146
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 15
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "response"    # Lokhttp3/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "download code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4

    .line 1152
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    .line 1153
    .local v7, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v7, :cond_4

    .line 1154
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    .line 1155
    .local v1, "bytes":[B
    if-eqz v1, :cond_4

    .line 1156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "version"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "dev_desc.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1158
    .local v4, "output":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1160
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1165
    if-eqz v6, :cond_5

    .line 1166
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    move-object v5, v6

    .line 1169
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1170
    iget-object v10, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-static {v10}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1171
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "context is null"

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .end local v1    # "bytes":[B
    .end local v4    # "output":Ljava/lang/String;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "responseBody":Lokhttp3/ResponseBody;
    :goto_1
    return-void

    .line 1162
    .restart local v1    # "bytes":[B
    .restart local v4    # "output":Ljava/lang/String;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "responseBody":Lokhttp3/ResponseBody;
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1165
    if-eqz v5, :cond_0

    .line 1166
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 1165
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v5, :cond_1

    .line 1166
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v10

    .line 1174
    :cond_2
    iget-object v10, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-static {v10}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/fh/hdutil/AppUtils;->checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 1175
    .local v8, "upgradePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-static {v10}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/service/hdservice/CommunicationService;

    const v11, 0x7f080073

    invoke-virtual {v10, v11}, Lcom/hfufo/service/hdservice/CommunicationService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1176
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sdk upgradePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v9, "upgradePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.jieli.dv.running2_upgrade_file"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1181
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "update_type"

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1182
    const-string v10, "update_path"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1183
    const-string v10, "key_data"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1184
    iget-object v10, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-static {v10}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-static {v10}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1185
    iget-object v10, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    invoke-static {v10}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-virtual {v10, v3}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1189
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "upgradePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1700()V

    .line 1194
    .end local v1    # "bytes":[B
    .end local v4    # "output":Ljava/lang/String;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "responseBody":Lokhttp3/ResponseBody;
    .end local v8    # "upgradePath":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    goto/16 :goto_1

    .line 1165
    .restart local v1    # "bytes":[B
    .restart local v4    # "output":Ljava/lang/String;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "responseBody":Lokhttp3/ResponseBody;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 1162
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method
