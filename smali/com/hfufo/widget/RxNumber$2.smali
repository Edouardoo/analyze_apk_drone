.class Lcom/hfufo/widget/RxNumber$2;
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
    .line 84
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v1}, Lcom/hfufo/widget/RxNumber;->access$300(Lcom/hfufo/widget/RxNumber;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$008(Lcom/hfufo/widget/RxNumber;)I

    .line 91
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$100(Lcom/hfufo/widget/RxNumber;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v1}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$500(Lcom/hfufo/widget/RxNumber;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v2}, Lcom/hfufo/widget/RxNumber;->access$400(Lcom/hfufo/widget/RxNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v2}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v0}, Lcom/hfufo/widget/RxNumber;->access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RxNumber$2;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v1}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hfufo/widget/RxNumber$ICallBack;->onClickButton(I)V

    .line 97
    :cond_0
    return-void
.end method
