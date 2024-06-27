.class Lcom/hfufo/rxdrone/SettingActivity$1$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/SettingActivity$1;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/SettingActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/SettingActivity$1;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$1$2;->this$1:Lcom/hfufo/rxdrone/SettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$1$2;->this$1:Lcom/hfufo/rxdrone/SettingActivity$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$000(Lcom/hfufo/rxdrone/SettingActivity;)V

    .line 129
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$1$2;->this$1:Lcom/hfufo/rxdrone/SettingActivity$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$1$2;->this$1:Lcom/hfufo/rxdrone/SettingActivity$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void
.end method
