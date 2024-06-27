.class public Lcom/fh/util/ZoomJpgThread;
.super Ljava/lang/Thread;
.source "ZoomJpgThread.java"


# instance fields
.field private data:[B

.field private fileName:Ljava/lang/String;

.field private mActionListener:Lcom/jieli/lib/stream/udp/IActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private savePath:Ljava/lang/String;

.field private zoomHeight:I

.field private zoomWidth:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;IILcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "zoomWidth"    # I
    .param p5, "zoomHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p6, "listener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fh/util/ZoomJpgThread;->data:[B

    .line 25
    iput-object p2, p0, Lcom/fh/util/ZoomJpgThread;->savePath:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/fh/util/ZoomJpgThread;->fileName:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/fh/util/ZoomJpgThread;->zoomWidth:I

    .line 28
    iput p5, p0, Lcom/fh/util/ZoomJpgThread;->zoomHeight:I

    .line 29
    iput-object p6, p0, Lcom/fh/util/ZoomJpgThread;->mActionListener:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fh/util/ZoomJpgThread;->mMainHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/fh/util/ZoomJpgThread;)Lcom/jieli/lib/stream/udp/IActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/fh/util/ZoomJpgThread;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread;->mActionListener:Lcom/jieli/lib/stream/udp/IActionListener;

    return-object v0
.end method

.method private bitmap2bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method private notifyErrorEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ZoomJpgThread$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/fh/util/ZoomJpgThread$2;-><init>(Lcom/fh/util/ZoomJpgThread;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method

.method private notifyResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ZoomJpgThread$1;

    invoke-direct {v1, p0, p1}, Lcom/fh/util/ZoomJpgThread$1;-><init>(Lcom/fh/util/ZoomJpgThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 35
    iget-object v3, p0, Lcom/fh/util/ZoomJpgThread;->data:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fh/util/ZoomJpgThread;->data:[B

    array-length v3, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/fh/util/ZoomJpgThread;->savePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/fh/util/ZoomJpgThread;->fileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 36
    iget-object v3, p0, Lcom/fh/util/ZoomJpgThread;->data:[B

    iget v4, p0, Lcom/fh/util/ZoomJpgThread;->zoomWidth:I

    iget v5, p0, Lcom/fh/util/ZoomJpgThread;->zoomHeight:I

    invoke-static {v3, v4, v5}, Lcom/fh/hdutil/BitmapUtil;->zoomImg([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "dscDataBmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0, v0}, Lcom/fh/util/ZoomJpgThread;->bitmap2bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 39
    .local v1, "resultData":[B
    iget-object v3, p0, Lcom/fh/util/ZoomJpgThread;->savePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/fh/util/ZoomJpgThread;->fileName:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/fh/util/BufChangeHex;->byte2File([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fh/util/ZoomJpgThread;->savePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fh/util/ZoomJpgThread;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "saveFilePath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/fh/util/ZoomJpgThread;->notifyResult(Ljava/lang/String;)V

    .line 49
    .end local v1    # "resultData":[B
    .end local v2    # "saveFilePath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    .end local v0    # "dscDataBmp":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 44
    .restart local v0    # "dscDataBmp":Landroid/graphics/Bitmap;
    .restart local v1    # "resultData":[B
    :cond_0
    const/4 v3, 0x3

    const-string v4, "save file failed."

    invoke-direct {p0, v3, v4}, Lcom/fh/util/ZoomJpgThread;->notifyErrorEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v1    # "resultData":[B
    :cond_1
    const/4 v3, 0x2

    const-string v4, "zoom image failed."

    invoke-direct {p0, v3, v4}, Lcom/fh/util/ZoomJpgThread;->notifyErrorEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "dscDataBmp":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    const-string v4, "params is error."

    invoke-direct {p0, v3, v4}, Lcom/fh/util/ZoomJpgThread;->notifyErrorEvent(ILjava/lang/String;)V

    goto :goto_1
.end method
