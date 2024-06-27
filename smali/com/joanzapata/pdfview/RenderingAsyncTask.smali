.class Lcom/joanzapata/pdfview/RenderingAsyncTask;
.super Landroid/os/AsyncTask;
.source "RenderingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/joanzapata/pdfview/model/PagePart;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private decodeService:Lorg/vudroid/core/DecodeService;

.field private pdfView:Lcom/joanzapata/pdfview/PDFView;

.field private renderingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/joanzapata/pdfview/PDFView;)V
    .locals 1
    .param p1, "pdfView"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    .line 44
    return-void
.end method

.method private proceed(Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;)Lcom/joanzapata/pdfview/model/PagePart;
    .locals 10
    .param p1, "renderingTask"    # Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1}, Lcom/joanzapata/pdfview/PDFView;->getDecodeService()Lorg/vudroid/core/DecodeService;

    move-result-object v1

    iput-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 100
    iget-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    iget v2, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->page:I

    invoke-interface {v1, v2}, Lorg/vudroid/core/DecodeService;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v9

    .line 103
    .local v9, "page":Lorg/vudroid/core/codec/CodecPage;
    iget-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    iget v1, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->width:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->height:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->bounds:Landroid/graphics/RectF;

    invoke-interface {v9, v1, v4, v5}, Lorg/vudroid/core/codec/CodecPage;->renderBitmap(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 105
    .local v3, "render":Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    new-instance v0, Lcom/joanzapata/pdfview/model/PagePart;

    iget v1, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->userPage:I

    iget v2, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->page:I

    iget v4, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->width:F

    iget v5, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->height:F

    iget-object v6, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->bounds:Landroid/graphics/RectF;

    iget-boolean v7, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->thumbnail:Z

    iget v8, p1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->cacheOrder:I

    invoke-direct/range {v0 .. v8}, Lcom/joanzapata/pdfview/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    .line 112
    .local v0, "part":Lcom/joanzapata/pdfview/model/PagePart;
    return-object v0

    .line 105
    .end local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    .end local v3    # "render":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitForRenderingTasks()Z
    .locals 3

    .prologue
    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 91
    monitor-exit v2

    .line 92
    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRenderingTask(IIFFLandroid/graphics/RectF;ZI)V
    .locals 9
    .param p1, "userPage"    # I
    .param p2, "page"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "bounds"    # Landroid/graphics/RectF;
    .param p6, "thumbnail"    # Z
    .param p7, "cacheOrder"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p1

    move v6, p2

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;-><init>(Lcom/joanzapata/pdfview/RenderingAsyncTask;FFLandroid/graphics/RectF;IIZI)V

    .line 48
    .local v0, "task":Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;
    iget-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->wakeUp()V

    .line 50
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;

    .line 63
    .local v1, "task":Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;
    invoke-direct {p0, v1}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->proceed(Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;)Lcom/joanzapata/pdfview/model/PagePart;

    move-result-object v0

    .line 65
    .local v0, "part":Lcom/joanzapata/pdfview/model/PagePart;
    iget-object v2, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/joanzapata/pdfview/model/PagePart;

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 73
    .end local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    .end local v1    # "task":Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;
    :cond_2
    invoke-direct {p0}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->waitForRenderingTasks()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    :cond_3
    return-object v4
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/joanzapata/pdfview/model/PagePart;)V
    .locals 2
    .param p1, "part"    # [Lcom/joanzapata/pdfview/model/PagePart;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->onBitmapRendered(Lcom/joanzapata/pdfview/model/PagePart;)V

    .line 85
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, [Lcom/joanzapata/pdfview/model/PagePart;

    invoke-virtual {p0, p1}, Lcom/joanzapata/pdfview/RenderingAsyncTask;->onProgressUpdate([Lcom/joanzapata/pdfview/model/PagePart;)V

    return-void
.end method

.method public removeAllTasks()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    return-void
.end method

.method public wakeUp()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
