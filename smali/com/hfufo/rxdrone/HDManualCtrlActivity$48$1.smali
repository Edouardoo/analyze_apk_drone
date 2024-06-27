.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->onBuffer(Ljava/nio/IntBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

.field final synthetic val$buffer:Ljava/nio/IntBuffer;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;Ljava/nio/IntBuffer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    .prologue
    .line 7042
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iput-object p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->val$buffer:Ljava/nio/IntBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 7046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 7048
    .local v10, "outPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1, v10}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7050
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7051
    .local v0, "bimp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->val$buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 7052
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->val$buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 7055
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7056
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v4, v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 7057
    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v6, v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v6

    .line 7056
    invoke-static/range {v0 .. v8}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 7064
    .local v9, "dscDataBmp":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v2, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x43800000    # 256.0f

    const/high16 v4, 0x43100000    # 144.0f

    invoke-static {v2, v3, v4}, Lcom/fh/hdutil/BitmapUtil;->getBitmapSizeByC(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 7065
    const/16 v1, 0x58

    invoke-static {v9, v10, v1}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v11

    .line 7066
    .local v11, "result":Z
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;)V

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7081
    if-eqz v11, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7082
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 7084
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7085
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "image/jpeg"

    invoke-static {v1, v2, v3}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 7086
    return-void

    .line 7059
    .end local v9    # "dscDataBmp":Landroid/graphics/Bitmap;
    .end local v11    # "result":Z
    :cond_1
    const/16 v1, 0x500

    const/16 v2, 0x2d0

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v4, v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 7060
    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v6, v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v6

    .line 7059
    invoke-static/range {v0 .. v8}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9    # "dscDataBmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
