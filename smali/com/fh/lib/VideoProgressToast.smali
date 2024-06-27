.class public Lcom/fh/lib/VideoProgressToast;
.super Ljava/lang/Object;
.source "VideoProgressToast.java"


# static fields
.field public static final FAST_BACKWARD:I = 0x102b

.field public static final FAST_FORWARD:I = 0x102a


# instance fields
.field private ivFastBackward:Landroid/widget/ImageView;

.field private ivFastForward:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private toast:Landroid/widget/Toast;

.field private tvText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/fh/lib/VideoProgressToast;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public show(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 36
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/fh/lib/VideoProgressToast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fh/lib/VideoProgressToast;->toast:Landroid/widget/Toast;

    .line 38
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fh/lib/VideoProgressToast;->ivFastForward:Landroid/widget/ImageView;

    .line 40
    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fh/lib/VideoProgressToast;->tvText:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0f0246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fh/lib/VideoProgressToast;->ivFastBackward:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->toast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 44
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 46
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 58
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->tvText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 62
    return-void

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->ivFastBackward:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->ivFastForward:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->tvText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fh/lib/VideoProgressToast;->mContext:Landroid/content/Context;

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->ivFastForward:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->ivFastBackward:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/fh/lib/VideoProgressToast;->tvText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fh/lib/VideoProgressToast;->mContext:Landroid/content/Context;

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x102a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
