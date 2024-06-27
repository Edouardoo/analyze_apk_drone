.class Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 887
    const-string v5, "log"

    const-string v6, "onclick"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 889
    .local v4, "pos":I
    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    iget-object v5, v5, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 891
    .local v2, "item":Lcom/hfufo/bean/FileInfo;
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    iget-object v6, v6, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v6}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2700(Lcom/hfufo/dialog/RxAlbumDialog;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 892
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 893
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x20001

    iput v5, v3, Landroid/os/Message;->what:I

    .line 894
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 895
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "RecFilePath"

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 897
    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    iget-object v5, v5, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2800(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/fh/util/MsgCallback;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/fh/util/MsgCallback;->onCallback(Landroid/os/Message;)V

    .line 921
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 915
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    iget-object v5, v5, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10800000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 917
    const-string v5, "video_url"

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    iget-object v5, v5, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
