.class Lcom/appl/library/Carousel$1;
.super Landroid/database/DataSetObserver;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appl/library/Carousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appl/library/Carousel;


# direct methods
.method constructor <init>(Lcom/appl/library/Carousel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appl/library/Carousel;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/appl/library/Carousel$1;->this$0:Lcom/appl/library/Carousel;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/appl/library/Carousel$1;->this$0:Lcom/appl/library/Carousel;

    invoke-static {v0}, Lcom/appl/library/Carousel;->access$000(Lcom/appl/library/Carousel;)V

    .line 65
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/appl/library/Carousel$1;->this$0:Lcom/appl/library/Carousel;

    invoke-virtual {v0}, Lcom/appl/library/Carousel;->removeAllViews()V

    .line 70
    iget-object v0, p0, Lcom/appl/library/Carousel$1;->this$0:Lcom/appl/library/Carousel;

    invoke-virtual {v0}, Lcom/appl/library/Carousel;->invalidate()V

    .line 71
    return-void
.end method
