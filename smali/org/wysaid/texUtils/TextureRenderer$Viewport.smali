.class public Lorg/wysaid/texUtils/TextureRenderer$Viewport;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wysaid/texUtils/TextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewport"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_width"    # I
    .param p4, "_height"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    .line 49
    iput p2, p0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    .line 50
    iput p3, p0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    .line 51
    iput p4, p0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    .line 52
    return-void
.end method
