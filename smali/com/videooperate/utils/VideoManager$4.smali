.class Lcom/videooperate/utils/VideoManager$4;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lio/microshow/rxffmpeg/OnEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/VideoManager;->exec(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/utils/VideoManager;

.field final synthetic val$outputVideoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/utils/VideoManager;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager$4;->this$0:Lcom/videooperate/utils/VideoManager;

    iput-object p2, p0, Lcom/videooperate/utils/VideoManager$4;->val$outputVideoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "messgae"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "rxffmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY_ERR \u89c6\u9891\u5408\u621011\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$4;->this$0:Lcom/videooperate/utils/VideoManager;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/videooperate/utils/VideoManager;->access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V

    .line 289
    return-void
.end method

.method public onProgress(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 293
    const-string v0, "rxffmpeg"

    const-string v1, "PLAY_PROGRESS  \u89c6\u9891\u5408\u621011\uff1a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$4;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v1, p0, Lcom/videooperate/utils/VideoManager$4;->val$outputVideoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    .line 279
    const-string v0, "rxffmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY_SUCCESS \u89c6\u9891\u5408\u621011\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager$4;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v2, v2, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$4;->this$0:Lcom/videooperate/utils/VideoManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/videooperate/utils/VideoManager;->access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V

    .line 283
    return-void
.end method
