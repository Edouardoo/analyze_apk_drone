.class public Lorg/vudroid/core/VuDroidLibraryLoader;
.super Ljava/lang/Object;
.source "VuDroidLibraryLoader.java"


# static fields
.field private static alreadyLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lorg/vudroid/core/VuDroidLibraryLoader;->alreadyLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lorg/vudroid/core/VuDroidLibraryLoader;->alreadyLoaded:Z

    if-eqz v0, :cond_0

    .line 15
    :goto_0
    return-void

    .line 13
    :cond_0
    const-string v0, "vudroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lorg/vudroid/core/VuDroidLibraryLoader;->alreadyLoaded:Z

    goto :goto_0
.end method
