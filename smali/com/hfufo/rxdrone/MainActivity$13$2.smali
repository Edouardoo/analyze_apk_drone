.class Lcom/hfufo/rxdrone/MainActivity$13$2;
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
    .line 2141
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$13$2;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$2;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2200(Lcom/hfufo/rxdrone/MainActivity;)V

    .line 2146
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$2;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13$2;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2147
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$2;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->TryToAppAccess()V

    .line 2148
    return-void
.end method
