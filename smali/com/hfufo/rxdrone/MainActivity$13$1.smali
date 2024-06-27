.class Lcom/hfufo/rxdrone/MainActivity$13$1;
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
    .line 2112
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$13$1;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2116
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$1;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2200(Lcom/hfufo/rxdrone/MainActivity;)V

    .line 2117
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$1;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13$1;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2118
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$1;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0, v3}, Lcom/hfufo/rxdrone/MainActivity;->access$1902(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    .line 2119
    return-void
.end method
