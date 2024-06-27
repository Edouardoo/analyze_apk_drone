.class final Lcom/fh/hdutil/AppUtils$2;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/hdutil/AppUtils;->descSortWay(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/hfufo/bean/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    const-class v0, Lcom/fh/hdutil/AppUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fh/hdutil/AppUtils$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hfufo/bean/FileInfo;Lcom/hfufo/bean/FileInfo;)I
    .locals 3
    .param p1, "f1"    # Lcom/hfufo/bean/FileInfo;
    .param p2, "f2"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 484
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "date1":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "date2":Ljava/lang/String;
    sget-boolean v2, Lcom/fh/hdutil/AppUtils$2;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 487
    :cond_0
    sget-boolean v2, Lcom/fh/hdutil/AppUtils$2;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 488
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 489
    const/4 v2, -0x1

    .line 493
    :goto_0
    return v2

    .line 490
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 491
    const/4 v2, 0x1

    goto :goto_0

    .line 493
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 481
    check-cast p1, Lcom/hfufo/bean/FileInfo;

    check-cast p2, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fh/hdutil/AppUtils$2;->compare(Lcom/hfufo/bean/FileInfo;Lcom/hfufo/bean/FileInfo;)I

    move-result v0

    return v0
.end method
