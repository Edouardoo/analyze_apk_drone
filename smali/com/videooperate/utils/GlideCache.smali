.class public Lcom/videooperate/utils/GlideCache;
.super Ljava/lang/Object;
.source "GlideCache.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;
.implements Lcom/fh/hdutil/IConstant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/bumptech/glide/GlideBuilder;

    .prologue
    .line 17
    const/high16 v0, 0x6400000

    .line 19
    .local v0, "size":I
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;

    sget-object v2, Lcom/videooperate/utils/GlideCache;->CACHE_IMAGE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    .line 20
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glide"    # Lcom/bumptech/glide/Glide;

    .prologue
    .line 24
    return-void
.end method
