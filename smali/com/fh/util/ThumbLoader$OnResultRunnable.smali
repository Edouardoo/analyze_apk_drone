.class Lcom/fh/util/ThumbLoader$OnResultRunnable;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/util/ThumbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnResultRunnable"
.end annotation


# instance fields
.field private obj:Ljava/lang/String;

.field private result:Z

.field final synthetic this$0:Lcom/fh/util/ThumbLoader;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fh/util/ThumbLoader$OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;ZLjava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V
    .locals 1
    .param p2, "result"    # Z
    .param p3, "obj"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fh/util/ThumbLoader$OnDownloadListener;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-boolean p2, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->result:Z

    .line 470
    iput-object p3, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->obj:Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 472
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fh/util/ThumbLoader$OnDownloadListener;

    .line 477
    .local v0, "listener":Lcom/fh/util/ThumbLoader$OnDownloadListener;
    if-eqz v0, :cond_0

    .line 478
    iget-boolean v1, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->result:Z

    iget-object v2, p0, Lcom/fh/util/ThumbLoader$OnResultRunnable;->obj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/fh/util/ThumbLoader$OnDownloadListener;->onResult(ZLjava/lang/String;)V

    .line 480
    :cond_0
    return-void
.end method
