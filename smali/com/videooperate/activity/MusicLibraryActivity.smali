.class public Lcom/videooperate/activity/MusicLibraryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MusicLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fh/hdutil/IConstant;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private checkId:I

.field private first:Z

.field private mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private mHomeContainer:Landroid/widget/FrameLayout;

.field private tab_container:Landroid/widget/RadioGroup;

.field private tab_location:Landroid/widget/RadioButton;

.field private tab_system:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->first:Z

    .line 111
    new-instance v0, Lcom/videooperate/activity/MusicLibraryActivity$1;

    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/videooperate/activity/MusicLibraryActivity$1;-><init>(Lcom/videooperate/activity/MusicLibraryActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    return-void
.end method

.method private DownloadOnlineMusic()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/videooperate/utils/DeviceUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/videooperate/utils/DeviceUtils;->isAppsInstalled()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/videooperate/utils/DeviceUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/videooperate/utils/DeviceUtils;->goOtherApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const-string v1, "https://www.baidu.com/s?wd=download%20%20MP3%20music&oq=download%2520MP%2526lt%253B%2520music"

    .line 173
    .local v1, "url":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/videooperate/utils/DeviceUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/videooperate/utils/DeviceUtils;->goBrowser(Ljava/lang/String;)V

    .line 185
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 171
    :cond_1
    const-string v1, "https://www.google.com/search?q=download++MP3+music&oq=download++MP3+music"

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    const-string v1, "https://www.baidu.com/s?wd=download%20%20MP3%20music&oq=download%2520MP%2526lt%253B%2520music"

    .line 183
    .restart local v1    # "url":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/videooperate/utils/DeviceUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/videooperate/utils/DeviceUtils;->goBrowser(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v1    # "url":Ljava/lang/String;
    :cond_3
    const-string v1, "https://www.google.com/search?q=download++MP3+music&oq=download++MP3+music"

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_2
.end method

.method private initLocalMusic()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.videooperate.service.scanlocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/videooperate/service/ScanLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const-string v1, "cmd"

    const/16 v2, 0x7d4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method private initService()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.videooperate.service.scanlocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/videooperate/service/ScanLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const-string v1, "cmd"

    const/16 v2, 0x7d3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x7f0f0148

    .line 57
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_container:Landroid/widget/RadioGroup;

    .line 58
    const v0, 0x7f0f0146

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    .line 59
    const v0, 0x7f0f0143

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0f0145

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/videooperate/activity/MusicLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_system:Landroid/widget/RadioButton;

    .line 63
    const v0, 0x7f0f0149

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_location:Landroid/widget/RadioButton;

    .line 64
    iget-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_system:Landroid/widget/RadioButton;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 65
    iget-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_location:Landroid/widget/RadioButton;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 67
    iput v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->checkId:I

    .line 68
    iget-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_container:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->tab_container:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/videooperate/activity/MusicLibraryActivity;->checkId:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 71
    return-void
.end method

.method private skipFragment(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/videooperate/activity/MusicLibraryActivity;->getTabPosition(I)I

    move-result v1

    .line 100
    .local v1, "tabPosition":I
    iget-boolean v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->first:Z

    if-eqz v2, :cond_0

    .line 101
    iput-boolean v5, p0, Lcom/videooperate/activity/MusicLibraryActivity;->first:Z

    .line 102
    iget-object v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v3, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 103
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v3, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v5, v0}, Landroid/support/v4/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 104
    iget-object v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v3, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 106
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    iget-object v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v3, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 107
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v3, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v5, v0}, Landroid/support/v4/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mFragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v3, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 109
    return-void
.end method

.method public static start(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # I

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/videooperate/activity/MusicLibraryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "selectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public static startForResult(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "reqCode"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/videooperate/activity/MusicLibraryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "selectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method public static startForResult(Landroid/support/v4/app/Fragment;I)V
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "reqCode"    # I

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/videooperate/activity/MusicLibraryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "selectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method


# virtual methods
.method public getTabPosition(I)I
    .locals 3
    .param p1, "checkId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    return v0

    .line 135
    :pswitch_0
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/videooperate/utils/MusicControlUtils;->changeMusicList(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->initLocalMusic()V

    .line 140
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/videooperate/utils/MusicControlUtils;->changeMusicList(Landroid/app/Activity;Z)V

    .line 141
    const v0, 0x7f0800e7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    move v0, v1

    .line 142
    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f0f0148
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 89
    iput p2, p0, Lcom/videooperate/activity/MusicLibraryActivity;->checkId:I

    .line 90
    invoke-direct {p0, p2}, Lcom/videooperate/activity/MusicLibraryActivity;->skipFragment(I)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->finish()V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-direct {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->DownloadOnlineMusic()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f0f0143
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 47
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->initView()V

    .line 51
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/videooperate/activity/MusicLibraryActivity;->initService()V

    .line 54
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/videooperate/activity/MusicLibraryActivity;->mHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 192
    return-void
.end method
