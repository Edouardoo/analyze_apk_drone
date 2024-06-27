.class Lcom/joanzapata/pdfview/DecodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "DecodingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private decodeService:Lorg/vudroid/core/DecodeService;

.field private pdfView:Lcom/joanzapata/pdfview/PDFView;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/joanzapata/pdfview/PDFView;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pdfView"    # Lcom/joanzapata/pdfview/PDFView;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->cancelled:Z

    .line 44
    iput-object p2, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    .line 45
    iput-object p1, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->uri:Landroid/net/Uri;

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/joanzapata/pdfview/DecodingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 50
    new-instance v0, Lorg/vudroid/core/DecodeServiceBase;

    new-instance v1, Lorg/vudroid/pdfdroid/codec/PdfContext;

    invoke-direct {v1}, Lorg/vudroid/pdfdroid/codec/PdfContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/vudroid/core/DecodeServiceBase;-><init>(Lorg/vudroid/core/codec/CodecContext;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 51
    iget-object v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v1, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1}, Lcom/joanzapata/pdfview/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/vudroid/core/DecodeService;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 52
    iget-object v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v1, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lorg/vudroid/core/DecodeService;->open(Landroid/net/Uri;)V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->cancelled:Z

    .line 64
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/joanzapata/pdfview/DecodingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    iget-object v1, p0, Lcom/joanzapata/pdfview/DecodingAsyncTask;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->loadComplete(Lorg/vudroid/core/DecodeService;)V

    .line 60
    :cond_0
    return-void
.end method
