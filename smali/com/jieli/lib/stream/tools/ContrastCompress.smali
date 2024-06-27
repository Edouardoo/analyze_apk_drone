.class public Lcom/jieli/lib/stream/tools/ContrastCompress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/jieli/lib/stream/tools/ContrastCompress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/ContrastCompress;->a:Ljava/lang/String;

    .line 11
    :try_start_0
    const-string v0, "image_proc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(IIIII)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/jieli/lib/stream/tools/ContrastCompress;->nativeInit(IIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    .line 33
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/jieli/lib/stream/tools/ContrastCompress;->a:Ljava/lang/String;

    const-string v1, "nativeInit success"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/ContrastCompress;->a:Ljava/lang/String;

    const-string v1, "nativeInit failure"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeCompressProcess(JLandroid/graphics/Bitmap;)Z
.end method

.method private native nativeInit(IIIII)J
.end method

.method private native nativeRelease(J)Z
.end method

.method private native nativeSetStrength(JI)Z
.end method

.method private native nativeUpdateLightLevel(JI)Z
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    invoke-direct {p0, v2, v3, p1}, Lcom/jieli/lib/stream/tools/ContrastCompress;->nativeCompressProcess(JLandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    invoke-direct {p0, v2, v3}, Lcom/jieli/lib/stream/tools/ContrastCompress;->nativeRelease(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setStrength(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    invoke-direct {p0, v2, v3, p1}, Lcom/jieli/lib/stream/tools/ContrastCompress;->nativeSetStrength(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateLightLevel(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/ContrastCompress;->b:J

    invoke-direct {p0, v2, v3, p1}, Lcom/jieli/lib/stream/tools/ContrastCompress;->nativeUpdateLightLevel(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method
