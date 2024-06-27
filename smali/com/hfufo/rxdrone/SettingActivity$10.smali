.class Lcom/hfufo/rxdrone/SettingActivity$10;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initTextView()V
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
    .line 505
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$10;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x80

    .line 508
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$10;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 509
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$10;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 510
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$10;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trim4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 511
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$10;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$10;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const v1, 0x7f0800a0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 513
    return-void
.end method
