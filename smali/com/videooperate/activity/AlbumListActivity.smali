.class public Lcom/videooperate/activity/AlbumListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AlbumListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fh/hdutil/IConstant;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final PLAY_ERR:I

.field public final PLAY_PROGRESS:I

.field public final PLAY_SUCCESS:I

.field private cancel_select:Landroid/widget/ImageView;

.field conBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f007d
        }
    .end annotation
.end field

.field isOpen:Z

.field private isRecord:Z

.field isShowAddMusic:Z

.field ivDel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0080
        }
    .end annotation
.end field

.field private mHandler:Lcom/videooperate/utils/SafeHandler;

.field mTitles:[Ljava/lang/String;

.field pagerAdapter:Lcom/videooperate/adapter/AlbumPagerAdapter;

.field private progressDialog:Landroid/support/v7/app/AlertDialog;

.field rlTitle:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f007c
        }
    .end annotation
.end field

.field private selectedPhoto:Z

.field private selectedVideo:Z

.field shareRecod:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0081
        }
    .end annotation
.end field

.field share_pic:Ljava/lang/String;

.field share_rec:Ljava/lang/String;

.field stTabLayout:Lcom/videooperate/view/SegmentTabLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01fe
        }
    .end annotation
.end field

.field private statePhoto:I

.field private text_photo:Landroid/widget/TextView;

.field private text_video:Landroid/widget/TextView;

.field vpContent:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0085
        }
    .end annotation
.end field

.field wait_text:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f007e
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/videooperate/utils/SafeHandler;

    invoke-direct {v0, p0}, Lcom/videooperate/utils/SafeHandler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->mHandler:Lcom/videooperate/utils/SafeHandler;

    .line 74
    iput v1, p0, Lcom/videooperate/activity/AlbumListActivity;->statePhoto:I

    .line 77
    iput v1, p0, Lcom/videooperate/activity/AlbumListActivity;->PLAY_PROGRESS:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/videooperate/activity/AlbumListActivity;->PLAY_SUCCESS:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/videooperate/activity/AlbumListActivity;->PLAY_ERR:I

    .line 83
    iput-boolean v1, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedVideo:Z

    .line 84
    iput-boolean v1, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedPhoto:Z

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->share_pic:Ljava/lang/String;

    .line 373
    const-string v0, ""

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->share_rec:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/videooperate/activity/AlbumListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/activity/AlbumListActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/videooperate/activity/AlbumListActivity;->statePhoto:I

    return v0
.end method

.method static synthetic access$002(Lcom/videooperate/activity/AlbumListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/activity/AlbumListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/videooperate/activity/AlbumListActivity;->statePhoto:I

    return p1
.end method

.method static synthetic access$100(Lcom/videooperate/activity/AlbumListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/activity/AlbumListActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_photo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/videooperate/activity/AlbumListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/activity/AlbumListActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_video:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/videooperate/activity/AlbumListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/activity/AlbumListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/videooperate/activity/AlbumListActivity;->sendMessage(I)V

    return-void
.end method

.method private initAdapter()V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isShowAddMusic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->isShowAddMusic:Z

    .line 115
    new-instance v0, Lcom/videooperate/adapter/AlbumPagerAdapter;

    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/activity/AlbumListActivity;->mTitles:[Ljava/lang/String;

    iget-boolean v3, p0, Lcom/videooperate/activity/AlbumListActivity;->isShowAddMusic:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/videooperate/adapter/AlbumPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->pagerAdapter:Lcom/videooperate/adapter/AlbumPagerAdapter;

    .line 116
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->vpContent:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/videooperate/activity/AlbumListActivity;->pagerAdapter:Lcom/videooperate/adapter/AlbumPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->stTabLayout:Lcom/videooperate/view/SegmentTabLayout;

    iget-object v1, p0, Lcom/videooperate/activity/AlbumListActivity;->mTitles:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/videooperate/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->stTabLayout:Lcom/videooperate/view/SegmentTabLayout;

    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$1;

    invoke-direct {v1, p0}, Lcom/videooperate/activity/AlbumListActivity$1;-><init>(Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Lcom/videooperate/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/videooperate/view/OnTabSelectListener;)V

    .line 128
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->vpContent:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$2;

    invoke-direct {v1, p0}, Lcom/videooperate/activity/AlbumListActivity$2;-><init>(Lcom/videooperate/activity/AlbumListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->vpContent:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 154
    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->initAdapter()V

    .line 101
    return-void
.end method

.method private initPhotoError()V
    .locals 2

    .prologue
    .line 595
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 596
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 597
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 598
    return-void
.end method

.method private initService()V
    .locals 3

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.videooperate.service.scanlocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/videooperate/service/ScanLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 331
    const-string v1, "cmd"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/videooperate/activity/AlbumListActivity;->sendMessage(I)V

    .line 335
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x7f0800e5

    .line 104
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->mTitles:[Ljava/lang/String;

    .line 106
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_photo:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_video:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->cancel_select:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_video:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_photo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 601
    iget-object v1, p0, Lcom/videooperate/activity/AlbumListActivity;->mHandler:Lcom/videooperate/utils/SafeHandler;

    invoke-virtual {v1}, Lcom/videooperate/utils/SafeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 602
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 603
    iget-object v1, p0, Lcom/videooperate/activity/AlbumListActivity;->mHandler:Lcom/videooperate/utils/SafeHandler;

    invoke-virtual {v1, v0}, Lcom/videooperate/utils/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 604
    return-void
.end method

.method private shareFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "imageIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 555
    .local v1, "uri":Landroid/net/Uri;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 556
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/Util/FileUtil;->getMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 584
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 588
    const-string v2, "\u5206\u4eab"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/videooperate/activity/AlbumListActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void

    .line 581
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private showDelDialog()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 221
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-static {v0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-static {v0}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const v0, 0x7f0800dd

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 326
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v8, -0x1

    .line 226
    .local v8, "lastSelectedPics":I
    const/4 v9, -0x1

    .line 227
    .local v9, "lastSelectedVideos":I
    const/4 v2, 0x1

    .line 228
    .local v2, "selectedPicsNull":Z
    const/4 v3, 0x1

    .line 229
    .local v3, "selectedVideosNull":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 230
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    iget-boolean v0, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v0, :cond_1

    .line 231
    const/4 v2, 0x0

    .line 232
    move v8, v7

    .line 229
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 235
    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 236
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    iget-boolean v0, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v0, :cond_3

    .line 237
    const/4 v3, 0x0

    .line 238
    move v9, v7

    .line 235
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 241
    :cond_4
    if-eq v8, v1, :cond_5

    .line 242
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0, v4}, Lcom/hfufo/bean/FileInfo;->setIsLastSelected(Z)V

    .line 244
    :cond_5
    if-eq v9, v1, :cond_6

    .line 245
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v0, v4}, Lcom/hfufo/bean/FileInfo;->setIsLastSelected(Z)V

    .line 247
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 248
    const v0, 0x7f0800e4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 251
    :cond_7
    new-instance v0, Lcom/hfufo/dialog/DeleteDialog;

    new-instance v4, Lcom/videooperate/activity/AlbumListActivity$3;

    invoke-direct {v4, p0}, Lcom/videooperate/activity/AlbumListActivity$3;-><init>(Lcom/videooperate/activity/AlbumListActivity;)V

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/hfufo/dialog/DeleteDialog;-><init>(Landroid/app/Activity;ZZLcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;IZ)V

    .line 325
    invoke-virtual {v0}, Lcom/hfufo/dialog/DeleteDialog;->show()V

    goto/16 :goto_0
.end method

.method private showShare()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 377
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-static {v10}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-static {v10}, Lcom/videooperate/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 378
    const v10, 0x7f0800dd

    invoke-static {v10}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v4, 0x0

    .line 382
    .local v4, "selectedPic":I
    const/4 v6, 0x0

    .line 383
    .local v6, "selectedVideo":I
    const/4 v5, 0x1

    .line 384
    .local v5, "selectedPicsNull":Z
    const/4 v7, 0x1

    .line 386
    .local v7, "selectedVideosNull":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v8, "snapshotlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v3, "recordlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 390
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/bean/FileInfo;

    iget-boolean v10, v10, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v10, :cond_2

    .line 391
    const/4 v5, 0x0

    .line 392
    add-int/lit8 v4, v4, 0x1

    .line 394
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 395
    .local v2, "item":Lcom/hfufo/bean/FileInfo;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "file":Ljava/io/File;
    iget-boolean v10, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v10, :cond_2

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 398
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 403
    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 404
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hfufo/bean/FileInfo;

    iget-boolean v10, v10, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v10, :cond_4

    .line 405
    const/4 v7, 0x0

    .line 406
    add-int/lit8 v6, v6, 0x1

    .line 408
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 409
    .restart local v2    # "item":Lcom/hfufo/bean/FileInfo;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v0    # "file":Ljava/io/File;
    iget-boolean v10, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v10, :cond_4

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 413
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 418
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 419
    const v10, 0x7f0800e4

    invoke-static {v10}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 443
    :cond_6
    iget v10, p0, Lcom/videooperate/activity/AlbumListActivity;->statePhoto:I

    if-nez v10, :cond_8

    .line 444
    if-ne v4, v11, :cond_7

    .line 446
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 447
    .restart local v0    # "file":Ljava/io/File;
    const-string v10, "image/*"

    invoke-direct {p0, v0, v10}, Lcom/videooperate/activity/AlbumListActivity;->shareFile(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v0    # "file":Ljava/io/File;
    :cond_7
    if-le v4, v11, :cond_0

    .line 473
    const-string v10, "image/jpeg"

    invoke-virtual {p0, v8, v10}, Lcom/videooperate/activity/AlbumListActivity;->shareMultipleImage(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_8
    if-ne v6, v11, :cond_9

    .line 478
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 482
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, "videoType":Ljava/lang/String;
    invoke-direct {p0, v0, v9}, Lcom/videooperate/activity/AlbumListActivity;->shareFile(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "videoType":Ljava/lang/String;
    :cond_9
    if-le v6, v11, :cond_0

    .line 510
    const-string v10, "*/*"

    invoke-virtual {p0, v3, v10}, Lcom/videooperate/activity/AlbumListActivity;->shareMultipleImage(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static start(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isOpenAddMusic"    # Z

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/videooperate/activity/AlbumListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v0, "selectIntent":Landroid/content/Intent;
    const-string v1, "isShowAddMusic"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void
.end method

.method public static startForResult(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "reqCode"    # I

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/videooperate/activity/AlbumListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, "selectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    return-void
.end method


# virtual methods
.method public allSelectPhoto()V
    .locals 3

    .prologue
    .line 671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 672
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method

.method public allSelectRecord()V
    .locals 3

    .prologue
    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 666
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return-void
.end method

.method public cancelSelectPhoto()V
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 654
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method public cancelSelectRecord()V
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 660
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/FileInfo;->setSelected(Z)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_0
    return-void
.end method

.method public cancelSelectSwitchStatus(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/videooperate/activity/AlbumListActivity;->isOpen:Z

    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->cancel_select:Landroid/widget/ImageView;

    const v1, 0x7f0300b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    :cond_0
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/videooperate/utils/MusicControlUtils;->cancelSelectSwitchStatusMsg(Landroid/app/Activity;Z)V

    .line 362
    return-void
.end method

.method public changeNotify()V
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/videooperate/utils/MusicControlUtils;->changeNotify(Landroid/content/Context;)V

    .line 370
    return-void
.end method

.method public getSelectSwitchStatus()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->isOpen:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 609
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 631
    :cond_0
    :goto_0
    return v2

    .line 611
    :pswitch_0
    const-string v0, "123456"

    const-string v1, "progressDialog err"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 618
    :pswitch_1
    const-string v0, "123456"

    const-string v1, "progressDialog success"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 624
    :pswitch_2
    const-string v0, "123456"

    const-string v1, "progressDialog show"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    :cond_2
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->showProgressDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    .line 627
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->progressDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f007d,
            0x7f0f0080,
            0x7f0f0081,
            0x7f0f0082,
            0x7f0f0083,
            0x7f0f007f
        }
    .end annotation

    .prologue
    const v5, 0x7f0800e6

    const/16 v4, 0x5dc

    const v3, 0x7f0800e5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->finish()V

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-static {v4}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->showDelDialog()V

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-static {v4}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->showShare()V

    goto :goto_0

    .line 175
    :pswitch_4
    iget-boolean v2, p0, Lcom/videooperate/activity/AlbumListActivity;->isOpen:Z

    if-eqz v2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/videooperate/activity/AlbumListActivity;->text_video:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v1, p0, Lcom/videooperate/activity/AlbumListActivity;->text_photo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iput-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedPhoto:Z

    .line 179
    iput-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedVideo:Z

    .line 180
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->cancelSelectPhoto()V

    .line 181
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->cancelSelectRecord()V

    .line 182
    invoke-virtual {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->cancelSelectSwitchStatus(Z)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->changeNotify()V

    goto :goto_0

    .line 189
    :pswitch_5
    iget-boolean v2, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedPhoto:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedPhoto:Z

    .line 190
    iget-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedPhoto:Z

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_photo:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->allSelectPhoto()V

    .line 193
    invoke-virtual {p0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->changeNotify()V

    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_photo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 197
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->cancelSelectPhoto()V

    .line 198
    invoke-virtual {p0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->changeNotify()V

    goto :goto_0

    .line 204
    :pswitch_6
    iget-boolean v2, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedVideo:Z

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedVideo:Z

    .line 205
    iget-boolean v0, p0, Lcom/videooperate/activity/AlbumListActivity;->selectedVideo:Z

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_video:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 207
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->allSelectRecord()V

    .line 208
    invoke-virtual {p0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->changeNotify()V

    goto :goto_0

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->text_video:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 212
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->cancelSelectRecord()V

    .line 213
    invoke-virtual {p0, v1}, Lcom/videooperate/activity/AlbumListActivity;->setSelectSwitchStatus(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->changeNotify()V

    goto/16 :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x7f0f007d
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 90
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->initPhotoError()V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 93
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->initView()V

    .line 94
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->initData()V

    .line 95
    invoke-direct {p0}, Lcom/videooperate/activity/AlbumListActivity;->initService()V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 642
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 643
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 636
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/videooperate/utils/MusicControlUtils;->sedScanMsg(Landroid/content/Context;)V

    .line 637
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 638
    return-void
.end method

.method public setSelectSwitchStatus(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/videooperate/activity/AlbumListActivity;->isOpen:Z

    .line 350
    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->cancel_select:Landroid/widget/ImageView;

    const v1, 0x7f03003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :cond_0
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/videooperate/utils/MusicControlUtils;->sedSelectSwitchStatusMsg(Landroid/app/Activity;Z)V

    .line 354
    return-void
.end method

.method public setWaitVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 677
    if-eqz p1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->wait_text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity;->wait_text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public shareMultipleImage(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "filelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v2, "shareIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 520
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v4, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 528
    const/4 v3, 0x0

    .line 530
    .local v3, "uri":Landroid/net/Uri;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/videooperate/activity/AlbumListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".fileProvider"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {p0, v7, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v6, v7, v5}, Lcom/Util/FileUtil;->getMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 536
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 539
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 541
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v5, "\u5206\u4eab\u5230"

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/videooperate/activity/AlbumListActivity;->startActivity(Landroid/content/Intent;)V

    .line 543
    return-void
.end method

.method public showProgressDialog()Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    .line 646
    const v2, 0x7f04003a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f01d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 648
    .local v0, "tv_hint":Landroid/widget/TextView;
    const v2, 0x7f080041

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 649
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f0a00dc

    invoke-direct {v2, p0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
