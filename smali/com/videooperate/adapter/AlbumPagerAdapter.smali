.class public Lcom/videooperate/adapter/AlbumPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "AlbumPagerAdapter.java"


# instance fields
.field isOpenAddMusic:Z

.field private mFragments:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "mFragments"    # [Ljava/lang/String;
    .param p3, "isOpenAddMusic"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/videooperate/adapter/AlbumPagerAdapter;->isOpenAddMusic:Z

    .line 21
    iput-object p2, p0, Lcom/videooperate/adapter/AlbumPagerAdapter;->mFragments:[Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lcom/videooperate/adapter/AlbumPagerAdapter;->isOpenAddMusic:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/videooperate/adapter/AlbumPagerAdapter;->mFragments:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 33
    iget-boolean v1, p0, Lcom/videooperate/adapter/AlbumPagerAdapter;->isOpenAddMusic:Z

    invoke-static {v1}, Lcom/videooperate/fragment/LocationVideoFragment;->newInstance(Z)Lcom/videooperate/fragment/LocationVideoFragment;

    move-result-object v0

    .line 36
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 30
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_0
    invoke-static {}, Lcom/videooperate/fragment/LocationPhotoFragment;->newInstance()Lcom/videooperate/fragment/LocationPhotoFragment;

    move-result-object v0

    .line 31
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
