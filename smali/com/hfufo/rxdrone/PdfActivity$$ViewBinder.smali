.class public Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PdfActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/hfufo/rxdrone/PdfActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/hfufo/rxdrone/PdfActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/hfufo/rxdrone/PdfActivity;, "TT;"
    const v4, 0x7f0f014c

    const v3, 0x7f0f014b

    const v2, 0x7f0f014a

    .line 11
    const-string v1, "field \'pdfView\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'pdfView\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/joanzapata/pdfview/PDFView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/PdfActivity;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    .line 13
    const-string v1, "field \'text\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'text\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/PdfActivity;->text:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'exit\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'exit\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p2, Lcom/hfufo/rxdrone/PdfActivity;->exit:Landroid/widget/ImageButton;

    .line 17
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/hfufo/rxdrone/PdfActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/hfufo/rxdrone/PdfActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/hfufo/rxdrone/PdfActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/hfufo/rxdrone/PdfActivity;, "TT;"
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/hfufo/rxdrone/PdfActivity;->pdfView:Lcom/joanzapata/pdfview/PDFView;

    .line 21
    iput-object v0, p1, Lcom/hfufo/rxdrone/PdfActivity;->text:Landroid/widget/TextView;

    .line 22
    iput-object v0, p1, Lcom/hfufo/rxdrone/PdfActivity;->exit:Landroid/widget/ImageButton;

    .line 23
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/hfufo/rxdrone/PdfActivity;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/PdfActivity$$ViewBinder;->unbind(Lcom/hfufo/rxdrone/PdfActivity;)V

    return-void
.end method
