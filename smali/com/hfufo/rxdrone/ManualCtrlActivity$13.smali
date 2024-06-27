.class Lcom/hfufo/rxdrone/ManualCtrlActivity$13;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudio([B)V
    .locals 3
    .param p1, "audioData"    # [B

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    const/4 v1, 0x1

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/jieli/lib/stream/tools/AVIStreamer;->addData(I[BI)Z

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2153
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView;->writeAudioData([B)V

    .line 2157
    :cond_1
    return-void
.end method

.method public onPhoto([B)V
    .locals 2
    .param p1, "photoData"    # [B

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8602(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2167
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView;->drawThumbnail([B)V

    .line 2169
    :cond_1
    return-void
.end method

.method public onVideo([BII)V
    .locals 16
    .param p1, "videoData"    # [B
    .param p2, "resolutionType"    # I
    .param p3, "rtsChannel"    # I

    .prologue
    .line 1904
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1906
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1907
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1908
    .local v3, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1909
    .local v7, "point":Landroid/graphics/Point;
    invoke-virtual {v3, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_1

    .line 2140
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "point":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 1913
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v7    # "point":Landroid/graphics/Point;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1914
    .local v10, "width":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1915
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v11, v11, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget v11, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    sput v11, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    .line 1916
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v11, v11, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget v11, v7, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    sput v11, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    .line 1917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v12, v7, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    int-to-float v13, v10

    const/4 v14, 0x0

    add-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7302(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 1918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v12, v7, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    int-to-float v13, v4

    const/4 v14, 0x0

    add-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7402(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 1919
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v12, v12, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7502(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 1921
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v12, v7, Landroid/graphics/Point;->x:I

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0xd

    int-to-float v12, v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7602(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 1922
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v12, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v12, v12, 0xa

    int-to-float v12, v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7702(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 1923
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v12, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7802(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 1925
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v12, Lorg/opencv/core/Mat;

    sget v13, Lorg/opencv/core/CvType;->CV_8UC4:I

    invoke-direct {v12, v4, v10, v13}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    .line 1926
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v12, Lorg/opencv/core/Mat;

    sget v13, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v12, v4, v10, v13}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    .line 1927
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v12

    invoke-virtual {v11, v10, v4, v12}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1930
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "height":I
    .end local v7    # "point":Landroid/graphics/Point;
    .end local v10    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1931
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1933
    .local v8, "start":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v12

    mul-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x2

    new-array v6, v11, [B

    .line 1934
    .local v6, "nv12":[B
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v13}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v13}, Lcom/libyuv/util/YuvUtil;->ARGBToNV12([B[BIII)V

    .line 1935
    const-string v11, "yuv\u8017\u65f6\u6d4b\u8bd5"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onVideo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    .end local v6    # "nv12":[B
    .end local v8    # "start":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1939
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x23

    const-wide/16 v14, 0x3e8

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1940
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {v11, v12}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 1941
    move-object/from16 v0, p1

    array-length v11, v0

    new-array v2, v11, [B

    .line 1942
    .local v2, "arr":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v12, 0x0

    array-length v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    invoke-static {v2, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1944
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8300(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)V

    .line 1948
    .end local v2    # "arr":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1949
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1972
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1973
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8602(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1974
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$13;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1985
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1987
    move-object/from16 v0, p1

    array-length v11, v0

    new-array v2, v11, [B

    .line 1988
    .restart local v2    # "arr":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1990
    new-instance v5, Lcom/fh/beans/StreamInfo;

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v13}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v13

    invoke-direct {v5, v11, v12, v13, v2}, Lcom/fh/beans/StreamInfo;-><init>(III[B)V

    .line 1991
    .local v5, "info":Lcom/fh/beans/StreamInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11, v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6900(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/fh/beans/StreamInfo;)V

    .line 2071
    .end local v2    # "arr":[B
    .end local v5    # "info":Lcom/fh/beans/StreamInfo;
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_a

    .line 2072
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2076
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2077
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    goto/16 :goto_0

    .line 1994
    .restart local v2    # "arr":[B
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v11

    if-eqz v11, :cond_8

    if-eqz p1, :cond_8

    .line 1997
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v11

    const/4 v12, 0x2

    array-length v13, v2

    invoke-virtual {v11, v12, v2, v13}, Lcom/jieli/lib/stream/tools/AVIStreamer;->addData(I[BI)Z

    goto :goto_1

    .line 2084
    .end local v2    # "arr":[B
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$13;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2095
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2096
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    goto/16 :goto_0

    .line 2101
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$3;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$13;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2113
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    goto/16 :goto_0

    .line 2122
    :cond_a
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2123
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 2125
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2126
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    goto/16 :goto_0

    .line 2131
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2132
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/hfufo/widget/MjpegView;->drawBitmap([BZ)V

    goto/16 :goto_0

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2123
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
