.class Lcom/fh/hdutil/AppUtils$HiddenFilter;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/hdutil/AppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HiddenFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 2121
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
