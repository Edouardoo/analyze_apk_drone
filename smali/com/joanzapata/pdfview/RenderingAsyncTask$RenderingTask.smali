.class Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;
.super Ljava/lang/Object;
.source "RenderingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/RenderingAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingTask"
.end annotation


# instance fields
.field bounds:Landroid/graphics/RectF;

.field cacheOrder:I

.field height:F

.field page:I

.field final synthetic this$0:Lcom/joanzapata/pdfview/RenderingAsyncTask;

.field thumbnail:Z

.field userPage:I

.field width:F


# direct methods
.method public constructor <init>(Lcom/joanzapata/pdfview/RenderingAsyncTask;FFLandroid/graphics/RectF;IIZI)V
    .locals 0
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "userPage"    # I
    .param p6, "page"    # I
    .param p7, "thumbnail"    # Z
    .param p8, "cacheOrder"    # I

    .prologue
    .line 138
    iput-object p1, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->this$0:Lcom/joanzapata/pdfview/RenderingAsyncTask;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p6, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->page:I

    .line 141
    iput p2, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->width:F

    .line 142
    iput p3, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->height:F

    .line 143
    iput-object p4, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->bounds:Landroid/graphics/RectF;

    .line 144
    iput p5, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->userPage:I

    .line 145
    iput-boolean p7, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->thumbnail:Z

    .line 146
    iput p8, p0, Lcom/joanzapata/pdfview/RenderingAsyncTask$RenderingTask;->cacheOrder:I

    .line 147
    return-void
.end method
