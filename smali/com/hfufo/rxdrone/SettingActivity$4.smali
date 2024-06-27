.class Lcom/hfufo/rxdrone/SettingActivity$4;
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
    .line 313
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$4;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 316
    if-eqz p2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$4;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saveparam"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$4;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$4;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saveparam"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
