.class Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;
.super Landroid/os/AsyncTask;
.source "RxAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/RxAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCover"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private imageUrl:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:Lcom/hfufo/dialog/RxAlbumDialog;


# direct methods
.method private constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;Lcom/hfufo/dialog/RxAlbumDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p2, "x1"    # Lcom/hfufo/dialog/RxAlbumDialog$1;

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # [Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->imageUrl:Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 676
    .local v8, "start":J
    invoke-static {}, Lcom/fh/util/ThumbLoader;->getInstance()Lcom/fh/util/ThumbLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->imageUrl:Ljava/lang/String;

    const/16 v3, 0x6c

    const/16 v4, 0x57

    new-instance v5, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;

    invoke-direct {v5, p0, v8, v9}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;-><init>(Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;J)V

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    .line 688
    .end local v8    # "start":J
    :goto_0
    const/4 v7, 0x0

    .line 689
    .local v7, "totalTime":I
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 691
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    add-int/lit8 v7, v7, 0x5

    .line 693
    const/16 v0, 0x7d0

    if-le v7, v0, :cond_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->bmp:Landroid/graphics/Bitmap;

    return-object v0

    .line 686
    .end local v7    # "totalTime":I
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 696
    .restart local v7    # "totalTime":I
    :catch_0
    move-exception v6

    .line 697
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 706
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2000(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 707
    .local v0, "ivCover":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 708
    if-eqz p1, :cond_1

    .line 709
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const v1, 0x7f03003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 664
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
