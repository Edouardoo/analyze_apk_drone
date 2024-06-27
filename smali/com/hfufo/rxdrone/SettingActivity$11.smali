.class Lcom/hfufo/rxdrone/SettingActivity$11;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initRadioButton()V
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
    .line 543
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$11;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 554
    .local v0, "id":I
    const v2, 0x7f0f0160

    if-ne v0, v2, :cond_0

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$11;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "right"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 563
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$11;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    return-void

    .line 559
    .end local v1    # "isChecked":Z
    :cond_0
    const/4 v1, 0x1

    .line 560
    .restart local v1    # "isChecked":Z
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$11;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "right"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
