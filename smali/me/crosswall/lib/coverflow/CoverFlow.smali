.class public Lme/crosswall/lib/coverflow/CoverFlow;
.super Ljava/lang/Object;
.source "CoverFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    }
.end annotation


# instance fields
.field private final linkagePager:Landroid/support/v4/view/LinkagePager;

.field private final pagerMargin:F

.field private final rotationY:F

.field private final scaleValue:F

.field private final spaceSize:F

.field private final viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)V
    .locals 7
    .param p1, "builder"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null CoverFlow.Builde must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-static {p1}, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->access$000(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 34
    invoke-static {p1}, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->access$100(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)Landroid/support/v4/view/LinkagePager;

    move-result-object v0

    iput-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->linkagePager:Landroid/support/v4/view/LinkagePager;

    .line 35
    invoke-static {p1}, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->access$200(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F

    move-result v0

    iput v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->scaleValue:F

    .line 36
    invoke-static {p1}, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->access$300(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F

    move-result v0

    iput v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->pagerMargin:F

    .line 37
    invoke-static {p1}, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->access$400(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F

    move-result v0

    iput v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->spaceSize:F

    .line 38
    invoke-static {p1}, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->access$500(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F

    move-result v0

    iput v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->rotationY:F

    .line 40
    iget-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lme/crosswall/lib/coverflow/core/CoverTransformer;

    iget v2, p0, Lme/crosswall/lib/coverflow/CoverFlow;->scaleValue:F

    iget v3, p0, Lme/crosswall/lib/coverflow/CoverFlow;->pagerMargin:F

    iget v4, p0, Lme/crosswall/lib/coverflow/CoverFlow;->spaceSize:F

    iget v5, p0, Lme/crosswall/lib/coverflow/CoverFlow;->rotationY:F

    invoke-direct {v1, v2, v3, v4, v5}, Lme/crosswall/lib/coverflow/core/CoverTransformer;-><init>(FFFF)V

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 49
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->linkagePager:Landroid/support/v4/view/LinkagePager;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow;->linkagePager:Landroid/support/v4/view/LinkagePager;

    new-instance v1, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;

    iget v2, p0, Lme/crosswall/lib/coverflow/CoverFlow;->scaleValue:F

    iget v3, p0, Lme/crosswall/lib/coverflow/CoverFlow;->pagerMargin:F

    iget v4, p0, Lme/crosswall/lib/coverflow/CoverFlow;->spaceSize:F

    iget v5, p0, Lme/crosswall/lib/coverflow/CoverFlow;->rotationY:F

    invoke-direct {v1, v2, v3, v4, v5}, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;-><init>(FFFF)V

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/view/LinkagePager;->setPageTransformer(ZLandroid/support/v4/view/LinkagePager$PageTransformer;)V

    goto :goto_0
.end method
