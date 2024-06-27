.class final Lcom/Util/LogUtil$1;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Util/LogUtil;->startWriteThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$systemOut:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/Util/LogUtil$1;->val$systemOut:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/Util/IOUtil;->getInstance()Lcom/Util/IOUtil;

    move-result-object v1

    invoke-static {}, Lcom/Util/LogUtil;->access$000()Lcom/Util/FileUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/Util/FileUtil;->getLogFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/Util/LogUtil$1;->val$systemOut:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/Util/IOUtil;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
