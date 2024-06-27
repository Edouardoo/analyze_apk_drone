.class public Lcom/hfufo/widget/ManualView;
.super Landroid/widget/RelativeLayout;
.source "ManualView.java"


# instance fields
.field private channel1:B

.field private channel2:B

.field private channel3:B

.field private channel4:B

.field i:I

.field private isHold:Z

.field private isMotion:Z

.field private isOnTouchL:Z

.field private isOnTouchR:Z

.field private isRight:Z

.field j:I

.field private leftPress:Landroid/view/View;

.field private leftRudder:Lcom/hfufo/widget/RockerBgView;

.field private mContext:Landroid/content/Context;

.field private motionPress:Z

.field private msgCallback:Lcom/fh/util/MsgCallback;

.field private rightPress:Landroid/view/View;

.field private rightRudder:Lcom/hfufo/widget/RockerBgView;

.field private speed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x80

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel1:B

    .line 27
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel2:B

    .line 28
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel3:B

    .line 29
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel4:B

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/hfufo/widget/ManualView;->speed:I

    .line 53
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    .line 54
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    .line 329
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->isHold:Z

    .line 59
    iput-object p1, p0, Lcom/hfufo/widget/ManualView;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/ManualView;->initView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x80

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel1:B

    .line 27
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel2:B

    .line 28
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel3:B

    .line 29
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel4:B

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/hfufo/widget/ManualView;->speed:I

    .line 53
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    .line 54
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    .line 329
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->isHold:Z

    .line 65
    iput-object p1, p0, Lcom/hfufo/widget/ManualView;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/ManualView;->initView(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x80

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel1:B

    .line 27
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel2:B

    .line 28
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel3:B

    .line 29
    iput-byte v0, p0, Lcom/hfufo/widget/ManualView;->channel4:B

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/hfufo/widget/ManualView;->speed:I

    .line 53
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    .line 54
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    .line 329
    iput-boolean v1, p0, Lcom/hfufo/widget/ManualView;->isHold:Z

    .line 71
    iput-object p1, p0, Lcom/hfufo/widget/ManualView;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/ManualView;->initView(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private LongTouchSendCmd(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x80

    .line 431
    const-string v0, "556"

    const-string v1, "\u91cd\u529bmanualview: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 434
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    goto :goto_0

    .line 440
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    .line 441
    invoke-direct {p0}, Lcom/hfufo/widget/ManualView;->resetValue()V

    .line 442
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setCtrlPoint(Landroid/graphics/Point;)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setCtrlPoint(Landroid/graphics/Point;)V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/hfufo/widget/ManualView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/hfufo/widget/ManualView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/hfufo/widget/ManualView;->LongTouchSendCmd(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/hfufo/widget/ManualView;B)B
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # B

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/hfufo/widget/ManualView;->channel1:B

    return p1
.end method

.method static synthetic access$202(Lcom/hfufo/widget/ManualView;B)B
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # B

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/hfufo/widget/ManualView;->channel2:B

    return p1
.end method

.method static synthetic access$302(Lcom/hfufo/widget/ManualView;B)B
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # B

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/hfufo/widget/ManualView;->channel3:B

    return p1
.end method

.method static synthetic access$400(Lcom/hfufo/widget/ManualView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;

    .prologue
    .line 23
    iget v0, p0, Lcom/hfufo/widget/ManualView;->speed:I

    return v0
.end method

.method static synthetic access$502(Lcom/hfufo/widget/ManualView;B)B
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # B

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/hfufo/widget/ManualView;->channel4:B

    return p1
.end method

.method static synthetic access$600(Lcom/hfufo/widget/ManualView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isHold:Z

    return v0
.end method

.method static synthetic access$700(Lcom/hfufo/widget/ManualView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/hfufo/widget/ManualView;->sendValue()V

    return-void
.end method

.method static synthetic access$802(Lcom/hfufo/widget/ManualView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/hfufo/widget/ManualView;->isOnTouchL:Z

    return p1
.end method

.method static synthetic access$902(Lcom/hfufo/widget/ManualView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/ManualView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/hfufo/widget/ManualView;->isOnTouchR:Z

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const v0, 0x7f040068

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-static {p0}, Lcom/micro/ViewUtils;->inject(Landroid/view/View;)V

    .line 81
    const v0, 0x7f0f0237

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/ManualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/ManualView;->leftPress:Landroid/view/View;

    .line 82
    const v0, 0x7f0f0238

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/ManualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/ManualView;->rightPress:Landroid/view/View;

    .line 83
    const v0, 0x7f0f0235

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/ManualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RockerBgView;

    iput-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    .line 84
    const v0, 0x7f0f0236

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/ManualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RockerBgView;

    iput-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    .line 85
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Lcom/hfufo/widget/ManualView$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/ManualView$1;-><init>(Lcom/hfufo/widget/ManualView;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 162
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Lcom/hfufo/widget/ManualView$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/ManualView$2;-><init>(Lcom/hfufo/widget/ManualView;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 218
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftPress:Landroid/view/View;

    new-instance v1, Lcom/hfufo/widget/ManualView$3;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/ManualView$3;-><init>(Lcom/hfufo/widget/ManualView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightPress:Landroid/view/View;

    new-instance v1, Lcom/hfufo/widget/ManualView$4;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/ManualView$4;-><init>(Lcom/hfufo/widget/ManualView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    return-void
.end method

.method private resetValue()V
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->msgCallback:Lcom/fh/util/MsgCallback;

    if-eqz v2, :cond_0

    .line 291
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 292
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "bundle":Landroid/os/Bundle;
    const v2, 0x20006

    iput v2, v1, Landroid/os/Message;->what:I

    .line 294
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 295
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->msgCallback:Lcom/fh/util/MsgCallback;

    invoke-interface {v2, v1}, Lcom/fh/util/MsgCallback;->onReset(Landroid/os/Message;)V

    .line 297
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendValue()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->msgCallback:Lcom/fh/util/MsgCallback;

    if-eqz v2, :cond_0

    .line 271
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 272
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Channel1"

    iget-byte v3, p0, Lcom/hfufo/widget/ManualView;->channel1:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 274
    const-string v2, "Channel2"

    iget-byte v3, p0, Lcom/hfufo/widget/ManualView;->channel2:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 275
    const-string v2, "Channel3"

    iget-byte v3, p0, Lcom/hfufo/widget/ManualView;->channel3:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 276
    const-string v2, "Channel4"

    iget-byte v3, p0, Lcom/hfufo/widget/ManualView;->channel4:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 280
    const v2, 0x20006

    iput v2, v1, Landroid/os/Message;->what:I

    .line 281
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 282
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->msgCallback:Lcom/fh/util/MsgCallback;

    invoke-interface {v2, v1}, Lcom/fh/util/MsgCallback;->onCallback(Landroid/os/Message;)V

    .line 284
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLeftMotionReady()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getMotionReady()Z

    move-result v0

    return v0
.end method

.method public getRightMotionReady()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getMotionReady()Z

    move-result v0

    return v0
.end method

.method public getRightState()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRockerState()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnTouch()Z
    .locals 3

    .prologue
    .line 455
    const-string v0, "manualview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnTouchL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hfufo/widget/ManualView;->isOnTouchL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,isOnTouchR =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hfufo/widget/ManualView;->isOnTouchR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isOnTouchL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isOnTouchR:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 242
    if-eqz p1, :cond_0

    .line 256
    :cond_0
    return-void
.end method

.method public setDrawLineEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setDrawLineEnable(Z)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setDrawLineEnable(Z)V

    goto :goto_0
.end method

.method public setHold(Z)V
    .locals 1
    .param p1, "hold"    # Z

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setHold(Z)V

    .line 336
    :goto_0
    iput-boolean p1, p0, Lcom/hfufo/widget/ManualView;->isHold:Z

    .line 337
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setHold(Z)V

    goto :goto_0
.end method

.method public setLeftRudderPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    if-eqz v0, :cond_1

    .line 365
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setCtrlPoint(Landroid/graphics/Point;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setCtrlPoint(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public setMotion(Z)V
    .locals 4
    .param p1, "ismotion"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 393
    iput-boolean p1, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    .line 394
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/RockerBgView;->setBackground(Z)V

    .line 396
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setBackground(Z)V

    .line 401
    :goto_0
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    if-eqz v0, :cond_2

    .line 402
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftPress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightPress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_1
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/RockerBgView;->setBackground(Z)V

    .line 399
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setBackground(Z)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightPress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftPress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftPress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightPress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMsgCallback(Lcom/fh/util/MsgCallback;)V
    .locals 0
    .param p1, "msgCallback"    # Lcom/fh/util/MsgCallback;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/hfufo/widget/ManualView;->msgCallback:Lcom/fh/util/MsgCallback;

    .line 261
    return-void
.end method

.method public setPosi()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->setPosi()V

    .line 427
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->setPosi()V

    .line 428
    return-void
.end method

.method public setRight(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    .line 265
    return-void
.end method

.method public setRightRoker(Z)V
    .locals 3
    .param p1, "isVisibity"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    iget-boolean v2, p0, Lcom/hfufo/widget/ManualView;->isRight:Z

    if-eqz v2, :cond_3

    .line 309
    if-nez p1, :cond_1

    .line 310
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/hfufo/widget/RockerBgView;->setWheelVisib(Z)V

    .line 311
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setPathViwVisib(Z)V

    .line 327
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 310
    goto :goto_0

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/hfufo/widget/RockerBgView;->setWheelVisib(Z)V

    .line 314
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setPathViwVisib(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 313
    goto :goto_2

    .line 318
    :cond_3
    if-nez p1, :cond_5

    .line 319
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Lcom/hfufo/widget/RockerBgView;->setWheelVisib(Z)V

    .line 320
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setPathViwVisib(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 319
    goto :goto_3

    .line 322
    :cond_5
    iget-object v2, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    if-nez p1, :cond_6

    :goto_4
    invoke-virtual {v2, v0}, Lcom/hfufo/widget/RockerBgView;->setWheelVisib(Z)V

    .line 323
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setPathViwVisib(Z)V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 322
    goto :goto_4
.end method

.method public setRightRudderPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->isMotion:Z

    if-eqz v0, :cond_1

    .line 353
    iget-boolean v0, p0, Lcom/hfufo/widget/ManualView;->motionPress:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setCtrlPoint(Landroid/graphics/Point;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setCtrlPoint(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public setSpeed(I)V
    .locals 1
    .param p1, "speed"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/hfufo/widget/ManualView;->speed:I

    .line 342
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->leftRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 343
    iget-object v0, p0, Lcom/hfufo/widget/ManualView;->rightRudder:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 344
    return-void
.end method
