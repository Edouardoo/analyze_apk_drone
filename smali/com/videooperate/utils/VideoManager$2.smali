.class Lcom/videooperate/utils/VideoManager$2;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lio/microshow/rxffmpeg/OnEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/VideoManager;->addBackgroundMusic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/utils/VideoManager;


# direct methods
.method constructor <init>(Lcom/videooperate/utils/VideoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/utils/VideoManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager$2;->this$0:Lcom/videooperate/utils/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "messgae"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$2;->this$0:Lcom/videooperate/utils/VideoManager;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/videooperate/utils/VideoManager;->access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V

    .line 144
    const-string v0, "rxffmpeg"

    const-string v1, "addBackgroundMusic PLAY_ERR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onProgress(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 149
    const-string v0, "rxffmpeg"

    const-string v1, "addBackgroundMusic PLAY_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager$2;->this$0:Lcom/videooperate/utils/VideoManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/videooperate/utils/VideoManager;->access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V

    .line 138
    const-string v0, "rxffmpeg"

    const-string v1, "addBackgroundMusic PLAY_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
