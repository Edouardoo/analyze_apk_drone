.class Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagePartComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/joanzapata/pdfview/model/PagePart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/joanzapata/pdfview/CacheManager;


# direct methods
.method constructor <init>(Lcom/joanzapata/pdfview/CacheManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/joanzapata/pdfview/CacheManager;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;->this$0:Lcom/joanzapata/pdfview/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/joanzapata/pdfview/model/PagePart;Lcom/joanzapata/pdfview/model/PagePart;)I
    .locals 2
    .param p1, "part1"    # Lcom/joanzapata/pdfview/model/PagePart;
    .param p2, "part2"    # Lcom/joanzapata/pdfview/model/PagePart;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/joanzapata/pdfview/model/PagePart;->getCacheOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/joanzapata/pdfview/model/PagePart;->getCacheOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/joanzapata/pdfview/model/PagePart;->getCacheOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/joanzapata/pdfview/model/PagePart;->getCacheOrder()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 143
    check-cast p1, Lcom/joanzapata/pdfview/model/PagePart;

    check-cast p2, Lcom/joanzapata/pdfview/model/PagePart;

    invoke-virtual {p0, p1, p2}, Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;->compare(Lcom/joanzapata/pdfview/model/PagePart;Lcom/joanzapata/pdfview/model/PagePart;)I

    move-result v0

    return v0
.end method
