.class public Lcom/hfufo/rxdrone/PdfActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PdfActivity.java"

# interfaces
.implements Lcom/joanzapata/pdfview/listener/OnPageChangeListener;
.implements Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;
.implements Lcom/joanzapata/pdfview/listener/OnDrawListener;


# instance fields
.field exit:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f014b
        }
    .end annotation
.end field

.field pdfName:Ljava/lang/String;

.field pdfView:Lcom/joanzapata/pdfview/PDFView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f014a
        }
    .end annotation
.end field

.field text:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f014c
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private display(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "assetFileName"    # Ljava/lang/String;
    .param p2, "jumpToFirstPage"    # Z

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    iput-object p1, p0, Lcom/hfufo/rxdrone/PdfActivity;->pdfName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/PdfActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "qcl.pdf"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/hfufo/rxdrone/PdfActivity;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v1, v0}, Lcom/joanzapata/pdfview/PDFView;->fromFile(Ljava/io/File;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;->defaultPage(I)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onPageChange(Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/joanzapata/pdfview/PDFView$Configurator;->load()V

    .line 89
    return-void
.end method

.method private displayFromAssets(Ljava/lang/String;)V
    .locals 3
    .param p1, "assetFileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 117
    iget-object v0, p0, Lcom/hfufo/rxdrone/PdfActivity;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0, p1}, Lcom/joanzapata/pdfview/PDFView;->fromAsset(Ljava/lang/String;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;->defaultPage(I)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onPageChange(Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onLoad(Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onDraw(Lcom/joanzapata/pdfview/listener/OnDrawListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView$Configurator;->showMinimap(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;->swipeVertical(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;->enableSwipe(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->load()V

    .line 127
    return-void
.end method

.method private displayFromFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/hfufo/rxdrone/PdfActivity;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0, p1}, Lcom/joanzapata/pdfview/PDFView;->fromFile(Ljava/io/File;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    const/4 v1, 0x6

    .line 131
    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView$Configurator;->defaultPage(I)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onPageChange(Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onLoad(Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->onDraw(Lcom/joanzapata/pdfview/listener/OnDrawListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView$Configurator;->showMinimap(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;->swipeVertical(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Lcom/joanzapata/pdfview/PDFView$Configurator;->enableSwipe(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/PDFView$Configurator;->load()V

    .line 140
    return-void
.end method


# virtual methods
.method public loadComplete(I)V
    .locals 0
    .param p1, "nbPages"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v3, 0x7f040022

    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/PdfActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "a":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getCountry()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 51
    :goto_0
    const-string v3, "data"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/hfufo/rxdrone/PdfActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, "share":Landroid/content/SharedPreferences;
    const-string v3, "languageMode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, "languageMode":I
    if-nez v1, :cond_1

    .line 55
    const-string v3, "help.pdf"

    invoke-direct {p0, v3}, Lcom/hfufo/rxdrone/PdfActivity;->displayFromAssets(Ljava/lang/String;)V

    .line 68
    :goto_1
    iget-object v3, p0, Lcom/hfufo/rxdrone/PdfActivity;->exit:Landroid/widget/ImageButton;

    new-instance v4, Lcom/hfufo/rxdrone/PdfActivity$1;

    invoke-direct {v4, p0}, Lcom/hfufo/rxdrone/PdfActivity$1;-><init>(Lcom/hfufo/rxdrone/PdfActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    const-string v3, "et"

    const-string v4, "pdf"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 49
    .end local v1    # "languageMode":I
    .end local v2    # "share":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    .restart local v1    # "languageMode":I
    .restart local v2    # "share":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "help_en.pdf"

    invoke-direct {p0, v3}, Lcom/hfufo/rxdrone/PdfActivity;->displayFromAssets(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLayerDrawn(Landroid/graphics/Canvas;FFI)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageWidth"    # F
    .param p3, "pageHeight"    # F
    .param p4, "displayedPage"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onPageChanged(II)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "pageCount"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hfufo/rxdrone/PdfActivity;->text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
