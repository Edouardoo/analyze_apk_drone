.class Lcom/hfufo/dialog/RxAlbumDialog$13;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog;->init_record_view()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/RxAlbumDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$13;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$13;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$13;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v3}, Lcom/hfufo/dialog/RxAlbumDialog;->access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 495
    .local v2, "item":Lcom/hfufo/bean/FileInfo;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "file":Ljava/io/File;
    iget-boolean v3, v2, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$13;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    const-string v4, "video/*"

    invoke-static {v3, v0, v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2100(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/io/File;Ljava/lang/String;)V

    .line 493
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "item":Lcom/hfufo/bean/FileInfo;
    :cond_1
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog$13;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hfufo/dialog/RxAlbumDialog;->access$2202(Lcom/hfufo/dialog/RxAlbumDialog;Z)Z

    .line 504
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5206\u4eab\u7684\u89c6\u9891\u7684\u8def\u5f84"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/dialog/RxAlbumDialog$13;->this$0:Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-static {v5}, Lcom/hfufo/dialog/RxAlbumDialog;->access$1000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 507
    return-void
.end method
