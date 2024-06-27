.class public Lme/crosswall/lib/coverflow/core/CoverTransformer;
.super Ljava/lang/Object;
.source "CoverTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field public static final MARGIN_MAX:F = 50.0f

.field public static final MARGIN_MIN:F = 0.0f

.field public static final SCALE_MAX:F = 1.0f

.field public static final SCALE_MIN:F = 0.3f

.field public static final TAG:Ljava/lang/String; = "CoverTransformer"


# instance fields
.field private pagerMargin:F

.field private rotationX:F

.field private rotationY:F

.field public scale:F

.field private spaceValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "pagerMargin"    # F
    .param p3, "spaceValue"    # F
    .param p4, "rotationY"    # F

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->scale:F

    .line 20
    iput v0, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->pagerMargin:F

    .line 21
    iput v0, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->spaceValue:F

    .line 22
    iput v0, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->rotationX:F

    .line 23
    iput v0, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->rotationY:F

    .line 26
    iput p1, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->scale:F

    .line 27
    iput p2, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->pagerMargin:F

    .line 28
    iput p3, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->spaceValue:F

    .line 29
    iput p4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->rotationY:F

    .line 30
    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 9
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 35
    const-string v4, "CoverTransformer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->rotationY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    .line 39
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->rotationY:F

    iget v5, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->rotationY:F

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 40
    .local v1, "realRotationY":F
    cmpg-float v4, p2, v7

    if-gez v4, :cond_4

    .end local v1    # "realRotationY":F
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 43
    :cond_0
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->scale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    .line 44
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->scale:F

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v8, v4

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v4, v5, v8}, Lme/crosswall/lib/coverflow/core/Utils;->getFloat(FFF)F

    move-result v2

    .line 45
    .local v2, "realScale":F
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 49
    .end local v2    # "realScale":F
    :cond_1
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->pagerMargin:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_3

    .line 51
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->pagerMargin:F

    mul-float v0, p2, v4

    .line 53
    .local v0, "realPagerMargin":F
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->spaceValue:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    .line 54
    iget v4, p0, Lme/crosswall/lib/coverflow/core/CoverTransformer;->spaceValue:F

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v4, v7, v5}, Lme/crosswall/lib/coverflow/core/Utils;->getFloat(FFF)F

    move-result v3

    .line 55
    .local v3, "realSpaceValue":F
    cmpl-float v4, p2, v7

    if-lez v4, :cond_5

    .end local v3    # "realSpaceValue":F
    :goto_1
    add-float/2addr v0, v3

    .line 58
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    .end local v0    # "realPagerMargin":F
    :cond_3
    return-void

    .line 40
    .restart local v1    # "realRotationY":F
    :cond_4
    neg-float v1, v1

    goto :goto_0

    .line 55
    .end local v1    # "realRotationY":F
    .restart local v0    # "realPagerMargin":F
    .restart local v3    # "realSpaceValue":F
    :cond_5
    neg-float v3, v3

    goto :goto_1
.end method
