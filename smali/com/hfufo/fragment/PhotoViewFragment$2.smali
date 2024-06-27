.class Lcom/hfufo/fragment/PhotoViewFragment$2;
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
    .line 70
    iput-object p1, p0, Lcom/hfufo/fragment/PhotoViewFragment$2;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/hfufo/fragment/PhotoViewFragment$2;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-static {v2}, Lcom/hfufo/fragment/PhotoViewFragment;->access$100(Lcom/hfufo/fragment/PhotoViewFragment;)Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/fragment/PhotoViewFragment$2;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-static {v3}, Lcom/hfufo/fragment/PhotoViewFragment;->access$000(Lcom/hfufo/fragment/PhotoViewFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hfufo/fragment/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/hfufo/fragment/PhotoViewFragment$2;->this$0:Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/hfufo/fragment/PhotoViewFragment;->access$200(Lcom/hfufo/fragment/PhotoViewFragment;Ljava/io/File;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method
