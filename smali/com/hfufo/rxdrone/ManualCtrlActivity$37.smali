.class Lcom/hfufo/rxdrone/ManualCtrlActivity$37;
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
    .line 4940
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButton(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 4945
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4947
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim4"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4948
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4950
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/Protocol1;->setTrim4(I)V

    .line 4951
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->setTrim4(I)V

    .line 4953
    return-void
.end method
