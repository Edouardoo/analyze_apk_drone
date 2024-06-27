.class Lcom/hfufo/rxdrone/SettingActivity$13;
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
    .line 637
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 647
    .local v0, "id":I
    const v1, 0x7f0f018c

    if-ne v0, v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$802(Lcom/hfufo/rxdrone/SettingActivity;I)I

    .line 649
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "languageMode"

    iget-object v3, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/SettingActivity;->access$800(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 664
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 665
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$900(Lcom/hfufo/rxdrone/SettingActivity;)Lcom/fh/util/SettingChange;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$800(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/SettingChange;->setLanguage(I)V

    .line 668
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/SettingActivity;->refresh()V

    .line 670
    return-void

    .line 651
    :cond_1
    const v1, 0x7f0f018d

    if-ne v0, v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$802(Lcom/hfufo/rxdrone/SettingActivity;I)I

    .line 653
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "languageMode"

    iget-object v3, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/SettingActivity;->access$800(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 655
    :cond_2
    const v1, 0x7f0f018e

    if-ne v0, v1, :cond_3

    .line 656
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$802(Lcom/hfufo/rxdrone/SettingActivity;I)I

    .line 657
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "languageMode"

    iget-object v3, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/SettingActivity;->access$800(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 659
    :cond_3
    const v1, 0x7f0f018f

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/SettingActivity;->access$802(Lcom/hfufo/rxdrone/SettingActivity;I)I

    .line 661
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "languageMode"

    iget-object v3, p0, Lcom/hfufo/rxdrone/SettingActivity$13;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/SettingActivity;->access$800(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
