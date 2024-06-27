.class Lcom/videooperate/activity/AlbumListActivity$1;
.super Ljava/lang/Object;
.source "AlbumListActivity.java"

# interfaces
.implements Lcom/videooperate/view/OnTabSelectListener;


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
    .line 118
    iput-object p1, p0, Lcom/videooperate/activity/AlbumListActivity$1;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onTabSelect(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$1;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    iget-object v0, v0, Lcom/videooperate/activity/AlbumListActivity;->vpContent:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 122
    return-void
.end method
