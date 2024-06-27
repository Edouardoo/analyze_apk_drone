.class Lcom/hfufo/dialog/RxAlbumDialog$11;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog;->init_record_view()V
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
    .line 437
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 441
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, "vv":Landroid/view/View;
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 443
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 444
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2000(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1400(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->clearDisappearingChildren()V

    .line 446
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1400(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->destroyDrawingCache()V

    .line 447
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$11;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1200(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->notifyDataSetChanged()V

    .line 448
    return-void
.end method
