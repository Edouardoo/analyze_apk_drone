.class Lcom/hfufo/rxdrone/SettingActivity$15;
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

.field final synthetic val$save2M:Landroid/widget/RadioButton;

.field final synthetic val$save720P:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/SettingActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iput-object p2, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->val$save720P:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->val$save2M:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const v6, 0x7f0800d5

    const/16 v5, 0x780

    const/16 v4, 0x438

    const/16 v3, 0x2d0

    const/4 v2, 0x1

    .line 763
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 769
    .local v0, "id":I
    const v1, 0x7f0f0186

    if-ne v0, v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v3, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 771
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    const v1, 0x7f0f0188

    if-ne v0, v1, :cond_4

    .line 774
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$1000(Lcom/hfufo/rxdrone/SettingActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 775
    const v1, 0x7f0800e1

    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 776
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v3, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 777
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->val$save720P:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 778
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    goto :goto_0

    .line 780
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-nez v1, :cond_3

    .line 781
    const v1, 0x7f0800de

    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 782
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v3, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 784
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    goto :goto_0

    .line 787
    :cond_3
    invoke-static {v6}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 788
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0x800

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 789
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    .line 790
    sget v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    if-nez v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v5, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 792
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 793
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->val$save2M:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 799
    :cond_4
    const v1, 0x7f0f0187

    if-ne v0, v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_720:Z

    if-eqz v1, :cond_5

    .line 806
    :cond_5
    invoke-static {v6}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 807
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 808
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    .line 809
    sget v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    if-nez v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v5, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 811
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 812
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$15;->val$save2M:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0
.end method
