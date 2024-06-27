.class public Lcom/hfufo/rxdrone/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;
    }
.end annotation


# instance fields
.field private im_left:Landroid/widget/ImageView;

.field private im_right:Landroid/widget/ImageView;

.field private image:[I

.field private image_en:[I

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x7f03000b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-array v0, v2, [I

    aput v3, v0, v1

    iput-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->image:[I

    .line 22
    new-array v0, v2, [I

    aput v3, v0, v1

    iput-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->image_en:[I

    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/rxdrone/HelpActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HelpActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_left:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hfufo/rxdrone/HelpActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HelpActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->image:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/rxdrone/HelpActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HelpActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_right:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 89
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->image:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 102
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0f00ff
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HelpActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f0f00fd

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 32
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 37
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HelpActivity;->image:[I

    invoke-direct {v2, p0, v3}, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;-><init>(Lcom/hfufo/rxdrone/HelpActivity;[I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 43
    :goto_0
    const v1, 0x7f0f00fe

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/HelpActivity$1;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HelpActivity$1;-><init>(Lcom/hfufo/rxdrone/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f0f0100

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_right:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f0f00ff

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_left:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_right:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->im_left:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/hfufo/rxdrone/HelpActivity$2;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HelpActivity$2;-><init>(Lcom/hfufo/rxdrone/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HelpActivity;->image_en:[I

    invoke-direct {v2, p0, v3}, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;-><init>(Lcom/hfufo/rxdrone/HelpActivity;[I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method
