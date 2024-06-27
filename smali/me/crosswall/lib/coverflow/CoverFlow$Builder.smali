.class public Lme/crosswall/lib/coverflow/CoverFlow$Builder;
.super Ljava/lang/Object;
.source "CoverFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/crosswall/lib/coverflow/CoverFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private linkagePager:Landroid/support/v4/view/LinkagePager;

.field private pagerMargin:F

.field private rotationY:F

.field private scaleValue:F

.field private spaceSize:F

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    .line 51
    iget-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)Landroid/support/v4/view/LinkagePager;
    .locals 1
    .param p0, "x0"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    .line 51
    iget-object v0, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->linkagePager:Landroid/support/v4/view/LinkagePager;

    return-object v0
.end method

.method static synthetic access$200(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F
    .locals 1
    .param p0, "x0"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    .line 51
    iget v0, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->scaleValue:F

    return v0
.end method

.method static synthetic access$300(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F
    .locals 1
    .param p0, "x0"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    .line 51
    iget v0, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->pagerMargin:F

    return v0
.end method

.method static synthetic access$400(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F
    .locals 1
    .param p0, "x0"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    .line 51
    iget v0, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->spaceSize:F

    return v0
.end method

.method static synthetic access$500(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)F
    .locals 1
    .param p0, "x0"    # Lme/crosswall/lib/coverflow/CoverFlow$Builder;

    .prologue
    .line 51
    iget v0, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->rotationY:F

    return v0
.end method


# virtual methods
.method public build()Lme/crosswall/lib/coverflow/CoverFlow;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lme/crosswall/lib/coverflow/CoverFlow;

    invoke-direct {v0, p0}, Lme/crosswall/lib/coverflow/CoverFlow;-><init>(Lme/crosswall/lib/coverflow/CoverFlow$Builder;)V

    return-object v0
.end method

.method public pagerMargin(F)Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    .locals 0
    .param p1, "pagerMargin"    # F

    .prologue
    .line 76
    iput p1, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->pagerMargin:F

    .line 77
    return-object p0
.end method

.method public rotationY(F)Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    .locals 0
    .param p1, "rotationY"    # F

    .prologue
    .line 86
    iput p1, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->rotationY:F

    .line 87
    return-object p0
.end method

.method public scale(F)Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    .locals 0
    .param p1, "scaleValue"    # F

    .prologue
    .line 71
    iput p1, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->scaleValue:F

    .line 72
    return-object p0
.end method

.method public spaceSize(F)Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    .locals 0
    .param p1, "spaceSize"    # F

    .prologue
    .line 81
    iput p1, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->spaceSize:F

    .line 82
    return-object p0
.end method

.method public with(Landroid/support/v4/view/ViewPager;)Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 60
    iput-object p1, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 61
    return-object p0
.end method

.method public withLinkage(Landroid/support/v4/view/LinkagePager;)Lme/crosswall/lib/coverflow/CoverFlow$Builder;
    .locals 0
    .param p1, "linkagePager"    # Landroid/support/v4/view/LinkagePager;

    .prologue
    .line 65
    iput-object p1, p0, Lme/crosswall/lib/coverflow/CoverFlow$Builder;->linkagePager:Landroid/support/v4/view/LinkagePager;

    .line 66
    return-object p0
.end method
