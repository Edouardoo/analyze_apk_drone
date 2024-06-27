.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnRealTimeListener;


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
    .line 4044
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudio(II[BJJ)V
    .locals 2
    .param p1, "t"    # I
    .param p2, "channel"    # I
    .param p3, "data"    # [B
    .param p4, "sequence"    # J
    .param p6, "timestamp"    # J

    .prologue
    .line 4277
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4278
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/task/VideoRecord;->write(I[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4279
    const-string v0, "HDManualCtrlActivityTAG"

    const-string v1, "Write audio failed"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4281
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1a

    .line 4300
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4320
    :cond_0
    :goto_0
    return-void

    .line 4303
    :cond_1
    if-nez p1, :cond_2

    .line 4304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player has a error, message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4310
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4312
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4313
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4315
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4317
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7808(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 4285
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 4288
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 4293
    :cond_0
    return-void
.end method

.method public onVideo(II[BJJ)V
    .locals 11
    .param p1, "t"    # I
    .param p2, "channel"    # I
    .param p3, "data"    # [B
    .param p4, "sequence"    # J
    .param p6, "timestamp"    # J

    .prologue
    .line 4065
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p3}, Lcom/fh/hdutil/AppUtils;->checkFrameType([B)I

    move-result v5

    const v6, 0xa1a1

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4066
    :cond_0
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4067
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x23

    const-wide/16 v8, 0x320

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4068
    array-length v5, p3

    new-array v0, v5, [B

    .line 4069
    .local v0, "arr":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p3

    invoke-static {p3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4071
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v6

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-virtual {v5, v6, v8, v9}, Lcom/fh/util/Protocol1;->setChannel4(ID)V

    .line 4073
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;

    invoke-direct {v6, p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;[B)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4086
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 4089
    .end local v0    # "arr":[B
    :cond_1
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4090
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v6

    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/hfufo/widget/IjkVideoView;->setRS(FFFF)V

    .line 4098
    :goto_0
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-wide v6, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stt:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 4099
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stt:J

    .line 4105
    :goto_1
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4106
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4107
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v6, 0x0

    array-length v7, p3

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    invoke-static {p3, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4108
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_5

    .line 4273
    :cond_2
    :goto_2
    return-void

    .line 4093
    :cond_3
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v7

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v8

    neg-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v9

    neg-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/hfufo/widget/IjkVideoView;->setRS(FFFF)V

    goto :goto_0

    .line 4102
    :cond_4
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stt:J

    goto :goto_1

    .line 4111
    :cond_5
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 4112
    .local v4, "width":I
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 4113
    .local v2, "height":I
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v6, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    int-to-float v7, v4

    const/4 v8, 0x0

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 4114
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v6, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    int-to-float v7, v2

    const/4 v8, 0x0

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 4117
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v6, Lorg/opencv/core/Mat;

    sget v7, Lorg/opencv/core/CvType;->CV_8UC4:I

    invoke-direct {v6, v2, v4, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    .line 4118
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v6, Lorg/opencv/core/Mat;

    sget v7, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v6, v2, v4, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    .line 4122
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_6
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4123
    :cond_7
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4126
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v6, 0x0

    array-length v7, p3

    iget-object v8, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    invoke-static {p3, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4176
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4178
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput p1, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->type_video:I

    .line 4179
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4180
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4181
    new-instance v3, Lcom/fh/beans/StreamInfo;

    invoke-direct {v3}, Lcom/fh/beans/StreamInfo;-><init>()V

    .line 4182
    .local v3, "info":Lcom/fh/beans/StreamInfo;
    invoke-virtual {v3, p3}, Lcom/fh/beans/StreamInfo;->setData([B)V

    .line 4183
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/fh/beans/StreamInfo;->setType(I)V

    .line 4184
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/fh/beans/StreamInfo;)V

    .line 4207
    .end local v3    # "info":Lcom/fh/beans/StreamInfo;
    :cond_9
    :goto_4
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4208
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4209
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4210
    array-length v5, p3

    new-array v0, v5, [B

    .line 4211
    .restart local v0    # "arr":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p3

    invoke-static {p3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4212
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;

    invoke-direct {v6, p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;[B)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4217
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 4130
    .end local v0    # "arr":[B
    :cond_a
    invoke-static {p3}, Lcom/fh/hdutil/AppUtils;->checkFrameType([B)I

    move-result v5

    const v6, 0xa1a1

    if-ne v5, v6, :cond_d

    .line 4131
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 4132
    sget-boolean v5, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-eqz v5, :cond_b

    .line 4133
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4134
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4136
    :try_start_0
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcDecoder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hfufo/widget/AvcDecoder;->addFrame([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4140
    :goto_5
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcDecoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/AvcDecoder;->startMediaCodec()V

    .line 4165
    :cond_b
    :goto_6
    sget-boolean v5, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-nez v5, :cond_8

    .line 4166
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4137
    :catch_0
    move-exception v1

    .line 4138
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 4143
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_c
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcDecoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/AvcDecoder;->clearFrameList()V

    .line 4145
    :try_start_1
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcDecoder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hfufo/widget/AvcDecoder;->addFrame([B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 4146
    :catch_1
    move-exception v1

    .line 4147
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 4152
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_d
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_e

    .line 4153
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 4155
    :cond_e
    sget-boolean v5, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-eqz v5, :cond_b

    .line 4156
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 4158
    :try_start_2
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcDecoder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hfufo/widget/AvcDecoder;->addFrame([B)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 4159
    :catch_2
    move-exception v1

    .line 4160
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 4187
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_f
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4220
    :cond_10
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4221
    array-length v5, p3

    new-array v0, v5, [B

    .line 4222
    .restart local v0    # "arr":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p3

    invoke-static {p3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4223
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$3;

    invoke-direct {v6, p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$3;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;[B)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4235
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2
.end method
