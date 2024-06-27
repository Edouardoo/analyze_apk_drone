.class Lcom/fh/lib/SDLSurface$1;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/lib/SDLSurface;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/lib/SDLSurface;


# direct methods
.method constructor <init>(Lcom/fh/lib/SDLSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/SDLSurface;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/fh/lib/SDLSurface$1;->this$0:Lcom/fh/lib/SDLSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ebf\u7a0b-SDLActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :try_start_0
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    if-nez v0, :cond_0

    .line 650
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleNativeExit()V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 649
    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    if-nez v0, :cond_0

    .line 650
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleNativeExit()V

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    if-nez v1, :cond_1

    .line 650
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleNativeExit()V

    :cond_1
    throw v0
.end method
