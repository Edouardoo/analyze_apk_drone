.class Lcom/jieli/jl_player/PlayerManager$Query;
.super Ljava/lang/Object;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_player/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Query"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/jieli/jl_player/PlayerManager;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jieli/jl_player/PlayerManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jieli/jl_player/PlayerManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager$Query;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/jieli/jl_player/PlayerManager$Query;->activity:Landroid/app/Activity;

    .line 446
    return-void
.end method

.method private size(ZIZ)V
    .locals 3
    .param p1, "width"    # Z
    .param p2, "n"    # I
    .param p3, "dip"    # Z

    .prologue
    .line 503
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 505
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 506
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager$Query;->activity:Landroid/app/Activity;

    int-to-float v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/jieli/jl_player/PlayerManager$Query;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    .line 508
    :cond_0
    if-eqz p1, :cond_2

    .line 509
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 511
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public clicked(Landroid/view/View$OnClickListener;)Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 1
    .param p1, "handler"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    :cond_0
    return-object p0
.end method

.method public dip2pixel(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # F

    .prologue
    .line 522
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 523
    .local v0, "value":I
    return v0
.end method

.method public gone()Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_0
    return-object p0
.end method

.method public height(IZ)V
    .locals 1
    .param p1, "height"    # I
    .param p2, "dip"    # Z

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/jieli/jl_player/PlayerManager$Query;->size(ZIZ)V

    .line 519
    return-void
.end method

.method public id(I)Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    .line 450
    return-object p0
.end method

.method public image(I)Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    :cond_0
    return-object p0
.end method

.method public invisible()Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :cond_0
    return-object p0
.end method

.method public pixel2dip(Landroid/content/Context;F)F
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # F

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 528
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 529
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float v0, p2, v3

    .line 530
    .local v0, "dp":F
    return v0
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_0
    return-object p0
.end method

.method public visibility(I)Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :cond_0
    return-object p0
.end method

.method public visible()Lcom/jieli/jl_player/PlayerManager$Query;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$Query;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    :cond_0
    return-object p0
.end method
