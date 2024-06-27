.class Lcom/hfufo/widget/PathView$1;
.super Ljava/lang/Object;
.source "PathView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/PathView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/PathView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/PathView;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/hfufo/widget/PathView$1;->this$0:Lcom/hfufo/widget/PathView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/hfufo/widget/PathView$1;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$000(Lcom/hfufo/widget/PathView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/hfufo/widget/PathView$1;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/PathView$1;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v1}, Lcom/hfufo/widget/PathView;->access$100(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/PointTimeBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/hfufo/widget/PathView$1;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$400(Lcom/hfufo/widget/PathView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/hfufo/widget/PathView;->access$300()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    :cond_0
    return-void
.end method
