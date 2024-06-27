.class Lcom/hfufo/dialog/RxAlbumDialog$1;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/RxAlbumDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->cameraIsexit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "DCIM"

    invoke-static {v1, v2, v2, v2}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "srcPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    const-string v2, "Camera"

    invoke-static {v0, v2}, Lcom/fh/hdutil/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$002(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;

    .line 127
    .end local v0    # "srcPath":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/fh/hdutil/AppUtils;->selectTypeList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$102(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;

    .line 129
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/fh/hdutil/AppUtils;->selectTypeList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$202(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$300(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->notifyDataSetChanged()V

    .line 155
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$1;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRootPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-static {v2, v3}, Lcom/fh/hdutil/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$002(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
