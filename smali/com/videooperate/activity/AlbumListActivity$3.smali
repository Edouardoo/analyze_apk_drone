.class Lcom/videooperate/activity/AlbumListActivity$3;
.super Ljava/lang/Object;
.source "AlbumListActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/activity/AlbumListActivity;->showDelDialog()V
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
    .line 251
    iput-object p1, p0, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_delete_dialog_listener(ZZZI)V
    .locals 2
    .param p1, "selectedPicsNull"    # Z
    .param p2, "selectedVideosNull"    # Z
    .param p3, "state"    # Z
    .param p4, "value"    # I

    .prologue
    .line 256
    if-eqz p3, :cond_0

    .line 257
    const-string v0, "123456"

    const-string v1, "progressDialog start"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/videooperate/activity/AlbumListActivity;->access$300(Lcom/videooperate/activity/AlbumListActivity;I)V

    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/videooperate/activity/AlbumListActivity$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/videooperate/activity/AlbumListActivity$3$1;-><init>(Lcom/videooperate/activity/AlbumListActivity$3;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 324
    :cond_0
    return-void
.end method
