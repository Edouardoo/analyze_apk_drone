.class public interface abstract Lcom/joanzapata/pdfview/util/Constants$Cache;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cache"
.end annotation


# static fields
.field public static final CACHE_SIZE:I

.field public static final THUMBNAILS_CACHE_SIZE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/joanzapata/pdfview/util/Constants$Cache;->CACHE_SIZE:I

    return-void
.end method
