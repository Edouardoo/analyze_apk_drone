.class Lcom/videooperate/utils/VideoManager$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/VideoManager;->mergeLocationVideo(Lcom/videooperate/bean/Song;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/utils/VideoManager;

.field final synthetic val$inputVideoUrl:Ljava/lang/String;

.field final synthetic val$song:Lcom/videooperate/bean/Song;


# direct methods
.method constructor <init>(Lcom/videooperate/utils/VideoManager;Lcom/videooperate/bean/Song;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/utils/VideoManager;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iput-object p2, p0, Lcom/videooperate/utils/VideoManager$1;->val$song:Lcom/videooperate/bean/Song;

    iput-object p3, p0, Lcom/videooperate/utils/VideoManager$1;->val$inputVideoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 88
    iget-object v4, p0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v5, p0, Lcom/videooperate/utils/VideoManager$1;->val$song:Lcom/videooperate/bean/Song;

    iget-object v5, v5, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    iput-object v5, v4, Lcom/videooperate/utils/VideoManager;->mp3Path:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/videooperate/utils/VideoManager$1;->val$song:Lcom/videooperate/bean/Song;

    iget v4, v4, Lcom/videooperate/bean/Song;->duration:I

    mul-int/lit16 v2, v4, 0x3e8

    .line 93
    .local v2, "mp3Length":I
    int-to-long v4, v2

    iget-object v6, p0, Lcom/videooperate/utils/VideoManager$1;->val$inputVideoUrl:Ljava/lang/String;

    invoke-static {v6}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v5, p0, Lcom/videooperate/utils/VideoManager$1;->val$inputVideoUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/videooperate/utils/VideoManager;->access$000(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;)V

    .line 95
    const-string v4, "rxffmpeg"

    const-string v5, "1.\u5982\u679c\u89c6\u9891\u65f6\u957f<= \u80cc\u666f\u97f3\u4e50\u65f6\u957f  \u5c31\u76f4\u63a5\u5408\u6210"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v4, "rxffmpeg"

    const-string v5, "2.\u5982\u679c\u89c6\u9891\u65f6\u957f>\u80cc\u666f\u97f3\u4e50\u65f6\u957f\uff0c\u5f97\u5148\u628a\u80cc\u666f\u97f3\u4e50\u5408\u6210"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move v3, v2

    .line 99
    .local v3, "mp3LengthSum":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "epVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/microshow/rxffmpeg/EpVideo;>;"
    new-instance v4, Lio/microshow/rxffmpeg/EpVideo;

    iget-object v5, p0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v5, v5, Lcom/videooperate/utils/VideoManager;->mp3Path:Ljava/lang/String;

    invoke-direct {v4, v5}, Lio/microshow/rxffmpeg/EpVideo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_1
    iget-object v4, p0, Lcom/videooperate/utils/VideoManager$1;->val$inputVideoUrl:Ljava/lang/String;

    invoke-static {v4}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 102
    add-int/2addr v3, v2

    .line 103
    new-instance v4, Lio/microshow/rxffmpeg/EpVideo;

    iget-object v5, p0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v5, v5, Lcom/videooperate/utils/VideoManager;->mp3Path:Ljava/lang/String;

    invoke-direct {v4, v5}, Lio/microshow/rxffmpeg/EpVideo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v5, v5, Lcom/videooperate/utils/VideoManager;->SD_MUSIC_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MP3_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v4

    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/videooperate/utils/VideoManager$1$1;

    invoke-direct {v7, p0, v1}, Lcom/videooperate/utils/VideoManager$1$1;-><init>(Lcom/videooperate/utils/VideoManager$1;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0, v6, v7}, Lio/microshow/rxffmpeg/EpEditor;->mergeByLc(Landroid/content/Context;Ljava/util/List;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V

    goto :goto_0
.end method
