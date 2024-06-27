.class Lcom/hfufo/rxdrone/SettingActivity$14;
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


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/SettingActivity;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iput-object p2, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->val$save2M:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/16 v4, 0x780

    const/4 v3, 0x1

    const/16 v2, 0x438

    .line 706
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 711
    .local v0, "id":I
    const v1, 0x7f0f017f

    if-ne v0, v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    if-ne v1, v2, :cond_1

    .line 713
    const-string v1, "Do not choose"

    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 715
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v2, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 716
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->val$save2M:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0x500

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 719
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0x2d0

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 720
    const/4 v1, 0x0

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 724
    :cond_2
    const v1, 0x7f0f0180

    if-ne v0, v1, :cond_3

    .line 725
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 726
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v2, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 727
    sput v3, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 729
    :cond_3
    const v1, 0x7f0f0181

    if-ne v0, v1, :cond_4

    .line 730
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0xcc0

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 731
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0x990

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 732
    const/4 v1, 0x2

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0

    .line 734
    :cond_4
    const v1, 0x7f0f0182

    if-ne v0, v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0x1000

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 736
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$14;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v1, 0xc00

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 737
    const/4 v1, 0x3

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    goto :goto_0
.end method
