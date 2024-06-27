.class Lcom/hfufo/rxdrone/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$5;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 1208
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onStateChanged-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/Constants;->getConnectDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1229
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1214
    :pswitch_1
    const/16 v0, 0x258

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    const-string v0, "123456"

    const-string v1, "DEVICE_STATE_CONNECTED-Main: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$5;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->TryToAppAccess()V

    goto :goto_0

    .line 1210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onStateChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1205
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/MainActivity$5;->onStateChanged(Ljava/lang/Integer;)V

    return-void
.end method
