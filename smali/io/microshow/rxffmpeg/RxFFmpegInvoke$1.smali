.class Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;
.super Ljava/lang/Object;
.source "RxFFmpegInvoke.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandAsync([Ljava/lang/String;Lio/microshow/rxffmpeg/OnEditorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

.field final synthetic val$command:[Ljava/lang/String;

.field final synthetic val$mffmpegListener:Lio/microshow/rxffmpeg/OnEditorListener;


# direct methods
.method constructor <init>(Lio/microshow/rxffmpeg/RxFFmpegInvoke;[Ljava/lang/String;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 0
    .param p1, "this$0"    # Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    .prologue
    .line 60
    iput-object p1, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->this$0:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    iput-object p2, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->val$command:[Ljava/lang/String;

    iput-object p3, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->val$mffmpegListener:Lio/microshow/rxffmpeg/OnEditorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->this$0:Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    iget-object v2, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->val$command:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runFFmpegCmd([Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "ret":I
    const-string v1, "gggg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez v0, :cond_0

    .line 66
    iget-object v1, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->val$mffmpegListener:Lio/microshow/rxffmpeg/OnEditorListener;

    invoke-interface {v1}, Lio/microshow/rxffmpeg/OnEditorListener;->onSuccess()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lio/microshow/rxffmpeg/RxFFmpegInvoke$1;->val$mffmpegListener:Lio/microshow/rxffmpeg/OnEditorListener;

    const-string v2, "."

    invoke-interface {v1, v2}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
