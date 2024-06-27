.class public Lcom/hfufo/widget/wifiRecyclerAdatper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "wifiRecyclerAdatper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;,
        Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/widget/wifiBean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickLitener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/widget/wifiBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/widget/wifiBean;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mDatas:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->inflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hfufo/widget/wifiRecyclerAdatper;->onBindViewHolder(Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0200dc

    const/4 v5, 0x4

    .line 63
    iget-object v3, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mDatas:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hfufo/widget/wifiBean;

    invoke-virtual {v3}, Lcom/hfufo/widget/wifiBean;->getWifiSSID()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "ssid":Ljava/lang/String;
    iget-object v3, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mDatas:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hfufo/widget/wifiBean;

    invoke-virtual {v3}, Lcom/hfufo/widget/wifiBean;->getLevel()I

    move-result v0

    .line 65
    .local v0, "level":I
    iget-object v3, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mDatas:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hfufo/widget/wifiBean;

    invoke-virtual {v3}, Lcom/hfufo/widget/wifiBean;->getState()Z

    move-result v2

    .line 66
    .local v2, "state":Z
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    if-eqz v2, :cond_0

    .line 69
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->select:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_0
    if-ne v0, v5, :cond_1

    .line 74
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    const v4, 0x7f0200df

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_1
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1, p2}, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->setPosition(I)V

    .line 87
    return-void

    .line 71
    :cond_0
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->select:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 76
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    const v4, 0x7f0200de

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 77
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 78
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    const v4, 0x7f0200dd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 79
    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 80
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 82
    :cond_4
    iget-object v3, p1, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/hfufo/widget/wifiRecyclerAdatper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;

    iget-object v2, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mOnItemClickLitener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    invoke-direct {v0, p0, v1, v2}, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;-><init>(Lcom/hfufo/widget/wifiRecyclerAdatper;Landroid/view/View;Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;)V

    .line 58
    .local v0, "holder":Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;
    return-object v0
.end method

.method public setOnItemClickLitener(Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;)V
    .locals 0
    .param p1, "mOnItemClickLitener"    # Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper;->mOnItemClickLitener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    .line 37
    return-void
.end method
