.class Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/fragment/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoViewAdapter"
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/hfufo/fragment/PhotoViewFragment;


# direct methods
.method constructor <init>(Lcom/hfufo/fragment/PhotoViewFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    .line 179
    return-void
.end method

.method private loadThumbs(Lcom/bm/library/PhotoView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/bm/library/PhotoView;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {}, Lcom/videooperate/utils/ImageLoader;->getInstance()Lcom/videooperate/utils/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Lcom/videooperate/utils/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lcom/bm/library/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "item":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 186
    .restart local v0    # "item":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/bm/library/PhotoView;

    iget-object v2, p0, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bm/library/PhotoView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "photoView":Lcom/bm/library/PhotoView;
    invoke-virtual {v0}, Lcom/bm/library/PhotoView;->enable()V

    .line 203
    invoke-virtual {p0, p2}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "savePath":Ljava/lang/String;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/bm/library/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    const-string v2, "QJ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/bm/library/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->loadThumbs(Lcom/bm/library/PhotoView;Ljava/lang/String;)V

    .line 214
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    return-object v0

    .line 212
    :cond_1
    const v2, 0x7f03003e

    invoke-virtual {v0, v2}, Lcom/bm/library/PhotoView;->setImageResource(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 196
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
