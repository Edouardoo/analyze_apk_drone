.class Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "wifiRecyclerAdatper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/wifiRecyclerAdatper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field private mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

.field private position:I

.field select:Landroid/widget/ImageView;

.field ssid:Landroid/widget/TextView;

.field strength:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/hfufo/widget/wifiRecyclerAdatper;


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/wifiRecyclerAdatper;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/hfufo/widget/wifiRecyclerAdatper;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->this$0:Lcom/hfufo/widget/wifiRecyclerAdatper;

    .line 109
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    const v0, 0x7f0f025c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    const v0, 0x7f0f025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->select:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0f025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/hfufo/widget/wifiRecyclerAdatper;Landroid/view/View;Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/hfufo/widget/wifiRecyclerAdatper;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->this$0:Lcom/hfufo/widget/wifiRecyclerAdatper;

    .line 117
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    const v0, 0x7f0f025c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    const v0, 0x7f0f025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->select:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0f025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->strength:Landroid/widget/ImageView;

    .line 122
    iput-object p3, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    .line 123
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->ssid:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    iget v1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->position:I

    invoke-interface {v0, p1, v1}, Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;->onItemClick(Landroid/view/View;I)V

    .line 132
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    iget v1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->position:I

    invoke-interface {v0, p1, v1}, Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;->onItemClick(Landroid/view/View;I)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->mListener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    iget v1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->position:I

    invoke-interface {v0, p1, v1}, Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;->onItemClick(Landroid/view/View;I)V

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "posi"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/hfufo/widget/wifiRecyclerAdatper$MyViewHolder;->position:I

    .line 153
    return-void
.end method
