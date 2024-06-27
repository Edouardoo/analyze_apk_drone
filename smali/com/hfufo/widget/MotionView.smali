.class public Lcom/hfufo/widget/MotionView;
.super Landroid/widget/RelativeLayout;
.source "MotionView.java"


# instance fields
.field Refresh:Ljava/lang/Runnable;

.field private _curValue:D

.field private _lstValue:D

.field private _motiveState:Z

.field private _oriValue:D

.field private a:I

.field private aSensor:Landroid/hardware/Sensor;

.field accelerometerValues:[F

.field private channel1:B

.field private channel2:B

.field private channel3:B

.field private channel4:B

.field private degree:I

.field private followFlag:Z

.field private geomagnetic:[F

.field private gravity:[F

.field private grayFlag:Z

.field private height:I

.field private keep6:B

.field private keep7:B

.field private last_a:I

.field private listener:Lcom/fh/listener/RudderListener;

.field lsn:Landroid/hardware/SensorEventListener;

.field private mContext:Landroid/content/Context;

.field private mGesture:Landroid/view/GestureDetector;

.field private mSensor:Landroid/hardware/Sensor;

.field magneticFieldValues:[F

.field private msgCallback:Lcom/fh/util/MsgCallback;

.field private power:I

.field private queueLen:I

.field private rockerView:Lcom/hfufo/widget/RockerView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0241
    .end annotation
.end field

.field private rockerX:I

.field private rockerY:I

.field private sensitivity_value:I

.field private sensorMgr:Landroid/hardware/SensorManager;

.field private sp:Landroid/content/SharedPreferences;

.field private speed:I

.field private step:Z

.field private thread:Ljava/lang/Thread;

.field private time:I

.field private x:F

.field private xQueue:[F

.field private x_max:F

.field private x_min:F

.field private y:F

.field private yQueue:[F

.field private y_max:F

.field private y_min:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/16 v3, 0x80

    const/16 v2, -0x80

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v5, p0, Lcom/hfufo/widget/MotionView;->mGesture:Landroid/view/GestureDetector;

    .line 42
    const/16 v0, 0x20

    iput v0, p0, Lcom/hfufo/widget/MotionView;->sensitivity_value:I

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    .line 44
    iget v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    .line 45
    iget v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    .line 49
    iput v3, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    .line 50
    iput v3, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    .line 51
    iput v3, p0, Lcom/hfufo/widget/MotionView;->height:I

    .line 52
    iput v3, p0, Lcom/hfufo/widget/MotionView;->power:I

    .line 53
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 54
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 55
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel3:B

    .line 56
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel4:B

    .line 57
    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->keep6:B

    .line 58
    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->keep7:B

    .line 60
    iput-boolean v1, p0, Lcom/hfufo/widget/MotionView;->followFlag:Z

    .line 61
    iput-boolean v1, p0, Lcom/hfufo/widget/MotionView;->grayFlag:Z

    .line 63
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->accelerometerValues:[F

    .line 64
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->magneticFieldValues:[F

    .line 69
    iput v1, p0, Lcom/hfufo/widget/MotionView;->time:I

    .line 71
    iput-object v5, p0, Lcom/hfufo/widget/MotionView;->thread:Ljava/lang/Thread;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    .line 126
    new-instance v0, Lcom/hfufo/widget/MotionView$1;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$1;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->lsn:Landroid/hardware/SensorEventListener;

    .line 266
    iput v1, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    .line 489
    new-instance v0, Lcom/hfufo/widget/MotionView$2;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$2;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->listener:Lcom/fh/listener/RudderListener;

    .line 506
    new-instance v0, Lcom/hfufo/widget/MotionView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$3;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->Refresh:Ljava/lang/Runnable;

    .line 82
    iput-object p1, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/MotionView;->initView(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/16 v3, 0x80

    const/16 v2, -0x80

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v5, p0, Lcom/hfufo/widget/MotionView;->mGesture:Landroid/view/GestureDetector;

    .line 42
    const/16 v0, 0x20

    iput v0, p0, Lcom/hfufo/widget/MotionView;->sensitivity_value:I

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    .line 44
    iget v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    .line 45
    iget v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    .line 49
    iput v3, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    .line 50
    iput v3, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    .line 51
    iput v3, p0, Lcom/hfufo/widget/MotionView;->height:I

    .line 52
    iput v3, p0, Lcom/hfufo/widget/MotionView;->power:I

    .line 53
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 54
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 55
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel3:B

    .line 56
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel4:B

    .line 57
    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->keep6:B

    .line 58
    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->keep7:B

    .line 60
    iput-boolean v1, p0, Lcom/hfufo/widget/MotionView;->followFlag:Z

    .line 61
    iput-boolean v1, p0, Lcom/hfufo/widget/MotionView;->grayFlag:Z

    .line 63
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->accelerometerValues:[F

    .line 64
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->magneticFieldValues:[F

    .line 69
    iput v1, p0, Lcom/hfufo/widget/MotionView;->time:I

    .line 71
    iput-object v5, p0, Lcom/hfufo/widget/MotionView;->thread:Ljava/lang/Thread;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    .line 126
    new-instance v0, Lcom/hfufo/widget/MotionView$1;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$1;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->lsn:Landroid/hardware/SensorEventListener;

    .line 266
    iput v1, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    .line 489
    new-instance v0, Lcom/hfufo/widget/MotionView$2;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$2;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->listener:Lcom/fh/listener/RudderListener;

    .line 506
    new-instance v0, Lcom/hfufo/widget/MotionView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$3;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->Refresh:Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/MotionView;->initView(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/16 v3, 0x80

    const/16 v2, -0x80

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v5, p0, Lcom/hfufo/widget/MotionView;->mGesture:Landroid/view/GestureDetector;

    .line 42
    const/16 v0, 0x20

    iput v0, p0, Lcom/hfufo/widget/MotionView;->sensitivity_value:I

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    .line 44
    iget v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    .line 45
    iget v0, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    .line 49
    iput v3, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    .line 50
    iput v3, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    .line 51
    iput v3, p0, Lcom/hfufo/widget/MotionView;->height:I

    .line 52
    iput v3, p0, Lcom/hfufo/widget/MotionView;->power:I

    .line 53
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 54
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 55
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel3:B

    .line 56
    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel4:B

    .line 57
    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->keep6:B

    .line 58
    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->keep7:B

    .line 60
    iput-boolean v1, p0, Lcom/hfufo/widget/MotionView;->followFlag:Z

    .line 61
    iput-boolean v1, p0, Lcom/hfufo/widget/MotionView;->grayFlag:Z

    .line 63
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->accelerometerValues:[F

    .line 64
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->magneticFieldValues:[F

    .line 69
    iput v1, p0, Lcom/hfufo/widget/MotionView;->time:I

    .line 71
    iput-object v5, p0, Lcom/hfufo/widget/MotionView;->thread:Ljava/lang/Thread;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    .line 126
    new-instance v0, Lcom/hfufo/widget/MotionView$1;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$1;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->lsn:Landroid/hardware/SensorEventListener;

    .line 266
    iput v1, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    .line 489
    new-instance v0, Lcom/hfufo/widget/MotionView$2;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$2;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->listener:Lcom/fh/listener/RudderListener;

    .line 506
    new-instance v0, Lcom/hfufo/widget/MotionView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/MotionView$3;-><init>(Lcom/hfufo/widget/MotionView;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->Refresh:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/MotionView;->initView(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/MotionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/hfufo/widget/MotionView;->followFlag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/widget/MotionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/hfufo/widget/MotionView;->grayFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/hfufo/widget/MotionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    return v0
.end method

.method static synthetic access$1002(Lcom/hfufo/widget/MotionView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    return p1
.end method

.method static synthetic access$1102(Lcom/hfufo/widget/MotionView;B)B
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # B

    .prologue
    .line 28
    iput-byte p1, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    return p1
.end method

.method static synthetic access$1202(Lcom/hfufo/widget/MotionView;B)B
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # B

    .prologue
    .line 28
    iput-byte p1, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    return p1
.end method

.method static synthetic access$1300(Lcom/hfufo/widget/MotionView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    return-void
.end method

.method static synthetic access$202(Lcom/hfufo/widget/MotionView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/hfufo/widget/MotionView;->x:F

    return p1
.end method

.method static synthetic access$300(Lcom/hfufo/widget/MotionView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/hfufo/widget/MotionView;->xAVG(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/hfufo/widget/MotionView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/hfufo/widget/MotionView;->y:F

    return p1
.end method

.method static synthetic access$500(Lcom/hfufo/widget/MotionView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/hfufo/widget/MotionView;->yAVG(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/hfufo/widget/MotionView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->drawBySensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/hfufo/widget/MotionView;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # [F

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/hfufo/widget/MotionView;->count3([F)V

    return-void
.end method

.method static synthetic access$800(Lcom/hfufo/widget/MotionView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->calculateOrientation()V

    return-void
.end method

.method static synthetic access$900(Lcom/hfufo/widget/MotionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    return v0
.end method

.method static synthetic access$902(Lcom/hfufo/widget/MotionView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MotionView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    return p1
.end method

.method private calculateOrientation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 356
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 357
    .local v1, "values":[F
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 358
    .local v0, "R":[F
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hfufo/widget/MotionView;->accelerometerValues:[F

    iget-object v4, p0, Lcom/hfufo/widget/MotionView;->magneticFieldValues:[F

    invoke-static {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 359
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 369
    aget v2, v1, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v5

    .line 370
    aget v2, v1, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/hfufo/widget/MotionView;->degree:I

    .line 371
    iget v2, p0, Lcom/hfufo/widget/MotionView;->degree:I

    const/16 v3, -0xb4

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/hfufo/widget/MotionView;->degree:I

    if-gez v2, :cond_0

    .line 372
    iget v2, p0, Lcom/hfufo/widget/MotionView;->degree:I

    add-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/hfufo/widget/MotionView;->degree:I

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 375
    return-void
.end method

.method private count([F)V
    .locals 9
    .param p1, "value"    # [F

    .prologue
    const/16 v8, 0x5f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v7, -0x80

    const/4 v6, 0x0

    .line 243
    aget v1, p1, v6

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p1, v3

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 244
    .local v0, "a":I
    iput-byte v7, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 245
    iput-byte v7, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 246
    const/16 v1, 0x69

    if-gt v0, v1, :cond_0

    if-ge v0, v8, :cond_3

    .line 247
    :cond_0
    if-ge v0, v8, :cond_1

    .line 248
    rsub-int v0, v0, 0xc8

    .line 252
    :cond_1
    rsub-int v1, v0, 0xc8

    mul-int/lit8 v1, v1, 0x5a

    div-int/lit8 v1, v1, 0x5f

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 253
    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 254
    iput-byte v6, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 257
    :cond_2
    aget v1, p1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 259
    iget-byte v1, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 264
    return-void
.end method

.method private count1([F)V
    .locals 9
    .param p1, "value"    # [F

    .prologue
    const/16 v8, 0xc8

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    aget v0, p1, v4

    aget v1, p1, v4

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    .line 273
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fol a\u7684\u503c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  va0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  va1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  va2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    const/16 v1, 0x5e

    if-gt v0, v1, :cond_1

    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fol a\u7684\u503c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  va0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  va1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  va2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    :cond_1
    iget v0, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    iget v1, p0, Lcom/hfufo/widget/MotionView;->a:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    const/16 v1, 0x69

    if-le v0, v1, :cond_a

    .line 284
    aget v0, p1, v4

    const/high16 v1, -0x3fc00000    # -3.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    aget v0, p1, v4

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 285
    :cond_2
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    rsub-int v0, v0, 0xc8

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 286
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    if-le v0, v8, :cond_3

    .line 287
    iput-byte v4, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 289
    :cond_3
    aget v0, p1, v4

    cmpl-float v0, v0, v7

    if-lez v0, :cond_4

    .line 291
    iget-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    rsub-int v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 293
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fol channel2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :cond_5
    aget v0, p1, v5

    const/high16 v1, -0x3f600000    # -5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 297
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    rsub-int v0, v0, 0xc8

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 298
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    if-le v0, v8, :cond_6

    .line 299
    iput-byte v4, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 308
    :cond_6
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fol channerl1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 310
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    iput v0, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    .line 317
    :cond_7
    :goto_1
    return-void

    .line 301
    :cond_8
    aget v0, p1, v5

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6

    .line 302
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    rsub-int v0, v0, 0xc8

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 303
    iget v0, p0, Lcom/hfufo/widget/MotionView;->a:I

    if-le v0, v8, :cond_9

    .line 304
    iput-byte v4, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 306
    :cond_9
    iget-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    rsub-int v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    goto :goto_0

    .line 311
    :cond_a
    iget v0, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    if-nez v0, :cond_7

    .line 312
    const/16 v0, -0x80

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 313
    const/16 v0, -0x80

    iput-byte v0, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 314
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    goto :goto_1
.end method

.method private count2([F)V
    .locals 7
    .param p1, "value"    # [F

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 321
    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    aget v3, p1, v4

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aget v3, p1, v5

    aget v4, p1, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    .line 325
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a\u7684\u503c\u4e3a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/widget/MotionView;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "last_a\u4e3a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    const/16 v1, 0x80

    .line 327
    .local v1, "val":I
    iget v2, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    iget v3, p0, Lcom/hfufo/widget/MotionView;->a:I

    if-ge v2, v3, :cond_6

    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    const/16 v3, 0x69

    if-le v2, v3, :cond_6

    .line 328
    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    .line 329
    const/16 v1, 0x98

    .line 332
    :cond_0
    :goto_0
    aget v2, p1, v6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 333
    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    div-int v2, v1, v2

    mul-int/lit8 v0, v2, 0x64

    .line 334
    .local v0, "c2":I
    if-gez v0, :cond_1

    .line 335
    const/4 v0, 0x0

    .line 337
    :cond_1
    int-to-byte v2, v0

    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 346
    :goto_1
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 347
    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    iput v2, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    .line 353
    .end local v0    # "c2":I
    :cond_2
    :goto_2
    return-void

    .line 330
    :cond_3
    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    const/16 v3, 0x6e

    if-le v2, v3, :cond_0

    .line 331
    const/16 v1, 0x88

    goto :goto_0

    .line 340
    :cond_4
    iget v2, p0, Lcom/hfufo/widget/MotionView;->a:I

    mul-int/2addr v2, v1

    div-int/lit8 v0, v2, 0x64

    .line 341
    .restart local v0    # "c2":I
    const/16 v2, 0xff

    if-le v0, v2, :cond_5

    .line 342
    const/16 v0, 0xff

    .line 344
    :cond_5
    int-to-byte v2, v0

    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    goto :goto_1

    .line 348
    .end local v0    # "c2":I
    :cond_6
    iget v2, p0, Lcom/hfufo/widget/MotionView;->last_a:I

    if-nez v2, :cond_2

    .line 349
    const/16 v2, -0x80

    iput-byte v2, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 350
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    goto :goto_2
.end method

.method private count3([F)V
    .locals 8
    .param p1, "values"    # [F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 166
    const-wide v0, 0x3ff999999999999aL    # 1.6

    .line 168
    .local v0, "range":D
    aget v2, p1, v7

    aget v3, p1, v6

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/hfufo/widget/MotionView;->magnitude(FFF)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    .line 174
    iget-boolean v2, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    if-ne v2, v6, :cond_0

    .line 176
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iget-wide v4, p0, Lcom/hfufo/widget/MotionView;->_lstValue:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 178
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iput-wide v2, p0, Lcom/hfufo/widget/MotionView;->_lstValue:D

    .line 201
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    if-nez v2, :cond_1

    .line 203
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iget-wide v4, p0, Lcom/hfufo/widget/MotionView;->_lstValue:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    .line 205
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iput-wide v2, p0, Lcom/hfufo/widget/MotionView;->_lstValue:D

    .line 227
    :cond_1
    :goto_1
    return-void

    .line 182
    :cond_2
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iget-wide v4, p0, Lcom/hfufo/widget/MotionView;->_lstValue:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    .line 186
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iput-wide v2, p0, Lcom/hfufo/widget/MotionView;->_oriValue:D

    .line 187
    iput-boolean v7, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    goto :goto_0

    .line 209
    :cond_3
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iget-wide v4, p0, Lcom/hfufo/widget/MotionView;->_lstValue:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    .line 219
    iget-wide v2, p0, Lcom/hfufo/widget/MotionView;->_curValue:D

    iput-wide v2, p0, Lcom/hfufo/widget/MotionView;->_oriValue:D

    .line 220
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u8ddf\u968f\u7684\u503c===================true"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    iput-boolean v6, p0, Lcom/hfufo/widget/MotionView;->_motiveState:Z

    .line 222
    iput-boolean v6, p0, Lcom/hfufo/widget/MotionView;->step:Z

    goto :goto_1
.end method

.method private drawBySensor()V
    .locals 10

    .prologue
    const-wide v8, 0x3fc999999999999aL    # 0.2

    .line 378
    iget v5, p0, Lcom/hfufo/widget/MotionView;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    iget v5, p0, Lcom/hfufo/widget/MotionView;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    .line 379
    iget v5, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 380
    iget v5, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 381
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 382
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5}, Lcom/hfufo/widget/RockerView;->setRockerBack()V

    .line 383
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5}, Lcom/hfufo/widget/RockerView;->postInvalidate()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v5, p0, Lcom/hfufo/widget/MotionView;->x:F

    iget v6, p0, Lcom/hfufo/widget/MotionView;->sensitivity_value:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerView;->getmWheelPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float v3, v5, v6

    .line 388
    .local v3, "tx":F
    iget v5, p0, Lcom/hfufo/widget/MotionView;->y:F

    iget v6, p0, Lcom/hfufo/widget/MotionView;->sensitivity_value:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerView;->getmWheelPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 391
    .local v4, "ty":F
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5}, Lcom/hfufo/widget/RockerView;->getmWheelPoint()Landroid/graphics/Point;

    move-result-object v5

    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v5, v6}, Lcom/fh/util/MathUtils;->getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    .line 392
    .local v0, "len":I
    int-to-float v5, v0

    iget-object v6, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerView;->getAttachRadius()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 393
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5, v3, v4}, Lcom/hfufo/widget/RockerView;->inCircle(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    iget v5, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 397
    iget v5, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 399
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 400
    new-instance v2, Landroid/graphics/Point;

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 402
    .local v2, "tempPoint":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5, v2}, Lcom/hfufo/widget/RockerView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 403
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5}, Lcom/hfufo/widget/RockerView;->postInvalidate()V

    goto :goto_0

    .line 405
    .end local v2    # "tempPoint":Landroid/graphics/Point;
    :cond_2
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5}, Lcom/hfufo/widget/RockerView;->getmWheelPoint()Landroid/graphics/Point;

    move-result-object v5

    new-instance v6, Landroid/graphics/Point;

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    .line 406
    invoke-virtual {v7}, Lcom/hfufo/widget/RockerView;->getWheelRadius()I

    move-result v7

    .line 405
    invoke-static {v5, v6, v7}, Lcom/fh/util/MathUtils;->getBorderPoint(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v1

    .line 408
    .local v1, "temp":Landroid/graphics/Point;
    iget v5, p0, Lcom/hfufo/widget/MotionView;->rockerX:I

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    .line 409
    iget v5, p0, Lcom/hfufo/widget/MotionView;->rockerY:I

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    .line 411
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->sendValue()V

    .line 412
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5, v1}, Lcom/hfufo/widget/RockerView;->setRockerPosition(Landroid/graphics/Point;)V

    .line 413
    iget-object v5, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    invoke-virtual {v5}, Lcom/hfufo/widget/RockerView;->postInvalidate()V

    goto/16 :goto_0
.end method

.method private initQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    aput v2, v1, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    if-ge v0, v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    aput v2, v1, v0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    :cond_1
    return-void
.end method

.method private initSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 111
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    const-string v1, "ctrlSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->sp:Landroid/content/SharedPreferences;

    .line 114
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sensitivity"

    const/16 v2, 0x20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/MotionView;->sensitivity_value:I

    .line 115
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->sensorMgr:Landroid/hardware/SensorManager;

    .line 116
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->aSensor:Landroid/hardware/Sensor;

    .line 117
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->sensorMgr:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->mSensor:Landroid/hardware/Sensor;

    .line 118
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->lsn:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->aSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 119
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->lsn:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 120
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->initQueue()V

    .line 101
    const v0, 0x7f04006a

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    invoke-static {p0}, Lcom/micro/ViewUtils;->inject(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->rockerView:Lcom/hfufo/widget/RockerView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->listener:Lcom/fh/listener/RudderListener;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 104
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->Refresh:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hfufo/widget/MotionView;->thread:Ljava/lang/Thread;

    .line 106
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    :cond_0
    return-void
.end method

.method private sendValue()V
    .locals 4

    .prologue
    .line 431
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->msgCallback:Lcom/fh/util/MsgCallback;

    if-eqz v2, :cond_0

    .line 432
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 433
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 436
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Channel1"

    iget-byte v3, p0, Lcom/hfufo/widget/MotionView;->channel1:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 437
    const-string v2, "Channel2"

    iget-byte v3, p0, Lcom/hfufo/widget/MotionView;->channel2:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 440
    const-string v2, "Keep6"

    iget-byte v3, p0, Lcom/hfufo/widget/MotionView;->keep6:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 441
    const-string v2, "step"

    iget-boolean v3, p0, Lcom/hfufo/widget/MotionView;->step:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    const-string v2, "degree"

    iget v3, p0, Lcom/hfufo/widget/MotionView;->degree:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    const v2, 0x20005

    iput v2, v1, Landroid/os/Message;->what:I

    .line 444
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 446
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->msgCallback:Lcom/fh/util/MsgCallback;

    invoke-interface {v2, v1}, Lcom/fh/util/MsgCallback;->onCallback(Landroid/os/Message;)V

    .line 447
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hfufo/widget/MotionView;->step:Z

    .line 449
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private xAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 468
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->xQueue:[F

    iget v3, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 471
    add-float/2addr v1, p1

    .line 473
    iget v2, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method private yAVG(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "t":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    if-ge v0, v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    aget v4, v4, v0

    aput v4, v2, v3

    .line 480
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/MotionView;->yQueue:[F

    iget v3, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 483
    add-float/2addr v1, p1

    .line 485
    iget v2, p0, Lcom/hfufo/widget/MotionView;->queueLen:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method


# virtual methods
.method public finishSensor()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/hfufo/widget/MotionView;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView;->lsn:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 424
    return-void
.end method

.method public magnitude(FFF)D
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 231
    const-wide/16 v0, 0x0

    .line 232
    .local v0, "magnitude":D
    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    mul-float v3, p3, p3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 233
    return-wide v0
.end method

.method public setFollowFlag(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/hfufo/widget/MotionView;->followFlag:Z

    .line 239
    return-void
.end method

.method public setGrayFlagr(Z)V
    .locals 0
    .param p1, "gray"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/hfufo/widget/MotionView;->grayFlag:Z

    .line 124
    return-void
.end method

.method public setMsgCallback(Lcom/fh/util/MsgCallback;)V
    .locals 0
    .param p1, "msgCallback"    # Lcom/fh/util/MsgCallback;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/hfufo/widget/MotionView;->msgCallback:Lcom/fh/util/MsgCallback;

    .line 428
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/hfufo/widget/MotionView;->speed:I

    .line 453
    return-void
.end method

.method public startSensor()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/hfufo/widget/MotionView;->initSensor()V

    .line 420
    return-void
.end method
