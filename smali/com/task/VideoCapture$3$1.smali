.class Lcom/task/VideoCapture$3$1;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/VideoCapture$3;->onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/task/VideoCapture$3;

.field final synthetic val$data:[B

.field final synthetic val$outPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/task/VideoCapture$3;[BLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/task/VideoCapture$3;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/task/VideoCapture$3$1;->this$1:Lcom/task/VideoCapture$3;

    iput-object p2, p0, Lcom/task/VideoCapture$3$1;->val$data:[B

    iput-object p3, p0, Lcom/task/VideoCapture$3$1;->val$outPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    iget-object v2, p0, Lcom/task/VideoCapture$3$1;->val$data:[B

    array-length v2, v2

    new-array v0, v2, [B

    .line 293
    .local v0, "arr":[B
    iget-object v2, p0, Lcom/task/VideoCapture$3$1;->val$data:[B

    iget-object v3, p0, Lcom/task/VideoCapture$3$1;->val$data:[B

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v2, p0, Lcom/task/VideoCapture$3$1;->this$1:Lcom/task/VideoCapture$3;

    iget-object v2, v2, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/task/OnVideoCaptureListener;->onSuccess([BZ)V

    .line 295
    const-wide/16 v2, 0x29a

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 296
    sget-boolean v2, Lcom/task/VideoCapture;->downloadSuccess:Z

    if-nez v2, :cond_0

    .line 297
    const-string v2, "\u4e0b\u8f7d"

    const-string v3, "dscDataBmp != null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/task/VideoCapture$3$1;->val$data:[B

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    sget v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    invoke-static {v2, v3, v4}, Lcom/fh/hdutil/BitmapUtil;->zoomImg2Byte([BII)[B

    move-result-object v1

    .line 300
    .local v1, "dscDataBmp":[B
    if-eqz v1, :cond_0

    .line 302
    iget-object v2, p0, Lcom/task/VideoCapture$3$1;->val$outPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fh/hdutil/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    .line 305
    iget-object v2, p0, Lcom/task/VideoCapture$3$1;->this$1:Lcom/task/VideoCapture$3;

    iget-object v2, v2, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1200(Lcom/task/VideoCapture;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/task/VideoCapture$3$1;->val$outPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .end local v1    # "dscDataBmp":[B
    :cond_0
    return-void
.end method
