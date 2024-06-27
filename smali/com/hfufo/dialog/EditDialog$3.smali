.class Lcom/hfufo/dialog/EditDialog$3;
.super Ljava/lang/Object;
.source "EditDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/EditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private editStart:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/hfufo/dialog/EditDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/EditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$200(Lcom/hfufo/dialog/EditDialog;)Ljava/lang/String;

    move-result-object v1

    .line 240
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "t":I
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$300(Lcom/hfufo/dialog/EditDialog;)I

    move-result v2

    if-le v0, v2, :cond_1

    .line 242
    const-string v2, "\u4f60\u8f93\u5165\u7684\u5b57\u6570\u5df2\u7ecf\u8d85\u8fc7\u4e86\u9650\u5236"

    invoke-static {v2}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$100(Lcom/hfufo/dialog/EditDialog;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/EditDialog;->access$300(Lcom/hfufo/dialog/EditDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$400(Lcom/hfufo/dialog/EditDialog;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 246
    const-string v2, "\u4f60\u8f93\u5165\u7684\u5b57\u6570\u5df2\u7ecf\u8d85\u8fc7\u4e86\u9650\u5236"

    invoke-static {v2}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$100(Lcom/hfufo/dialog/EditDialog;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v4}, Lcom/hfufo/dialog/EditDialog;->access$400(Lcom/hfufo/dialog/EditDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$100(Lcom/hfufo/dialog/EditDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iput v2, p0, Lcom/hfufo/dialog/EditDialog$3;->editStart:I

    .line 251
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$100(Lcom/hfufo/dialog/EditDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    iput v2, p0, Lcom/hfufo/dialog/EditDialog$3;->editEnd:I

    .line 252
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 217
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog$3;->temp:Ljava/lang/CharSequence;

    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$200(Lcom/hfufo/dialog/EditDialog;)Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, "t":I
    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$300(Lcom/hfufo/dialog/EditDialog;)I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/hfufo/dialog/EditDialog$3;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v2}, Lcom/hfufo/dialog/EditDialog;->access$400(Lcom/hfufo/dialog/EditDialog;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 229
    :cond_2
    const-string v2, "\u4f60\u8f93\u5165\u7684\u5b57\u6570\u5df2\u7ecf\u8d85\u8fc7\u4e86\u9650\u5236"

    invoke-static {v2}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 231
    :cond_3
    return-void
.end method
