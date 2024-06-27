.class public interface abstract Lorg/vudroid/core/DecodeService;
.super Ljava/lang/Object;
.source "DecodeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vudroid/core/DecodeService$DecodeCallback;
    }
.end annotation


# virtual methods
.method public abstract decodePage(Ljava/lang/Object;ILorg/vudroid/core/DecodeService$DecodeCallback;FLandroid/graphics/RectF;)V
.end method

.method public abstract getEffectivePagesHeight()I
.end method

.method public abstract getEffectivePagesWidth()I
.end method

.method public abstract getPage(I)Lorg/vudroid/core/codec/CodecPage;
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getPageHeight(I)I
.end method

.method public abstract getPageWidth(I)I
.end method

.method public abstract open(Landroid/net/Uri;)V
.end method

.method public abstract recycle()V
.end method

.method public abstract setContainerView(Landroid/view/View;)V
.end method

.method public abstract setContentResolver(Landroid/content/ContentResolver;)V
.end method

.method public abstract stopDecoding(Ljava/lang/Object;)V
.end method
