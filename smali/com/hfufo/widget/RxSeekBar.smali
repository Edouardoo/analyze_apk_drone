.class public Lcom/hfufo/widget/RxSeekBar;
.super Landroid/widget/RelativeLayout;
.source "RxSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/RxSeekBar$ICallBack;
    }
.end annotation


# instance fields
.field private addBtn:Landroid/widget/Button;

.field private iCallBack:Lcom/hfufo/widget/RxSeekBar$ICallBack;

.field private mContext:Landroid/content/Context;

.field private maxPos:I

.field private pos:I

.field private seekBar:Landroid/widget/SeekBar;

.field private subBtn:Landroid/widget/Button;

.field private title:Ljava/lang/String;

.field private titleTx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->iCallBack:Lcom/hfufo/widget/RxSeekBar$ICallBack;

    .line 26
    const/16 v0, 0x7f

    iput v0, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    .line 27
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->title:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/hfufo/widget/RxSeekBar;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/RxSeekBar;->initView(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->iCallBack:Lcom/hfufo/widget/RxSeekBar$ICallBack;

    .line 26
    const/16 v0, 0x7f

    iput v0, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    .line 27
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->title:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/hfufo/widget/RxSeekBar;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RxSeekBar;->initValue(Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/hfufo/widget/RxSeekBar;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->iCallBack:Lcom/hfufo/widget/RxSeekBar$ICallBack;

    .line 26
    const/16 v0, 0x7f

    iput v0, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    .line 27
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->title:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/hfufo/widget/RxSeekBar;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RxSeekBar;->initValue(Landroid/util/AttributeSet;)V

    .line 34
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/RxSeekBar;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/RxSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/widget/RxSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    return p1
.end method

.method static synthetic access$008(Lcom/hfufo/widget/RxSeekBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    return v0
.end method

.method static synthetic access$010(Lcom/hfufo/widget/RxSeekBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/widget/RxSeekBar;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/widget/RxSeekBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/widget/RxSeekBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->titleTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hfufo/widget/RxSeekBar;)Lcom/hfufo/widget/RxSeekBar$ICallBack;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->iCallBack:Lcom/hfufo/widget/RxSeekBar$ICallBack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/RxSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 16
    iget v0, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    return v0
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/hfufo/widget/RxSeekBar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hfufo/rxdrone/R$styleable;->RxCustomBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    .line 46
    const/4 v1, 0x1

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/RxSeekBar;->pos:I

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/widget/RxSeekBar;->title:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const v0, 0x7f040071

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->titleTx:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0f0255

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->subBtn:Landroid/widget/Button;

    .line 61
    const v0, 0x7f0f0256

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->addBtn:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0f024b

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 64
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 67
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->subBtn:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/widget/RxSeekBar$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RxSeekBar$1;-><init>(Lcom/hfufo/widget/RxSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->addBtn:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/widget/RxSeekBar$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RxSeekBar$2;-><init>(Lcom/hfufo/widget/RxSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/hfufo/widget/RxSeekBar$3;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RxSeekBar$3;-><init>(Lcom/hfufo/widget/RxSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onClickEvent(Lcom/hfufo/widget/RxSeekBar$ICallBack;)V
    .locals 0
    .param p1, "iCallBack"    # Lcom/hfufo/widget/RxSeekBar$ICallBack;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/hfufo/widget/RxSeekBar;->iCallBack:Lcom/hfufo/widget/RxSeekBar$ICallBack;

    .line 137
    return-void
.end method

.method public setPosition(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 125
    if-gez p1, :cond_0

    .line 126
    const/4 p1, 0x0

    .line 128
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    if-le p1, v0, :cond_1

    .line 129
    iget p1, p0, Lcom/hfufo/widget/RxSeekBar;->maxPos:I

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar;->titleTx:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/widget/RxSeekBar;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
