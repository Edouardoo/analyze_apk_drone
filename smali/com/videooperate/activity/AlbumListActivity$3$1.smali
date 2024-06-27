.class Lcom/videooperate/activity/AlbumListActivity$3$1;
.super Ljava/lang/Object;
.source "AlbumListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/activity/AlbumListActivity$3;->on_delete_dialog_listener(ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/videooperate/activity/AlbumListActivity$3;

.field final synthetic val$selectedPicsNull:Z

.field final synthetic val$selectedVideosNull:Z


# direct methods
.method constructor <init>(Lcom/videooperate/activity/AlbumListActivity$3;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/videooperate/activity/AlbumListActivity$3;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iput-boolean p2, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->val$selectedPicsNull:Z

    iput-boolean p3, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->val$selectedVideosNull:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "isDelPicSuccess":Z
    const/4 v3, 0x0

    .line 264
    .local v3, "isDelVideoSuccess":Z
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v5}, Lcom/videooperate/activity/AlbumListActivity;->access$000(Lcom/videooperate/activity/AlbumListActivity;)I

    move-result v5

    if-nez v5, :cond_3

    .line 266
    iget-boolean v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->val$selectedPicsNull:Z

    if-nez v5, :cond_7

    .line 267
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 268
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hfufo/bean/FileInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    .line 270
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    iget-boolean v5, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v5, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    move-result v1

    .line 272
    .local v1, "flag":Z
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/Util/FileUtil;->deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 273
    if-eqz v1, :cond_2

    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 275
    iget-boolean v5, v0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    if-eqz v5, :cond_0

    .line 276
    const/4 v2, 0x1

    .line 277
    iget-boolean v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->val$selectedPicsNull:Z

    if-eqz v5, :cond_1

    .line 278
    const/4 v2, 0x1

    .line 280
    :cond_1
    if-eqz v2, :cond_0

    .line 281
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v5, v8}, Lcom/videooperate/activity/AlbumListActivity;->access$300(Lcom/videooperate/activity/AlbumListActivity;I)V

    .line 282
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v6, v6, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {v5, v6}, Lcom/videooperate/utils/MusicControlUtils;->sedScanMsg(Landroid/content/Context;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v5, v9}, Lcom/videooperate/activity/AlbumListActivity;->access$300(Lcom/videooperate/activity/AlbumListActivity;I)V

    goto :goto_0

    .line 293
    .end local v0    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v1    # "flag":Z
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hfufo/bean/FileInfo;>;"
    :cond_3
    iget-boolean v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->val$selectedVideosNull:Z

    if-nez v5, :cond_7

    .line 294
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 295
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hfufo/bean/FileInfo;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 296
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    .line 297
    .restart local v0    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    iget-boolean v5, v0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v5, :cond_4

    .line 298
    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    move-result v1

    .line 299
    .restart local v1    # "flag":Z
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/Util/FileUtil;->deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 300
    if-eqz v1, :cond_6

    .line 301
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 302
    iget-boolean v5, v0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    if-eqz v5, :cond_4

    .line 303
    const/4 v3, 0x1

    .line 304
    iget-boolean v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->val$selectedVideosNull:Z

    if-eqz v5, :cond_5

    .line 305
    const/4 v3, 0x1

    .line 308
    :cond_5
    if-eqz v3, :cond_4

    .line 309
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v5, v8}, Lcom/videooperate/activity/AlbumListActivity;->access$300(Lcom/videooperate/activity/AlbumListActivity;I)V

    .line 310
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v6, v6, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-virtual {v5, v6}, Lcom/videooperate/utils/MusicControlUtils;->sedScanMsg(Landroid/content/Context;)V

    goto :goto_1

    .line 314
    :cond_6
    iget-object v5, p0, Lcom/videooperate/activity/AlbumListActivity$3$1;->this$1:Lcom/videooperate/activity/AlbumListActivity$3;

    iget-object v5, v5, Lcom/videooperate/activity/AlbumListActivity$3;->this$0:Lcom/videooperate/activity/AlbumListActivity;

    invoke-static {v5, v9}, Lcom/videooperate/activity/AlbumListActivity;->access$300(Lcom/videooperate/activity/AlbumListActivity;I)V

    goto :goto_1

    .line 320
    .end local v0    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v1    # "flag":Z
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hfufo/bean/FileInfo;>;"
    :cond_7
    return-void
.end method
