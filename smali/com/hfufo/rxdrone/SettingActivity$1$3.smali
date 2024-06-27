.class Lcom/hfufo/rxdrone/SettingActivity$1$3;
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
    .line 136
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$1$3;->this$1:Lcom/hfufo/rxdrone/SettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$1$3;->this$1:Lcom/hfufo/rxdrone/SettingActivity$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity$1;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$000(Lcom/hfufo/rxdrone/SettingActivity;)V

    .line 141
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->showToastLong(I)V

    .line 142
    return-void
.end method
