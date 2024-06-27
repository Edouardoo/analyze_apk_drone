.class public Lcom/videooperate/utils/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;,
        Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;,
        Lcom/videooperate/utils/ImageLoaderUtils$GlideCircleTransform;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/videooperate/utils/ImageLoaderUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/videooperate/utils/ImageLoaderUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayHead(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 4
    .param p0, "rm"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "transformCtx"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iv"    # Landroid/widget/ImageView;
    .param p4, "defaultResId"    # I

    .prologue
    .line 40
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    .end local p2    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 42
    .restart local p2    # "uri":Ljava/lang/String;
    :cond_0
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/videooperate/utils/ImageLoaderUtils;->wrapUrl(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object p2

    .end local p2    # "uri":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v2, 0x0

    new-instance v3, Lcom/videooperate/utils/ImageLoaderUtils$GlideCircleTransform;

    invoke-direct {v3, p1}, Lcom/videooperate/utils/ImageLoaderUtils$GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/videooperate/utils/ImageLoaderUtils$1;

    invoke-direct {v1, p3, p4}, Lcom/videooperate/utils/ImageLoaderUtils$1;-><init>(Landroid/widget/ImageView;I)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public static displayLoactionPic(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const/16 v1, 0x200

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v1, 0x7f030076

    .line 74
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v1, 0x7f03003e

    .line 75
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 77
    return-void
.end method

.method public static displayLoactionVideoCover(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f03003e

    .line 64
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 66
    return-void
.end method

.method public static displayPic(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 90
    return-void
.end method

.method public static displayPic(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 111
    return-void
.end method

.method public static displayPic(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I
    .param p4, "listener"    # Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 132
    return-void
.end method

.method public static displayPic(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 83
    return-void
.end method

.method public static displayPic(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 104
    return-void
.end method

.method public static displayPic(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I
    .param p4, "listener"    # Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 125
    return-void
.end method

.method public static displayPic(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 97
    return-void
.end method

.method public static displayPic(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 118
    return-void
.end method

.method public static displayPic(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V
    .locals 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I
    .param p4, "listener"    # Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayPic(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 139
    return-void
.end method

.method private static displayPic(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V
    .locals 5
    .param p0, "rm"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "transformCtx"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iv"    # Landroid/widget/ImageView;
    .param p4, "radiusDp"    # I
    .param p5, "listener"    # Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    .prologue
    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const v2, 0x7f03008c

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/videooperate/utils/ImageLoaderUtils;->wrapUrl(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 148
    .local v0, "req":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Object;>;"
    if-lez p4, :cond_1

    .line 150
    invoke-virtual {p3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_3

    .line 151
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "scale":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;

    invoke-direct {v4, p1, p4}, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;-><init>(Landroid/content/Context;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 157
    .end local v1    # "scale":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/videooperate/utils/ImageLoaderUtils$2;

    invoke-direct {v3, p3, p5, p2}, Lcom/videooperate/utils/ImageLoaderUtils$2;-><init>(Landroid/widget/ImageView;Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 174
    invoke-virtual {v2, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .end local v0    # "req":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Object;>;"
    :cond_2
    move-object v2, p2

    .line 147
    goto :goto_1

    .line 153
    .restart local v0    # "req":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Object;>;"
    :cond_3
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Landroid/content/Context;)V

    .restart local v1    # "scale":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    goto :goto_2
.end method

.method public static displayerBg(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 191
    return-void
.end method

.method public static displayerBg(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I

    .prologue
    .line 211
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 212
    return-void
.end method

.method public static displayerBg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 183
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 184
    return-void
.end method

.method public static displayerBg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I

    .prologue
    .line 204
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 205
    return-void
.end method

.method public static displayerBg(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 198
    return-void
.end method

.method public static displayerBg(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "radiusDp"    # I

    .prologue
    .line 218
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/videooperate/utils/ImageLoaderUtils;->displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V

    .line 219
    return-void
.end method

.method private static displayerBg(Lcom/bumptech/glide/RequestManager;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;)V
    .locals 5
    .param p0, "rm"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "transformCtx"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iv"    # Landroid/widget/ImageView;
    .param p4, "radiusDp"    # I
    .param p5, "listener"    # Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;

    .prologue
    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    const v2, 0x7f03008c

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/videooperate/utils/ImageLoaderUtils;->wrapUrl(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 231
    .local v0, "req":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Object;>;"
    if-lez p4, :cond_1

    .line 233
    invoke-virtual {p3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_3

    .line 234
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, "scale":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;

    invoke-direct {v4, p1, p4}, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;-><init>(Landroid/content/Context;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 240
    .end local v1    # "scale":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/videooperate/utils/ImageLoaderUtils$3;

    invoke-direct {v3, p3, p5, p2}, Lcom/videooperate/utils/ImageLoaderUtils$3;-><init>(Landroid/widget/ImageView;Lcom/videooperate/utils/ImageLoaderUtils$ImageLoadingListener;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 257
    invoke-virtual {v2, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .end local v0    # "req":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Object;>;"
    :cond_2
    move-object v2, p2

    .line 230
    goto :goto_1

    .line 236
    .restart local v0    # "req":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Object;>;"
    :cond_3
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Landroid/content/Context;)V

    .restart local v1    # "scale":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    goto :goto_2
.end method

.method private static wrapUrl(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    const-string v2, "Keep-Alive"

    const-string v3, "timeout=60"

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 265
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
