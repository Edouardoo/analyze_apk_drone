.class Lcom/hfufo/rxdrone/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initParmView()V
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
    .line 303
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$3;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 306
    if-eqz p2, :cond_0

    .line 307
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$3;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$200(Lcom/hfufo/rxdrone/SettingActivity;)Lcom/fh/util/FtpHandlerThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fh/util/FtpHandlerThread;->setVersion(Z)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$3;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$200(Lcom/hfufo/rxdrone/SettingActivity;)Lcom/fh/util/FtpHandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fh/util/FtpHandlerThread;->setVersion(Z)V

    goto :goto_0
.end method
