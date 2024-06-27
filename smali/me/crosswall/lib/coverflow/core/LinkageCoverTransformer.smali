.class public Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;
.super Ljava/lang/Object;
.source "LinkageCoverTransformer.java"

# interfaces
.implements Landroid/support/v4/view/LinkagePager$PageTransformer;


# static fields
.field public static final MARGIN_MAX:F = 50.0f

.field public static final MARGIN_MIN:F = 0.0f

.field public static final SCALE_MAX:F = 1.0f

.field public static final SCALE_MIN:F = 0.3f

.field public static final TAG:Ljava/lang/String; = "CoverTransformer"


# instance fields
.field public pagerMargin:F

.field private rotationY:F

.field public scale:F

.field public spaceValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "pagerMargin"    # F
    .param p3, "spaceValue"    # F
    .param p4, "rotationY"    # F

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->scale:F

    .line 19
    iput v0, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->pagerMargin:F

    .line 20
    iput v0, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->spaceValue:F

    .line 22
    iput v0, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->rotationY:F

    .line 25
    iput p1, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->scale:F

    .line 26
    iput p2, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->pagerMargin:F

    .line 27
    iput p3, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->spaceValue:F

    .line 28
    iput p4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->rotationY:F

    .line 29
    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 8
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 37
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->scale:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    .line 38
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->scale:F

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v7, v4

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v4, v5, v7}, Lme/crosswall/lib/coverflow/core/Utils;->getFloat(FFF)F

    move-result v2

    .line 39
    .local v2, "realScale":F
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 43
    .end local v2    # "realScale":F
    :cond_0
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->pagerMargin:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    .line 45
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->pagerMargin:F

    mul-float v0, p2, v4

    .line 47
    .local v0, "realPagerMargin":F
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->spaceValue:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    .line 48
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->spaceValue:F

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v4, v6, v5}, Lme/crosswall/lib/coverflow/core/Utils;->getFloat(FFF)F

    move-result v3

    .line 49
    .local v3, "realSpaceValue":F
    cmpl-float v4, p2, v6

    if-lez v4, :cond_4

    .end local v3    # "realSpaceValue":F
    :goto_0
    add-float/2addr v0, v3

    .line 52
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    .end local v0    # "realPagerMargin":F
    :cond_2
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->rotationY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_3

    .line 58
    iget v4, p0, Lme/crosswall/lib/coverflow/core/LinkageCoverTransformer;->rotationY:F

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 59
    .local v1, "realRotationY":F
    cmpg-float v4, p2, v6

    if-gez v4, :cond_5

    .end local v1    # "realRotationY":F
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 61
    :cond_3
    return-void

    .line 49
    .restart local v0    # "realPagerMargin":F
    .restart local v3    # "realSpaceValue":F
    :cond_4
    neg-float v3, v3

    goto :goto_0

    .line 59
    .end local v0    # "realPagerMargin":F
    .end local v3    # "realSpaceValue":F
    .restart local v1    # "realRotationY":F
    :cond_5
    neg-float v1, v1

    goto :goto_1
.end method
