.class public Lme/crosswall/lib/coverflow/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloat(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "minValue"    # F
    .param p2, "maxValue"    # F

    .prologue
    .line 23
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static isInNonTappableRegion(IIFF)I
    .locals 6
    .param p0, "containerWidth"    # I
    .param p1, "pagerWidth"    # I
    .param p2, "oldX"    # F
    .param p3, "newX"    # F

    .prologue
    .line 9
    move v1, p1

    .line 10
    .local v1, "tappableWidth":I
    move v2, p0

    .line 11
    .local v2, "totalWidth":I
    sub-int v3, v2, v1

    div-int/lit8 v0, v3, 0x2

    .line 12
    .local v0, "nonTappableWidth":I
    int-to-float v3, v0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    int-to-float v3, v0

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    .line 13
    int-to-float v3, v0

    sub-float/2addr v3, p3

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    neg-int v3, v3

    .line 19
    :goto_0
    return v3

    .line 15
    :cond_0
    add-int v3, v2, v1

    div-int/lit8 v0, v3, 0x2

    .line 16
    int-to-float v3, v0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    int-to-float v3, v0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_1

    .line 17
    int-to-float v3, v0

    sub-float v3, p3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0

    .line 19
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
