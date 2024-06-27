.class final Lcom/videooperate/utils/ImageLoaderUtils$1;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/ImageLoaderUtils;->displayHead(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultResId:I

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/videooperate/utils/ImageLoaderUtils$1;->val$iv:Landroid/widget/ImageView;

    iput p2, p0, Lcom/videooperate/utils/ImageLoaderUtils$1;->val$defaultResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "model"    # Ljava/lang/Object;
    .param p4, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$1;->val$iv:Landroid/widget/ImageView;

    iget v1, p0, Lcom/videooperate/utils/ImageLoaderUtils$1;->val$defaultResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p2, "model"    # Ljava/lang/Object;
    .param p4, "isFromMemoryCache"    # Z
    .param p5, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .prologue
    .line 43
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
