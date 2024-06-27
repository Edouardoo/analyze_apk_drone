.class Lcom/hfufo/rxdrone/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->udateDevice()V
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
    .line 2050
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$12;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2054
    const-string v0, "JL_AC54.bfu"

    .line 2055
    .local v0, "filename":Ljava/lang/String;
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2056
    const-string v0, "JL_AC5X.bfu"

    .line 2058
    :cond_0
    invoke-static {}, Lcom/fh/hdutil/FTPClientUtil;->getInstance()Lcom/fh/hdutil/FTPClientUtil;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity$12;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity$12;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/fh/hdutil/FTPClientUtil;->uploadFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)Z

    move-result v1

    .line 2060
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 2061
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$12;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2064
    :goto_0
    return-void

    .line 2063
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$12;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x101

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
