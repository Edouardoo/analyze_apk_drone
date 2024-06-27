.class public Lorg/wysaid/nativePort/CGENativeLibrary;
.super Ljava/lang/Object;
.source "CGENativeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;,
        Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;,
        Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;,
        Lorg/wysaid/nativePort/CGENativeLibrary$TextureBlendMode;
    }
.end annotation


# static fields
.field static callbackArg:Ljava/lang/Object;

.field static loadImageCallback:Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lorg/wysaid/nativePort/NativeLibraryLoader;->load()V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cgeCreateBlendFilter(IIIIIF)J
.end method

.method public static native cgeCreateCustomNativeFilter(IFZ)J
.end method

.method public static native cgeCreateFilterWithConfig(Ljava/lang/String;F)J
.end method

.method public static native cgeDeleteFilterWithAddress(J)V
.end method

.method public static native cgeFilterImageWithCustomFilter(Landroid/graphics/Bitmap;IFZZ)Landroid/graphics/Bitmap;
.end method

.method public static native cgeFilterImage_MultipleEffects(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;
.end method

.method public static native cgeFilterImage_MultipleEffectsWriteBack(Landroid/graphics/Bitmap;Ljava/lang/String;F)V
.end method

.method public static native cgeGetCustomFilterNum()I
.end method

.method public static createBlendFilter(Lorg/wysaid/nativePort/CGENativeLibrary$TextureBlendMode;IIILorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;F)J
    .locals 6
    .param p0, "blendMode"    # Lorg/wysaid/nativePort/CGENativeLibrary$TextureBlendMode;
    .param p1, "texID"    # I
    .param p2, "texWidth"    # I
    .param p3, "texHeight"    # I
    .param p4, "blendFilterType"    # Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;
    .param p5, "intensity"    # F

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/wysaid/nativePort/CGENativeLibrary$TextureBlendMode;->ordinal()I

    move-result v0

    invoke-virtual {p4}, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->ordinal()I

    move-result v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/wysaid/nativePort/CGENativeLibrary;->cgeCreateBlendFilter(IIIIIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static filterImage_MultipleEffects(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "intensity"    # F

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    .end local p0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/wysaid/nativePort/CGENativeLibrary;->cgeFilterImage_MultipleEffects(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static filterImage_MultipleEffectsWriteBack(Landroid/graphics/Bitmap;Ljava/lang/String;F)V
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "intensity"    # F

    .prologue
    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0, p1, p2}, Lorg/wysaid/nativePort/CGENativeLibrary;->cgeFilterImage_MultipleEffectsWriteBack(Landroid/graphics/Bitmap;Ljava/lang/String;F)V

    .line 137
    :cond_0
    return-void
.end method

.method public static loadTextureByBitmap(Landroid/graphics/Bitmap;)Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;

    invoke-direct {v0}, Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;-><init>()V

    .line 113
    .local v0, "result":Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;
    invoke-static {p0}, Lorg/wysaid/common/Common;->genNormalTextureID(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, v0, Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;->texID:I

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;->width:I

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;->height:I

    goto :goto_0
.end method

.method public static loadTextureByFile(Ljava/lang/String;)Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/wysaid/nativePort/CGENativeLibrary;->loadTextureByBitmap(Landroid/graphics/Bitmap;)Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;

    move-result-object v1

    .line 122
    .local v1, "result":Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    return-object v1
.end method

.method public static loadTextureByName(Ljava/lang/String;)Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;
    .locals 4
    .param p0, "sourceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-object v2, Lorg/wysaid/nativePort/CGENativeLibrary;->loadImageCallback:Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;

    if-nez v2, :cond_1

    .line 88
    const-string v2, "libCGE_java"

    const-string v3, "The loading callback is not set!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-object v1

    .line 92
    :cond_1
    sget-object v2, Lorg/wysaid/nativePort/CGENativeLibrary;->loadImageCallback:Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;

    sget-object v3, Lorg/wysaid/nativePort/CGENativeLibrary;->callbackArg:Ljava/lang/Object;

    invoke-interface {v2, p0, v3}, Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;->loadImage(Ljava/lang/String;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lorg/wysaid/nativePort/CGENativeLibrary;->loadTextureByBitmap(Landroid/graphics/Bitmap;)Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;

    move-result-object v1

    .line 100
    .local v1, "result":Lorg/wysaid/nativePort/CGENativeLibrary$TextureResult;
    sget-object v2, Lorg/wysaid/nativePort/CGENativeLibrary;->loadImageCallback:Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;

    sget-object v3, Lorg/wysaid/nativePort/CGENativeLibrary;->callbackArg:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;->loadImageOK(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setLoadImageCallback(Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "callback"    # Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 76
    sput-object p0, Lorg/wysaid/nativePort/CGENativeLibrary;->loadImageCallback:Lorg/wysaid/nativePort/CGENativeLibrary$LoadImageCallback;

    .line 77
    sput-object p1, Lorg/wysaid/nativePort/CGENativeLibrary;->callbackArg:Ljava/lang/Object;

    .line 78
    return-void
.end method
