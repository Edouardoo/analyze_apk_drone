.class final Lcom/videooperate/utils/ImageLoaderUtils$3;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V
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
.field final synthetic val$iv:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$iv:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$listener:Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    iput-object p3, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 4
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
    .line 244
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$iv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$iv:Landroid/widget/ImageView;

    const v1, 0x7f03008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$listener:Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$listener:Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    iget-object v1, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    .line 248
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 3
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
    .line 253
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$listener:Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$listener:Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    iget-object v1, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/videooperate/utils/ImageLoaderUtils$3;->val$iv:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;)V

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .prologue
    .line 241
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils$3;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
