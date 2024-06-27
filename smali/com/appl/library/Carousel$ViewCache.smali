.class public Lcom/appl/library/Carousel$ViewCache;
.super Ljava/lang/Object;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appl/library/Carousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCachedItemViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 778
    .local p0, "this":Lcom/appl/library/Carousel$ViewCache;, "Lcom/appl/library/Carousel$ViewCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/appl/library/Carousel$ViewCache;->mCachedItemViews:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method cacheView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p0, "this":Lcom/appl/library/Carousel$ViewCache;, "Lcom/appl/library/Carousel$ViewCache<TT;>;"
    .local p1, "v":Landroid/view/View;, "TT;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 800
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    iget-object v1, p0, Lcom/appl/library/Carousel$ViewCache;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 801
    return-void
.end method

.method getCachedView()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lcom/appl/library/Carousel$ViewCache;, "Lcom/appl/library/Carousel$ViewCache<TT;>;"
    iget-object v1, p0, Lcom/appl/library/Carousel$ViewCache;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/appl/library/Carousel$ViewCache;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 792
    .local v0, "v":Landroid/view/View;, "TT;"
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/appl/library/Carousel$ViewCache;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 795
    .end local v0    # "v":Landroid/view/View;, "TT;"
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
