.class Lcom/hfufo/rxdrone/ManualCtrlActivity$24;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/util/MsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionViewInit()V
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
    .line 3316
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3319
    iget v8, p1, Landroid/os/Message;->what:I

    const v9, 0x20005

    if-ne v8, v9, :cond_7

    .line 3320
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3321
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "Channel1"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v6, v8, 0xff

    .line 3322
    .local v6, "x":I
    const-string v8, "Channel2"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    rsub-int v8, v8, 0xff

    and-int/lit16 v7, v8, 0xff

    .line 3323
    .local v7, "y":I
    const/16 v4, 0x80

    .line 3324
    .local v4, "vx":I
    const/16 v5, 0x80

    .line 3325
    .local v5, "vy":I
    const-string v8, "degreeCurrent"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3326
    .local v1, "degree":I
    const-string v8, "step"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3329
    .local v3, "step":Z
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/fh/util/Protocol1;->setData(I)V

    .line 3330
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setData(I)V

    .line 3331
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hfufo/widget/ManualView;->getRightState()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3332
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v4

    .line 3333
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v7, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v5

    .line 3336
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3337
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3338
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    int-to-byte v9, v4

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 3339
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    int-to-byte v9, v5

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 3341
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;

    move-result-object v8

    new-instance v9, Landroid/graphics/Point;

    rsub-int v10, v7, 0xff

    invoke-direct {v9, v6, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 3356
    :cond_0
    :goto_0
    const-string v8, "PreviewActivityTAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "motionView,x: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",vx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",vy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v3, :cond_1

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hfufo/widget/ManualView;->getRightState()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3359
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    const/16 v9, -0x80

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 3362
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v9, v8, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mStep:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mStep:I

    .line 3363
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v8, v8, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mStep:I

    const/16 v9, 0x46

    if-ne v8, v9, :cond_1

    .line 3364
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v9, 0x0

    iput v9, v8, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mStep:I

    .line 3365
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    const/16 v9, -0x80

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 3367
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "\u8ddf\u968f\u4e2d\u503c"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3372
    :cond_1
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 3373
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v9, 0x0

    iput v9, v8, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mStep:I

    .line 3374
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8ddf\u968f\u7684\u503c==================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3377
    const/16 v8, 0xbe

    if-le v7, v8, :cond_3

    const/16 v8, 0xff

    if-gt v7, v8, :cond_3

    .line 3378
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    const/16 v9, -0x38

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 3395
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v8, 0x8c

    if-ge v2, v8, :cond_7

    .line 3396
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "\u8ddf\u968f\u5faa\u73af"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3397
    sget-boolean v8, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-eqz v8, :cond_6

    .line 3398
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "0139"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v13}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v13

    invoke-static {v13}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3395
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3347
    .end local v2    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3348
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    int-to-byte v9, v4

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 3349
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    int-to-byte v9, v5

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 3351
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;

    move-result-object v8

    new-instance v9, Landroid/graphics/Point;

    rsub-int v10, v7, 0xff

    invoke-direct {v9, v6, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 3381
    :cond_3
    const/16 v8, 0xaa

    if-le v7, v8, :cond_4

    const/16 v8, 0xbe

    if-gt v7, v8, :cond_4

    .line 3382
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    const/16 v9, -0x56

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 3385
    :cond_4
    if-ltz v7, :cond_5

    const/16 v8, 0x32

    if-gt v7, v8, :cond_5

    .line 3386
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto/16 :goto_1

    .line 3390
    :cond_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+++\u8ddf\u968f\u7684\u503c==================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3391
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v8

    const/16 v9, -0x80

    invoke-virtual {v8, v9}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto/16 :goto_1

    .line 3400
    .restart local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "0139"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v13}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v13

    invoke-static {v13}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3410
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "degree":I
    .end local v2    # "i":I
    .end local v3    # "step":Z
    .end local v4    # "vx":I
    .end local v5    # "vy":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    return-void
.end method

.method public onReset(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3415
    return-void
.end method
