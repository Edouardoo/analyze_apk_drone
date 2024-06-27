.class Lcom/hfufo/rxdrone/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/SettingActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v6, 0x0

    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 85
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string v1, "settingactivity"

    const-string v2, "upload_file_success == 2333333"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "0035"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$100(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/SettingActivity$1$1;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/SettingActivity$1$1;-><init>(Lcom/hfufo/rxdrone/SettingActivity$1;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "settingactivity"

    const-string v2, "upload_file_failed == 555555"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$000(Lcom/hfufo/rxdrone/SettingActivity;)V

    .line 117
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 124
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$100(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/SettingActivity$1$2;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/SettingActivity$1$2;-><init>(Lcom/hfufo/rxdrone/SettingActivity$1;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$100(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/SettingActivity$1$3;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/SettingActivity$1$3;-><init>(Lcom/hfufo/rxdrone/SettingActivity$1;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 82
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
