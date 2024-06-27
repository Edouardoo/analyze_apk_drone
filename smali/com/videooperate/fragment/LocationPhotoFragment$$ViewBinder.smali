.class public Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "LocationPhotoFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/videooperate/fragment/LocationPhotoFragment;",
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
    .local p0, "this":Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;, "Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/fragment/LocationPhotoFragment;Ljava/lang/Object;)V
    .locals 3
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
    .local p0, "this":Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;, "Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/videooperate/fragment/LocationPhotoFragment;, "TT;"
    const v2, 0x7f0f01e5

    .line 11
    const-string v1, "field \'rvDataList\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'rvDataList\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p2, Lcom/videooperate/fragment/LocationPhotoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    .line 13
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;, "Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/videooperate/fragment/LocationPhotoFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/fragment/LocationPhotoFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/videooperate/fragment/LocationPhotoFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;, "Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/videooperate/fragment/LocationPhotoFragment;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/videooperate/fragment/LocationPhotoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    .line 17
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;, "Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/videooperate/fragment/LocationPhotoFragment;

    invoke-virtual {p0, p1}, Lcom/videooperate/fragment/LocationPhotoFragment$$ViewBinder;->unbind(Lcom/videooperate/fragment/LocationPhotoFragment;)V

    return-void
.end method
