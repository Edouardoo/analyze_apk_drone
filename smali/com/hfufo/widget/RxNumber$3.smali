.class Lcom/hfufo/widget/RxNumber$3;
.super Ljava/lang/Object;
.source "RxNumber.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 100
    iput-object p1, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/hfufo/widget/RxNumber;->access$002(Lcom/hfufo/widget/RxNumber;I)I

    .line 122
    iget-object v2, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v2}, Lcom/hfufo/widget/RxNumber;->access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v2}, Lcom/hfufo/widget/RxNumber;->access$200(Lcom/hfufo/widget/RxNumber;)Lcom/hfufo/widget/RxNumber$ICallBack;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v3}, Lcom/hfufo/widget/RxNumber;->access$000(Lcom/hfufo/widget/RxNumber;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/hfufo/widget/RxNumber$ICallBack;->onClickButton(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v2}, Lcom/hfufo/widget/RxNumber;->access$600(Lcom/hfufo/widget/RxNumber;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hfufo/widget/RxNumber$3;->this$0:Lcom/hfufo/widget/RxNumber;

    invoke-static {v4}, Lcom/hfufo/widget/RxNumber;->access$400(Lcom/hfufo/widget/RxNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7684\u503c\u683c\u5f0f\u4e0d\u6b63\u786e\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 113
    return-void
.end method
