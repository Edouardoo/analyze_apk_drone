.class Lcom/videooperate/utils/VideoManager$3;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lio/microshow/rxffmpeg/OnEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/VideoManager;->checkVideoType(Lcom/videooperate/bean/Song;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/utils/VideoManager;

.field final synthetic val$currentTimeMillis:Ljava/lang/String;

.field final synthetic val$oldVideoUrl:Ljava/lang/String;

.field final synthetic val$song:Lcom/videooperate/bean/Song;


# direct methods
.method constructor <init>(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;Ljava/lang/String;Lcom/videooperate/bean/Song;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/utils/VideoManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    iput-object p2, p0, Lcom/videooperate/utils/VideoManager$3;->val$currentTimeMillis:Ljava/lang/String;

    iput-object p3, p0, Lcom/videooperate/utils/VideoManager$3;->val$oldVideoUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/videooperate/utils/VideoManager$3;->val$song:Lcom/videooperate/bean/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "messgae"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "rxffmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY_ERR \u89c6\u9891\u8f6c\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/videooperate/utils/VideoManager;->access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V

    .line 178
    return-void
.end method

.method public onProgress(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 182
    const-string v0, "rxffmpeg"

    const-string v1, "PLAY_PROGRESS  \u89c6\u9891\u8f6c\u7801\uff1a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    .line 167
    const-string v0, "rxffmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY_SUCCESS \u89c6\u9891\u8f6c\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v2, v2, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v1, p0, Lcom/videooperate/utils/VideoManager$3;->val$currentTimeMillis:Ljava/lang/String;

    iput-object v1, v0, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$3;->val$oldVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    .line 170
    const-string v0, "rxffmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY_SUCCESS \u89c6\u9891\u5220\u96641\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager$3;->val$oldVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v1, p0, Lcom/videooperate/utils/VideoManager$3;->val$song:Lcom/videooperate/bean/Song;

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v2, v2, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v3, v3, Lcom/videooperate/utils/VideoManager;->outputVideoUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/videooperate/utils/VideoManager$3;->this$0:Lcom/videooperate/utils/VideoManager;

    invoke-static {v4}, Lcom/videooperate/utils/VideoManager;->access$200(Lcom/videooperate/utils/VideoManager;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/videooperate/utils/VideoManager;->mergeLocationVideo(Lcom/videooperate/bean/Song;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method
