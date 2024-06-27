.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
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
    .line 3931
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 3934
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3935
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 3936
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3937
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3938
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3939
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    .line 3940
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3941
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3942
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3944
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3945
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3946
    const-string v0, "tteesstt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBufList0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    new-instance v13, Lorg/opencv/core/Mat;

    invoke-direct {v13}, Lorg/opencv/core/Mat;-><init>()V

    .line 3948
    .local v13, "rgbMat":Lorg/opencv/core/Mat;
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 3949
    .local v12, "data":[B
    array-length v0, v12

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v12, v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 3950
    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Paint;

    move-result-object v9

    move v4, v3

    move v6, v5

    move v10, v7

    .line 3949
    invoke-static/range {v0 .. v10}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 3951
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v11, v13}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 3952
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 3953
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 3954
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 3957
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "data":[B
    .end local v13    # "rgbMat":Lorg/opencv/core/Mat;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3958
    const-string v0, "tteesstt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBufList1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    new-instance v13, Lorg/opencv/core/Mat;

    invoke-direct {v13}, Lorg/opencv/core/Mat;-><init>()V

    .line 3960
    .restart local v13    # "rgbMat":Lorg/opencv/core/Mat;
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 3961
    .restart local v12    # "data":[B
    array-length v0, v12

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v12, v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 3962
    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Paint;

    move-result-object v9

    move v4, v3

    move v6, v5

    move v10, v7

    .line 3961
    invoke-static/range {v0 .. v10}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 3963
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v11, v13}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 3964
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 3965
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 3966
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 3968
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "data":[B
    .end local v13    # "rgbMat":Lorg/opencv/core/Mat;
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 3972
    :cond_3
    return-void
.end method
