.class final Landroid/support/v4/view/LinkagePager$1;
.super Ljava/lang/Object;
.source "LinkagePager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LinkagePager;
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
        "Landroid/support/v4/view/LinkagePager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/view/LinkagePager$ItemInfo;Landroid/support/v4/view/LinkagePager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroid/support/v4/view/LinkagePager$ItemInfo;
    .param p2, "rhs"    # Landroid/support/v4/view/LinkagePager$ItemInfo;

    .prologue
    .line 113
    iget v0, p1, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    iget v1, p2, Landroid/support/v4/view/LinkagePager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 110
    check-cast p1, Landroid/support/v4/view/LinkagePager$ItemInfo;

    check-cast p2, Landroid/support/v4/view/LinkagePager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/LinkagePager$1;->compare(Landroid/support/v4/view/LinkagePager$ItemInfo;Landroid/support/v4/view/LinkagePager$ItemInfo;)I

    move-result v0

    return v0
.end method
