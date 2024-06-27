.class public Lcom/videooperate/adapter/AlbumListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AlbumListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;,
        Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private final TYPE_PHOTO:I

.field private final TYPE_VIDEO:I

.field asessNodeVos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/app/Activity;

.field isOpenAddMusic:Z

.field isShowSelect:Z

.field isVideo:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "mOnItemClickListener"    # Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;
    .param p4, "isVideo"    # Z
    .param p5, "isOpenAddMusic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;",
            "Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "asessNodeVos":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput v2, p0, Lcom/videooperate/adapter/AlbumListAdapter;->TYPE_PHOTO:I

    .line 44
    const/4 v1, 0x1

    iput v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->TYPE_VIDEO:I

    .line 48
    iput-object p1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->context:Landroid/app/Activity;

    .line 49
    iput-boolean p4, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isVideo:Z

    .line 50
    iput-boolean p5, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isOpenAddMusic:Z

    .line 51
    iput-object p2, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 59
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setIsLastSelected(Z)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p3}, Lcom/videooperate/adapter/AlbumListAdapter;->addItemClickListener(Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method private getVideoThumb(Landroid/widget/ImageView;Lcom/hfufo/bean/FileInfo;)V
    .locals 9
    .param p1, "ivCover"    # Landroid/widget/ImageView;
    .param p2, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    const v8, 0x7f03003e

    const/16 v7, 0x12c

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/fh/hdutil/AppUtils;->checkCameraDir(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".thumbnail"

    invoke-static {v3, v4, v5, v6}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-static {p2}, Lcom/fh/hdutil/AppUtils;->getVideoThumbName(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "saveUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-static {}, Lcom/fh/util/ThumbLoader;->getInstance()Lcom/fh/util/ThumbLoader;

    move-result-object v2

    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v7, v7}, Lcom/fh/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 251
    invoke-static {}, Lcom/fh/util/ThumbLoader;->getInstance()Lcom/fh/util/ThumbLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fh/util/ThumbLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 255
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 258
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public addItemClickListener(Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    .line 83
    return-void
.end method

.method public changeNotify()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/videooperate/adapter/AlbumListAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    invoke-static {v0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/videooperate/adapter/AlbumListAdapter;->onBindViewHolder(Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v5, 0x7f0f000a

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    .line 121
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    iget-boolean v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isShowSelect:Z

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPhotoCheaked:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-boolean v1, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPhotoCheaked:Landroid/widget/ImageView;

    const v2, 0x7f03006e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->vShadown:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/videooperate/adapter/AlbumListAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, v3}, Lcom/hfufo/bean/FileInfo;->setIsLastSelected(Z)V

    .line 139
    :goto_0
    invoke-virtual {p0, p2}, Lcom/videooperate/adapter/AlbumListAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ll_buttom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/videooperate/utils/ImageLoaderUtils;->displayLoactionPic(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;)V

    .line 168
    :goto_1
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 169
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 170
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, v3}, Lcom/hfufo/bean/FileInfo;->setIsLastSelected(Z)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPhotoCheaked:Landroid/widget/ImageView;

    const v2, 0x7f03006d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->vShadown:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPhotoCheaked:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->vShadown:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ll_buttom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-boolean v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isOpenAddMusic:Z

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_2
    iget-object v2, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->tv_length:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/videooperate/utils/DateUtil;->getTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->tv_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/videooperate/utils/ImageLoaderUtils;->displayLoactionVideoCover(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 150
    :cond_4
    iget-object v1, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0f000a

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 189
    :sswitch_0
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 192
    iget-boolean v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isShowSelect:Z

    if-nez v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;->onItemClick(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-boolean v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isVideo:Z

    if-eqz v0, :cond_3

    .line 197
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    iget-boolean v0, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v0, :cond_2

    .line 198
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0, v3}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 209
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/videooperate/adapter/AlbumListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0, v4}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    goto :goto_1

    .line 203
    :cond_3
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    iget-boolean v0, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v0, :cond_4

    .line 204
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0, v3}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    goto :goto_1

    .line 206
    :cond_4
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0, v4}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    goto :goto_1

    .line 212
    :sswitch_1
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isShowSelect:Z

    if-nez v0, :cond_0

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;->onAddMusic(I)V

    goto/16 :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00d1 -> :sswitch_1
        0x7f0f01f1 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/videooperate/adapter/AlbumListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    new-instance v0, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;-><init>(Lcom/videooperate/adapter/AlbumListAdapter;Landroid/view/View;)V

    .line 100
    .local v0, "viewHolder":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;
    iget-object v1, v0, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, v0, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, v0, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;

    const v0, 0x7f0f000a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;->onLongClick(I)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "asessNodeVos":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v2, 0x0

    .line 87
    iput-object p1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->asessNodeVos:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setIsLastSelected(Z)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v2}, Lcom/videooperate/adapter/AlbumListAdapter;->setSelectSwitchStatus(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/videooperate/adapter/AlbumListAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public setSelectSwitchStatus(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isShowSelect:Z

    if-ne v0, p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-boolean p1, p0, Lcom/videooperate/adapter/AlbumListAdapter;->isShowSelect:Z

    .line 111
    invoke-virtual {p0}, Lcom/videooperate/adapter/AlbumListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
