.class Lcom/hfufo/dialog/RxAlbumDialog$2;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog;->main_album_show()V
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
    .line 180
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x5

    .line 186
    const-string v2, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 188
    .local v1, "mIcon":Landroid/widget/ImageView;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 189
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    if-ne v0, p3, :cond_0

    .line 190
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    goto :goto_1

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$400(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$502(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {v3, v4}, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-static {v2, v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$602(Lcom/hfufo/dialog/RxAlbumDialog;Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;)Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    .line 198
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$700(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$600(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 199
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$600(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->notifyDataSetChanged()V

    .line 200
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$700(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 201
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$900(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$300(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->notifyDataSetChanged()V

    .line 204
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$2;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/RxAlbumDialog;->access$600(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method
