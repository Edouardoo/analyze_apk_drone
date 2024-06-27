.class public Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RxAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/RxAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotViewPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/RxAlbumDialog;


# direct methods
.method public constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 761
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

    .line 764
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 765
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 776
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hfufo/bean/FileInfo;

    .line 778
    .local v4, "item":Lcom/hfufo/bean/FileInfo;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 779
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 785
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 786
    .local v3, "imageView":Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 787
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v5, p1

    .line 788
    check-cast v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 789
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 790
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 791
    new-instance v5, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;

    invoke-direct {v5, p0}, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter$1;-><init>(Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    return-object v3

    .line 780
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 756
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
