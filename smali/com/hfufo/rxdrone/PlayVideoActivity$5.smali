.class Lcom/hfufo/rxdrone/PlayVideoActivity$5;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/PlayVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 501
    if-eqz p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1100(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->finish()V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 507
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1500(Lcom/hfufo/rxdrone/PlayVideoActivity;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1700(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const v1, 0x7f080041

    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 514
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1, v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1702(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    .line 515
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/Util/FileUtil;->deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 516
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1800(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1800(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 517
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1800(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 519
    :cond_4
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->finish()V

    goto/16 :goto_0
.end method
