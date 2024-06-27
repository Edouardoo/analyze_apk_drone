.class Lcom/fh/util/ThumbLoader$OnCompleteRunnable;
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
    name = "OnCompleteRunnable"
.end annotation


# instance fields
.field private listenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fh/util/ThumbLoader$OnLoadThumbListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fh/util/ThumbLoader;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;->listenerReference:Ljava/lang/ref/WeakReference;

    .line 261
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    iget-object v2, p0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 266
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;->listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    .line 267
    .local v1, "listener":Lcom/fh/util/ThumbLoader$OnLoadThumbListener;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1, v0}, Lcom/fh/util/ThumbLoader$OnLoadThumbListener;->onComplete(Landroid/graphics/Bitmap;)V

    .line 270
    :cond_0
    return-void
.end method
