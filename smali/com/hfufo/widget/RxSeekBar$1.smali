.class Lcom/hfufo/widget/RxSeekBar$1;
.super Ljava/lang/Object;
.source "RxSeekBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/RxSeekBar;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/RxSeekBar;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/RxSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/RxSeekBar;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v0}, Lcom/hfufo/widget/RxSeekBar;->access$000(Lcom/hfufo/widget/RxSeekBar;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v0}, Lcom/hfufo/widget/RxSeekBar;->access$010(Lcom/hfufo/widget/RxSeekBar;)I

    .line 74
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v0}, Lcom/hfufo/widget/RxSeekBar;->access$100(Lcom/hfufo/widget/RxSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v1}, Lcom/hfufo/widget/RxSeekBar;->access$000(Lcom/hfufo/widget/RxSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v0}, Lcom/hfufo/widget/RxSeekBar;->access$300(Lcom/hfufo/widget/RxSeekBar;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v2}, Lcom/hfufo/widget/RxSeekBar;->access$200(Lcom/hfufo/widget/RxSeekBar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v2}, Lcom/hfufo/widget/RxSeekBar;->access$000(Lcom/hfufo/widget/RxSeekBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v0}, Lcom/hfufo/widget/RxSeekBar;->access$400(Lcom/hfufo/widget/RxSeekBar;)Lcom/hfufo/widget/RxSeekBar$ICallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RxSeekBar$1;->this$0:Lcom/hfufo/widget/RxSeekBar;

    invoke-static {v1}, Lcom/hfufo/widget/RxSeekBar;->access$000(Lcom/hfufo/widget/RxSeekBar;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hfufo/widget/RxSeekBar$ICallBack;->onClickButton(I)V

    .line 78
    :cond_0
    return-void
.end method
