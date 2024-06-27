.class Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$34;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iput-object p2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4800
    .local v1, "outPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4801
    const-string v3, "PreviewActivityTAG"

    const-string v4, "Record dir is null"

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4830
    :cond_0
    :goto_0
    return-void

    .line 4804
    :cond_1
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4806
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4807
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JPG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/fh/util/TimeFormater;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4809
    .local v2, "savePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/fh/hdutil/BitmapUtil;->getBitmapSizeByC(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/fh/hdutil/BitmapUtil;->bitmap2bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 4810
    .local v0, "bitmapData":[B
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/fh/util/BufChangeHex;->byte2File([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4812
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v4, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;

    invoke-direct {v4, p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4828
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "image/jpeg"

    invoke-static {v3, v4, v5}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
