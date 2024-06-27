.class Lcom/hfufo/fragment/PhotoViewFragment$1;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/fragment/PhotoViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/fragment/PhotoViewFragment;


# direct methods
.method constructor <init>(Lcom/hfufo/fragment/PhotoViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/fragment/PhotoViewFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/hfufo/fragment/PhotoViewFragment$1;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hfufo/fragment/PhotoViewFragment$1;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/hfufo/fragment/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 68
    return-void
.end method
