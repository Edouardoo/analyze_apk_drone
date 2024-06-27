.class Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;
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
    name = "OnLoadVideoThumbRunnable"
.end annotation


# instance fields
.field private bitmapWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I

.field final synthetic this$0:Lcom/fh/util/ThumbLoader;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "duration"    # I
    .param p4, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput p3, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->duration:I

    .line 405
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->bitmapWeakReference:Ljava/lang/ref/WeakReference;

    .line 406
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 407
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 411
    iget-object v2, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->bitmapWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 412
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    .line 413
    .local v1, "listener":Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 414
    iget v2, p0, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;->duration:I

    invoke-interface {v1, v0, v2}, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;->onComplete(Landroid/graphics/Bitmap;I)V

    .line 416
    :cond_0
    return-void
.end method
