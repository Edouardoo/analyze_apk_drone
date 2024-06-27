.class public Lcom/hfufo/rxdrone/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/fh/util/IActions;
.implements Lcom/jieli/lib/stream/util/ICommon;
.implements Lcom/fh/util/FlyCommand;
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "22fb5662b6cd8"

.field private static final MSG_UPLOAD_FAILED:I = 0x101

.field private static final MSG_UPLOAD_FINISH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private SSID:Ljava/lang/String;

.field private albumBtn:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0107
    .end annotation
.end field

.field private btnRL_hfufo:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0103
    .end annotation
.end field

.field private btnRL_hrwifi:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f010c
    .end annotation
.end field

.field private celibrationBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0106
    .end annotation
.end field

.field private check:Z

.field private chooseWIFI:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0119
    .end annotation
.end field

.field private con_hold:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0121
    .end annotation
.end field

.field private connectedSSID:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field private dialog:Landroid/app/AlertDialog;

.field private dialogUpdate:Landroid/app/AlertDialog;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field firstStart:Z

.field first_conncet:Z

.field private flight:Z

.field flight_mode_layout:Landroid/widget/RadioButton;

.field private gpsUpdate:Lcom/hfufo/dialog/GpsDialog;

.field private handle:I

.field private holdHandler:Landroid/os/Handler;

.field holdRunnable:Ljava/lang/Runnable;

.field i:I

.field private initOpencv:Z

.field private isHold:Z

.field private isNext:Z

.field private isOK:Z

.field isOncreate:Z

.field private isPause:Z

.field private languageMode:I

.field public mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mCascadeFile:Ljava/io/File;

.field private mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderCallback:Lorg/opencv/android/BaseLoaderCallback;

.field private mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

.field private mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

.field private mWifiCfg:Lcom/hfufo/widget/WLANCfg;

.field private mWorkHandlerThread:Lcom/fh/util/FtpHandlerThread;

.field private m_ssid:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0120
    .end annotation
.end field

.field private main_ac:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0101
    .end annotation
.end field

.field private main_help:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f010f
    .end annotation
.end field

.field private main_in:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0110
    .end annotation
.end field

.field master_mode_layout:Landroid/widget/RadioButton;

.field private mian_setting:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f010e
    .end annotation
.end field

.field private mian_setting_hfufo:Landroid/widget/ImageButton;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f011d
    .end annotation
.end field

.field private mian_setting_jx:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0109
    .end annotation
.end field

.field private mian_start_jx:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f010b
    .end annotation
.end field

.field private news:Ljava/lang/String;

.field private onItemClickLitener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

.field private online:Z

.field open:Z

.field private openWIFI:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f011a
    .end annotation
.end field

.field private openwifi:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f011f
    .end annotation
.end field

.field pDialog:Landroid/app/ProgressDialog;

.field private palm_mCascadeFile:Ljava/io/File;

.field protected permissions:[Ljava/lang/String;

.field private protocol1:Lcom/fh/util/Protocol1;

.field private protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

.field private radioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0113
    .end annotation
.end field

.field private rcRunnable:Ljava/lang/Runnable;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field resetRe:Z

.field private scan:Z

.field private scanWIFI:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0118
    .end annotation
.end field

.field private searchResult:Lcom/fh/lib/Define$DevSearch;

.field private set5GHz:Lcom/hfufo/dialog/GpsDialog;

.field private setLanguage:Lcom/fh/util/SettingChange;

.field private setting_jxrc:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0108
    .end annotation
.end field

.field private startBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0111
    .end annotation
.end field

.field private startBtn_hfufo:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0105
    .end annotation
.end field

.field private start_jxrc:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f010a
    .end annotation
.end field

.field private switch_hold:Lcom/kyleduo/switchbutton/SwitchButton;

.field private text_hold:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0123
    .end annotation
.end field

.field private type:I

.field private udateRunnable:Ljava/lang/Runnable;

.field private view11:Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f010d
    .end annotation
.end field

.field private view12:Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0112
    .end annotation
.end field

.field private wifiAdapter:Lcom/hfufo/widget/wifiRecyclerAdatper;

.field wifiConfigurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private wifiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wifiMgr:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/widget/wifiBean;",
            ">;"
        }
    .end annotation
.end field

.field private wifi_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0116
    .end annotation
.end field

.field private wifi_tv:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0117
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->isPause:Z

    .line 119
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->flight:Z

    .line 120
    iput v3, p0, Lcom/hfufo/rxdrone/MainActivity;->languageMode:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/rxdrone/MainActivity;->type:I

    .line 128
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->isOK:Z

    .line 132
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->check:Z

    .line 133
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->isNext:Z

    .line 135
    iput-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->SSID:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    .line 222
    new-instance v0, Lcom/fh/util/Protocol1;

    invoke-direct {v0}, Lcom/fh/util/Protocol1;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    .line 223
    new-instance v0, Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-direct {v0}, Lcom/fh/util/ProtocolOfQuanzhi;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    .line 224
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/MainActivity$1;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    .line 613
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "android.permission.BODY_SENSORS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->permissions:[Ljava/lang/String;

    .line 1110
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/MainActivity$4;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->onItemClickLitener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    .line 1175
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->first_conncet:Z

    .line 1202
    iput v3, p0, Lcom/hfufo/rxdrone/MainActivity;->i:I

    .line 1203
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->resetRe:Z

    .line 1205
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/MainActivity$5;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 1300
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/hfufo/rxdrone/MainActivity$7;-><init>(Lcom/hfufo/rxdrone/MainActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mLoaderCallback:Lorg/opencv/android/BaseLoaderCallback;

    .line 1366
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->isOncreate:Z

    .line 1564
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->firstStart:Z

    .line 1694
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    .line 1738
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->scan:Z

    .line 1809
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/MainActivity$8;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->udateRunnable:Ljava/lang/Runnable;

    .line 2090
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/MainActivity$13;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    .line 2241
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$15;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/MainActivity$15;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdRunnable:Ljava/lang/Runnable;

    .line 2435
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->initOpencv:Z

    .line 2456
    new-instance v0, Lcom/hfufo/rxdrone/MainActivity$16;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/MainActivity$16;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->rcRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->rcRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/hfufo/rxdrone/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/hfufo/rxdrone/MainActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/hfufo/rxdrone/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiSSID:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/hfufo/rxdrone/MainActivity;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/hfufo/rxdrone/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hfufo/rxdrone/MainActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mCascadeFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/hfufo/rxdrone/MainActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity;->mCascadeFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/hfufo/rxdrone/MainActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->palm_mCascadeFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/hfufo/rxdrone/MainActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity;->palm_mCascadeFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/hfufo/rxdrone/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget v0, p0, Lcom/hfufo/rxdrone/MainActivity;->type:I

    return v0
.end method

.method static synthetic access$1900(Lcom/hfufo/rxdrone/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->check:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/hfufo/rxdrone/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainActivity;->check:Z

    return p1
.end method

.method static synthetic access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/hfufo/rxdrone/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isOK:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/hfufo/rxdrone/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainActivity;->isOK:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->showNormalDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/hfufo/rxdrone/MainActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/ProtocolOfQuanzhi;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/hfufo/rxdrone/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isPause:Z

    return v0
.end method

.method static synthetic access$300(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/hfufo/rxdrone/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifi_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hfufo/rxdrone/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/MainActivity;->wifi_scan(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/hfufo/rxdrone/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hfufo/rxdrone/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    return v0
.end method

.method static synthetic access$802(Lcom/hfufo/rxdrone/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    return p1
.end method

.method static synthetic access$900(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    return-object v0
.end method

.method private albumBtnClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0107
        }
    .end annotation

    .prologue
    .line 1654
    new-instance v0, Lcom/hfufo/dialog/RxAlbumDialog;

    invoke-direct {v0, p0}, Lcom/hfufo/dialog/RxAlbumDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/hfufo/dialog/RxAlbumDialog;->show()V

    .line 1655
    return-void
.end method

.method private calibration(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0106
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2186
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    if-nez v0, :cond_1

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->calibration()V

    .line 2190
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->calibration()V

    .line 2193
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    const-string v1, "wifi_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2194
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "068"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "0129"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "0139"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v4}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2204
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2206
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2199
    :cond_3
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2200
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->sendControlCmd()V

    goto :goto_1
.end method

.method private checkUdate()V
    .locals 4

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->udateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1805
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->udateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1807
    return-void
.end method

.method private closeProgressDialog()V
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2088
    :cond_0
    return-void
.end method

.method public static createWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p0, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2350
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2351
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2352
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2353
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2357
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2359
    return-object v0
.end method

.method private createWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2337
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2338
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2339
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2340
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2341
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2342
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2345
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2346
    return-object v0
.end method

.method private getEdit()V
    .locals 4

    .prologue
    .line 725
    new-instance v2, Lcom/fh/util/SettingChange;

    invoke-direct {v2, p0}, Lcom/fh/util/SettingChange;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->setLanguage:Lcom/fh/util/SettingChange;

    .line 726
    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/hfufo/rxdrone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 727
    .local v1, "share":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 728
    .local v0, "a":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->setLanguage:Lcom/fh/util/SettingChange;

    invoke-virtual {v2}, Lcom/fh/util/SettingChange;->getCountry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 733
    :goto_0
    const-string v2, "languageMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/MainActivity;->languageMode:I

    .line 734
    const-string v2, "flight"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->flight:Z

    .line 735
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 736
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->setLanguage:Lcom/fh/util/SettingChange;

    iget v3, p0, Lcom/hfufo/rxdrone/MainActivity;->languageMode:I

    invoke-virtual {v2, v3}, Lcom/fh/util/SettingChange;->setLanguage(I)V

    .line 737
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->refresh()V

    .line 738
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getScreenSize()V
    .locals 3

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1469
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1470
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1471
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sput v2, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    .line 1472
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sput v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    .line 1473
    return-void
.end method

.method private goToSetting()V
    .locals 3

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/MainActivity;->ishd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1685
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1692
    :goto_0
    return-void

    .line 1688
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1689
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "video_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initOpencv()V
    .locals 6

    .prologue
    .line 2438
    iget-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->initOpencv:Z

    if-nez v3, :cond_1

    .line 2454
    :cond_0
    :goto_0
    return-void

    .line 2441
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2442
    .local v2, "state":Z
    if-eqz v2, :cond_0

    .line 2445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2449
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/opencv/openCVJni;->DeteFaceAndPlamInit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->initOpencv:Z

    goto :goto_0

    .line 2450
    :catch_0
    move-exception v0

    .line 2451
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jni error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 682
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    if-nez v1, :cond_0

    .line 683
    new-instance v1, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;-><init>(Lcom/hfufo/rxdrone/MainActivity;Lcom/hfufo/rxdrone/MainActivity$1;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    .line 685
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 686
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.jieli.dvflying_init_ctp_socket_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v1, "com.jieli.dvflying_device_connection_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v1, "com.jieli.dvflying_device_wifi_disconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v1, "com.jieli.dvflying_sdcard_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v1, "com.jieli.dvflying_dev_access"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v1, "com.jieli.dv.running2_5g_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v1, "STOP_SEND_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    return-void
.end method

.method private initService()V
    .locals 3

    .prologue
    .line 716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.videooperate.service.scanlocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/videooperate/service/ScanLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 718
    const-string v1, "cmd"

    const/16 v2, 0x7d2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 721
    return-void
.end method

.method private isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2327
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2328
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2329
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2333
    .end local v0    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConfigurationSaved(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p2, "SSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .prologue
    .line 2275
    .local p1, "ConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    .line 2278
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2279
    .local v0, "temp":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2280
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2285
    .end local v0    # "temp":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is_rx(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 850
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->isHD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->is52(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    :cond_0
    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ishd(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 889
    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->isHD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->showUI()V

    .line 891
    iput v0, p0, Lcom/hfufo/rxdrone/MainActivity;->type:I

    .line 896
    :goto_0
    return v0

    .line 894
    :cond_0
    iput v1, p0, Lcom/hfufo/rxdrone/MainActivity;->type:I

    .line 895
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->showUI()V

    move v0, v1

    .line 896
    goto :goto_0
.end method

.method private openProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2074
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 2075
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2077
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2078
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2079
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2080
    return-void
.end method

.method private openWIFI(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f011a
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1716
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 1719
    :cond_0
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1720
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    .line 1722
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    if-eqz v0, :cond_3

    .line 1723
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v3, 0x7f080082

    invoke-virtual {v0, v3}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 1724
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    const v3, 0x7f0200a3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1725
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1726
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1736
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1720
    goto :goto_0

    .line 1728
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1729
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1730
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1
.end method

.method private openWIFISetting(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f011f
        }
    .end annotation

    .prologue
    .line 1647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isOK:Z

    .line 1649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1650
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    const v1, 0x7f080017

    const v2, 0x7f0800b2

    .line 1476
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->startBtn_hfufo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1477
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mian_setting:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1478
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mian_setting_jx:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1480
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_help:Landroid/widget/TextView;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1481
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openwifi:Landroid/widget/TextView;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1483
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->startBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1484
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mian_start_jx:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1486
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->celibrationBtn:Landroid/widget/TextView;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1487
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->flight_mode_layout:Landroid/widget/RadioButton;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 1488
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->master_mode_layout:Landroid/widget/RadioButton;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 1489
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->text_hold:Landroid/widget/TextView;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1497
    return-void
.end method

.method private refreshWifi(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f011b
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1698
    const/16 v1, 0x3e8

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1699
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1700
    .local v0, "status":I
    if-ne v0, v4, :cond_1

    .line 1701
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1702
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1703
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    .line 1711
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 1705
    .restart local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1706
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1707
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getWifiSSID()V

    .line 1708
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    goto :goto_0
.end method

.method private requestWrite()V
    .locals 4

    .prologue
    const/high16 v3, 0x10000000

    .line 602
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 603
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 607
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private scanWIFI(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0118
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1742
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/MainActivity;->scan:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainActivity;->scan:Z

    .line 1743
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/MainActivity;->scan:Z

    if-eqz v1, :cond_2

    .line 1744
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->scanWIFI:Landroid/widget/ImageView;

    const v4, 0x7f0200da

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1745
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->chooseWIFI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1747
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1748
    .local v0, "status":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi\u72b6\u6001 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1749
    if-ne v0, v2, :cond_1

    .line 1750
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1751
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1752
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    .line 1765
    .end local v0    # "status":I
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1742
    goto :goto_0

    .line 1754
    .restart local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->openWIFI:Landroid/widget/ImageView;

    const v4, 0x7f0200a3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1755
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1756
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getWifiSSID()V

    .line 1757
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    goto :goto_1

    .line 1761
    .end local v0    # "status":I
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->scanWIFI:Landroid/widget/ImageView;

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1762
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->chooseWIFI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1763
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1
.end method

.method private searchDevList()V
    .locals 3

    .prologue
    .line 1268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "serch list"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1269
    invoke-static {}, Lcom/fh/lib/FHSDK;->searchDev()I

    move-result v0

    iput v0, p0, Lcom/hfufo/rxdrone/MainActivity;->handle:I

    .line 1270
    iget v0, p0, Lcom/hfufo/rxdrone/MainActivity;->handle:I

    if-nez v0, :cond_0

    .line 1271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "handle ==0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1275
    :cond_0
    :goto_0
    iget v0, p0, Lcom/hfufo/rxdrone/MainActivity;->handle:I

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    invoke-static {v0, v1}, Lcom/fh/lib/FHSDK;->searchNextDev(ILcom/fh/lib/Define$DevSearch;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1276
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    iget v0, v0, Lcom/fh/lib/Define$DevSearch;->isAlive:I

    if-lez v0, :cond_1

    .line 1277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMap:Ljava/util/HashMap;

    .line 1280
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMap:Ljava/util/HashMap;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    iget-object v2, v2, Lcom/fh/lib/Define$DevSearch;->devName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMap:Ljava/util/HashMap;

    const-string v1, "ip"

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    iget-object v2, v2, Lcom/fh/lib/Define$DevSearch;->devIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMap:Ljava/util/HashMap;

    const-string v1, "port"

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    iget-object v2, v2, Lcom/fh/lib/Define$DevSearch;->port:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1285
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5c0f\u4e8e0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1288
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u6536\u7f29\u4e0d\u5230"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1289
    iget v0, p0, Lcom/hfufo/rxdrone/MainActivity;->handle:I

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->searchDevClose(I)I

    .line 1296
    return-void
.end method

.method private sendControlCmd()V
    .locals 6

    .prologue
    .line 2211
    new-instance v2, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 2212
    .local v2, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v4, "FLIGHT_CONTROL"

    invoke-virtual {v2, v4}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 2213
    const-string v4, "PUT"

    invoke-virtual {v2, v4}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 2214
    const-string v0, ""

    .line 2216
    .local v0, "cmd":Ljava/lang/String;
    sget-boolean v4, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-eqz v4, :cond_0

    .line 2217
    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v4}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 2225
    :goto_0
    const-string v4, "DRONE_DATA"

    invoke-virtual {v2, v4, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    new-instance v3, Lcom/hfufo/rxdrone/MainActivity$14;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/MainActivity$14;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    .line 2233
    .local v3, "sr":Lcom/jieli/lib/dv/control/connect/response/SendResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x14

    if-ge v1, v4, :cond_2

    .line 2234
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 2236
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2219
    .end local v1    # "i":I
    .end local v3    # "sr":Lcom/jieli/lib/dv/control/connect/response/SendResponse;
    :cond_0
    sget-boolean v4, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    if-eqz v4, :cond_1

    .line 2220
    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v4}, Lcom/fh/util/Protocol1;->packageOf8()[B

    move-result-object v4

    invoke-static {v4}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2222
    :cond_1
    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v4}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2238
    .restart local v1    # "i":I
    .restart local v3    # "sr":Lcom/jieli/lib/dv/control/connect/response/SendResponse;
    :cond_2
    return-void
.end method

.method private setHold(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0121
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1539
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    .line 1540
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->con_hold:Landroid/widget/ImageView;

    const v2, 0x7f03001c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1542
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 1547
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1539
    goto :goto_0

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->con_hold:Landroid/widget/ImageView;

    const v1, 0x7f03001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1
.end method

.method private setWifiName(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 903
    const-string v0, "Wifi_720"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wifi_720"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WIFI_720"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Wifi_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v2, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    .line 917
    :goto_0
    const-string v0, "M8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 918
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    .line 923
    :goto_1
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->APP_NAME_P:Z

    .line 929
    :goto_2
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 930
    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 931
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    .line 932
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 933
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    .line 946
    :cond_2
    :goto_3
    const-string v0, "720"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 947
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_720:Z

    .line 951
    :goto_4
    return-void

    .line 905
    :cond_3
    const-string v0, "Wifi_1080"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "wifi_1080"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WIFI_1080"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v2, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto :goto_0

    .line 907
    :cond_5
    const-string v0, "WIFI_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 908
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto :goto_0

    .line 909
    :cond_6
    const-string v0, "WIFI-FLOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "H1W-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "M8-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 910
    :cond_7
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v0, 0x2

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto/16 :goto_0

    .line 911
    :cond_8
    const-string v0, "wifi_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "HF-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 912
    :cond_9
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v0, 0x3

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto/16 :goto_0

    .line 914
    :cond_a
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto/16 :goto_0

    .line 920
    :cond_b
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    goto/16 :goto_1

    .line 926
    :cond_c
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->APP_NAME_P:Z

    goto/16 :goto_2

    .line 934
    :cond_d
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    goto/16 :goto_3

    .line 938
    :cond_e
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 939
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 940
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    goto/16 :goto_3

    .line 942
    :cond_f
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 943
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    goto/16 :goto_3

    .line 949
    :cond_10
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_720:Z

    goto/16 :goto_4
.end method

.method private show5GHzDialog()V
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    if-nez v0, :cond_0

    .line 1962
    new-instance v0, Lcom/hfufo/dialog/GpsDialog;

    new-instance v1, Lcom/hfufo/rxdrone/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/MainActivity$10;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/hfufo/dialog/GpsDialog;-><init>(Landroid/app/Activity;Lcom/hfufo/dialog/GpsDialog$DialogListener;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    .line 1971
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/GpsDialog;->setdTitle(I)V

    .line 1972
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/GpsDialog;->setdMessage(I)V

    .line 1973
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/GpsDialog;->setdPositiveButton(I)V

    .line 1974
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/GpsDialog;->setdNegativeButton(I)V

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->set5GHz:Lcom/hfufo/dialog/GpsDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/GpsDialog;->show()V

    .line 1977
    return-void
.end method

.method private showGPSDialog()V
    .locals 2

    .prologue
    .line 2005
    new-instance v0, Lcom/hfufo/dialog/GpsDialog;

    new-instance v1, Lcom/hfufo/rxdrone/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/MainActivity$11;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/hfufo/dialog/GpsDialog;-><init>(Landroid/app/Activity;Lcom/hfufo/dialog/GpsDialog$DialogListener;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->gpsUpdate:Lcom/hfufo/dialog/GpsDialog;

    .line 2019
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->gpsUpdate:Lcom/hfufo/dialog/GpsDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/GpsDialog;->show()V

    .line 2020
    return-void
.end method

.method private showNormalDialog()V
    .locals 3

    .prologue
    .line 1931
    iget v1, p0, Lcom/hfufo/rxdrone/MainActivity;->type:I

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getDeviceVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, "deviceVersion":Ljava/lang/String;
    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    if-nez v1, :cond_2

    .line 1938
    new-instance v1, Lcom/hfufo/dialog/GpsDialog;

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$9;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/hfufo/dialog/GpsDialog;-><init>(Landroid/app/Activity;Lcom/hfufo/dialog/GpsDialog$DialogListener;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    .line 1951
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    const v2, 0x7f080148

    invoke-virtual {v1, v2}, Lcom/hfufo/dialog/GpsDialog;->setdTitle(I)V

    .line 1952
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Lcom/hfufo/dialog/GpsDialog;->setdMessage(I)V

    .line 1953
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    const v2, 0x7f0800b3

    invoke-virtual {v1, v2}, Lcom/hfufo/dialog/GpsDialog;->setdPositiveButton(I)V

    .line 1954
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Lcom/hfufo/dialog/GpsDialog;->setdNegativeButton(I)V

    .line 1955
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mUpdateDialog:Lcom/hfufo/dialog/GpsDialog;

    invoke-virtual {v1}, Lcom/hfufo/dialog/GpsDialog;->show()V

    goto :goto_0
.end method

.method private showUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2363
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2433
    :goto_0
    :pswitch_0
    return-void

    .line 2366
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->btnRL_hrwifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2367
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_help:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2368
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_in:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2369
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view11:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view12:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2371
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openwifi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2372
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2377
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->btnRL_hrwifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2378
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_help:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2379
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_in:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2380
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view11:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view12:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openwifi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2383
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2388
    :pswitch_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->btnRL_hfufo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2389
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 2390
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mian_setting_hfufo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2391
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifi_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2395
    :pswitch_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->btnRL_hrwifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2396
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->setting_jxrc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2397
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->start_jxrc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2398
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openwifi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2399
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2409
    :pswitch_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->btnRL_hrwifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2410
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_help:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2411
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_in:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view11:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view12:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openwifi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2415
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2422
    :pswitch_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_help:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2423
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->main_in:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2424
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view11:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->view12:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->btnRL_hrwifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2427
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->openwifi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2428
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showUpdateDialog()V
    .locals 4

    .prologue
    .line 1987
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1989
    .local v0, "normalDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1991
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1994
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->dialogUpdate:Landroid/app/AlertDialog;

    .line 1995
    return-void
.end method

.method private startBtnClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1572
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainConnectDevice click: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->rcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1574
    const/16 v1, 0x5dc

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1575
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/MainActivity;->is_rx(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1576
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1577
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "online"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1578
    const-string v1, "hold"

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1579
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1635
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/MainActivity;->ishd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1585
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getConncetion()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1593
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1594
    const-string v1, "123456"

    const-string v2, "\u5f00\u59cb\u672a\u8fde\u63a5"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080035

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1596
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/MainActivity;->resetRe:Z

    if-eqz v1, :cond_2

    .line 1597
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 1599
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/MainActivity;->connectDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 1602
    :cond_3
    const-string v1, "123456"

    const-string v2, "\u5f00\u59cb\u5df2\u8fde\u63a5"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080036

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1604
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->resetRegister()V

    .line 1605
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainActivity;->resetRe:Z

    .line 1606
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 1607
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1608
    invoke-static {}, Lcom/fh/util/ClientManager;->release()V

    goto :goto_0

    .line 1612
    :cond_4
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/MainActivity;->firstStart:Z

    if-eqz v1, :cond_5

    .line 1613
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->firstStart:Z

    .line 1618
    :cond_5
    const-string v1, "123456"

    const-string v2, "startActivity HDManualCtrlActivity"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1620
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "online"

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1621
    const-string v1, "hold"

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1622
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1628
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1629
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "online"

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1630
    const-string v1, "hold"

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->isHold:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1631
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private startBtnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0111
        }
    .end annotation

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->startBtnClick()V

    .line 1552
    return-void
.end method

.method private startBtnHFClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0105
        }
    .end annotation

    .prologue
    .line 1561
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->startBtnClick()V

    .line 1562
    return-void
.end method

.method private startJXClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f010b
        }
    .end annotation

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->startBtnClick()V

    .line 1557
    return-void
.end method

.method private start_main()V
    .locals 1

    .prologue
    .line 804
    iput-object p0, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    .line 807
    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 808
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 809
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->flight_mode_layout:Landroid/widget/RadioButton;

    .line 810
    const v0, 0x7f0f0115

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->master_mode_layout:Landroid/widget/RadioButton;

    .line 812
    return-void
.end method

.method private toHFSet(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f011d
        }
    .end annotation

    .prologue
    .line 1665
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->goToSetting()V

    .line 1666
    return-void
.end method

.method private toHelp(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f010f
        }
    .end annotation

    .prologue
    .line 1659
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/PdfActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1661
    return-void
.end method

.method private toJXSet(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0109
        }
    .end annotation

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->goToSetting()V

    .line 1671
    return-void
.end method

.method private toSet(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f010e
        }
    .end annotation

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->goToSetting()V

    .line 1676
    return-void
.end method

.method private wifi_scan(Z)V
    .locals 10
    .param p1, "reset"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 955
    const-string v5, "unknow"

    iput-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    .line 956
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 957
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 961
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 962
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 963
    if-eqz v3, :cond_0

    .line 964
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 965
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkCapabilities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 977
    .local v4, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 984
    .restart local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 986
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_5

    .line 987
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    .line 988
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 992
    .local v2, "locManager":Landroid/location/LocationManager;
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------exsit---->>>ssid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/MainActivity;->is_rx(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 995
    const-string v5, "MainActivity"

    const-string v6, "wifi_scan-Main: "

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    .line 999
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    iput-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    .line 1000
    if-eqz p1, :cond_2

    .line 1001
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/MainActivity;->setWifiName(Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1003
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1006
    :cond_2
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/MainActivity;->ishd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1008
    invoke-virtual {p0, v8}, Lcom/hfufo/rxdrone/MainActivity;->connectDevice(Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->checkUdate()V

    .line 1016
    :goto_0
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->wifi_tv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->news:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    .end local v2    # "locManager":Landroid/location/LocationManager;
    :goto_1
    return-void

    .line 1012
    .restart local v2    # "locManager":Landroid/location/LocationManager;
    :cond_3
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->initSocket()V

    goto :goto_0

    .line 1024
    :cond_4
    iput-object v8, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    .line 1025
    iput-boolean v9, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    .line 1027
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    const-string v6, "Disconnection"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->wifi_tv:Landroid/widget/TextView;

    const-string v6, "Disconnection"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1033
    .end local v2    # "locManager":Landroid/location/LocationManager;
    :cond_5
    iput-object v8, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    .line 1034
    iput-boolean v9, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    .line 1036
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->m_ssid:Landroid/widget/TextView;

    const-string v6, "Disconnection"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v5, p0, Lcom/hfufo/rxdrone/MainActivity;->wifi_tv:Landroid/widget/TextView;

    const-string v6, "Disconnection"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public Init()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Lcom/hfufo/widget/WLANCfg;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hfufo/widget/WLANCfg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mWifiCfg:Lcom/hfufo/widget/WLANCfg;

    .line 704
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mWifiCfg:Lcom/hfufo/widget/WLANCfg;

    invoke-virtual {v0}, Lcom/hfufo/widget/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->SSID:Ljava/lang/String;

    .line 705
    new-instance v0, Lcom/fh/lib/Define$DevSearch;

    new-instance v1, Lcom/fh/lib/Define;

    invoke-direct {v1}, Lcom/fh/lib/Define;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fh/lib/Define$DevSearch;-><init>(Lcom/fh/lib/Define;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    .line 708
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->initService()V

    .line 712
    return-void
.end method

.method public TryToAppAccess()V
    .locals 3

    .prologue
    .line 1233
    const-string v0, "123456"

    const-string v1, "TryToAppAccess-main: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getAppVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$6;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToAccessDevice(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 1244
    return-void
.end method

.method public addNetWorkAndConnectOnAndroidM(Landroid/net/wifi/WifiManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "ConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v4, 0x1

    .line 2259
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2260
    invoke-direct {p0, p2, p3}, Lcom/hfufo/rxdrone/MainActivity;->isWifiConfigurationSaved(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2261
    .local v0, "temp":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 2262
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v3

    .line 2271
    .end local v0    # "temp":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v3

    .line 2264
    .restart local v0    # "temp":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hfufo/rxdrone/MainActivity;->setWifiParams(Landroid/net/wifi/WifiManager;Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2265
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 2266
    .local v1, "wcgID":I
    invoke-virtual {p1, v1, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2271
    .end local v0    # "temp":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "wcgID":I
    .end local v2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public connectDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1180
    const-string v0, "123456"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainConnectDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->first_conncet:Z

    if-eqz v0, :cond_1

    .line 1182
    const-string v0, "MainActivity"

    const-string v1, "Main first_conncet: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getConncetion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->disconnect()V

    .line 1186
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->first_conncet:Z

    .line 1187
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 1192
    :cond_1
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    const-string v0, "MainActivity"

    const-string v1, "MainConnectDevice: !isConnected"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v3}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(I)V

    .line 1200
    :cond_2
    :goto_0
    return-void

    .line 1197
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v3, p1}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public connectWifiNoPassword(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 5
    .param p1, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1786
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1787
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1788
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1789
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1790
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1791
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1792
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1793
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1794
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1795
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1800
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    return v1
.end method

.method public getFrameCacheNum()I
    .locals 5

    .prologue
    .line 1500
    const/4 v0, 0x3

    .line 1501
    .local v0, "mFrameCacheNum":I
    const/4 v1, 0x0

    .line 1502
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "transInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/hfufo/rxdrone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1503
    if-eqz v1, :cond_0

    .line 1504
    const-string v2, ""

    const-string v3, "mFrameCacheNum"

    const-string v4, "3"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1505
    const/4 v0, 0x3

    .line 1510
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    const-string v2, "mFrameCacheNum"

    const-string v3, "3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getTransMode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1514
    const/4 v0, 0x1

    .line 1515
    .local v0, "mTransMode":I
    const-string v2, "transInfo"

    invoke-virtual {p0, v2, v3}, Lcom/hfufo/rxdrone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1516
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 1517
    const-string v2, "transMode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 1518
    const/4 v0, 0x1

    .line 1525
    :cond_0
    :goto_0
    return v0

    .line 1520
    :cond_1
    const-string v2, "transMode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getWifiSSID()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1048
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiSSID:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 1049
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiSSID:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1052
    :cond_0
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_1

    .line 1053
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 1054
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiSSID:Ljava/util/List;

    .line 1055
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 1056
    .local v4, "locManager":Landroid/location/LocationManager;
    const-string v6, "gps"

    invoke-virtual {v4, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1059
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->showGPSDialog()V

    .line 1073
    :goto_0
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiConfigurationList:Ljava/util/List;

    .line 1074
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1075
    .local v0, "ScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 1077
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/hfufo/rxdrone/MainActivity;->is_rx(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1078
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    .line 1079
    .local v5, "streng":I
    new-instance v1, Lcom/hfufo/widget/wifiBean;

    invoke-direct {v1}, Lcom/hfufo/widget/wifiBean;-><init>()V

    .line 1080
    .local v1, "bean":Lcom/hfufo/widget/wifiBean;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/hfufo/widget/wifiBean;->setWifiSSID(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v1, v9}, Lcom/hfufo/widget/wifiBean;->setState(Z)V

    .line 1082
    invoke-virtual {v1, v5}, Lcom/hfufo/widget/wifiBean;->setLevel(I)V

    .line 1084
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1085
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/hfufo/rxdrone/MainActivity;->connectedSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1086
    invoke-virtual {v1, v8}, Lcom/hfufo/widget/wifiBean;->setState(Z)V

    .line 1091
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiSSID:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    .end local v1    # "bean":Lcom/hfufo/widget/wifiBean;
    .end local v5    # "streng":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1063
    .end local v0    # "ScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->currentWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1064
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    .line 1088
    .restart local v0    # "ScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v1    # "bean":Lcom/hfufo/widget/wifiBean;
    .restart local v2    # "i":I
    .restart local v5    # "streng":I
    :cond_5
    invoke-virtual {v1, v9}, Lcom/hfufo/widget/wifiBean;->setState(Z)V

    goto :goto_2

    .line 1095
    .end local v1    # "bean":Lcom/hfufo/widget/wifiBean;
    .end local v5    # "streng":I
    :cond_6
    new-instance v6, Lcom/hfufo/widget/wifiRecyclerAdatper;

    iget-object v7, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiSSID:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/hfufo/widget/wifiRecyclerAdatper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiAdapter:Lcom/hfufo/widget/wifiRecyclerAdatper;

    .line 1096
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v3, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v6, :cond_7

    .line 1098
    const v6, 0x7f0f011c

    invoke-virtual {p0, v6}, Lcom/hfufo/rxdrone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1100
    :cond_7
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1101
    invoke-virtual {v3, v8}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1103
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1105
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiAdapter:Lcom/hfufo/widget/wifiRecyclerAdatper;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1107
    iget-object v6, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiAdapter:Lcom/hfufo/widget/wifiRecyclerAdatper;

    iget-object v7, p0, Lcom/hfufo/rxdrone/MainActivity;->onItemClickLitener:Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;

    invoke-virtual {v6, v7}, Lcom/hfufo/widget/wifiRecyclerAdatper;->setOnItemClickLitener(Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;)V

    .line 1108
    return-void
.end method

.method public initSocket()V
    .locals 3

    .prologue
    .line 1249
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/CommandHub;->isActive()Z

    move-result v0

    .line 1251
    .local v0, "isSocketActive":Z
    if-nez v0, :cond_0

    .line 1253
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "service \u6307\u4ee4\u53d1\u9001"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1254
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/MainActivity;->sendCommandToService(I)V

    .line 1257
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 506
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 510
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->setContentView(I)V

    .line 513
    invoke-static {v2}, Lcom/jieli/lib/stream/util/Dbug;->openOrCloseDebug(Z)V

    .line 514
    invoke-static {v2}, Lcom/fh/util/Dbug;->openOrCloseDebug(Z)V

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->requestAllPower()V

    .line 519
    :cond_0
    invoke-static {p0}, Lcom/micro/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 520
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->start_main()V

    .line 522
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->getEdit()V

    .line 523
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 524
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/hfufo/rxdrone/MainApplication;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 525
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    .line 526
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->initReceiver()V

    .line 528
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->Init()V

    .line 556
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->isNext:Z

    .line 559
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    const-string v0, "MainActivity"

    const-string v1, "Internal OpenCV library not found. Using OpenCV Manager for initialization"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    sget-object v1, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/videooperate/utils/PermissionUtil;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/opencv/openCVJni;->initFile(Landroid/content/Context;)V

    .line 569
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->initOpencv()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->getScreenSize()V

    .line 586
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->showUI()V

    .line 588
    const-string v0, "MainActivity"

    const-string v1, "oncreate main"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->switch_hold:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 591
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->switch_hold:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 592
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->switch_hold:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/hfufo/rxdrone/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/MainActivity$2;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 598
    return-void

    .line 563
    :cond_2
    const-string v0, "MainActivity"

    const-string v1, "OpenCV library found inside package. Using it!"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mLoaderCallback:Lorg/opencv/android/BaseLoaderCallback;

    invoke-virtual {v0, v2}, Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1438
    const-string v0, "123456"

    const-string v1, "destroy main"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1440
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->first_conncet:Z

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/rxdrone/MainActivity;->handle:I

    .line 1444
    iput-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->searchResult:Lcom/fh/lib/Define$DevSearch;

    .line 1445
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1447
    iput-object v2, p0, Lcom/hfufo/rxdrone/MainActivity;->mReceiver:Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1453
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1455
    :cond_2
    invoke-static {}, Lcom/task/UDPClientGPS;->getInstance()Lcom/task/UDPClientGPS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/task/UDPClientGPS;->releaseListener()V

    .line 1456
    invoke-static {}, Lcom/task/UDPClientGPS;->getInstance()Lcom/task/UDPClientGPS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/task/UDPClientGPS;->closeGpsUdp()V

    .line 1457
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 1458
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1459
    invoke-static {}, Lcom/fh/util/ClientManager;->release()V

    .line 1460
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1461
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->release()V

    .line 1462
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->release()V

    .line 1463
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1465
    return-void
.end method

.method public onMountState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mountState"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 452
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 499
    :cond_1
    :goto_1
    return-void

    .line 452
    :sswitch_0
    const-string v3, "-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 455
    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 462
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->setSdcardExist(Z)V

    goto :goto_1

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v2}, Lcom/hfufo/rxdrone/MainApplication;->setSdcardExist(Z)V

    .line 481
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 659
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 660
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 661
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 663
    aget v1, p3, v0

    if-nez v1, :cond_0

    .line 666
    aget-object v1, p2, v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/opencv/openCVJni;->initFile(Landroid/content/Context;)V

    .line 669
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->initOpencv()V

    .line 661
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1407
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1411
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->holdHandler:Landroid/os/Handler;

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 1414
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/MainActivity;->isPause:Z

    .line 1415
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->rcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1422
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->online:Z

    if-nez v0, :cond_2

    .line 1423
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/MainActivity;->wifi_scan(Z)V

    .line 1425
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 1370
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1371
    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->context:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1372
    .local v2, "locManager":Landroid/location/LocationManager;
    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1374
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->showGPSDialog()V

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->setRadioListener()V

    .line 1381
    const-string v4, "data"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/hfufo/rxdrone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1382
    .local v3, "share":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 1383
    .local v0, "a":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hfufo/rxdrone/MainApplication;->getCountry()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1384
    const/4 v0, 0x0

    .line 1388
    :goto_0
    const-string v4, "languageMode"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1389
    .local v1, "language":I
    const-string v4, "flight"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->flight:Z

    .line 1394
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1395
    iget v4, p0, Lcom/hfufo/rxdrone/MainActivity;->languageMode:I

    if-eq v4, v1, :cond_1

    .line 1396
    iput v1, p0, Lcom/hfufo/rxdrone/MainActivity;->languageMode:I

    .line 1397
    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity;->setLanguage:Lcom/fh/util/SettingChange;

    invoke-virtual {v4, v1}, Lcom/fh/util/SettingChange;->setLanguage(I)V

    .line 1398
    invoke-direct {p0}, Lcom/hfufo/rxdrone/MainActivity;->refresh()V

    .line 1401
    :cond_1
    return-void

    .line 1386
    .end local v1    # "language":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainActivity;->isPause:Z

    .line 1430
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1434
    return-void
.end method

.method public requestAllPower()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->permissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->permissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->permissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_1
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.BODY_SENSORS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.permission.LOCATION_HARDWARE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 656
    :cond_2
    return-void
.end method

.method public sendCommandToService(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 1261
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1262
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1263
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1265
    return-void
.end method

.method public setRadioListener()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 741
    iget-object v3, p0, Lcom/hfufo/rxdrone/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "flight"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 742
    iget-object v3, p0, Lcom/hfufo/rxdrone/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    const-string v3, "data"

    invoke-virtual {p0, v3, v2}, Lcom/hfufo/rxdrone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 744
    .local v0, "share":Landroid/content/SharedPreferences;
    const-string v3, "flight"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/hfufo/rxdrone/MainActivity;->flight:Z

    .line 746
    iget-object v3, p0, Lcom/hfufo/rxdrone/MainActivity;->flight_mode_layout:Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->flight:Z

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 747
    iget-object v3, p0, Lcom/hfufo/rxdrone/MainActivity;->master_mode_layout:Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/hfufo/rxdrone/MainActivity;->flight:Z

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 749
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/hfufo/rxdrone/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/MainActivity$3;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 774
    return-void

    :cond_0
    move v1, v2

    .line 747
    goto :goto_0
.end method

.method public setWifiParams(Landroid/net/wifi/WifiManager;Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .prologue
    .local p2, "ConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v6, 0x0

    .line 2291
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2292
    .local v0, "apConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 2293
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 2294
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 2295
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 2296
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 2297
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2298
    .local v1, "temp":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2299
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2300
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0

    .line 2306
    .end local v1    # "temp":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2308
    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2311
    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2321
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 2322
    return-object v0
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(ILjava/lang/String;)V

    .line 447
    return-void
.end method

.method public udateDevice()V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2068
    return-void
.end method
