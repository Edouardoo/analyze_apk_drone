.class Lcom/videooperate/activity/AlbumListActivity$2;
.super Ljava/lang/Object;
.source "AlbumListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/activity/AlbumListActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/activity/AlbumListActivity;


# direct methods
.method constructor <init>(Lcom/videooperate/activity/AlbumListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/activity/AlbumListActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v0, p1}, Lcom/videooperate/activity/AlbumListActivity;->access$002(Lcom/videooperate/activity/AlbumListActivity;I)I

    .line 138
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v0}, Lcom/videooperate/activity/AlbumListActivity;->access$000(Lcom/videooperate/activity/AlbumListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v0}, Lcom/videooperate/activity/AlbumListActivity;->access$100(Lcom/videooperate/activity/AlbumListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v0}, Lcom/videooperate/activity/AlbumListActivity;->access$200(Lcom/videooperate/activity/AlbumListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    iget-object v0, v0, Lcom/videooperate/activity/AlbumListActivity;->stTabLayout:Lcom/videooperate/view/SegmentTabLayout;

    invoke-virtual {v0, p1}, Lcom/videooperate/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v0}, Lcom/videooperate/activity/AlbumListActivity;->access$100(Lcom/videooperate/activity/AlbumListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$2;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v0}, Lcom/videooperate/activity/AlbumListActivity;->access$200(Lcom/videooperate/activity/AlbumListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
