.class public Lcom/joanzapata/pdfview/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static limit(III)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "between"    # I
    .param p2, "and"    # I

    .prologue
    .line 35
    if-gt p0, p1, :cond_0

    .line 41
    .end local p1    # "between":I
    :goto_0
    return p1

    .line 38
    .restart local p1    # "between":I
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 39
    goto :goto_0

    :cond_1
    move p1, p0

    .line 41
    goto :goto_0
.end method
