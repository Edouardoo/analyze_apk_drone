.class Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 796
    .local v5, "pos":I
    iget-object v6, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    iget-object v6, v6, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v6}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hfufo/bean/FileInfo;

    .line 797
    .local v3, "item":Lcom/hfufo/bean/FileInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v1, "file":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 815
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 816
    iget-object v6, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    iget-object v6, v6, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v6}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    iget-object v8, v8, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v8}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fileProvider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 817
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v6, "image/*"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    .end local v0    # "contentUri":Landroid/net/Uri;
    :goto_0
    iget-object v6, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    iget-object v6, v6, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v6}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 828
    return-void

    .line 819
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 821
    .local v4, "mUri_2":Landroid/net/Uri;
    const-string v6, "image/*"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
