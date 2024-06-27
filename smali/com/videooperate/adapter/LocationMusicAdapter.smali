.class public Lcom/videooperate/adapter/LocationMusicAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LocationMusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;,
        Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field asessNodeVos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mOnItemClickListener:Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

.field music10:Landroid/graphics/drawable/Drawable;

.field music11:Landroid/graphics/drawable/Drawable;

.field music12:Landroid/graphics/drawable/Drawable;

.field music13:Landroid/graphics/drawable/Drawable;

.field playingPosition:I

.field selectedView:Landroid/view/View;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mOnItemClickListener"    # Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;",
            "Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "asessNodeVos":Ljava/util/List;, "Ljava/util/List<Lcom/videooperate/bean/Song;>;"
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    .line 49
    iput-object p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->asessNodeVos:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/videooperate/adapter/LocationMusicAdapter;->addItemClickListener(Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/videooperate/adapter/LocationMusicAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/adapter/LocationMusicAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->viewWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/videooperate/adapter/LocationMusicAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/adapter/LocationMusicAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->viewHeight:I

    return p1
.end method


# virtual methods
.method public addItemClickListener(Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

    .line 72
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->asessNodeVos:Ljava/util/List;

    invoke-static {v0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/videooperate/adapter/LocationMusicAdapter;->onBindViewHolder(Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0f000a

    const/4 v5, 0x0

    .line 100
    iget-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->asessNodeVos:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/videooperate/bean/Song;

    .line 101
    .local v1, "song":Lcom/videooperate/bean/Song;
    const-string v2, "gggg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-nez p2, :cond_0

    .line 103
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->space:Landroid/support/v4/widget/Space;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/Space;->setVisibility(I)V

    .line 107
    :goto_0
    iget-object v2, v1, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 108
    rem-int/lit8 v2, p2, 0x4

    packed-switch v2, :pswitch_data_0

    .line 127
    :goto_1
    iget v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    if-ne p2, v2, :cond_2

    .line 128
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/videooperate/view/MusicButton;->setSelected(Z)V

    .line 133
    :goto_2
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->tv_music_name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->tv_music_length:Landroid/widget/TextView;

    iget v3, v1, Lcom/videooperate/bean/Song;->duration:I

    invoke-static {v3}, Lcom/videooperate/utils/DateUtil;->getTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/videooperate/view/MusicButton;->setTag(ILjava/lang/Object;)V

    .line 136
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->bt_ok:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 137
    return-void

    .line 105
    :cond_0
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->space:Landroid/support/v4/widget/Space;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/Space;->setVisibility(I)V

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 113
    :pswitch_1
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 116
    :pswitch_2
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 119
    :pswitch_3
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 123
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v1, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v0, "bmpDraw":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 130
    .end local v0    # "bmpDraw":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iget-object v2, p1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v2, v5}, Lcom/videooperate/view/MusicButton;->setSelected(Z)V

    goto :goto_2

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0f000a

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 169
    :sswitch_0
    iget v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    invoke-interface {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;->stop(I)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/videooperate/adapter/LocationMusicAdapter;->setSelectedState(Z)V

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->viewWidth:I

    iget v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/videooperate/view/MusicButton;->setViewWidthAndHeight(II)V

    .line 177
    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    invoke-interface {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;->stop(I)V

    .line 180
    invoke-virtual {p0, v4}, Lcom/videooperate/adapter/LocationMusicAdapter;->setSelectedState(Z)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    .line 185
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    invoke-interface {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;->play(I)V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/videooperate/adapter/LocationMusicAdapter;->setSelectedState(Z)V

    goto :goto_0

    .line 190
    :sswitch_1
    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;->onItem(I)V

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x7f0f01f2 -> :sswitch_0
        0x7f0f01fd -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/videooperate/adapter/LocationMusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    new-instance v0, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    iget-object v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040047

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;-><init>(Lcom/videooperate/adapter/LocationMusicAdapter;Landroid/view/View;)V

    .line 84
    .local v0, "viewholder":Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;
    iget-object v2, v0, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->bt_ok:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, v0, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v2, p0}, Lcom/videooperate/view/MusicButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, v0, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v2}, Lcom/videooperate/view/MusicButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 87
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/videooperate/adapter/LocationMusicAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/videooperate/adapter/LocationMusicAdapter$1;-><init>(Lcom/videooperate/adapter/LocationMusicAdapter;Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "asessNodeVos":Ljava/util/List;, "Ljava/util/List<Lcom/videooperate/bean/Song;>;"
    iput-object p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->asessNodeVos:Ljava/util/List;

    .line 77
    invoke-virtual {p0}, Lcom/videooperate/adapter/LocationMusicAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    invoke-virtual {v0}, Lcom/videooperate/view/MusicButton;->playMusic()V

    .line 147
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 148
    const-string v0, "gggg"

    const-string v1, "setSelectedState: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    iget v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->viewWidth:I

    iget v2, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/videooperate/view/MusicButton;->setViewWidthAndHeight(II)V

    .line 151
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    invoke-virtual {v0}, Lcom/videooperate/view/MusicButton;->stopMusic()V

    .line 152
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->selectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter;->playingPosition:I

    .line 154
    const-string v0, "gggg"

    const-string v1, "setSelectedState: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
