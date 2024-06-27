.class Lcom/hfufo/rxdrone/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 2090
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x1f40

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2094
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2179
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 2097
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2098
    .local v0, "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2099
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2100
    const-string v1, "MainActivity"

    const-string v2, "upload_file_success == 2333333"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "0035"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2103
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1, v6}, Lcom/hfufo/rxdrone/MainActivity;->access$1902(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    .line 2112
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$13$1;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$13$1;-><init>(Lcom/hfufo/rxdrone/MainActivity$13;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2122
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2123
    const-string v1, "MainActivity"

    const-string v2, "upload_file_failed == 555555"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1, v4}, Lcom/hfufo/rxdrone/MainActivity;->access$1902(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    .line 2132
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$2200(Lcom/hfufo/rxdrone/MainActivity;)V

    .line 2133
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2141
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$13$2;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$13$2;-><init>(Lcom/hfufo/rxdrone/MainActivity$13;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2150
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$13$3;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$13$3;-><init>(Lcom/hfufo/rxdrone/MainActivity$13;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2164
    :pswitch_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$13$4;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$13$4;-><init>(Lcom/hfufo/rxdrone/MainActivity$13;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2172
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2173
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/MainActivity;->access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 2094
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
