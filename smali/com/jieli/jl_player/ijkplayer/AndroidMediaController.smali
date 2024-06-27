.class public Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;
.super Landroid/widget/MediaController;
.source "AndroidMediaController.java"

# interfaces
.implements Lcom/jieli/jl_player/ijkplayer/IMediaController;


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mShowOnceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 40
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 70
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 73
    .local v0, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/app/ActionBar;)V
    .locals 1
    .param p1, "actionBar"    # Landroid/support/v7/app/ActionBar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 53
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->show()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 63
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 65
    :cond_0
    return-void
.end method

.method public showOnce(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/AndroidMediaController;->show()V

    .line 86
    return-void
.end method
