.class Lcom/hfufo/rxdrone/SettingActivity$12;
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
    .line 586
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$12;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 597
    .local v0, "id":I
    const v2, 0x7f0f016d

    if-ne v0, v2, :cond_1

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "mode":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$12;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "operateMode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 614
    .end local v1    # "mode":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$12;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    return-void

    .line 601
    :cond_1
    const v2, 0x7f0f016e

    if-ne v0, v2, :cond_2

    .line 602
    const/4 v1, 0x1

    .line 603
    .restart local v1    # "mode":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$12;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "operateMode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 605
    .end local v1    # "mode":I
    :cond_2
    const v2, 0x7f0f016f

    if-ne v0, v2, :cond_3

    .line 606
    const/4 v1, 0x2

    .line 607
    .restart local v1    # "mode":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$12;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "operateMode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 609
    .end local v1    # "mode":I
    :cond_3
    const v2, 0x7f0f0170

    if-ne v0, v2, :cond_0

    .line 610
    const/4 v1, 0x3

    .line 611
    .restart local v1    # "mode":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$12;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "operateMode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
