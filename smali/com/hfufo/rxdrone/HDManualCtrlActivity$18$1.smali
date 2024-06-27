.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

.field final synthetic val$downloadPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    .prologue
    .line 3197
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iput-object p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 3201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8108(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    .line 3202
    const-string v2, "dl"

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3203
    .local v11, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3204
    .local v16, "outPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->val$downloadPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3214
    .local v1, "downloadBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v4, v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    neg-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    neg-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v6, v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 3217
    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3216
    invoke-static/range {v1 .. v9}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3225
    .local v10, "dscDataBmp":Landroid/graphics/Bitmap;
    :goto_0
    const/16 v2, 0x58

    move-object/from16 v0, v16

    invoke-static {v10, v0, v2}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3227
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3228
    .local v15, "oldMpegFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    move-result v13

    .line 3230
    .local v13, "flag":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/Util/FileUtil;->deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3235
    .end local v13    # "flag":Z
    .end local v15    # "oldMpegFile":Ljava/io/File;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3236
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3237
    .local v14, "oldMediaFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    move-result v13

    .line 3239
    .restart local v13    # "flag":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/Util/FileUtil;->deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3244
    .end local v13    # "flag":Z
    .end local v14    # "oldMediaFile":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8110(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    .line 3245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 3247
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3253
    .local v12, "fileSave":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const-string v3, "image/jpeg"

    invoke-static {v2, v12, v3}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->val$downloadPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    .line 3258
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3259
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3260
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3261
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 3265
    :cond_3
    return-void

    .line 3220
    .end local v10    # "dscDataBmp":Landroid/graphics/Bitmap;
    .end local v12    # "fileSave":Ljava/io/File;
    :cond_4
    const/16 v2, 0x500

    const/16 v3, 0x2d0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v4, v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    neg-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v5

    neg-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v6, v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 3221
    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3220
    invoke-static/range {v1 .. v9}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .restart local v10    # "dscDataBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method
