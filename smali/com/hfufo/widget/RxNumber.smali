.class public Lcom/hfufo/widget/RxNumber;
.super Landroid/widget/LinearLayout;
.source "RxNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/RxNumber$ICallBack;
    }
.end annotation


# instance fields
.field private addBtn:Landroid/widget/Button;

.field private currValue:I

.field private iCallBack:Lcom/hfufo/widget/RxNumber$ICallBack;

.field private mContext:Landroid/content/Context;

.field private maxValue:I

.field private numberET:Landroid/widget/EditText;

.field private subBtn:Landroid/widget/Button;

.field private title:Ljava/lang/String;

.field private titleTx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->iCallBack:Lcom/hfufo/widget/RxNumber$ICallBack;

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->title:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/RxNumber;->initView(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->iCallBack:Lcom/hfufo/widget/RxNumber$ICallBack;

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->title:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RxNumber;->initValue(Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/hfufo/widget/RxNumber;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->iCallBack:Lcom/hfufo/widget/RxNumber$ICallBack;

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->title:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p2}, Lcom/hfufo/widget/RxNumber;->initValue(Landroid/util/AttributeSet;)V

    .line 38
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hfufo/widget/RxNumber;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/RxNumber;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/widget/RxNumber;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    return p1
.end method

.method static synthetic access$008(Lcom/hfufo/widget/RxNumber;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    return v0
.end method

.method static synthetic access$010(Lcom/hfufo/widget/RxNumber;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/widget/RxNumber;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->numberET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->iCallBack:Lcom/hfufo/widget/RxNumber$ICallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/widget/RxNumber;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget v0, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/hfufo/widget/RxNumber;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/RxNumber;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->titleTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hfufo/widget/RxNumber;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initValue(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/hfufo/widget/RxNumber;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hfufo/rxdrone/R$styleable;->RxNumber:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    .line 50
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/widget/RxNumber;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const v0, 0x7f04006f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->titleTx:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f024e

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->subBtn:Landroid/widget/Button;

    .line 65
    const v0, 0x7f0f024a

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->addBtn:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0f0250

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/RxNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hfufo/widget/RxNumber;->numberET:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->subBtn:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/widget/RxNumber$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RxNumber$1;-><init>(Lcom/hfufo/widget/RxNumber;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->addBtn:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/widget/RxNumber$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RxNumber$2;-><init>(Lcom/hfufo/widget/RxNumber;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->numberET:Landroid/widget/EditText;

    new-instance v1, Lcom/hfufo/widget/RxNumber$3;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RxNumber$3;-><init>(Lcom/hfufo/widget/RxNumber;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getCurrValue()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    return v0
.end method

.method public onClickEvent(Lcom/hfufo/widget/RxNumber$ICallBack;)V
    .locals 0
    .param p1, "iCallBack"    # Lcom/hfufo/widget/RxNumber$ICallBack;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber;->iCallBack:Lcom/hfufo/widget/RxNumber$ICallBack;

    .line 150
    return-void
.end method

.method public setCurrValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 138
    if-gez p1, :cond_0

    .line 139
    const/4 p1, 0x0

    .line 141
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    if-le p1, v0, :cond_1

    .line 142
    iget p1, p0, Lcom/hfufo/widget/RxNumber;->maxValue:I

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber;->numberET:Landroid/widget/EditText;

    iget v1, p0, Lcom/hfufo/widget/RxNumber;->currValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
