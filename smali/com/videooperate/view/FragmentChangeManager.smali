.class public Lcom/videooperate/view/FragmentChangeManager;
.super Ljava/lang/Object;
.source "FragmentChangeManager.java"


# instance fields
.field private mContainerViewId:I

.field private mCurrentTab:I

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 19
    iput p2, p0, Lcom/videooperate/view/FragmentChangeManager;->mContainerViewId:I

    .line 20
    iput-object p3, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0}, Lcom/videooperate/view/FragmentChangeManager;->initFragments()V

    .line 22
    return-void
.end method

.method private initFragments()V
    .locals 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 27
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lcom/videooperate/view/FragmentChangeManager;->mContainerViewId:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 30
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/videooperate/view/FragmentChangeManager;->setFragments(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    iget v1, p0, Lcom/videooperate/view/FragmentChangeManager;->mCurrentTab:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/videooperate/view/FragmentChangeManager;->mCurrentTab:I

    return v0
.end method

.method public setFragments(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 35
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 36
    iget-object v3, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 37
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/videooperate/view/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 38
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-ne v2, p1, :cond_0

    .line 39
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 45
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iput p1, p0, Lcom/videooperate/view/FragmentChangeManager;->mCurrentTab:I

    .line 46
    return-void
.end method
