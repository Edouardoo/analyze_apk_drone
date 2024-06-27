.class Lcom/videooperate/view/SegmentTabLayout$1;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/view/SegmentTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/view/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/videooperate/view/SegmentTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/view/SegmentTabLayout;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    .local v0, "position":I
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-static {v1}, Lcom/videooperate/view/SegmentTabLayout;->access$000(Lcom/videooperate/view/SegmentTabLayout;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-virtual {v1, v0}, Lcom/videooperate/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 216
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-static {v1}, Lcom/videooperate/view/SegmentTabLayout;->access$100(Lcom/videooperate/view/SegmentTabLayout;)Lcom/videooperate/view/OnTabSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-static {v1}, Lcom/videooperate/view/SegmentTabLayout;->access$100(Lcom/videooperate/view/SegmentTabLayout;)Lcom/videooperate/view/OnTabSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/videooperate/view/OnTabSelectListener;->onTabSelect(I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-static {v1}, Lcom/videooperate/view/SegmentTabLayout;->access$100(Lcom/videooperate/view/SegmentTabLayout;)Lcom/videooperate/view/OnTabSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout$1;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-static {v1}, Lcom/videooperate/view/SegmentTabLayout;->access$100(Lcom/videooperate/view/SegmentTabLayout;)Lcom/videooperate/view/OnTabSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/videooperate/view/OnTabSelectListener;->onTabReselect(I)V

    goto :goto_0
.end method
