.class public Lcom/videooperate/fragment/LocationPhotoFragment;
.super Landroid/support/v4/app/Fragment;
.source "LocationPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"


# instance fields
.field mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

.field rvDataList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01e5
        }
    .end annotation
.end field

.field private selectStatusReceiver:Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 142
    new-instance v1, Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;-><init>(Lcom/videooperate/fragment/LocationPhotoFragment;Lcom/videooperate/fragment/LocationPhotoFragment$1;)V

    iput-object v1, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->selectStatusReceiver:Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.RxDrone.SWITCH_STATUS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.RxDrone.SWITCH_CANCEL_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.RxDrone.SWITCH_CHANGE_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.RxDrone.SCAN_SUCCESS_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->selectStatusReceiver:Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object v0, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/videooperate/fragment/LocationPhotoFragment$1;

    invoke-direct {v1, p0}, Lcom/videooperate/fragment/LocationPhotoFragment$1;-><init>(Lcom/videooperate/fragment/LocationPhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 80
    new-instance v0, Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/videooperate/adapter/AlbumListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;ZZ)V

    iput-object v0, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    .line 81
    iget-object v0, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    return-void
.end method

.method public static newInstance()Lcom/videooperate/fragment/LocationPhotoFragment;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/videooperate/fragment/LocationPhotoFragment;

    invoke-direct {v0}, Lcom/videooperate/fragment/LocationPhotoFragment;-><init>()V

    .line 52
    .local v0, "fragment":Lcom/videooperate/fragment/LocationPhotoFragment;
    return-object v0
.end method

.method private toPhotoView(Lcom/hfufo/bean/FileInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "saveUrl":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v5, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 189
    .local v2, "fileInfo":Lcom/hfufo/bean/FileInfo;
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v2    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 197
    .local v1, "currentPos":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 198
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/hfufo/rxdrone/GenericActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "key_fragment_tag"

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "path_list"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    const-string v7, "position"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v7, "key_data"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v3}, Lcom/videooperate/fragment/LocationPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 206
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public onAddMusic(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->tellMeLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "childView":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->initViews()V

    .line 65
    invoke-direct {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->initReceiver()V

    .line 66
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 132
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 176
    invoke-static {p0}, Lbutterknife/ButterKnife;->unbind(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/videooperate/fragment/LocationPhotoFragment;->selectStatusReceiver:Lcom/videooperate/fragment/LocationPhotoFragment$SelectStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public onItemClick(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 92
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v5}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "file":Ljava/io/File;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".fileProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v5, "image/*"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .end local v0    # "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hfufo/bean/FileInfo;

    invoke-direct {p0, v5}, Lcom/videooperate/fragment/LocationPhotoFragment;->toPhotoView(Lcom/hfufo/bean/FileInfo;)V

    .line 113
    return-void

    .line 103
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 105
    .local v3, "mUri_2":Landroid/net/Uri;
    const-string v5, "image/*"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onLongClick(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/videooperate/activity/AlbumListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 127
    return-void
.end method

.method public tellMeLayout()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f040040

    return v0
.end method
