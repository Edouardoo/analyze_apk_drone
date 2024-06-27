.class Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AlbumListActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/videooperate/activity/AlbumListActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;

.field final synthetic val$target:Lcom/videooperate/activity/AlbumListActivity;


# direct methods
.method constructor <init>(Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;Lcom/videooperate/activity/AlbumListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;

    .prologue
    .line 69
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;"
    iput-object p1, p0, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;->this$0:Lcom/videooperate/activity/AlbumListActivity$$ViewBinder;

    iput-object p2, p0, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;->val$target:Lcom/videooperate/activity/AlbumListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 73
    .local p0, "this":Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;, "Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;"
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$$ViewBinder$6;->val$target:Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {v0, p1}, Lcom/videooperate/activity/AlbumListActivity;->onClick(Landroid/view/View;)V

    .line 74
    return-void
.end method
