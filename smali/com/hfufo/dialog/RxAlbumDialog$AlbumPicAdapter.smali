.class public Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;
.super Landroid/widget/BaseAdapter;
.source "RxAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/RxAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumPicAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/hfufo/dialog/RxAlbumDialog;


# direct methods
.method public constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->mContext:Landroid/content/Context;

    .line 518
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 519
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 520
    return-void
.end method

.method private procCover(Landroid/widget/ImageView;Lcom/hfufo/bean/FileInfo;)V
    .locals 7
    .param p1, "mIcon"    # Landroid/widget/ImageView;
    .param p2, "item"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    const/16 v5, 0x50

    .line 523
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 524
    .local v4, "width":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    if-gtz v6, :cond_1

    move v3, v5

    .line 525
    .local v3, "height":I
    :goto_1
    const/4 v0, 0x0

    .line 528
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 529
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 535
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v0, :cond_2

    .line 536
    const/4 v5, 0x1

    invoke-static {v0, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 540
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    return-void

    .line 523
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    goto :goto_0

    .line 524
    .restart local v4    # "width":I
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 530
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "height":I
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 539
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-virtual {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03003e

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 559
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 565
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move-object v0, p2

    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    move-object v1, p2

    .line 583
    .end local v0    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 567
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 569
    .local v2, "item":Lcom/hfufo/bean/FileInfo;
    if-nez p2, :cond_1

    .line 570
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040026

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 571
    const v4, 0x7f0f004f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 572
    .local v3, "mIcon":Landroid/widget/ImageView;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 576
    :goto_1
    iget-boolean v4, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-nez v4, :cond_2

    .line 577
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 580
    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;->procCover(Landroid/widget/ImageView;Lcom/hfufo/bean/FileInfo;)V

    move-object v0, p2

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    move-object v1, p2

    .line 583
    .end local v0    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 574
    .end local v1    # "convertView":Landroid/view/View;
    .end local v3    # "mIcon":Landroid/widget/ImageView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .restart local v3    # "mIcon":Landroid/widget/ImageView;
    goto :goto_1

    .line 579
    :cond_2
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_2
.end method
