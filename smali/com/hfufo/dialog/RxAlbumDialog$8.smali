.class Lcom/hfufo/dialog/RxAlbumDialog$8;
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
    .line 321
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 327
    .local v1, "item":Lcom/hfufo/bean/FileInfo;
    iget-boolean v2, v1, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v2, :cond_1

    .line 328
    new-instance v2, Lcom/hfufo/dialog/DeleteDialog;

    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/hfufo/dialog/RxAlbumDialog$8$1;

    invoke-direct {v4, p0}, Lcom/hfufo/dialog/RxAlbumDialog$8$1;-><init>(Lcom/hfufo/dialog/RxAlbumDialog$8;)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/hfufo/dialog/DeleteDialog;-><init>(Landroid/app/Activity;Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;IZ)V

    .line 351
    invoke-virtual {v2}, Lcom/hfufo/dialog/DeleteDialog;->show()V

    .line 355
    .end local v1    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$300(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->notifyDataSetChanged()V

    .line 356
    return-void

    .line 325
    .restart local v1    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
