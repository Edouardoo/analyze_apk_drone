.class Landroid/support/v4/view/LinkagePager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "LinkagePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LinkagePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/LinkagePager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/LinkagePager;)V
    .locals 0

    .prologue
    .line 2984
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager$PagerObserver;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/LinkagePager;Landroid/support/v4/view/LinkagePager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/view/LinkagePager;
    .param p2, "x1"    # Landroid/support/v4/view/LinkagePager$1;

    .prologue
    .line 2984
    invoke-direct {p0, p1}, Landroid/support/v4/view/LinkagePager$PagerObserver;-><init>(Landroid/support/v4/view/LinkagePager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2987
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager$PagerObserver;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v0}, Landroid/support/v4/view/LinkagePager;->dataSetChanged()V

    .line 2988
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2991
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager$PagerObserver;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v0}, Landroid/support/v4/view/LinkagePager;->dataSetChanged()V

    .line 2992
    return-void
.end method
