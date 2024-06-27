.class public Lcom/hfufo/widget/MicroTrimView;
.super Landroid/widget/LinearLayout;
.source "MicroTrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/MicroTrimView$ICallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroTrimView_TAG"


# instance fields
.field private addBtn:Landroid/widget/ImageButton;

.field private bg:Landroid/widget/ImageView;

.field private ctrlY:I

.field private iCallBack:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field private isHorizontal:Z

.field private mContext:Landroid/content/Context;

.field private mPos:I

.field private maxRange:I

.field private minRange:I

.field private pos:I

.field private position:I

.field private seekBar:Landroid/widget/SeekBar;

.field private subBtn:Landroid/widget/ImageButton;

.field private title:Ljava/lang/String;

.field private vadd:Landroid/view/View;

.field private vsub:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x7f

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->iCallBack:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 31
    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->position:I

    .line 32
    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->ctrlY:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->minRange:I

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->maxRange:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->title:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/MicroTrimView;->initView(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x7f

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->iCallBack:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 31
    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->position:I

    .line 32
    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->ctrlY:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->minRange:I

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->maxRange:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->title:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p2}, Lcom/hfufo/widget/MicroTrimView;->initValue(Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/hfufo/widget/MicroTrimView;->initView(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x7f

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->iCallBack:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 31
    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->position:I

    .line 32
    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->ctrlY:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->minRange:I

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->maxRange:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->title:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p2}, Lcom/hfufo/widget/MicroTrimView;->initValue(Landroid/util/AttributeSet;)V

    .line 45
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/MicroTrimView;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/MicroTrimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 21
    iget v0, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/widget/MicroTrimView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    return p1
.end method

.method static synthetic access$008(Lcom/hfufo/widget/MicroTrimView;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 21
    iget v0, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    return v0
.end method

.method static synthetic access$010(Lcom/hfufo/widget/MicroTrimView;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 21
    iget v0, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/widget/MicroTrimView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/hfufo/widget/MicroTrimView;->startAlarm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hfufo/widget/MicroTrimView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hfufo/widget/MicroTrimView;)Lcom/hfufo/widget/MicroTrimView$ICallBack;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->iCallBack:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    return-object v0
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 62
    iget-object v1, p0, Lcom/hfufo/widget/MicroTrimView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hfufo/rxdrone/R$styleable;->RxMicroTrim:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->maxRange:I

    .line 64
    const/16 v1, 0x80

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/MicroTrimView;->position:I

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hfufo/widget/MicroTrimView;->isHorizontal:Z

    .line 66
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u662f\u5426\u6c34\u5e73\u65b9\u5411"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hfufo/widget/MicroTrimView;->isHorizontal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7f0f024b

    .line 85
    iget-boolean v0, p0, Lcom/hfufo/widget/MicroTrimView;->isHorizontal:Z

    if-eqz v0, :cond_0

    .line 86
    const v0, 0x7f04006e

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-virtual {p0, v1}, Lcom/hfufo/widget/MicroTrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/hfufo/widget/MicroTrimView;->maxRange:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 93
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/hfufo/widget/MicroTrimView;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 95
    const v0, 0x7f0f024e

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/MicroTrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->subBtn:Landroid/widget/ImageButton;

    .line 96
    const v0, 0x7f0f024a

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/MicroTrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->addBtn:Landroid/widget/ImageButton;

    .line 97
    const v0, 0x7f0f024d

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/MicroTrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->vsub:Landroid/view/View;

    .line 98
    const v0, 0x7f0f024c

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/MicroTrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->vadd:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->vsub:Landroid/view/View;

    new-instance v1, Lcom/hfufo/widget/MicroTrimView$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MicroTrimView$1;-><init>(Lcom/hfufo/widget/MicroTrimView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->vadd:Landroid/view/View;

    new-instance v1, Lcom/hfufo/widget/MicroTrimView$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MicroTrimView$2;-><init>(Lcom/hfufo/widget/MicroTrimView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->subBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hfufo/widget/MicroTrimView$3;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MicroTrimView$3;-><init>(Lcom/hfufo/widget/MicroTrimView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->addBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hfufo/widget/MicroTrimView$4;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MicroTrimView$4;-><init>(Lcom/hfufo/widget/MicroTrimView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/hfufo/widget/MicroTrimView$5;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MicroTrimView$5;-><init>(Lcom/hfufo/widget/MicroTrimView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/hfufo/widget/MicroTrimView$6;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MicroTrimView$6;-><init>(Lcom/hfufo/widget/MicroTrimView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    return-void

    .line 89
    :cond_0
    const v0, 0x7f04006d

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    invoke-virtual {p0, v1}, Lcom/hfufo/widget/MicroTrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/VerticalSeekBar;

    iput-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    goto/16 :goto_0
.end method

.method private static startAlarm(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, "notification":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 73
    .local v1, "r":Landroid/media/Ringtone;
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private static startAlarm1(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 78
    .local v0, "notification":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 80
    .local v1, "r":Landroid/media/Ringtone;
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    return v0
.end method

.method public onClickEvent(Lcom/hfufo/widget/MicroTrimView$ICallBack;)V
    .locals 0
    .param p1, "iCallBack"    # Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView;->iCallBack:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 225
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    .line 240
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/hfufo/widget/MicroTrimView;->pos:I

    .line 219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u52a8\u4fdd\u5b58\u7684\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 221
    return-void
.end method
