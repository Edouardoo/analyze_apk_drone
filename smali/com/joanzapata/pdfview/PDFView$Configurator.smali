.class public Lcom/joanzapata/pdfview/PDFView$Configurator;
.super Ljava/lang/Object;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private defaultPage:I

.field private enableSwipe:Z

.field private maskAlpha:I

.field private maskColor:I

.field private onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

.field private onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

.field private pageNumbers:[I

.field private showMinimap:Z

.field private swipeVertical:Z

.field final synthetic this$0:Lcom/joanzapata/pdfview/PDFView;

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;)V
    .locals 3
    .param p1, "this$0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1002
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->pageNumbers:[I

    .line 984
    iput-boolean v2, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->enableSwipe:Z

    .line 992
    iput v2, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->defaultPage:I

    .line 994
    iput-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->showMinimap:Z

    .line 996
    iput-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->swipeVertical:Z

    .line 998
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->maskColor:I

    .line 1000
    const/16 v0, 0x14

    iput v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->maskAlpha:I

    .line 1003
    iput-object p2, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->uri:Landroid/net/Uri;

    .line 1004
    return-void
.end method

.method synthetic constructor <init>(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;Lcom/joanzapata/pdfview/PDFView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/joanzapata/pdfview/PDFView;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Lcom/joanzapata/pdfview/PDFView$1;

    .prologue
    .line 978
    invoke-direct {p0, p1, p2}, Lcom/joanzapata/pdfview/PDFView$Configurator;-><init>(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public defaultPage(I)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "defaultPage"    # I

    .prologue
    .line 1032
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->defaultPage:I

    .line 1033
    return-object p0
.end method

.method public enableSwipe(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "enableSwipe"    # Z

    .prologue
    .line 1012
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->enableSwipe:Z

    .line 1013
    return-object p0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/PDFView;->recycle()V

    .line 1054
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-object v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

    invoke-static {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->access$300(Lcom/joanzapata/pdfview/PDFView;Lcom/joanzapata/pdfview/listener/OnDrawListener;)V

    .line 1055
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-object v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    invoke-static {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->access$400(Lcom/joanzapata/pdfview/PDFView;Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)V

    .line 1056
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->enableSwipe(Z)V

    .line 1057
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->access$500(Lcom/joanzapata/pdfview/PDFView;I)V

    .line 1058
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->showMinimap:Z

    invoke-static {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->access$600(Lcom/joanzapata/pdfview/PDFView;Z)V

    .line 1059
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->swipeVertical:Z

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->setSwipeVertical(Z)V

    .line 1060
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-static {v0}, Lcom/joanzapata/pdfview/PDFView;->access$700(Lcom/joanzapata/pdfview/PDFView;)Lcom/joanzapata/pdfview/DragPinchManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->swipeVertical:Z

    invoke-virtual {v0, v1}, Lcom/joanzapata/pdfview/DragPinchManager;->setSwipeVertical(Z)V

    .line 1061
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, v1}, Lcom/joanzapata/pdfview/PDFView;->access$802(Lcom/joanzapata/pdfview/PDFView;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 1062
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-static {v0}, Lcom/joanzapata/pdfview/PDFView;->access$800(Lcom/joanzapata/pdfview/PDFView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->maskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1063
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    invoke-static {v0}, Lcom/joanzapata/pdfview/PDFView;->access$800(Lcom/joanzapata/pdfview/PDFView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->maskAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1064
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->pageNumbers:[I

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-object v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    iget-object v3, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->pageNumbers:[I

    invoke-static {v0, v1, v2, v3}, Lcom/joanzapata/pdfview/PDFView;->access$900(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;[I)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->this$0:Lcom/joanzapata/pdfview/PDFView;

    iget-object v1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    invoke-static {v0, v1, v2}, Lcom/joanzapata/pdfview/PDFView;->access$1000(Lcom/joanzapata/pdfview/PDFView;Landroid/net/Uri;Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)V

    goto :goto_0
.end method

.method public mask(II)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "maskColor"    # I
    .param p2, "maskAlpha"    # I

    .prologue
    .line 1047
    iput p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->maskColor:I

    .line 1048
    iput p2, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->maskAlpha:I

    .line 1049
    return-object p0
.end method

.method public onDraw(Lcom/joanzapata/pdfview/listener/OnDrawListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "onDrawListener"    # Lcom/joanzapata/pdfview/listener/OnDrawListener;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onDrawListener:Lcom/joanzapata/pdfview/listener/OnDrawListener;

    .line 1018
    return-object p0
.end method

.method public onLoad(Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "onLoadCompleteListener"    # Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onLoadCompleteListener:Lcom/joanzapata/pdfview/listener/OnLoadCompleteListener;

    .line 1023
    return-object p0
.end method

.method public onPageChange(Lcom/joanzapata/pdfview/listener/OnPageChangeListener;)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "onPageChangeListener"    # Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->onPageChangeListener:Lcom/joanzapata/pdfview/listener/OnPageChangeListener;

    .line 1028
    return-object p0
.end method

.method public varargs pages([I)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "pageNumbers"    # [I

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->pageNumbers:[I

    .line 1008
    return-object p0
.end method

.method public showMinimap(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "showMinimap"    # Z

    .prologue
    .line 1072
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->showMinimap:Z

    .line 1073
    return-object p0
.end method

.method public swipeVertical(Z)Lcom/joanzapata/pdfview/PDFView$Configurator;
    .locals 0
    .param p1, "swipeVertical"    # Z

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/joanzapata/pdfview/PDFView$Configurator;->swipeVertical:Z

    .line 1038
    return-object p0
.end method
