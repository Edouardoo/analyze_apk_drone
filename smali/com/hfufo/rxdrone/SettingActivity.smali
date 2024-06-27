.class public Lcom/hfufo/rxdrone/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/util/ICommon;
.implements Lcom/fh/hdutil/IConstant;


# static fields
.field private static final MSG_UPLOAD_FAILED:I = 0x101

.field private static final MSG_UPLOAD_FINISH:I = 0x100

.field private static final tag:Ljava/lang/String; = "settingactivity"


# instance fields
.field private app_num:Landroid/widget/TextView;

.field private choose_app_name:Landroid/widget/TextView;

.field private debug_send:Landroid/widget/TextView;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private hand:Landroid/widget/RelativeLayout;

.field private handMode:Landroid/widget/RadioGroup;

.field private help_bg:Landroid/widget/RelativeLayout;

.field private help_btn:Landroid/widget/TextView;

.field private hs_bg:Landroid/widget/LinearLayout;

.field private i:I

.field private issave:Z

.field private lan_bg:Landroid/widget/RelativeLayout;

.field private languageGroup:Landroid/widget/RadioGroup;

.field private languageMode:I

.field private lastLanguage:I

.field public mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mHandler:Landroid/os/Handler;

.field private mWorkHandlerThread:Lcom/fh/util/FtpHandlerThread;

.field private operateGroup:Landroid/widget/RadioGroup;

.field private operateMode:I

.field private operation:Landroid/widget/RelativeLayout;

.field pDialog:Landroid/app/ProgressDialog;

.field private photo_bg:Landroid/widget/RelativeLayout;

.field private pictureGroup:Landroid/widget/RadioGroup;

.field private reset_parm:Landroid/widget/TextView;

.field private rightmode:Z

.field private savedInstanceState1:Landroid/os/Bundle;

.field private scroll:Landroid/widget/LinearLayout;

.field private setLanguage:Lcom/fh/util/SettingChange;

.field private set_bg:Landroid/widget/RelativeLayout;

.field private set_param:Landroid/widget/RelativeLayout;

.field private set_toolbar:Landroid/widget/RelativeLayout;

.field private setting:Landroid/widget/TextView;

.field private setting_bg:Landroid/widget/RelativeLayout;

.field private supported2K:Z

.field private switch_right:Lcom/kyleduo/switchbutton/SwitchButton;

.field private switch_saveparams:Lcom/kyleduo/switchbutton/SwitchButton;

.field private switch_version:Lcom/kyleduo/switchbutton/SwitchButton;

.field private tv_wifiappversion:Landroid/widget/TextView;

.field private tv_wifiappversion_a:Landroid/widget/TextView;

.field private tv_wifiversion:Landroid/widget/TextView;

.field private tv_wifiversion_a:Landroid/widget/TextView;

.field private type:I

.field private update_btn:Landroid/widget/TextView;

.field private update_wifi:Landroid/widget/Button;

.field private videoGroup:Landroid/widget/RadioGroup;

.field private video_bg:Landroid/widget/RelativeLayout;

.field private wifi_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->operateMode:I

    .line 62
    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    .line 63
    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->lastLanguage:I

    .line 78
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$1;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mHandler:Landroid/os/Handler;

    .line 154
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->supported2K:Z

    .line 155
    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->i:I

    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/rxdrone/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/hfufo/rxdrone/SettingActivity;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/rxdrone/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->supported2K:Z

    return v0
.end method

.method static synthetic access$200(Lcom/hfufo/rxdrone/SettingActivity;)Lcom/fh/util/FtpHandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mWorkHandlerThread:Lcom/fh/util/FtpHandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hfufo/rxdrone/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->type:I

    return v0
.end method

.method static synthetic access$500(Lcom/hfufo/rxdrone/SettingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/SettingActivity;->openProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/hfufo/rxdrone/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->i:I

    return v0
.end method

.method static synthetic access$602(Lcom/hfufo/rxdrone/SettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/hfufo/rxdrone/SettingActivity;->i:I

    return p1
.end method

.method static synthetic access$608(Lcom/hfufo/rxdrone/SettingActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->i:I

    return v0
.end method

.method static synthetic access$700(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->app_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hfufo/rxdrone/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/hfufo/rxdrone/SettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/hfufo/rxdrone/SettingActivity;)Lcom/fh/util/SettingChange;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->setLanguage:Lcom/fh/util/SettingChange;

    return-object v0
.end method

.method private closeProgressDialog()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 274
    :cond_0
    return-void
.end method

.method private getDeviceInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 929
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 930
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e3b\u677f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u7cfb\u7edf\u542f\u52a8\u7a0b\u5e8f\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u7cfb\u7edf\u5b9a\u5236\u5546\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncpu\u6307\u4ee4\u96c6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncpu\u6307\u4ee4\u96c62\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u8bbe\u7f6e\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u663e\u793a\u5c4f\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u65e0\u7ebf\u7535\u56fa\u4ef6\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u786c\u4ef6\u8bc6\u522b\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u786c\u4ef6\u540d\u79f0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHOST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u4fee\u8ba2\u7248\u672c\u5217\u8868\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u786c\u4ef6\u5236\u9020\u5546\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u786c\u4ef6\u5e8f\u5217\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u624b\u673a\u5236\u9020\u5546\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u63cf\u8ff0Build\u7684\u6807\u7b7e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nTIME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nbuilder\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUSER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 904
    const-string v1, "-null"

    .line 905
    .local v1, "deviceVersion":Ljava/lang/String;
    iget v5, p0, Lcom/hfufo/rxdrone/SettingActivity;->type:I

    if-nez v5, :cond_1

    .line 906
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 907
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "device_version_msg"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "deviceVersionMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->parseDeviceVersionText(Ljava/lang/String;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    move-result-object v2

    .line 909
    .local v2, "deviceVersionInfo":Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    const-string v5, "settingactivity"

    const-string v6, "ac52"

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    if-eqz v2, :cond_0

    .line 911
    invoke-virtual {v2}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 921
    .end local v2    # "deviceVersionInfo":Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    .end local v3    # "deviceVersionMsg":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 914
    :cond_1
    const-string v5, "settingactivity"

    const-string v6, "ac54"

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v0

    .line 916
    .local v0, "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v1

    .line 918
    const-string v5, "settingactivity"

    const-string v6, "ac56"

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEncodecSupport()Z
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x1

    .line 225
    const/16 v1, 0x800

    .line 226
    .local v1, "m_width":I
    const/16 v0, 0x438

    .line 227
    .local v0, "m_height":I
    const-string v5, "video/avc"

    invoke-static {v5, v1, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 228
    .local v3, "mediaFormat":Landroid/media/MediaFormat;
    const-string v5, "color-format"

    invoke-virtual {v3, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 230
    const-string v5, "bitrate"

    const v6, 0xca8000

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 231
    const-string v5, "i-frame-interval"

    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 232
    const-string v5, "bitrate-mode"

    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 234
    const-string v5, "max-input-size"

    const v6, 0x21c000

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 235
    const-string v5, "height"

    invoke-virtual {v3, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 236
    const-string v5, "width"

    invoke-virtual {v3, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 240
    const/4 v4, 0x0

    .line 241
    .local v4, "support":Z
    const/4 v2, 0x0

    .line 242
    .local v2, "mediaCodecList":Landroid/media/MediaCodecList;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_0

    .line 243
    new-instance v2, Landroid/media/MediaCodecList;

    .end local v2    # "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-direct {v2, v7}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 244
    .restart local v2    # "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v2, v3}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 245
    const/4 v4, 0x1

    .line 249
    :cond_0
    const-string v5, "MdeiaCodecTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findEncoderForFormat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v4
.end method

.method private goToHelp(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    const-string v0, "SettingActivity"

    const-string v1, "goToHelp: help\u70b9\u51fb\u64cd\u4f5c"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method private initParmView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    const v0, 0x7f0f0190

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_param:Landroid/widget/RelativeLayout;

    .line 289
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    if-ne v0, v3, :cond_0

    .line 290
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_param:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_param:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    const v0, 0x7f0f0196

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->reset_parm:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0f0193

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_saveparams:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 298
    const v0, 0x7f0f01a1

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_right:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 299
    const v0, 0x7f0f01a5

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_version:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 300
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_version:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 301
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_saveparams:Lcom/kyleduo/switchbutton/SwitchButton;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->issave:Z

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_right:Lcom/kyleduo/switchbutton/SwitchButton;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->rightmode:Z

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_version:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$3;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_saveparams:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$4;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$4;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->switch_right:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$5;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$5;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 336
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_param:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initTestView()V
    .locals 4

    .prologue
    .line 459
    const v1, 0x7f0f0197

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->choose_app_name:Landroid/widget/TextView;

    .line 460
    const v1, 0x7f0f0198

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->app_num:Landroid/widget/TextView;

    .line 461
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getStreamResolutionLevel()I

    move-result v1

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 462
    .local v0, "reso":[I
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->app_num:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->choose_app_name:Landroid/widget/TextView;

    new-instance v2, Lcom/hfufo/rxdrone/SettingActivity$8;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/SettingActivity$8;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    return-void
.end method

.method private initTextView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 481
    const v0, 0x7f0f01a6

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiappversion:Landroid/widget/TextView;

    .line 482
    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiappversion_a:Landroid/widget/TextView;

    .line 483
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiappversion_a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->setting:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->debug_send:Landroid/widget/TextView;

    .line 490
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->debug_send:Landroid/widget/TextView;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$9;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$9;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiappversion_a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiappversion_a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "229.13.H0T29.GTF"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const v0, 0x7f0f0196

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->reset_parm:Landroid/widget/TextView;

    .line 505
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->reset_parm:Landroid/widget/TextView;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$10;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$10;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->wifi_name:Landroid/widget/TextView;

    .line 517
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->wifi_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->wifi_name:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    const v0, 0x7f0f01a4

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiversion:Landroid/widget/TextView;

    .line 524
    const v0, 0x7f0f017b

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiversion_a:Landroid/widget/TextView;

    .line 526
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->tv_wifiversion_a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->type:I

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getDeviceVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-void
.end method

.method private initUdateView()V
    .locals 2

    .prologue
    .line 340
    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->help_btn:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->help_btn:Landroid/widget/TextView;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$6;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$6;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v0, 0x7f0f01a7

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->update_wifi:Landroid/widget/Button;

    .line 353
    const v0, 0x7f0f0178

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->update_btn:Landroid/widget/TextView;

    .line 355
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->update_btn:Landroid/widget/TextView;

    new-instance v1, Lcom/hfufo/rxdrone/SettingActivity$7;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/SettingActivity$7;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    return-void
.end method

.method private openProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 262
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 266
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 267
    return-void
.end method

.method private setColor()V
    .locals 4

    .prologue
    const v3, 0x7f0d0044

    const v2, 0x7f0d0045

    .line 868
    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->setting_bg:Landroid/widget/RelativeLayout;

    .line 869
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_toolbar:Landroid/widget/RelativeLayout;

    .line 870
    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->scroll:Landroid/widget/LinearLayout;

    .line 871
    const v0, 0x7f0f0171

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->hs_bg:Landroid/widget/LinearLayout;

    .line 873
    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->hand:Landroid/widget/RelativeLayout;

    .line 874
    const v0, 0x7f0f0162

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->operation:Landroid/widget/RelativeLayout;

    .line 876
    const v0, 0x7f0f0172

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->help_bg:Landroid/widget/RelativeLayout;

    .line 877
    const v0, 0x7f0f0175

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_bg:Landroid/widget/RelativeLayout;

    .line 878
    const v0, 0x7f0f0189

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->lan_bg:Landroid/widget/RelativeLayout;

    .line 879
    const v0, 0x7f0f017c

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->photo_bg:Landroid/widget/RelativeLayout;

    .line 880
    const v0, 0x7f0f0183

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->video_bg:Landroid/widget/RelativeLayout;

    .line 882
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->setting_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 883
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 884
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->scroll:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 885
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->hs_bg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 887
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->hand:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 888
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->operation:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 889
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->operateGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundColor(I)V

    .line 890
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->help_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 891
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->set_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 892
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundColor(I)V

    .line 893
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->lan_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 894
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->photo_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 895
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->pictureGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundColor(I)V

    .line 896
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->video_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 897
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->videoGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundColor(I)V

    .line 901
    return-void
.end method


# virtual methods
.method public formatSize(J)Ljava/lang/String;
    .locals 11
    .param p1, "size"    # J

    .prologue
    const-wide/16 v8, 0x400

    const/high16 v6, 0x44800000    # 1024.0f

    .line 1013
    const/4 v3, 0x0

    .line 1014
    .local v3, "suffix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1016
    .local v1, "fSize":F
    cmp-long v4, p1, v8

    if-ltz v4, :cond_3

    .line 1017
    const-string v3, "KB"

    .line 1018
    div-long v4, p1, v8

    long-to-float v1, v4

    .line 1019
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_0

    .line 1020
    const-string v3, "MB"

    .line 1021
    div-float/2addr v1, v6

    .line 1023
    :cond_0
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_1

    .line 1024
    const-string v3, "GB"

    .line 1025
    div-float/2addr v1, v6

    .line 1030
    :cond_1
    :goto_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, "df":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v2, "resultBuffer":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    .line 1033
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1028
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "resultBuffer":Ljava/lang/StringBuilder;
    :cond_3
    long-to-float v1, p1

    goto :goto_0
.end method

.method public getCpuInfo()V
    .locals 7

    .prologue
    .line 993
    const-string v2, "/proc/cpuinfo"

    .line 994
    .local v2, "str1":Ljava/lang/String;
    const-string v3, ""

    .line 996
    .local v3, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 997
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 998
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 999
    const-string v4, "deviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v4, "Hardware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1001
    const-string v4, "Qualcomm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    const-string v4, "SDM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1008
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1010
    :cond_1
    return-void
.end method

.method public getHardware()V
    .locals 7

    .prologue
    .line 967
    const-string v2, "/proc/hardware"

    .line 968
    .local v2, "str1":Ljava/lang/String;
    const-string v3, ""

    .line 970
    .local v3, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 971
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 972
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 973
    const-string v4, "deviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-hw-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 975
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 977
    :cond_0
    return-void
.end method

.method public getTotalMemory()V
    .locals 7

    .prologue
    .line 954
    const-string v2, "/proc/meminfo"

    .line 955
    .local v2, "str1":Ljava/lang/String;
    const-string v3, ""

    .line 957
    .local v3, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 958
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 959
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 960
    const-string v4, "deviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 964
    :cond_0
    return-void
.end method

.method public getfb()V
    .locals 7

    .prologue
    .line 980
    const-string v2, "/proc/fb"

    .line 981
    .local v2, "str1":Ljava/lang/String;
    const-string v3, ""

    .line 983
    .local v3, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 984
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 985
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 986
    const-string v4, "deviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-fb-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 990
    :cond_0
    return-void
.end method

.method public initRadioButton()V
    .locals 25

    .prologue
    .line 532
    const v23, 0x7f0f015f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RadioGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/SettingActivity;->handMode:Landroid/widget/RadioGroup;

    .line 533
    const v23, 0x7f0f016c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RadioGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/SettingActivity;->operateGroup:Landroid/widget/RadioGroup;

    .line 534
    const v23, 0x7f0f018b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RadioGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/SettingActivity;->languageGroup:Landroid/widget/RadioGroup;

    .line 535
    const v23, 0x7f0f017e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RadioGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/SettingActivity;->pictureGroup:Landroid/widget/RadioGroup;

    .line 536
    const v23, 0x7f0f0185

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RadioGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/SettingActivity;->videoGroup:Landroid/widget/RadioGroup;

    .line 539
    const v23, 0x7f0f0160

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 540
    .local v11, "leftMode":Landroid/widget/RadioButton;
    const v23, 0x7f0f0161

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    .line 541
    .local v13, "rightMode":Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->rightmode:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->rightmode:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->handMode:Landroid/widget/RadioGroup;

    move-object/from16 v23, v0

    new-instance v24, Lcom/hfufo/rxdrone/SettingActivity$11;

    invoke-direct/range {v24 .. v25}, Lcom/hfufo/rxdrone/SettingActivity$11;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 569
    const v23, 0x7f0f016d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 570
    .local v5, "classicalMode":Landroid/widget/RadioButton;
    const v23, 0x7f0f016e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RadioButton;

    .line 571
    .local v22, "senseryMode":Landroid/widget/RadioButton;
    const v23, 0x7f0f016f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    .line 572
    .local v14, "rockMode":Landroid/widget/RadioButton;
    const v23, 0x7f0f0170

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 573
    .local v10, "hideMode":Landroid/widget/RadioButton;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 574
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 575
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 576
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->operateMode:I

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 578
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 586
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->operateGroup:Landroid/widget/RadioGroup;

    move-object/from16 v23, v0

    new-instance v24, Lcom/hfufo/rxdrone/SettingActivity$12;

    invoke-direct/range {v24 .. v25}, Lcom/hfufo/rxdrone/SettingActivity$12;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 620
    const v23, 0x7f0f018c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 621
    .local v4, "chinese":Landroid/widget/RadioButton;
    const v23, 0x7f0f018d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 622
    .local v7, "english":Landroid/widget/RadioButton;
    const v23, 0x7f0f018e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 623
    .local v9, "he":Landroid/widget/RadioButton;
    const v23, 0x7f0f018f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 624
    .local v8, "fance":Landroid/widget/RadioButton;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 625
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 626
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 627
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 629
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 637
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->languageGroup:Landroid/widget/RadioGroup;

    move-object/from16 v23, v0

    new-instance v24, Lcom/hfufo/rxdrone/SettingActivity$13;

    invoke-direct/range {v24 .. v25}, Lcom/hfufo/rxdrone/SettingActivity$13;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 674
    const v23, 0x7f0f017f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    .line 675
    .local v15, "save1M":Landroid/widget/RadioButton;
    const v23, 0x7f0f0180

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    .line 676
    .local v17, "save2M":Landroid/widget/RadioButton;
    const v23, 0x7f0f0181

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    .line 677
    .local v20, "save8M":Landroid/widget/RadioButton;
    const v23, 0x7f0f0182

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    .line 678
    .local v18, "save4K":Landroid/widget/RadioButton;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 679
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 680
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 681
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 682
    sget v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    if-nez v23, :cond_c

    .line 683
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0x500

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0x2d0

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 701
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->pictureGroup:Landroid/widget/RadioGroup;

    move-object/from16 v23, v0

    new-instance v24, Lcom/hfufo/rxdrone/SettingActivity$14;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/hfufo/rxdrone/SettingActivity$14;-><init>(Lcom/hfufo/rxdrone/SettingActivity;Landroid/widget/RadioButton;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 744
    const v23, 0x7f0f0186

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RadioButton;

    .line 745
    .local v19, "save720P":Landroid/widget/RadioButton;
    const v23, 0x7f0f0188

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RadioButton;

    .line 746
    .local v16, "save2K":Landroid/widget/RadioButton;
    const v23, 0x7f0f0187

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RadioButton;

    .line 747
    .local v21, "save_1080":Landroid/widget/RadioButton;
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 748
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 749
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    sget v23, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v24, 0x2d0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 751
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 758
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->videoGroup:Landroid/widget/RadioGroup;

    move-object/from16 v23, v0

    new-instance v24, Lcom/hfufo/rxdrone/SettingActivity$15;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/hfufo/rxdrone/SettingActivity$15;-><init>(Lcom/hfufo/rxdrone/SettingActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    sget-boolean v23, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-nez v23, :cond_11

    .line 821
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 822
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 828
    :goto_5
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v6

    .line 829
    .local v6, "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v6, :cond_4

    .line 830
    invoke-virtual {v6}, Lcom/hfufo/bean/DeviceDesc;->getPhoto_size()Ljava/lang/String;

    move-result-object v12

    .line 831
    .local v12, "photoSize":Ljava/lang/String;
    const-string v23, "11111"

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4

    .line 833
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 834
    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 835
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 853
    .end local v12    # "photoSize":Ljava/lang/String;
    :cond_4
    :goto_6
    return-void

    .line 541
    .end local v4    # "chinese":Landroid/widget/RadioButton;
    .end local v5    # "classicalMode":Landroid/widget/RadioButton;
    .end local v6    # "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    .end local v7    # "english":Landroid/widget/RadioButton;
    .end local v8    # "fance":Landroid/widget/RadioButton;
    .end local v9    # "he":Landroid/widget/RadioButton;
    .end local v10    # "hideMode":Landroid/widget/RadioButton;
    .end local v14    # "rockMode":Landroid/widget/RadioButton;
    .end local v15    # "save1M":Landroid/widget/RadioButton;
    .end local v16    # "save2K":Landroid/widget/RadioButton;
    .end local v17    # "save2M":Landroid/widget/RadioButton;
    .end local v18    # "save4K":Landroid/widget/RadioButton;
    .end local v19    # "save720P":Landroid/widget/RadioButton;
    .end local v20    # "save8M":Landroid/widget/RadioButton;
    .end local v21    # "save_1080":Landroid/widget/RadioButton;
    .end local v22    # "senseryMode":Landroid/widget/RadioButton;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 579
    .restart local v5    # "classicalMode":Landroid/widget/RadioButton;
    .restart local v10    # "hideMode":Landroid/widget/RadioButton;
    .restart local v14    # "rockMode":Landroid/widget/RadioButton;
    .restart local v22    # "senseryMode":Landroid/widget/RadioButton;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->operateMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 580
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 581
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->operateMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 582
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 583
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->operateMode:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 584
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 630
    .restart local v4    # "chinese":Landroid/widget/RadioButton;
    .restart local v7    # "english":Landroid/widget/RadioButton;
    .restart local v8    # "fance":Landroid/widget/RadioButton;
    .restart local v9    # "he":Landroid/widget/RadioButton;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 631
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 632
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 633
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 634
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 635
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 687
    .restart local v15    # "save1M":Landroid/widget/RadioButton;
    .restart local v17    # "save2M":Landroid/widget/RadioButton;
    .restart local v18    # "save4K":Landroid/widget/RadioButton;
    .restart local v20    # "save8M":Landroid/widget/RadioButton;
    :cond_c
    sget v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 688
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0x780

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0x438

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    goto/16 :goto_3

    .line 691
    :cond_d
    sget v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 692
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0xcc0

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0x990

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    goto/16 :goto_3

    .line 695
    :cond_e
    sget v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 696
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0x1000

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    const/16 v23, 0xc00

    sput v23, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    goto/16 :goto_3

    .line 752
    .restart local v16    # "save2K":Landroid/widget/RadioButton;
    .restart local v19    # "save720P":Landroid/widget/RadioButton;
    .restart local v21    # "save_1080":Landroid/widget/RadioButton;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    sget v23, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 753
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 754
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    sget v23, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v24, 0x438

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 755
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 824
    :cond_11
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 825
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 836
    .restart local v6    # "deviceDesc":Lcom/hfufo/bean/DeviceDesc;
    .restart local v12    # "photoSize":Ljava/lang/String;
    :cond_12
    const-string v23, "2"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 837
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 838
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 839
    :cond_13
    const-string v23, "3"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 840
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 841
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 842
    :cond_14
    const-string v23, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v23, v0

    sget-boolean v23, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-nez v23, :cond_15

    .line 844
    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 845
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 847
    :cond_15
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 848
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 159
    const-string v2, "data"

    invoke-virtual {p0, v2, v3}, Lcom/hfufo/rxdrone/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, "share":Landroid/content/SharedPreferences;
    const-string v2, "saveparam"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->issave:Z

    .line 161
    const-string v2, "right"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->rightmode:Z

    .line 162
    const-string v2, "operateMode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->operateMode:I

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "a":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getCountry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 169
    :goto_0
    const-string v2, "languageMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    .line 171
    iget v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->lastLanguage:I

    .line 173
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "video_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->type:I

    .line 174
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 175
    new-instance v2, Lcom/fh/util/SettingChange;

    invoke-direct {v2, p0}, Lcom/fh/util/SettingChange;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->setLanguage:Lcom/fh/util/SettingChange;

    .line 176
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->setLanguage:Lcom/fh/util/SettingChange;

    iget v3, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    invoke-virtual {v2, v3}, Lcom/fh/util/SettingChange;->setLanguage(I)V

    .line 177
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->shiftLanguage(I)V

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity;->savedInstanceState1:Landroid/os/Bundle;

    .line 181
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 182
    const v2, 0x7f040024

    invoke-virtual {p0, v2}, Lcom/hfufo/rxdrone/SettingActivity;->setContentView(I)V

    .line 184
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/hfufo/rxdrone/MainApplication;

    iput-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 186
    const v2, 0x7f0f015a

    invoke-virtual {p0, v2}, Lcom/hfufo/rxdrone/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/hfufo/rxdrone/SettingActivity$2;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/SettingActivity$2;-><init>(Lcom/hfufo/rxdrone/SettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v2, Lcom/fh/util/FtpHandlerThread;

    const-string v3, "personal_setting_thread"

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-direct {v2, v3, v4, v5}, Lcom/fh/util/FtpHandlerThread;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/hfufo/rxdrone/MainApplication;)V

    iput-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->mWorkHandlerThread:Lcom/fh/util/FtpHandlerThread;

    .line 194
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->mWorkHandlerThread:Lcom/fh/util/FtpHandlerThread;

    invoke-virtual {v2}, Lcom/fh/util/FtpHandlerThread;->start()V

    .line 195
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->mWorkHandlerThread:Lcom/fh/util/FtpHandlerThread;

    iget-object v3, p0, Lcom/hfufo/rxdrone/SettingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/fh/util/FtpHandlerThread;->setUIHandler(Landroid/os/Handler;)V

    .line 199
    invoke-direct {p0}, Lcom/hfufo/rxdrone/SettingActivity;->initParmView()V

    .line 201
    invoke-direct {p0}, Lcom/hfufo/rxdrone/SettingActivity;->initUdateView()V

    .line 203
    invoke-direct {p0}, Lcom/hfufo/rxdrone/SettingActivity;->initTextView()V

    .line 205
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/SettingActivity;->initRadioButton()V

    .line 207
    invoke-direct {p0}, Lcom/hfufo/rxdrone/SettingActivity;->getEncodecSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->supported2K:Z

    .line 214
    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 222
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->lastLanguage:I

    iget v1, p0, Lcom/hfufo/rxdrone/SettingActivity;->languageMode:I

    if-eq v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity;->savedInstanceState1:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 865
    :cond_0
    return-void
.end method
