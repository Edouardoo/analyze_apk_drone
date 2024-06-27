.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->saveMergePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

.field final synthetic val$mBitmap1:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 4613
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-object p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->val$mBitmap1:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x0

    .line 4616
    const-string v3, "ggppptime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ebf\u7a0b-MergePicture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getQJPhotoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4619
    .local v1, "outPath_":Ljava/lang/String;
    const/4 v2, -0x1

    .line 4621
    .local v2, "s":I
    :try_start_0
    const-string v3, "ggppptime"

    const-string v4, "MergePicture-pro: "

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4622
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/opencvstitcher/OpencvStitcher;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->val$mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v1}, Lcom/opencvstitcher/OpencvStitcher;->finishStitcher(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4631
    :goto_0
    if-nez v2, :cond_0

    .line 4632
    const-string v3, "ggppptime"

    const-string v4, "MergePicture-\u62cd\u7167\u4fdd\u5b58\u6210\u529f: "

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4633
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$1;

    invoke-direct {v4, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4639
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/opencvstitcher/OpencvStitcher;

    invoke-static {}, Lcom/opencvstitcher/OpencvStitcher;->stitchImageRelease()V

    .line 4640
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4641
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput v8, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    .line 4657
    :goto_1
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4658
    return-void

    .line 4624
    :catch_0
    move-exception v0

    .line 4627
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "ggppptime"

    const-string v4, "MergePicture-\u62cd\u7167\u5408\u6210\u5931\u8d25: "

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4644
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;

    invoke-direct {v4, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4652
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/opencvstitcher/OpencvStitcher;

    invoke-static {}, Lcom/opencvstitcher/OpencvStitcher;->stitchImageRelease()V

    .line 4654
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4655
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput v8, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    goto :goto_1
.end method
