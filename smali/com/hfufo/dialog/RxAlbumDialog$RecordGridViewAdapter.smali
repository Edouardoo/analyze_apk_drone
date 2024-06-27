.class public Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "RxAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/RxAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordGridViewAdapter"
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
    .line 592
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 593
    iput-object p2, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->mContext:Landroid/content/Context;

    .line 594
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 595
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 596
    return-void
.end method

.method private procCover(Landroid/widget/ImageView;Lcom/fh/lib/Album;)V
    .locals 8
    .param p1, "mIcon"    # Landroid/widget/ImageView;
    .param p2, "item"    # Lcom/fh/lib/Album;

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 601
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 602
    .local v2, "start":J
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-virtual {p2}, Lcom/fh/lib/Album;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2300(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 603
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6d88\u8017\u65f6\u95f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    if-nez v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-virtual {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f03003e

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 626
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

    .line 632
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move-object v0, p2

    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    move-object v1, p2

    .line 651
    .end local v0    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 634
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 637
    .local v2, "item":Lcom/hfufo/bean/FileInfo;
    if-nez p2, :cond_1

    .line 638
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04005a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 639
    const v4, 0x7f0f004f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 640
    .local v3, "mIcon":Landroid/widget/ImageView;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 644
    :goto_1
    iget-boolean v4, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-nez v4, :cond_2

    .line 645
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 648
    :goto_2
    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 650
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2400(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;I)V

    move-object v0, p2

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    move-object v1, p2

    .line 651
    .end local v0    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 642
    .end local v1    # "convertView":Landroid/view/View;
    .end local v3    # "mIcon":Landroid/widget/ImageView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .restart local v3    # "mIcon":Landroid/widget/ImageView;
    goto :goto_1

    .line 647
    :cond_2
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_2
.end method
