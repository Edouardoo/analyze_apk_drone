.class Lcom/joanzapata/pdfview/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;
    }
.end annotation


# instance fields
.field private activeCache:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ">;"
        }
    .end annotation
.end field

.field private passiveCache:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnails:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    new-instance v2, Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;

    invoke-direct {v2, p0}, Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;-><init>(Lcom/joanzapata/pdfview/CacheManager;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    .line 40
    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    new-instance v2, Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;

    invoke-direct {v2, p0}, Lcom/joanzapata/pdfview/CacheManager$PagePartComparator;-><init>(Lcom/joanzapata/pdfview/CacheManager;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    .line 42
    return-void
.end method

.method private find(Ljava/util/PriorityQueue;Lcom/joanzapata/pdfview/model/PagePart;)Lcom/joanzapata/pdfview/model/PagePart;
    .locals 3
    .param p2, "fakePart"    # Lcom/joanzapata/pdfview/model/PagePart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ">;",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ")",
            "Lcom/joanzapata/pdfview/model/PagePart;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "vector":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/joanzapata/pdfview/model/PagePart;>;"
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    .line 111
    .local v0, "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-virtual {v0, p2}, Lcom/joanzapata/pdfview/model/PagePart;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    .end local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAFreeSpace()V
    .locals 2

    .prologue
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    .line 62
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 66
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    .line 67
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public cachePart(Lcom/joanzapata/pdfview/model/PagePart;)V
    .locals 1
    .param p1, "part"    # Lcom/joanzapata/pdfview/model/PagePart;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/joanzapata/pdfview/CacheManager;->makeAFreeSpace()V

    .line 50
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public cacheThumbnail(Lcom/joanzapata/pdfview/model/PagePart;)V
    .locals 2
    .param p1, "part"    # Lcom/joanzapata/pdfview/model/PagePart;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public containsThumbnail(IIFFLandroid/graphics/RectF;)Z
    .locals 10
    .param p1, "userPage"    # I
    .param p2, "page"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "pageRelativeBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    new-instance v0, Lcom/joanzapata/pdfview/model/PagePart;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/joanzapata/pdfview/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    .line 101
    .local v0, "fakePart":Lcom/joanzapata/pdfview/model/PagePart;
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/joanzapata/pdfview/model/PagePart;

    .line 102
    .local v9, "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-virtual {v9, v0}, Lcom/joanzapata/pdfview/model/PagePart;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    .end local v9    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :goto_0
    return v7

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method public getPageParts()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v0, "parts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/joanzapata/pdfview/model/PagePart;>;"
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 121
    return-object v0
.end method

.method public getThumbnails()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/joanzapata/pdfview/model/PagePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    return-object v0
.end method

.method public makeANewSet()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v0, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 57
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    .line 130
    .local v0, "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 132
    .end local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :cond_0
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    .line 133
    .restart local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 135
    .end local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :cond_1
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    .line 136
    .restart local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 138
    .end local v0    # "part":Lcom/joanzapata/pdfview/model/PagePart;
    :cond_2
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 139
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 140
    iget-object v1, p0, Lcom/joanzapata/pdfview/CacheManager;->thumbnails:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 141
    return-void
.end method

.method public upPartIfContained(IIFFLandroid/graphics/RectF;I)Z
    .locals 11
    .param p1, "userPage"    # I
    .param p2, "page"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "pageRelativeBounds"    # Landroid/graphics/RectF;
    .param p6, "toOrder"    # I

    .prologue
    .line 85
    new-instance v1, Lcom/joanzapata/pdfview/model/PagePart;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/joanzapata/pdfview/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    .line 88
    .local v1, "fakePart":Lcom/joanzapata/pdfview/model/PagePart;
    iget-object v2, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-direct {p0, v2, v1}, Lcom/joanzapata/pdfview/CacheManager;->find(Ljava/util/PriorityQueue;Lcom/joanzapata/pdfview/model/PagePart;)Lcom/joanzapata/pdfview/model/PagePart;

    move-result-object v10

    .local v10, "found":Lcom/joanzapata/pdfview/model/PagePart;
    if-eqz v10, :cond_0

    .line 89
    iget-object v2, p0, Lcom/joanzapata/pdfview/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v10}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 90
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Lcom/joanzapata/pdfview/model/PagePart;->setCacheOrder(I)V

    .line 91
    iget-object v2, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v10}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 92
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/joanzapata/pdfview/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-direct {p0, v2, v1}, Lcom/joanzapata/pdfview/CacheManager;->find(Ljava/util/PriorityQueue;Lcom/joanzapata/pdfview/model/PagePart;)Lcom/joanzapata/pdfview/model/PagePart;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
