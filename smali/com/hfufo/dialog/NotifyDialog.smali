.class public Lcom/hfufo/dialog/NotifyDialog;
.super Lcom/hfufo/dialog/BaseDialogFragment;
.source "NotifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;,
        Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;,
        Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;,
        Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;,
        Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final KEY_CHECK_BOX:Ljava/lang/String; = "check_box"

.field public static final PB_STYLE_HORIZONTAL:I = 0x2

.field public static final PB_STYLE_ROUND:I = 0x1


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private content:Ljava/lang/String;

.field private isLeftGravity:Z

.field private isShowCheckBox:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmButtonId:I

.field private mConfirmButtonText:Landroid/widget/TextView;

.field private mContent:Landroid/widget/TextView;

.field private mContentId:I

.field private mDividerView:Landroid/view/View;

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field private mNegativeButtonId:I

.field private mNegativeButtonText:Landroid/widget/TextView;

.field private mOnCheckedChangeListener:Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;

.field private mOnConfirmClickListener:Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

.field private mOnDismissDialogListener:Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;

.field private mOnNegativeClickListener:Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;

.field private mOnPositiveClickListener:Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

.field private mPositiveButtonId:I

.field private mPositiveButtonText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarStyle:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleId:I

.field private final onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final tag:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/hfufo/dialog/BaseDialogFragment;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->tag:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBarStyle:I

    .line 40
    iput-boolean v1, p0, Lcom/hfufo/dialog/NotifyDialog;->isLeftGravity:Z

    .line 84
    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitleId:I

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonId:I

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonId:I

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonId:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->content:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/hfufo/dialog/NotifyDialog;->isShowCheckBox:Z

    .line 434
    new-instance v0, Lcom/hfufo/dialog/NotifyDialog$4;

    invoke-direct {v0, p0}, Lcom/hfufo/dialog/NotifyDialog$4;-><init>(Lcom/hfufo/dialog/NotifyDialog;)V

    iput-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/NotifyDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/NotifyDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/NotifyDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/NotifyDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnCheckedChangeListener:Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;

    return-object v0
.end method

.method public static newInstance(III)Lcom/hfufo/dialog/NotifyDialog;
    .locals 3
    .param p0, "titleId"    # I
    .param p1, "progressBarStyle"    # I
    .param p2, "contentId"    # I

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v2, "mProgressBarStyle"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 94
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v1
.end method

.method public static newInstance(IIIILcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 3
    .param p0, "titleId"    # I
    .param p1, "contentId"    # I
    .param p2, "negativeTextId"    # I
    .param p3, "positiveTextId"    # I
    .param p4, "negativeListener"    # Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;
    .param p5, "positiveListener"    # Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    .prologue
    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v2, "mNegativeButtonId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v2, "mPositiveButtonId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 183
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    iput-object p4, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;

    .line 184
    iput-object p5, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    .line 185
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 186
    return-object v1
.end method

.method public static newInstance(IIILcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 3
    .param p0, "titleId"    # I
    .param p1, "contentId"    # I
    .param p2, "confirmTextId"    # I
    .param p3, "listener"    # Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    .prologue
    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v2, "mConfirmButtonId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 157
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    iput-object p3, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    .line 158
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 159
    return-object v1
.end method

.method public static newInstance(IIZIILcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 3
    .param p0, "titleId"    # I
    .param p1, "contentId"    # I
    .param p2, "isShowCheckBox"    # Z
    .param p3, "negativeTextId"    # I
    .param p4, "positiveTextId"    # I
    .param p5, "negativeListener"    # Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;
    .param p6, "positiveListener"    # Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    .prologue
    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v2, "check_box"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v2, "mNegativeButtonId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v2, "mPositiveButtonId"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 214
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    iput-object p5, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;

    .line 215
    iput-object p6, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    .line 216
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 217
    return-object v1
.end method

.method public static newInstance(IZ)Lcom/hfufo/dialog/NotifyDialog;
    .locals 4
    .param p0, "titleId"    # I
    .param p1, "showProgressBar"    # Z

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :goto_0
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 117
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 118
    return-object v1

    .line 115
    .end local v1    # "fragment":Lcom/hfufo/dialog/NotifyDialog;
    :cond_0
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static newInstance(IZI)Lcom/hfufo/dialog/NotifyDialog;
    .locals 4
    .param p0, "titleId"    # I
    .param p1, "showProgressBar"    # Z
    .param p2, "contentId"    # I

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :goto_0
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 106
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v1

    .line 103
    .end local v1    # "fragment":Lcom/hfufo/dialog/NotifyDialog;
    :cond_0
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static newInstance(IZIILcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 4
    .param p0, "titleId"    # I
    .param p1, "showProgressBar"    # Z
    .param p2, "contentId"    # I
    .param p3, "confirmTextId"    # I
    .param p4, "listener"    # Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    :goto_0
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v2, "mConfirmButtonId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 146
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    iput-object p4, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    .line 147
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 148
    return-object v1

    .line 142
    .end local v1    # "fragment":Lcom/hfufo/dialog/NotifyDialog;
    :cond_0
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "negativeTextId"    # I
    .param p3, "positiveTextId"    # I
    .param p4, "negativeListener"    # Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;
    .param p5, "positiveListener"    # Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    .prologue
    const/4 v3, -0x1

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v2, "content"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "mNegativeButtonId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v2, "mPositiveButtonId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 199
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    iput-object p4, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/hfufo/dialog/NotifyDialog$OnNegativeClickListener;

    .line 200
    iput-object p5, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    .line 201
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 202
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "confirmTextId"    # I
    .param p3, "listener"    # Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    .prologue
    const/4 v3, -0x1

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v2, "content"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "mConfirmButtonId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 170
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    iput-object p3, v1, Lcom/hfufo/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/hfufo/dialog/NotifyDialog$OnConfirmClickListener;

    .line 171
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 172
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;ZLjava/lang/String;)Lcom/hfufo/dialog/NotifyDialog;
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "showProgressBar"    # Z
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mTitleId"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    :goto_0
    const-string v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "mContentId"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    new-instance v1, Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {v1}, Lcom/hfufo/dialog/NotifyDialog;-><init>()V

    .line 132
    .local v1, "fragment":Lcom/hfufo/dialog/NotifyDialog;
    invoke-virtual {v1, v0}, Lcom/hfufo/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 133
    return-object v1

    .line 128
    .end local v1    # "fragment":Lcom/hfufo/dialog/NotifyDialog;
    :cond_0
    const-string v2, "mProgressBarStyle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/hfufo/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 398
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->tag:Ljava/lang/String;

    const-string v3, "onActivityCreated.............:"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 402
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 403
    const/16 v2, 0x32

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 404
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 405
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 406
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 407
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 412
    :cond_2
    :goto_1
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 413
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 409
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 410
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-super {p0, p1}, Lcom/hfufo/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/NotifyDialog;->setCancelable(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 261
    const-string v1, "mProgressBarStyle"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBarStyle:I

    .line 262
    const-string v1, "check_box"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hfufo/dialog/NotifyDialog;->isShowCheckBox:Z

    .line 263
    const-string v1, "mContentId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    .line 264
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/dialog/NotifyDialog;->content:Ljava/lang/String;

    .line 265
    const-string v1, "mConfirmButtonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonId:I

    .line 266
    const-string v1, "mTitleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitleId:I

    .line 267
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/dialog/NotifyDialog;->title:Ljava/lang/String;

    .line 268
    const-string v1, "mNegativeButtonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonId:I

    .line 269
    const-string v1, "mPositiveButtonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonId:I

    .line 271
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 276
    const v2, 0x7f040059

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 277
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 280
    :cond_0
    const v2, 0x7f0f0144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitle:Landroid/widget/TextView;

    .line 281
    const v2, 0x7f0f01db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    .line 282
    const v2, 0x7f0f01da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 283
    const v2, 0x7f0f0216

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 284
    const v2, 0x7f0f01dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    .line 285
    const v2, 0x7f0f01df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    .line 286
    const v2, 0x7f0f01e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    .line 287
    const v2, 0x7f0f01de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    .line 288
    const v2, 0x7f0f0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 289
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/hfufo/dialog/NotifyDialog;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    const v2, 0x7f0f01dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "line":Landroid/view/View;
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 293
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitleId:I

    if-eqz v2, :cond_1

    .line 295
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitleId:I

    if-ne v2, v7, :cond_3

    .line 296
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hfufo/dialog/NotifyDialog;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/hfufo/dialog/NotifyDialog;->isShowCheckBox:Z

    if-eqz v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 307
    :goto_1
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBarStyle:I

    if-lez v2, :cond_6

    .line 308
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBarStyle:I

    if-ne v2, v8, :cond_5

    .line 309
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    :cond_2
    :goto_2
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    if-eqz v2, :cond_9

    .line 321
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    if-ne v2, v7, :cond_7

    .line 323
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hfufo/dialog/NotifyDialog;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_3
    iget-boolean v2, p0, Lcom/hfufo/dialog/NotifyDialog;->isLeftGravity:Z

    if-eqz v2, :cond_8

    .line 328
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 336
    :goto_4
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonId:I

    if-eqz v2, :cond_a

    .line 337
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_5
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonId:I

    if-eqz v2, :cond_b

    .line 343
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_6
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonId:I

    if-eqz v2, :cond_d

    .line 360
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_7
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    new-instance v3, Lcom/hfufo/dialog/NotifyDialog$1;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/NotifyDialog$1;-><init>(Lcom/hfufo/dialog/NotifyDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    new-instance v3, Lcom/hfufo/dialog/NotifyDialog$2;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/NotifyDialog$2;-><init>(Lcom/hfufo/dialog/NotifyDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    new-instance v3, Lcom/hfufo/dialog/NotifyDialog$3;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/NotifyDialog$3;-><init>(Lcom/hfufo/dialog/NotifyDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    return-object v1

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/dialog/NotifyDialog;->mTitleId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 311
    :cond_5
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBarStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 312
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 316
    :cond_6
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 325
    :cond_7
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hfufo/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 330
    :cond_8
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 333
    :cond_9
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 340
    :cond_a
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 348
    :cond_b
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBarStyle:I

    if-lez v2, :cond_c

    .line 351
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 354
    :cond_c
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 363
    :cond_d
    iget-object v2, p0, Lcom/hfufo/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/hfufo/dialog/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 419
    iget-boolean v0, p0, Lcom/hfufo/dialog/NotifyDialog;->isShowCheckBox:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnDismissDialogListener:Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnDismissDialogListener:Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;

    invoke-interface {v0}, Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;->onDismiss()V

    .line 424
    :cond_1
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/hfufo/dialog/NotifyDialog;->bundle:Landroid/os/Bundle;

    .line 82
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .param p1, "contentId"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    .line 226
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mContentId:I

    .line 232
    iput-object p1, p0, Lcom/hfufo/dialog/NotifyDialog;->content:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    return-void
.end method

.method public setContentTextLeft(Z)V
    .locals 0
    .param p1, "isLeftGravity"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/hfufo/dialog/NotifyDialog;->isLeftGravity:Z

    .line 222
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnCheckedChangeListener:Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;

    .line 432
    return-void
.end method

.method public setOnDismissDialogListener(Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/hfufo/dialog/NotifyDialog;->mOnDismissDialogListener:Lcom/hfufo/dialog/NotifyDialog$OnDismissDialogListener;

    .line 428
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 251
    :cond_0
    return-void
.end method
