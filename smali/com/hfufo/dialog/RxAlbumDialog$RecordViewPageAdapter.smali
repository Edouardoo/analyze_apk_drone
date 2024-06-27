.class public Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RxAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/RxAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordViewPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/RxAlbumDialog;


# direct methods
.method public constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;)V
    .locals 3
    .param p1, "this$0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 838
    invoke-static {p1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 839
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 853
    const-string v0, "log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 865
    const-string v4, "log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiateItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hfufo/bean/FileInfo;

    .line 867
    .local v3, "item":Lcom/hfufo/bean/FileInfo;
    const/4 v1, 0x0

    .line 870
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-virtual {v3}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2300(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 872
    if-nez v1, :cond_0

    .line 873
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-virtual {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03003e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 875
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 876
    .local v0, "bd":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 878
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 879
    const v4, 0x7f0300d8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v4, p1

    .line 880
    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 881
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 882
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 883
    new-instance v4, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;

    invoke-direct {v4, p0}, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter$1;-><init>(Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 848
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
