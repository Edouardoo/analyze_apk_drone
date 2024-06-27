.class public Lcom/hfufo/dialog/RenderDialog;
.super Landroid/app/Dialog;
.source "RenderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/RenderDialog$FilterCallback;
    }
.end annotation


# instance fields
.field private filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

.field private filterNumber:I

.field i:I

.field private inflater:Landroid/view/LayoutInflater;

.field private m_context:Landroid/app/Activity;

.field private renderRadioGroup:Landroid/widget/RadioGroup;

.field private splitNumber:I

.field private splitRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/hfufo/dialog/RenderDialog$FilterCallback;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "filterNum"    # I
    .param p3, "splitNum"    # I
    .param p4, "callback"    # Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    .prologue
    const/4 v9, 0x0

    .line 26
    const v6, 0x7f0a00d9

    invoke-direct {p0, p1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 157
    iput v9, p0, Lcom/hfufo/dialog/RenderDialog;->filterNumber:I

    .line 259
    iput v9, p0, Lcom/hfufo/dialog/RenderDialog;->i:I

    .line 28
    const-string v6, ""

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    iput-object p1, p0, Lcom/hfufo/dialog/RenderDialog;->m_context:Landroid/app/Activity;

    .line 30
    iget-object v6, p0, Lcom/hfufo/dialog/RenderDialog;->m_context:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/hfufo/dialog/RenderDialog;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iget-object v6, p0, Lcom/hfufo/dialog/RenderDialog;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04005c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 32
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RenderDialog;->setContentView(Landroid/view/View;)V

    .line 34
    iput-object p4, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    .line 35
    iput p2, p0, Lcom/hfufo/dialog/RenderDialog;->filterNumber:I

    .line 36
    iput p3, p0, Lcom/hfufo/dialog/RenderDialog;->splitNumber:I

    .line 38
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 39
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 40
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 41
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    .local v4, "windowWidth":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .local v3, "windowHeight":I
    invoke-virtual {p0}, Lcom/hfufo/dialog/RenderDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 46
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x50

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    int-to-double v6, v3

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 53
    invoke-virtual {p0}, Lcom/hfufo/dialog/RenderDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    invoke-direct {p0}, Lcom/hfufo/dialog/RenderDialog;->initSplitView()V

    .line 55
    invoke-direct {p0}, Lcom/hfufo/dialog/RenderDialog;->initRenderView()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RenderDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    return-object v0
.end method

.method private initRenderView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 159
    const v8, 0x7f0f0221

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioGroup;

    iput-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->renderRadioGroup:Landroid/widget/RadioGroup;

    .line 161
    const v8, 0x7f0f0222

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 162
    .local v3, "renderOne":Landroid/widget/RadioButton;
    const v8, 0x7f0f0223

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 163
    .local v7, "renderTwo":Landroid/widget/RadioButton;
    const v8, 0x7f0f0224

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 164
    .local v6, "renderThree":Landroid/widget/RadioButton;
    const v8, 0x7f0f0225

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 165
    .local v2, "renderFour":Landroid/widget/RadioButton;
    const v8, 0x7f0f0226

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 166
    .local v1, "renderFive":Landroid/widget/RadioButton;
    const v8, 0x7f0f0227

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 167
    .local v5, "renderSix":Landroid/widget/RadioButton;
    const v8, 0x7f0f0228

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 168
    .local v4, "renderSeven":Landroid/widget/RadioButton;
    const v8, 0x7f0f0229

    invoke-virtual {p0, v8}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 169
    .local v0, "renderEight":Landroid/widget/RadioButton;
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 170
    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 171
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 172
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 173
    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 174
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 175
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 176
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    iget v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterNumber:I

    packed-switch v8, :pswitch_data_0

    .line 214
    :goto_0
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->renderRadioGroup:Landroid/widget/RadioGroup;

    new-instance v9, Lcom/hfufo/dialog/RenderDialog$2;

    invoke-direct {v9, p0}, Lcom/hfufo/dialog/RenderDialog$2;-><init>(Lcom/hfufo/dialog/RenderDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 257
    return-void

    .line 179
    :pswitch_0
    invoke-virtual {v3, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {v7, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 184
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    invoke-interface {v8, v10}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 188
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 191
    :pswitch_3
    invoke-virtual {v2, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 192
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 195
    :pswitch_4
    invoke-virtual {v1, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 196
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 199
    :pswitch_5
    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 200
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 203
    :pswitch_6
    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 204
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 207
    :pswitch_7
    invoke-virtual {v0, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 208
    iget-object v8, p0, Lcom/hfufo/dialog/RenderDialog;->filterCallback:Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onFilteSuccess(I)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initSplitView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    const v6, 0x7f0f021a

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/hfufo/dialog/RenderDialog;->splitRadioGroup:Landroid/widget/RadioGroup;

    .line 70
    const v6, 0x7f0f021b

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 71
    .local v2, "splitOne":Landroid/widget/RadioButton;
    const v6, 0x7f0f021c

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 72
    .local v5, "splitTwo":Landroid/widget/RadioButton;
    const v6, 0x7f0f021d

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 73
    .local v4, "splitThree":Landroid/widget/RadioButton;
    const v6, 0x7f0f021e

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 74
    .local v0, "splitFour":Landroid/widget/RadioButton;
    const v6, 0x7f0f021f

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 75
    .local v3, "splitSix":Landroid/widget/RadioButton;
    const v6, 0x7f0f0220

    invoke-virtual {p0, v6}, Lcom/hfufo/dialog/RenderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 77
    .local v1, "splitNine":Landroid/widget/RadioButton;
    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    iget v6, p0, Lcom/hfufo/dialog/RenderDialog;->splitNumber:I

    packed-switch v6, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/hfufo/dialog/RenderDialog;->splitRadioGroup:Landroid/widget/RadioGroup;

    new-instance v7, Lcom/hfufo/dialog/RenderDialog$1;

    invoke-direct {v7, p0}, Lcom/hfufo/dialog/RenderDialog$1;-><init>(Lcom/hfufo/dialog/RenderDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 155
    return-void

    .line 85
    :pswitch_1
    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 94
    :pswitch_3
    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 98
    :pswitch_4
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 102
    :pswitch_5
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 106
    :pswitch_6
    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method
