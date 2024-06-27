.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 3123
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 3126
    if-eqz p1, :cond_0

    .line 3127
    const/4 v1, 0x0

    .line 3128
    .local v1, "open":Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3410
    .end local v1    # "open":Z
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 3131
    .restart local v1    # "open":Z
    :sswitch_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3132
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    .line 3133
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$8000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 3134
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto :goto_0

    .line 3139
    :sswitch_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)V

    goto :goto_0

    .line 3142
    :sswitch_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3143
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto :goto_0

    .line 3148
    :sswitch_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto :goto_0

    .line 3151
    :sswitch_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fun_switchCamera()V

    goto :goto_0

    .line 3156
    :sswitch_5
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v3, 0x101

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto :goto_0

    .line 3160
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3168
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3169
    .local v0, "downloadPath":Ljava/lang/String;
    sput-boolean v4, Lcom/task/VideoCapture;->downloadSuccess:Z

    .line 3197
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;

    invoke-direct {v3, p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3266
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3279
    .end local v0    # "downloadPath":Ljava/lang/String;
    :sswitch_7
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->isSdcardExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3280
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 3295
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3296
    const-string v2, "aaaa"

    const-string v3, "takevideo 1"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3298
    const-string v2, "HDManualCtrlActivityTAG"

    const-string v3, "takevideo stop"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0

    .line 3286
    :pswitch_3
    const/4 v1, 0x1

    .line 3288
    :pswitch_4
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 3303
    :cond_2
    const-string v2, "HDManualCtrlActivityTAG"

    const-string v3, "takevideo start"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0

    .line 3317
    :sswitch_8
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-boolean v4, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePho:Z

    .line 3321
    const-string v2, "Taking..."

    invoke-static {v2}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 3322
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3325
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    new-instance v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$2;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;)V

    invoke-virtual {v2, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToTakePhoto(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 3336
    const-string v2, "123456"

    const-string v3, "handleMessage: tryToTakePhoto"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3338
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0

    .line 3340
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3341
    const-string v2, "HDManualCtrlActivityTAG"

    const-string v3, "error"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    const v2, 0x7f0800b6

    invoke-static {v2}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 3350
    :sswitch_9
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->finish()V

    goto/16 :goto_0

    .line 3354
    :sswitch_a
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v2

    const/16 v3, -0x80

    invoke-virtual {v2, v3}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 3355
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3356
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$3;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$3;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 3366
    :sswitch_b
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3370
    :sswitch_c
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3374
    :sswitch_d
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const-string v3, "R"

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3375
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 3376
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3377
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 3379
    :cond_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3382
    :sswitch_e
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3385
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_5

    .line 3386
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->change_fix:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 3388
    :cond_5
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->change_fix:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 3394
    :sswitch_f
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3395
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/videooperate/bean/Song;)V

    goto/16 :goto_0

    .line 3397
    :cond_6
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 3402
    :sswitch_10
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3403
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3404
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text3:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3128
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x8 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_9
        0xe -> :sswitch_3
        0x11 -> :sswitch_c
        0x12 -> :sswitch_b
        0x18 -> :sswitch_d
        0x1a -> :sswitch_2
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x1d -> :sswitch_10
        0x1e -> :sswitch_0
        0x23 -> :sswitch_a
        0x53 -> :sswitch_6
        0xa00 -> :sswitch_7
        0xa01 -> :sswitch_8
    .end sparse-switch

    .line 3160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3280
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
