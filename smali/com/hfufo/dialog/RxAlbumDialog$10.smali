.class Lcom/hfufo/dialog/RxAlbumDialog$10;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 416
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$10;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 433
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 427
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 420
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$10;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$10;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1002(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$10;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1100(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$10;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method
