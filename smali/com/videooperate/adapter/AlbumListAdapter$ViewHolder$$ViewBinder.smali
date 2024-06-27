.class public Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "AlbumListAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;, "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 7
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;, "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;, "TT;"
    const v6, 0x7f0f01f3

    const v5, 0x7f0f01f2

    const v2, 0x7f0f01f1

    const v4, 0x7f0f01f0

    const v3, 0x7f0f00d1

    .line 11
    const-string v1, "field \'ivImage\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'ivImage\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 13
    const v1, 0x7f0f01f6

    const-string v2, "field \'vShadown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->vShadown:Landroid/view/View;

    .line 15
    const v1, 0x7f0f01f7

    const-string v2, "field \'ivPhotoCheaked\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f01f7

    const-string v2, "field \'ivPhotoCheaked\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPhotoCheaked:Landroid/widget/ImageView;

    .line 17
    const-string v1, "field \'ivPlay\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'ivPlay\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    .line 19
    const-string v1, "field \'rlRoot\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'rlRoot\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->rlRoot:Landroid/support/v7/widget/CardView;

    .line 21
    const-string v1, "field \'ll_buttom\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'ll_buttom\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ll_buttom:Landroid/widget/LinearLayout;

    .line 23
    const-string v1, "field \'iv_add_music\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'iv_add_music\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    .line 25
    const v1, 0x7f0f01f5

    const-string v2, "field \'tv_date\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f01f5

    const-string v2, "field \'tv_date\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->tv_date:Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0f01f4

    const-string v2, "field \'tv_length\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f01f4

    const-string v2, "field \'tv_length\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->tv_length:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;, "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;, "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;, "TT;"
    const/4 v0, 0x0

    .line 32
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->vShadown:Landroid/view/View;

    .line 34
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPhotoCheaked:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->rlRoot:Landroid/support/v7/widget/CardView;

    .line 37
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->ll_buttom:Landroid/widget/LinearLayout;

    .line 38
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->iv_add_music:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->tv_date:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->tv_length:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;, "Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;)V

    return-void
.end method
