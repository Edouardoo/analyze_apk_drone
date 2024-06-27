.class Lcom/task/VideoCapture$1;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/VideoCapture;


# direct methods
.method constructor <init>(Lcom/task/VideoCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/VideoCapture;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 59
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-static {v3}, Lcom/task/VideoCapture;->access$000(Lcom/task/VideoCapture;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-static {v3}, Lcom/task/VideoCapture;->access$100(Lcom/task/VideoCapture;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 62
    .local v1, "data":[B
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-static {v3, v1}, Lcom/task/VideoCapture;->access$200(Lcom/task/VideoCapture;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    iget-object v4, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-static {v4}, Lcom/task/VideoCapture;->access$400(Lcom/task/VideoCapture;)F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/task/VideoCapture;->access$302(Lcom/task/VideoCapture;F)F

    .line 69
    iget-object v3, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    iget-object v4, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-static {v4}, Lcom/task/VideoCapture;->access$600(Lcom/task/VideoCapture;)F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/task/VideoCapture;->access$502(Lcom/task/VideoCapture;F)F

    .line 71
    iget-object v3, p0, Lcom/task/VideoCapture$1;->this$0:Lcom/task/VideoCapture;

    invoke-static {v3, v0}, Lcom/task/VideoCapture;->access$700(Lcom/task/VideoCapture;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
