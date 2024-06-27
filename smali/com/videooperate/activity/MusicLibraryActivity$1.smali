.class Lcom/videooperate/activity/MusicLibraryActivity$1;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MusicLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/activity/MusicLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final FRAGMENT_PAGE_SIZE:I

.field final synthetic this$0:Lcom/videooperate/activity/MusicLibraryActivity;


# direct methods
.method constructor <init>(Lcom/videooperate/activity/MusicLibraryActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/videooperate/activity/MusicLibraryActivity;
    .param p2, "x0"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/videooperate/activity/MusicLibraryActivity$1;->this$0:Lcom/videooperate/activity/MusicLibraryActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/videooperate/activity/MusicLibraryActivity$1;->FRAGMENT_PAGE_SIZE:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 122
    invoke-static {}, Lcom/videooperate/fragment/LocationMusicFragment;->newInstance()Lcom/videooperate/fragment/LocationMusicFragment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    invoke-static {}, Lcom/videooperate/fragment/LocationMusicFragment;->newInstance()Lcom/videooperate/fragment/LocationMusicFragment;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-static {}, Lcom/videooperate/fragment/LocationMusicFragment;->newInstance()Lcom/videooperate/fragment/LocationMusicFragment;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
