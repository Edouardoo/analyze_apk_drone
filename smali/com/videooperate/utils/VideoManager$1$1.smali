.class Lcom/videooperate/utils/VideoManager$1$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lio/microshow/rxffmpeg/OnEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/VideoManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/videooperate/utils/VideoManager$1;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/videooperate/utils/VideoManager$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/videooperate/utils/VideoManager$1;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager$1$1;->this$1:Lcom/videooperate/utils/VideoManager$1;

    iput-object p2, p0, Lcom/videooperate/utils/VideoManager$1$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "messgae"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$1$1;->this$1:Lcom/videooperate/utils/VideoManager$1;

    iget-object v0, v0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/videooperate/utils/VideoManager;->access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public onProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 124
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$1$1;->this$1:Lcom/videooperate/utils/VideoManager$1;

    iget-object v0, v0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager$1$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/videooperate/utils/VideoManager;->mp3Path:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$1$1;->this$1:Lcom/videooperate/utils/VideoManager$1;

    iget-object v0, v0, Lcom/videooperate/utils/VideoManager$1;->this$0:Lcom/videooperate/utils/VideoManager;

    iget-object v1, p0, Lcom/videooperate/utils/VideoManager$1$1;->this$1:Lcom/videooperate/utils/VideoManager$1;

    iget-object v1, v1, Lcom/videooperate/utils/VideoManager$1;->val$inputVideoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/videooperate/utils/VideoManager;->access$000(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method
