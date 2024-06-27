.class public Lcom/videooperate/adapter/AddMusicAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddMusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;,
        Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mOnItemClickListener:Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

.field mVideoDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mVideoNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field music10:Landroid/graphics/drawable/Drawable;

.field music11:Landroid/graphics/drawable/Drawable;

.field music12:Landroid/graphics/drawable/Drawable;

.field music13:Landroid/graphics/drawable/Drawable;

.field playingPosition:I

.field selectedView:Landroid/view/View;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;)V
    .locals 4
    .param p1, "mOnItemClickListener"    # Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    .line 44
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    .line 49
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/videooperate/adapter/AddMusicAdapter;->addItemClickListener(Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/videooperate/adapter/AddMusicAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/adapter/AddMusicAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->viewWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/videooperate/adapter/AddMusicAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/adapter/AddMusicAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->viewHeight:I

    return p1
.end method


# virtual methods
.method public addItemClickListener(Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

    .line 72
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoList:Ljava/util/List;

    invoke-static {v0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/videooperate/adapter/AddMusicAdapter;->onBindViewHolder(Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v3, 0x7f0f000a

    const/4 v2, 0x0

    .line 95
    if-nez p2, :cond_0

    .line 96
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->space:Landroid/support/v4/widget/Space;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/Space;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object v1, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->tv_music_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoNameList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    rem-int/lit8 v0, p2, 0x4

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_1
    iget v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    if-ne p2, v0, :cond_1

    .line 116
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/videooperate/view/MusicButton;->setSelected(Z)V

    .line 120
    :goto_2
    iget-object v1, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->tv_music_length:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoDurationList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/videooperate/view/MusicButton;->setTag(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->bt_ok:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 123
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->space:Landroid/support/v4/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/Space;->setVisibility(I)V

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 106
    :pswitch_1
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music11:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 109
    :pswitch_2
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music12:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 112
    :pswitch_3
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->music13:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v0, v2}, Lcom/videooperate/view/MusicButton;->setSelected(Z)V

    goto :goto_2

    .line 101
    nop

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

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 152
    :sswitch_0
    iget v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    if-ltz v0, :cond_0

    .line 154
    invoke-virtual {p0, v4}, Lcom/videooperate/adapter/AddMusicAdapter;->setSelectedState(Z)V

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    iget v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->viewWidth:I

    iget v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/videooperate/view/MusicButton;->setViewWidthAndHeight(II)V

    .line 159
    iget v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

    iget v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    invoke-interface {v0, v1}, Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;->stop(I)V

    .line 162
    invoke-virtual {p0, v4}, Lcom/videooperate/adapter/AddMusicAdapter;->setSelectedState(Z)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    .line 166
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

    iget v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    invoke-interface {v0, v1}, Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;->play(I)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/videooperate/adapter/AddMusicAdapter;->setSelectedState(Z)V

    goto :goto_0

    .line 171
    :sswitch_1
    iget-object v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mOnItemClickListener:Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/videooperate/adapter/AddMusicAdapter$OnItemClickListener;->onItem(I)V

    goto :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f01f2 -> :sswitch_0
        0x7f0f01fd -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/videooperate/adapter/AddMusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;

    iget-object v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040047

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;-><init>(Lcom/videooperate/adapter/AddMusicAdapter;Landroid/view/View;)V

    .line 79
    .local v0, "viewholder":Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;
    iget-object v2, v0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->bt_ok:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, v0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v2, p0}, Lcom/videooperate/view/MusicButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, v0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v2}, Lcom/videooperate/view/MusicButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 82
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/videooperate/adapter/AddMusicAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/videooperate/adapter/AddMusicAdapter$1;-><init>(Lcom/videooperate/adapter/AddMusicAdapter;Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 90
    return-object v0
.end method

.method public setList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "mVideoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "mVideoNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "mVideoDurationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoList:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoNameList:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/videooperate/adapter/AddMusicAdapter;->mVideoDurationList:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lcom/videooperate/adapter/AddMusicAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    invoke-virtual {v0}, Lcom/videooperate/view/MusicButton;->playMusic()V

    .line 132
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    iget v1, p0, Lcom/videooperate/adapter/AddMusicAdapter;->viewWidth:I

    iget v2, p0, Lcom/videooperate/adapter/AddMusicAdapter;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/videooperate/view/MusicButton;->setViewWidthAndHeight(II)V

    .line 135
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    check-cast v0, Lcom/videooperate/view/MusicButton;

    invoke-virtual {v0}, Lcom/videooperate/view/MusicButton;->stopMusic()V

    .line 136
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->selectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/videooperate/adapter/AddMusicAdapter;->playingPosition:I

    goto :goto_0
.end method
