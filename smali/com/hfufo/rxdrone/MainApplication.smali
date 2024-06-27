.class public Lcom/hfufo/rxdrone/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# static fields
.field public static final APP_NAME:I = 0x1

.field public static final APP_NAME_KE:Z

.field public static APP_NAME_P:Z

.field public static PICTURE_HEIGHT:I

.field public static PICTURE_SIZE:I

.field public static PICTURE_WIDTH:I

.field public static STREAM_SIZE:I

.field public static VIDEO1080P_SUPPORT:Z

.field public static VIDEO2k_SUPPORT:Z

.field public static VIDEO_SIZE:I

.field public static WIFI_Name:I

.field public static final YX:Z

.field public static c_720:Z

.field public static c_WIFI:Z

.field public static c_wifi:Z

.field public static e_8data:Z

.field public static hasReadPixel:Z

.field public static isFactoryMode:Z

.field public static isGuangJiao:Z

.field public static isQuanzhi:Z

.field private static sInstance:Lcom/hfufo/rxdrone/MainApplication;

.field public static screenHeight:F

.field public static screenWidth:F

.field public static useMediacodec:Z


# instance fields
.field public All_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final OPEN_MAIN_UDATE:Z

.field public final OPEN_UDATE:Z

.field public final OPEN_pd_UDATE:Z

.field private UUID:Ljava/lang/String;

.field public final WIFI_12VERSION:Ljava/lang/String;

.field public final WIFI_15VERSION:Ljava/lang/String;

.field public final WIFI_SSID:Ljava/lang/String;

.field public final WIFI_VERSION:Ljava/lang/String;

.field public final WIFI_VERSION_HF:Ljava/lang/String;

.field public final WIFI_VERSION_HM:Ljava/lang/String;

.field public final WIFI_VERSION_XM:Ljava/lang/String;

.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/hfufo/bean/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private appName:Ljava/lang/String;

.field private appVersion:I

.field private appVersionName:Ljava/lang/String;

.field private captureSize:I

.field public connectIP:Ljava/lang/String;

.field public connectedWifi:Z

.field public debug_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private deviceDesc:Lcom/hfufo/bean/DeviceDesc;

.field private deviceSettingInfo:Lcom/hfufo/bean/DeviceSettingInfo;

.field private deviceUUID:Ljava/lang/String;

.field private isAbnormalExitThread:Z

.field private isAllowEnterBrowseMode:Z

.field private isBrowsing:Z

.field private isConnected:Z

.field private isFirstReadData:Z

.field private isFrontLastTimePlaying:Z

.field private isJPEG:Z

.field private isModifyPWD:Z

.field private isModifySSID:Z

.field private isOffLineMode:Z

.field private isRearLastTimePlaying:Z

.field private isUpgrading:Z

.field public mMp3Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToastLong:Landroid/widget/Toast;

.field private mToastShort:Landroid/widget/Toast;

.field private musicID:I

.field private musicID1:I

.field public music_LocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field

.field public music_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field

.field private outputPath:Ljava/lang/String;

.field public record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sdcardExist:Z

.field private searchMode:I

.field private setLanguage:Lcom/fh/util/SettingChange;

.field public snapshot_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x2d0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    .line 78
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->APP_NAME_P:Z

    .line 88
    sput v1, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    .line 89
    const/16 v0, 0x1000

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    .line 90
    const/16 v0, 0xc00

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    .line 91
    sput v4, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    .line 92
    sput v4, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    .line 93
    sput v2, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_SIZE:I

    .line 95
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    .line 96
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO2k_SUPPORT:Z

    .line 97
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    .line 98
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    .line 99
    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    .line 100
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 101
    sput-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    .line 102
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    .line 103
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_720:Z

    .line 105
    sput v3, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    .line 106
    sput v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    .line 107
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->isFactoryMode:Z

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/hfufo/rxdrone/MainApplication;->sInstance:Lcom/hfufo/rxdrone/MainApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 51
    const-string v0, "229.13.H0T29.GTF"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_VERSION:Ljava/lang/String;

    .line 52
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_VERSION_HF:Ljava/lang/String;

    .line 53
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_VERSION_XM:Ljava/lang/String;

    .line 54
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_VERSION_HM:Ljava/lang/String;

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_15VERSION:Ljava/lang/String;

    .line 56
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_12VERSION:Ljava/lang/String;

    .line 58
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_SSID:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->OPEN_UDATE:Z

    .line 61
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->OPEN_MAIN_UDATE:Z

    .line 62
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->OPEN_pd_UDATE:Z

    .line 110
    const-string v0, "192.168.8.1"

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->connectIP:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->outputPath:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isBrowsing:Z

    .line 120
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isOffLineMode:Z

    .line 121
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isFrontLastTimePlaying:Z

    .line 122
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isRearLastTimePlaying:Z

    .line 123
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isFirstReadData:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isAllowEnterBrowseMode:Z

    .line 125
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    .line 522
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isJPEG:Z

    .line 575
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/MainApplication;->isConnected:Z

    return-void
.end method

.method public static declared-synchronized getApplication()Lcom/hfufo/rxdrone/MainApplication;
    .locals 2

    .prologue
    .line 215
    const-class v0, Lcom/hfufo/rxdrone/MainApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hfufo/rxdrone/MainApplication;->sInstance:Lcom/hfufo/rxdrone/MainApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sendToService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 592
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public CloseSocket()V
    .locals 3

    .prologue
    .line 415
    const-string v1, "123456"

    const-string v2, "CloseSocket: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/hfufo/rxdrone/MainApplication;->appVersion:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceSettingInfo:Lcom/hfufo/bean/DeviceSettingInfo;

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 476
    const-string v0, "RMedia"

    .line 480
    .local v0, "dir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 478
    .end local v0    # "dir":Ljava/lang/String;
    :cond_0
    const-string v0, "FMedia"

    .restart local v0    # "dir":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCaptureSize()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/hfufo/rxdrone/MainApplication;->captureSize:I

    return v0
.end method

.method public getConncetion()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isConnected:Z

    return v0
.end method

.method public getCountry()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->setLanguage:Lcom/fh/util/SettingChange;

    invoke-virtual {v0}, Lcom/fh/util/SettingChange;->getCountry()Z

    move-result v0

    return v0
.end method

.method public getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceDesc:Lcom/hfufo/bean/DeviceDesc;

    return-object v0
.end method

.method public getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceSettingInfo:Lcom/hfufo/bean/DeviceSettingInfo;

    return-object v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontLastState()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isFrontLastTimePlaying:Z

    return v0
.end method

.method public getIsBrowsing()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isBrowsing:Z

    return v0
.end method

.method public getIsFirstReadData()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isFirstReadData:Z

    return v0
.end method

.method public getIsOffLineMode()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isOffLineMode:Z

    return v0
.end method

.method public getJPEG()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isJPEG:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->outputPath:Ljava/lang/String;

    return-object v1
.end method

.method public getRearLastState()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isRearLastTimePlaying:Z

    return v0
.end method

.method public getSearchMode()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/hfufo/rxdrone/MainApplication;->searchMode:I

    return v0
.end method

.method public getTopActivity()Lcom/hfufo/bean/BaseActivity;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/BaseActivity;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public initOther()V
    .locals 5

    .prologue
    .line 194
    invoke-static {p0}, Lcom/videooperate/utils/UIUtils;->init(Landroid/app/Application;)V

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->music_LocalList:Ljava/util/List;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    .line 203
    invoke-static {}, Lcom/videooperate/view/CrashHandler;->getInstance()Lcom/videooperate/view/CrashHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/videooperate/view/CrashHandler;->init(Landroid/content/Context;)V

    .line 204
    invoke-static {}, Lcom/videooperate/view/CrashHandler;->getInstance()Lcom/videooperate/view/CrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/videooperate/view/CrashHandler;->checkCrashFile()V

    .line 206
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caches"

    const-string v3, "video"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->outputPath:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_0
    return-void
.end method

.method public initSound()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 609
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->soundPool:Landroid/media/SoundPool;

    .line 610
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->soundPool:Landroid/media/SoundPool;

    const v1, 0x7f070007

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/hfufo/rxdrone/MainApplication;->musicID:I

    .line 611
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->soundPool:Landroid/media/SoundPool;

    const v1, 0x7f070010

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/hfufo/rxdrone/MainApplication;->musicID1:I

    .line 612
    return-void
.end method

.method public isAbnormalExitThread()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isAbnormalExitThread:Z

    return v0
.end method

.method public isAllowEnterBrowseMode()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isAllowEnterBrowseMode:Z

    return v0
.end method

.method public isModifyPWD()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isModifyPWD:Z

    return v0
.end method

.method public isModifySSID()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isModifySSID:Z

    return v0
.end method

.method public isSdcardExist()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->sdcardExist:Z

    return v0
.end method

.method public isUpgrading()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/MainApplication;->isUpgrading:Z

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 155
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fh/util/ToastUtils;->init(Landroid/content/Context;)V

    .line 157
    sput-object p0, Lcom/hfufo/rxdrone/MainApplication;->sInstance:Lcom/hfufo/rxdrone/MainApplication;

    .line 158
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "key_root_path_name"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->appName:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 160
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->appName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->appName:Ljava/lang/String;

    .line 166
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/hfufo/rxdrone/MainApplication;->appVersion:I

    .line 167
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "current_wifi_ssid"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "saveSSID":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/micro/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "current_wifi_ssid"

    invoke-static {v3, v4}, Lcom/micro/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    :cond_1
    new-instance v3, Lcom/hfufo/bean/DeviceDesc;

    invoke-direct {v3}, Lcom/hfufo/bean/DeviceDesc;-><init>()V

    iput-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceDesc:Lcom/hfufo/bean/DeviceDesc;

    .line 178
    new-instance v3, Lcom/hfufo/bean/DeviceSettingInfo;

    invoke-direct {v3}, Lcom/hfufo/bean/DeviceSettingInfo;-><init>()V

    iput-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceSettingInfo:Lcom/hfufo/bean/DeviceSettingInfo;

    .line 180
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "device_version_msg"

    invoke-static {v3, v4}, Lcom/micro/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    new-instance v3, Lcom/fh/util/SettingChange;

    invoke-direct {v3, p0}, Lcom/fh/util/SettingChange;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/hfufo/rxdrone/MainApplication;->setLanguage:Lcom/fh/util/SettingChange;

    .line 183
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->initOther()V

    .line 186
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/Util/LogUtil;->registUtil(Landroid/content/Context;)V

    .line 188
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->initSound()V

    .line 190
    return-void

    .line 168
    .end local v2    # "saveSSID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 221
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 503
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 504
    return-void
.end method

.method public playSound()V
    .locals 7

    .prologue
    const v2, 0x3f666666    # 0.9f

    .line 615
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->initSound()V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/hfufo/rxdrone/MainApplication;->musicID:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 626
    return-void
.end method

.method public playSound1()V
    .locals 7

    .prologue
    const v2, 0x3f666666    # 0.9f

    .line 630
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/hfufo/rxdrone/MainApplication;->musicID1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 639
    return-void
.end method

.method public popActivity(Lcom/hfufo/bean/BaseActivity;)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/hfufo/bean/BaseActivity;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public popAllActivity()V
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/BaseActivity;

    .line 561
    .local v0, "activity":Lcom/hfufo/bean/BaseActivity;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/hfufo/bean/BaseActivity;->finish()V

    goto :goto_0

    .line 565
    .end local v0    # "activity":Lcom/hfufo/bean/BaseActivity;
    :cond_1
    return-void
.end method

.method public pushActivity(Lcom/hfufo/bean/BaseActivity;)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/hfufo/bean/BaseActivity;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->activityStack:Ljava/util/Stack;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 548
    return-void
.end method

.method public resetRegister()V
    .locals 3

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_RE_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method public restartSdp()V
    .locals 3

    .prologue
    .line 422
    const-string v1, "123456"

    const-string v2, "restartSdp: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 427
    return-void
.end method

.method public sendCommandToService(I)V
    .locals 2
    .param p1, "cmd"    # I

    .prologue
    .line 384
    const-string v0, "123456"

    const-string v1, "AppSendCommandToService11: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(ILjava/lang/String;)V

    .line 386
    return-void
.end method

.method public sendCommandToService(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v1, "123456"

    const-string v2, "AppSendCommandToService22: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    const-string v1, "connect_ip"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 397
    return-void
.end method

.method public setAbnormalExitThread(Z)V
    .locals 0
    .param p1, "abnormalExitThread"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isAbnormalExitThread:Z

    .line 489
    return-void
.end method

.method public setAllowEnterBrowseMode(Z)V
    .locals 0
    .param p1, "allowEnterBrowseMode"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isAllowEnterBrowseMode:Z

    .line 317
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainApplication;->appName:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setCaptureSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/hfufo/rxdrone/MainApplication;->captureSize:I

    .line 237
    return-void
.end method

.method public setConncetion(Z)V
    .locals 1
    .param p1, "connect"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isConnected:Z

    .line 584
    if-eqz p1, :cond_0

    .line 585
    const v0, 0x7f080038

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 587
    :cond_0
    return-void
.end method

.method public setDeviceDesc(Lcom/hfufo/bean/DeviceDesc;)V
    .locals 0
    .param p1, "deviceDesc"    # Lcom/hfufo/bean/DeviceDesc;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceDesc:Lcom/hfufo/bean/DeviceDesc;

    .line 369
    :cond_0
    return-void
.end method

.method public setDeviceUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceUUID"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainApplication;->deviceUUID:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setFrontLastState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isFrontLastTimePlaying:Z

    .line 285
    return-void
.end method

.method public setIsBrowsing(Z)V
    .locals 0
    .param p1, "bl"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isBrowsing:Z

    .line 297
    return-void
.end method

.method public setIsFirstReadData(Z)V
    .locals 0
    .param p1, "bl"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isFirstReadData:Z

    .line 305
    return-void
.end method

.method public setIsOffLineMode(Z)V
    .locals 0
    .param p1, "bl"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isOffLineMode:Z

    .line 289
    return-void
.end method

.method public setJPEG(Z)V
    .locals 0
    .param p1, "jpeg"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isJPEG:Z

    .line 526
    return-void
.end method

.method public setModifyPWD(Z)V
    .locals 0
    .param p1, "modifyPWD"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isModifyPWD:Z

    .line 261
    return-void
.end method

.method public setModifySSID(Z)V
    .locals 0
    .param p1, "modifySSID"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isModifySSID:Z

    .line 253
    return-void
.end method

.method public setRearLastState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isRearLastTimePlaying:Z

    .line 277
    return-void
.end method

.method public setSdcardExist(Z)V
    .locals 0
    .param p1, "sdcardExist"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->sdcardExist:Z

    .line 269
    return-void
.end method

.method public setSearchMode(I)V
    .locals 0
    .param p1, "searchMode"    # I

    .prologue
    .line 496
    iput p1, p0, Lcom/hfufo/rxdrone/MainApplication;->searchMode:I

    .line 497
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "UUID"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainApplication;->UUID:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setUpgrading(Z)V
    .locals 0
    .param p1, "upgrading"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/MainApplication;->isUpgrading:Z

    .line 381
    return-void
.end method

.method public shiftLanguage(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->setLanguage:Lcom/fh/util/SettingChange;

    invoke-virtual {v0, p1}, Lcom/fh/util/SettingChange;->setLanguage(I)V

    .line 508
    return-void
.end method

.method public showToastLong(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainApplication;->showToastLong(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastLong:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastLong:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastLong:Landroid/widget/Toast;

    .line 338
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastLong:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public showToastShort(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/MainApplication;->showToastShort(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public showToastShort(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastShort:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastShort:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastShort:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 327
    return-void

    .line 323
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastShort:Landroid/widget/Toast;

    .line 324
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainApplication;->mToastShort:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public stopConnection()V
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_DISCONNECT_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 2
    .param p1, "conf"    # Landroid/content/res/Configuration;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 515
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    iput-object p2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method
