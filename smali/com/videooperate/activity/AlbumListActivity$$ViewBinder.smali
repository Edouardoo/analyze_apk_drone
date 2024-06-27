.class public Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "AlbumListActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/videooperate/activity/AlbumListActivity;",
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
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/activity/AlbumListActivity;Ljava/lang/Object;)V
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
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/videooperate/activity/AlbumListActivity;, "TT;"
    const v6, 0x7f0f0081

    const v5, 0x7f0f0080

    const v4, 0x7f0f007e

    const v3, 0x7f0f007d

    const v2, 0x7f0f007c

    .line 11
    const-string v1, "field \'wait_text\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'wait_text\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->wait_text:Landroid/widget/TextView;

    .line 13
    const-string v1, "field \'conBack\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'conBack\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->conBack:Landroid/widget/ImageView;

    .line 15
    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$1;-><init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v1, "field \'ivDel\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'ivDel\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->ivDel:Landroid/widget/ImageView;

    .line 25
    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$2;-><init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const-string v1, "field \'shareRecod\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'shareRecod\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->shareRecod:Landroid/widget/ImageView;

    .line 35
    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$3;-><init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v1, "field \'rlTitle\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'rlTitle\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->rlTitle:Landroid/widget/RelativeLayout;

    .line 45
    const v1, 0x7f0f01fe

    const-string v2, "field \'stTabLayout\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f01fe

    const-string v2, "field \'stTabLayout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/videooperate/view/SegmentTabLayout;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->stTabLayout:Lcom/videooperate/view/SegmentTabLayout;

    .line 47
    const v1, 0x7f0f0085

    const-string v2, "field \'vpContent\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f0085

    const-string v2, "field \'vpContent\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p2, Lcom/videooperate/activity/AlbumListActivity;->vpContent:Landroid/support/v4/view/ViewPager;

    .line 49
    const v1, 0x7f0f0082

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$4;-><init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0f0083

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 59
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$5;-><init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0f007f

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 68
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;-><init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/activity/AlbumListActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/videooperate/activity/AlbumListActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/videooperate/activity/AlbumListActivity;, "TT;"
    const/4 v0, 0x0

    .line 79
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->wait_text:Landroid/widget/TextView;

    .line 80
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->conBack:Landroid/widget/ImageView;

    .line 81
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->ivDel:Landroid/widget/ImageView;

    .line 82
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->shareRecod:Landroid/widget/ImageView;

    .line 83
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->rlTitle:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->stTabLayout:Lcom/videooperate/view/SegmentTabLayout;

    .line 85
    iput-object v0, p1, Lcom/videooperate/activity/AlbumListActivity;->vpContent:Landroid/support/v4/view/ViewPager;

    .line 86
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {p0, p1}, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;->unbind(Lcom/videooperate/activity/AlbumListActivity;)V

    return-void
.end method
