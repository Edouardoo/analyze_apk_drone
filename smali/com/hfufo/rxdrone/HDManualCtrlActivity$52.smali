.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/MicroTrimView$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 7221
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButton(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 7226
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7227
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim4"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7228
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7230
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/Protocol1;->setTrim4(I)V

    .line 7231
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->setTrim4(I)V

    .line 7233
    return-void
.end method
