.class public Lorg/vudroid/pdfdroid/codec/PdfContext;
.super Ljava/lang/Object;
.source "PdfContext.java"

# interfaces
.implements Lorg/vudroid/core/codec/CodecContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lorg/vudroid/core/VuDroidLibraryLoader;->load()V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openDocument(Ljava/lang/String;)Lorg/vudroid/core/codec/CodecDocument;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, ""

    invoke-static {p1, v0}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->openDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/vudroid/pdfdroid/codec/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 24
    return-void
.end method
