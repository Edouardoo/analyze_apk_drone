.class public Lcom/videooperate/fragment/LocationMusicFragment;
.super Landroid/support/v4/app/Fragment;
.source "LocationMusicFragment.java"

# interfaces
.implements Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field public static PERMISSIONS_STORAGE:[Ljava/lang/String;


# instance fields
.field public final REQUEST_STORAGE:I

.field private final REQ_DATA_APP:I

.field private final REQ_DATA_LOCATION:I

.field private isSystemMusic:Z

.field listLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field

.field listSelect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field

.field listSystem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

.field rl_list:Landroid/support/v7/widget/RecyclerView;

.field switcherReceiver:Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->REQ_DATA_APP:I

    .line 49
    iput v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->REQ_DATA_LOCATION:I

    .line 51
    iput-boolean v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->isSystemMusic:Z

    .line 58
    const/16 v0, 0x1f5

    iput v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->REQUEST_STORAGE:I

    return-void
.end method

.method static synthetic access$000(Lcom/videooperate/fragment/LocationMusicFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/fragment/LocationMusicFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->isSystemMusic:Z

    return v0
.end method

.method static synthetic access$002(Lcom/videooperate/fragment/LocationMusicFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/fragment/LocationMusicFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->isSystemMusic:Z

    return p1
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 100
    new-instance v1, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;

    invoke-direct {v1, p0}, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;-><init>(Lcom/videooperate/fragment/LocationMusicFragment;)V

    iput-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->switcherReceiver:Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.RxDrone.MUSCIPLAY_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "filter1":Landroid/content/IntentFilter;
    const-string v1, "com.RxDrone.CHANGE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "com.RxDrone.REFRESHDATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment;->switcherReceiver:Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public static newInstance()Lcom/videooperate/fragment/LocationMusicFragment;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/videooperate/fragment/LocationMusicFragment;

    invoke-direct {v0}, Lcom/videooperate/fragment/LocationMusicFragment;-><init>()V

    .line 62
    .local v0, "fragment":Lcom/videooperate/fragment/LocationMusicFragment;
    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/videooperate/utils/PermissionUtil;->hasSelfPermission(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    iput-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    iput-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    .line 158
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_LocalList:Ljava/util/List;

    iput-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    .line 159
    iget-boolean v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->isSystemMusic:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->rl_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 169
    :goto_1
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/16 v2, 0x1f5

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    const v1, 0x7f0f01e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->rl_list:Landroid/support/v7/widget/RecyclerView;

    .line 81
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "ms":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 83
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->rl_list:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/videooperate/fragment/LocationMusicFragment$1;

    invoke-direct {v2, p0}, Lcom/videooperate/fragment/LocationMusicFragment$1;-><init>(Lcom/videooperate/fragment/LocationMusicFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 92
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->rl_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance v1, Lcom/videooperate/adapter/LocationMusicAdapter;

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    invoke-direct {v1, v2, v3, p0}, Lcom/videooperate/adapter/LocationMusicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/videooperate/adapter/LocationMusicAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    .line 94
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->rl_list:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->initData()V

    .line 96
    invoke-direct {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->initReceiver()V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->tellMeLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/videooperate/fragment/LocationMusicFragment;->initViews(Landroid/view/View;)V

    .line 76
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 231
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/videooperate/utils/MusicControlUtils;->cmd_stop(Landroid/app/Activity;)V

    .line 232
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->switcherReceiver:Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    return-void
.end method

.method public onItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 189
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/videooperate/utils/MusicControlUtils;->cmd_stop(Landroid/app/Activity;)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "data"

    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 194
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 175
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/videooperate/utils/MediaScannerUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/MediaScannerUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/videooperate/utils/MediaScannerUtils;->getMusicData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    .line 178
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Permission denied to read your External storage"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch
.end method

.method public play(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 202
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/Song;

    iget-object v0, v0, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/videooperate/utils/MusicControlUtils;->cmd_start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 2
    .param p1, "menuVisible"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    return-void

    .line 224
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public stop(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 208
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/videooperate/utils/MusicControlUtils;->cmd_stop(Landroid/app/Activity;)V

    .line 209
    return-void
.end method

.method protected tellMeLayout()I
    .locals 1

    .prologue
    .line 212
    const v0, 0x7f040041

    return v0
.end method
