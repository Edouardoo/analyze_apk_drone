.class public Lcom/videooperate/fragment/LocationVideoFragment;
.super Landroid/support/v4/app/Fragment;
.source "LocationVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;
.implements Lcom/fh/hdutil/IConstant;
.implements Lcom/videooperate/utils/VideoManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/fragment/LocationVideoFragment$FileComparator;,
        Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"


# instance fields
.field isOpenAddMusic:Z

.field mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

.field oldVideoUrl:Ljava/lang/String;

.field private recordDir:Ljava/lang/String;

.field rvDataList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01e5
        }
    .end annotation
.end field

.field private selectStatusReceiver:Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;

.field selectedVideoPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectedVideoPosition:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->isOpenAddMusic:Z

    return-void
.end method

.method private initFile()V
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "sd":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getSettingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->recordDir:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->recordDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 155
    new-instance v1, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;-><init>(Lcom/videooperate/fragment/LocationVideoFragment;Lcom/videooperate/fragment/LocationVideoFragment$1;)V

    iput-object v1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectStatusReceiver:Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.RxDrone.SWITCH_STATUS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.RxDrone.SWITCH_CANCEL_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "com.RxDrone.SWITCH_CHANGE_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "com.RxDrone.SCAN_SUCCESS_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectStatusReceiver:Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/videooperate/fragment/LocationVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/videooperate/fragment/LocationVideoFragment$1;-><init>(Lcom/videooperate/fragment/LocationVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    new-instance v0, Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/videooperate/fragment/LocationVideoFragment;->isOpenAddMusic:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/videooperate/adapter/AlbumListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/videooperate/adapter/AlbumListAdapter$OnItemClickListener;ZZ)V

    iput-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    .line 110
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->rvDataList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 111
    return-void
.end method

.method private mergeLocationVideo(Lcom/videooperate/bean/Song;)V
    .locals 5
    .param p1, "song"    # Lcom/videooperate/bean/Song;

    .prologue
    const/4 v4, 0x1

    .line 203
    invoke-virtual {p0, v4}, Lcom/videooperate/fragment/LocationVideoFragment;->setWaitV(Z)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->recordDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/REC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "outputVideoUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->oldVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0, v4}, Lcom/videooperate/utils/VideoManager;->mergeLocationVideo(Lcom/videooperate/bean/Song;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public static newInstance(Z)Lcom/videooperate/fragment/LocationVideoFragment;
    .locals 3
    .param p0, "isOpenAddMusic"    # Z

    .prologue
    .line 63
    new-instance v1, Lcom/videooperate/fragment/LocationVideoFragment;

    invoke-direct {v1}, Lcom/videooperate/fragment/LocationVideoFragment;-><init>()V

    .line 64
    .local v1, "fragment":Lcom/videooperate/fragment/LocationVideoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "param1"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/videooperate/fragment/LocationVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method private pushData(Ljava/lang/String;)V
    .locals 11
    .param p1, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 209
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "createTime":Ljava/lang/String;
    new-instance v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v2, p1

    move v7, v3

    move v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/hfufo/bean/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;IZI)V

    .line 218
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    new-instance v2, Lcom/videooperate/fragment/LocationVideoFragment$FileComparator;

    invoke-direct {v2, p0}, Lcom/videooperate/fragment/LocationVideoFragment$FileComparator;-><init>(Lcom/videooperate/fragment/LocationVideoFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iget-object v1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/videooperate/adapter/AlbumListAdapter;->setList(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    if-nez p3, :cond_1

    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    :cond_1
    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/Song;

    .line 196
    .local v0, "song":Lcom/videooperate/bean/Song;
    invoke-direct {p0, v0}, Lcom/videooperate/fragment/LocationVideoFragment;->mergeLocationVideo(Lcom/videooperate/bean/Song;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x2766
        :pswitch_0
    .end packed-switch
.end method

.method public onAddMusic(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 115
    const-string v0, "rxffmpeg"

    const-string v1, "video  fragment    onAddMusic"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput p1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectedVideoPosition:I

    .line 117
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment;->oldVideoUrl:Ljava/lang/String;

    .line 118
    const/16 v0, 0x2766

    invoke-static {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->startForResult(Landroid/support/v4/app/Fragment;I)V

    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "param1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->isOpenAddMusic:Z

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->tellMeLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "childView":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->initViews()V

    .line 82
    invoke-direct {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->initReceiver()V

    .line 83
    invoke-direct {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->initFile()V

    .line 84
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 144
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 269
    invoke-static {p0}, Lbutterknife/ButterKnife;->unbind(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectStatusReceiver:Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    return-void
.end method

.method public onFailure()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/videooperate/fragment/LocationVideoFragment;->setWaitV(Z)V

    .line 260
    return-void
.end method

.method public onItemClick(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public onLongClick(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/videooperate/activity/AlbumListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 129
    return-void
.end method

.method public onProgress()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 139
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "composeVideoUrl"    # Ljava/lang/String;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "composeFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/videooperate/fragment/LocationVideoFragment;->oldVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    .line 247
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    iget v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectedVideoPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1, p1}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    iget v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->selectedVideoPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 249
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/fragment/LocationVideoFragment;->oldVideoUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/Util/FileUtil;->deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 250
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/videooperate/utils/MusicControlUtils;->sedScanMsg(Landroid/content/Context;)V

    .line 253
    .end local v0    # "composeFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0, p2}, Lcom/videooperate/fragment/LocationVideoFragment;->pushData(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/videooperate/fragment/LocationVideoFragment;->setWaitV(Z)V

    .line 255
    return-void
.end method

.method public setWaitV(Z)V
    .locals 1
    .param p1, "isVisi"    # Z

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/videooperate/fragment/LocationVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {v0, p1}, Lcom/videooperate/activity/AlbumListActivity;->setWaitVisible(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method public tellMeLayout()I
    .locals 1

    .prologue
    .line 133
    const v0, 0x7f040040

    return v0
.end method
