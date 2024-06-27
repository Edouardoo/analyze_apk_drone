.class Lcom/hfufo/dialog/RxAlbumDialog$9;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog;->init_snapshot_view()V
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
    .line 359
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$9;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$9;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$9;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 365
    .local v2, "item":Lcom/hfufo/bean/FileInfo;
    iget-boolean v3, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v3, :cond_1

    .line 367
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$9;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    const-string v4, "image/*"

    invoke-static {v3, v0, v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2100(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/io/File;Ljava/lang/String;)V

    .line 400
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_0
    return-void

    .line 363
    .restart local v2    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
