.class Lcom/hfufo/rxdrone/ManualCtrlActivity$35;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/MicroTrimView$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 4887
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButton(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 4891
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4892
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4893
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4898
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4900
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4901
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/Protocol1;->setTrim2(I)V

    .line 4902
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->setTrim2(I)V

    .line 4909
    :goto_1
    return-void

    .line 4896
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim1"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4905
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/Protocol1;->setTrim1(I)V

    .line 4906
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->setTrim1(I)V

    goto :goto_1
.end method
