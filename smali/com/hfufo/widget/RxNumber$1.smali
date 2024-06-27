.class Lcom/hfufo/widget/RxNumber$1;
.super Ljava/lang/Object;
.source "RxNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/RxNumber;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/RxNumber;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/RxNumber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/RxNumber;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$010(Lcom/hfufo/widget/RxNumber;)I

    .line 75
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$100(Lcom/hfufo/widget/RxNumber;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v1}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RxNumber$1;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v1}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hfufo/widget/RxNumber$ICallBack;->onClickButton(I)V

    .line 81
    :cond_0
    return-void
.end method
