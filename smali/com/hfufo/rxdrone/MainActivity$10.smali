.class Lcom/hfufo/rxdrone/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/GpsDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->show5GHzDialog()V
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
    .line 1962
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$10;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_dialog_listener(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 1966
    if-eqz p1, :cond_0

    .line 1967
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fh/hdutil/DeviceClientCmd;->changeWifiOn5G(Z)V

    .line 1969
    :cond_0
    return-void
.end method
