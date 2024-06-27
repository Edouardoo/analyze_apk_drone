.class public Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AddMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/adapter/AddMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field bt_ok:Landroid/widget/Button;

.field iv_music:Landroid/widget/ImageView;

.field iv_play:Lcom/videooperate/view/MusicButton;

.field space:Landroid/support/v4/widget/Space;

.field final synthetic this$0:Lcom/videooperate/adapter/AddMusicAdapter;

.field tv_music_length:Landroid/widget/TextView;

.field tv_music_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/videooperate/adapter/AddMusicAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/videooperate/adapter/AddMusicAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->this$0:Lcom/videooperate/adapter/AddMusicAdapter;

    .line 184
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 185
    const v0, 0x7f0f01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_music:Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f0f01f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/videooperate/view/MusicButton;

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    .line 187
    const v0, 0x7f0f00b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->tv_music_name:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f0f01fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->tv_music_length:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f0f01fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->bt_ok:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->bt_ok:Landroid/widget/Button;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 191
    const v0, 0x7f0f01f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/Space;

    iput-object v0, p0, Lcom/videooperate/adapter/AddMusicAdapter$ViewHolder;->space:Landroid/support/v4/widget/Space;

    .line 192
    return-void
.end method
