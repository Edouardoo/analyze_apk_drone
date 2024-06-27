.class public Lcom/hfufo/fragment/PhotoViewFragment;
.super Lcom/hfufo/bean/BaseFragment;
.source "PhotoViewFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;
    }
.end annotation


# instance fields
.field private back:Landroid/widget/ImageView;

.field private del:Landroid/widget/ImageView;

.field private mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

.field private mIndex:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private share:Landroid/widget/ImageView;

.field private tvCounter:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/hfufo/bean/BaseFragment;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mIndex:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/fragment/PhotoViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/fragment/PhotoViewFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/fragment/PhotoViewFragment;)Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/fragment/PhotoViewFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/fragment/PhotoViewFragment;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/fragment/PhotoViewFragment;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/hfufo/fragment/PhotoViewFragment;->shareFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private formatTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "strs":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 149
    .end local v1    # "strs":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 145
    :cond_0
    move-object v0, p1

    .local v0, "des":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "des":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCounter(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "total"    # I

    .prologue
    .line 124
    add-int/lit8 p1, p1, 0x1

    .line 125
    const v1, 0x7f08003b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/hfufo/fragment/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->tvCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->tvTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/hfufo/fragment/PhotoViewFragment;->formatTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private shareFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "imageIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 234
    .local v1, "uri":Landroid/net/Uri;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 241
    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".fileProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 240
    invoke-static {v2, v3, p1}, Lcom/Util/FileUtil;->getMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 245
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    const-string v2, "\u5206\u4eab"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hfufo/fragment/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void

    .line 243
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/hfufo/bean/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 95
    const-string v4, "path_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "position"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, "pos":I
    iput v3, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mIndex:I

    .line 98
    new-instance v4, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;-><init>(Lcom/hfufo/fragment/PhotoViewFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    .line 99
    iget-object v4, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v4}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 102
    iget-object v4, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v4}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getCount()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/hfufo/fragment/PhotoViewFragment;->setCounter(II)V

    .line 103
    iget-object v4, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v4, v3}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    invoke-direct {p0, v2}, Lcom/hfufo/fragment/PhotoViewFragment;->setTitle(Ljava/lang/String;)V

    .line 110
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "pos":I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 55
    const v1, 0x7f0f01e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->tvCounter:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0f01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->tvTitle:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0f01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->back:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f0f01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->share:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0f01ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->del:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/hfufo/fragment/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 62
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->back:Landroid/widget/ImageView;

    new-instance v2, Lcom/hfufo/fragment/PhotoViewFragment$1;

    invoke-direct {v2, p0}, Lcom/hfufo/fragment/PhotoViewFragment$1;-><init>(Lcom/hfufo/fragment/PhotoViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->share:Landroid/widget/ImageView;

    new-instance v2, Lcom/hfufo/fragment/PhotoViewFragment$2;

    invoke-direct {v2, p0}, Lcom/hfufo/fragment/PhotoViewFragment$2;-><init>(Lcom/hfufo/fragment/PhotoViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->del:Landroid/widget/ImageView;

    new-instance v2, Lcom/hfufo/fragment/PhotoViewFragment$3;

    invoke-direct {v2, p0}, Lcom/hfufo/fragment/PhotoViewFragment$3;-><init>(Lcom/hfufo/fragment/PhotoViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/hfufo/bean/BaseFragment;->onDetach()V

    .line 120
    invoke-static {}, Lcom/videooperate/utils/ImageLoader;->getInstance()Lcom/videooperate/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/videooperate/utils/ImageLoader;->release()V

    .line 121
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 155
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getCount()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/hfufo/fragment/PhotoViewFragment;->setCounter(II)V

    .line 161
    iget-object v1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mAdapter:Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v1, p1}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/hfufo/fragment/PhotoViewFragment;->setTitle(Ljava/lang/String;)V

    .line 163
    iput p1, p0, Lcom/hfufo/fragment/PhotoViewFragment;->mIndex:I

    .line 165
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/hfufo/bean/BaseFragment;->onResume()V

    .line 115
    return-void
.end method
