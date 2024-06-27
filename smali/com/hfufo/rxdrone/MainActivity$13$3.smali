.class Lcom/hfufo/rxdrone/MainActivity$13$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity$13;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/MainActivity$13;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/MainActivity$13;

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$13$3;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$3;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$3;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$3;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2157
    :cond_0
    return-void
.end method
