.class public Lcom/hfufo/dialog/EditDialog;
.super Landroid/app/Dialog;
.source "EditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/EditDialog$OnclickListener;
    }
.end annotation


# instance fields
.field private defaultNum:Ljava/lang/String;

.field private edit_number:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private maxLength:I

.field private maxNum:I

.field private messageStr:Ljava/lang/String;

.field private messageTv:Landroid/widget/TextView;

.field private messageVisibility:Z

.field private minNum:I

.field private no:Landroid/widget/Button;

.field private noOnclickListener:Lcom/hfufo/dialog/EditDialog$OnclickListener;

.field private noStr:Ljava/lang/String;

.field private titleStr:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;

.field private yes:Landroid/widget/Button;

.field private yesStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const v0, 0x7f0a00da

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const-string v0, "5"

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->defaultNum:Ljava/lang/String;

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/hfufo/dialog/EditDialog;->maxLength:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/hfufo/dialog/EditDialog;->maxNum:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/dialog/EditDialog;->minNum:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/dialog/EditDialog;->messageVisibility:Z

    .line 210
    new-instance v0, Lcom/hfufo/dialog/EditDialog$3;

    invoke-direct {v0, p0}, Lcom/hfufo/dialog/EditDialog$3;-><init>(Lcom/hfufo/dialog/EditDialog;)V

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 56
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/dialog/EditDialog;)Lcom/hfufo/dialog/EditDialog$OnclickListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->noOnclickListener:Lcom/hfufo/dialog/EditDialog$OnclickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hfufo/dialog/EditDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->edit_number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/dialog/EditDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->defaultNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/dialog/EditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 19
    iget v0, p0, Lcom/hfufo/dialog/EditDialog;->maxNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/hfufo/dialog/EditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 19
    iget v0, p0, Lcom/hfufo/dialog/EditDialog;->minNum:I

    return v0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->titleStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->titleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->messageStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->yesStr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->yes:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->yesStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->yes:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/dialog/EditDialog$1;

    invoke-direct {v1, p0}, Lcom/hfufo/dialog/EditDialog$1;-><init>(Lcom/hfufo/dialog/EditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->no:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/dialog/EditDialog$2;

    invoke-direct {v1, p0}, Lcom/hfufo/dialog/EditDialog$2;-><init>(Lcom/hfufo/dialog/EditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 122
    const v0, 0x7f0f01d0

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->yes:Landroid/widget/Button;

    .line 123
    const v0, 0x7f0f01cf

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->no:Landroid/widget/Button;

    .line 124
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->titleTv:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0f01cd

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0f01ce

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hfufo/dialog/EditDialog;->edit_number:Landroid/widget/EditText;

    .line 127
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->edit_number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->edit_number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->defaultNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v0, p0, Lcom/hfufo/dialog/EditDialog;->maxLength:I

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->useMaxLength(I)V

    .line 130
    iget-boolean v0, p0, Lcom/hfufo/dialog/EditDialog;->messageVisibility:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->setContentView(I)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/EditDialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-direct {p0}, Lcom/hfufo/dialog/EditDialog;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/hfufo/dialog/EditDialog;->initData()V

    .line 71
    invoke-direct {p0}, Lcom/hfufo/dialog/EditDialog;->initEvent()V

    .line 73
    return-void
.end method

.method public setDefaultNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog;->defaultNum:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/hfufo/dialog/EditDialog;->maxLength:I

    .line 179
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog;->messageStr:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setMessageVisibility(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/dialog/EditDialog;->messageVisibility:Z

    .line 158
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog;->messageTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnclickListener(Ljava/lang/String;Ljava/lang/String;Lcom/hfufo/dialog/EditDialog$OnclickListener;)V
    .locals 0
    .param p1, "strNo"    # Ljava/lang/String;
    .param p2, "strYes"    # Ljava/lang/String;
    .param p3, "onNoOnclickListener"    # Lcom/hfufo/dialog/EditDialog$OnclickListener;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog;->noStr:Ljava/lang/String;

    .line 48
    :cond_0
    if-eqz p2, :cond_1

    .line 49
    iput-object p2, p0, Lcom/hfufo/dialog/EditDialog;->yesStr:Ljava/lang/String;

    .line 51
    :cond_1
    iput-object p3, p0, Lcom/hfufo/dialog/EditDialog;->noOnclickListener:Lcom/hfufo/dialog/EditDialog$OnclickListener;

    .line 52
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 173
    iput p2, p0, Lcom/hfufo/dialog/EditDialog;->maxNum:I

    .line 174
    iput p1, p0, Lcom/hfufo/dialog/EditDialog;->minNum:I

    .line 175
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog;->titleStr:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 199
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 203
    invoke-virtual {p0}, Lcom/hfufo/dialog/EditDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 204
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    invoke-virtual {p0}, Lcom/hfufo/dialog/EditDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    invoke-virtual {p0}, Lcom/hfufo/dialog/EditDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 208
    return-void
.end method

.method public useMaxLength(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/hfufo/dialog/EditDialog;->maxLength:I

    .line 183
    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->edit_number:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 185
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog;->edit_number:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 187
    .end local v0    # "filters":[Landroid/text/InputFilter;
    :cond_0
    return-void
.end method
