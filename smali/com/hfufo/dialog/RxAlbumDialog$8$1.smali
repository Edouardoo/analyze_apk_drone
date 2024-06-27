.class Lcom/hfufo/dialog/RxAlbumDialog$8$1;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/dialog/RxAlbumDialog$8;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_delete_dialog_listener(ZZZI)V
    .locals 6
    .param p1, "selectedPicsNull"    # Z
    .param p2, "selectedVideosNull"    # Z
    .param p3, "state"    # Z
    .param p4, "value"    # I

    .prologue
    .line 335
    if-eqz p3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$300(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->notifyDataSetChanged()V

    .line 337
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 338
    .local v2, "vv":Landroid/view/View;
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 339
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v5, 0x28

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 340
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v4, v4, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1900(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$700(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->clearDisappearingChildren()V

    .line 342
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$700(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->destroyDrawingCache()V

    .line 343
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 344
    .local v1, "item":Lcom/hfufo/bean/FileInfo;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$8$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$8;

    iget-object v3, v3, Lcom/hfufo/dialog/RxAlbumDialog$8;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "item":Lcom/hfufo/bean/FileInfo;
    .end local v2    # "vv":Landroid/view/View;
    :cond_1
    return-void
.end method
