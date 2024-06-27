.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/task/OnVideoCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initVideoC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 4329
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4332
    const-string v0, "dgpdgp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4334
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4387
    return-void
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4392
    const v0, 0x7f0800b6

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 4393
    return-void
.end method

.method public onSuccess([BZ)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "show"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4397
    if-eqz p2, :cond_1

    .line 4398
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4399
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 4401
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4402
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0x8

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4403
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4404
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    array-length v3, p1

    invoke-static {p1, v5, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4406
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27$1;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;)V

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4426
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 4422
    :cond_1
    const-string v2, "ggppptime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess-MergePicture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v4, v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    array-length v2, p1

    invoke-static {p1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4424
    .local v0, "bitm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
