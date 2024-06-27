.class Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "ImageLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/utils/ImageLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlideRoundTransform"
.end annotation


# static fields
.field private static radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    sput v0, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;-><init>(Landroid/content/Context;I)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Landroid/content/Context;)V

    .line 331
    invoke-static {p2}, Lcom/videooperate/utils/UIUtils;->dp2px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;->radius:F

    .line 332
    return-void
.end method

.method private static roundCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 340
    if-nez p1, :cond_0

    move-object v5, v7

    .line 360
    :goto_0
    return-object v5

    .line 342
    :cond_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, p2, p3, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 343
    .local v5, "result":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 344
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 347
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 349
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v8, p2, v8

    div-int/lit8 v1, v8, 0x2

    .line 351
    .local v1, "left":I
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 352
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v8, p3, v8

    div-int/lit8 v6, v8, 0x2

    .line 353
    .local v6, "top":I
    if-gez v6, :cond_3

    const/4 v6, 0x0

    .line 354
    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v8, p2

    int-to-float v9, p3

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 355
    .local v4, "rectF":Landroid/graphics/RectF;
    sget v8, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;->radius:F

    sget v9, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;->radius:F

    invoke-virtual {v0, v4, v8, v9, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 356
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 357
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v3, v1, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v7, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;->radius:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 336
    invoke-static {p1, p2, p3, p4}, Lcom/videooperate/utils/ImageLoaderUtils$GlideRoundTransform;->roundCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
