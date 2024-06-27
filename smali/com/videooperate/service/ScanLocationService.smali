.class public Lcom/videooperate/service/ScanLocationService;
.super Landroid/app/IntentService;
.source "ScanLocationService.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;,
        Lcom/videooperate/service/ScanLocationService$FileComparator;
    }
.end annotation


# static fields
.field public static final APP_COPYDATA:I = 0x7d1

.field public static final APP_COPYDATA_AND_GETDATA:I = 0x7d2

.field public static final APP_GETDATA:I = 0x7d0

.field public static final APP_GETLOCALMUSIC:I = 0x7d4

.field public static final APP_GETMUSICDATA:I = 0x7d3

.field public static final EXTRA_CMD:Ljava/lang/String; = "cmd"


# instance fields
.field AppAdd:Z

.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "ScanLocationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/videooperate/service/ScanLocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/service/ScanLocationService;->TAG:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/videooperate/service/ScanLocationService;->AppAdd:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/videooperate/service/ScanLocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/service/ScanLocationService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/videooperate/service/ScanLocationService;->getLocalMusic()V

    return-void
.end method

.method private getLocalMusic()V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_LocalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/videooperate/service/ScanLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/videooperate/utils/MediaScannerUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/MediaScannerUtils;

    move-result-object v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/videooperate/utils/MediaScannerUtils;->getMusicData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->music_LocalList:Ljava/util/List;

    .line 161
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_LocalList:Ljava/util/List;

    new-instance v1, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;

    invoke-direct {v1, p0}, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/videooperate/utils/MusicControlUtils;->refreshMusicList(Landroid/content/Context;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getData()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 221
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 222
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 224
    sget-object v1, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/videooperate/utils/PermissionUtil;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->cameraIsexit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string v1, "DCIM"

    invoke-static {v1, v2, v2, v2}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "srcPath":Ljava/lang/String;
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    const-string v2, "Camera"

    invoke-static {v0, v2}, Lcom/fh/hdutil/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    .line 231
    .end local v0    # "srcPath":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 232
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/fh/hdutil/AppUtils;->selectTypeList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    .line 233
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/fh/hdutil/AppUtils;->selectTypeList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    .line 235
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$FileComparator;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$FileComparator;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$FileComparator;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$FileComparator;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/videooperate/utils/MusicControlUtils;->sedScanMsg(Landroid/content/Context;)V

    .line 244
    :cond_0
    :goto_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 247
    :cond_1
    return-void

    .line 229
    :cond_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRootPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-static {v2, v3}, Lcom/fh/hdutil/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/hfufo/rxdrone/MainApplication;->All_list:Ljava/util/List;

    goto :goto_0

    .line 241
    :cond_3
    const v1, 0x7f0800e3

    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_1
.end method

.method public getMusicData()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-static {p0}, Lcom/videooperate/utils/MediaScannerUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/MediaScannerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/videooperate/utils/MediaScannerUtils;->getSystemMusicData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    .line 213
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    new-instance v1, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;

    invoke-direct {v1, p0}, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/videooperate/utils/MusicControlUtils;->refreshMusicList(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public initMp3()V
    .locals 6

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/videooperate/service/ScanLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "APPADD"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/videooperate/service/ScanLocationService;->AppAdd:Z

    .line 116
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/videooperate/service/ScanLocationService;->SD_MUSIC_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "file":Ljava/io/File;
    iget-boolean v2, p0, Lcom/videooperate/service/ScanLocationService;->AppAdd:Z

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {v1}, Lcom/Util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/videooperate/service/ScanLocationService;->AppAdd:Z

    .line 126
    :cond_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    sget-object v3, Lcom/videooperate/service/ScanLocationService;->CRASH_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->queryLocalFileMusicList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    .line 127
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 128
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    new-instance v3, Lcom/videooperate/service/ScanLocationService$FileComparator;

    invoke-direct {v3, p0}, Lcom/videooperate/service/ScanLocationService$FileComparator;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    :cond_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "Despacito"

    const v4, 0x7f070012

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u6d77\u8349\u821e"

    const v4, 0x7f070013

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "Handclap"

    const v4, 0x7f070014

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u7231\u7684\u6545\u4e8b\u4e0a\u96c6"

    const v4, 0x7f070015

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "Faded"

    const v4, 0x7f070016

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "not only like"

    const v4, 0x7f070017

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u8fdc\u8d70\u9ad8\u98de"

    const v4, 0x7f070018

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u6700\u7f8e\u7684\u671f\u5f85"

    const v4, 0x7f070019

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u5e26\u4f60\u53bb\u65c5\u884c"

    const v4, 0x7f07001a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "Deve"

    const v4, 0x7f07001b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "Friendships"

    const v4, 0x7f07001c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u7a7a\u7a7a\u5982\u4e5f"

    const v4, 0x7f07001d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "That girl"

    const v4, 0x7f07001e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "Time"

    const v4, 0x7f07001f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u8ffd\u5149\u8005"

    const v4, 0x7f070020

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    const-string v3, "\u96e8\u5237"

    const v4, 0x7f070021

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".mp3"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v4, v2}, Lcom/videooperate/service/ScanLocationService;->saveToSDCard(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 151
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {p0}, Lcom/videooperate/service/ScanLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/videooperate/utils/MediaScannerUtils;->getInstance(Landroid/content/Context;)Lcom/videooperate/utils/MediaScannerUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/videooperate/utils/MediaScannerUtils;->getSystemMusicData()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    .line 153
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->music_list:Ljava/util/List;

    new-instance v3, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;

    invoke-direct {v3, p0}, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainApplication;->mMp3Map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 156
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string v1, "cmd"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 108
    invoke-virtual {p0}, Lcom/videooperate/service/ScanLocationService;->stopSelf()V

    .line 111
    :goto_0
    return-void

    .line 53
    :pswitch_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$1;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$1;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 63
    :pswitch_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$2;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$2;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 76
    :pswitch_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$3;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$3;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 86
    :pswitch_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$4;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$4;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 96
    :pswitch_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/videooperate/service/ScanLocationService$5;

    invoke-direct {v2, p0}, Lcom/videooperate/service/ScanLocationService$5;-><init>(Lcom/videooperate/service/ScanLocationService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public saveToSDCard(Landroid/content/Context;ILjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawId"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 171
    .local v6, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    sget-object v9, Lcom/videooperate/service/ScanLocationService;->SD_MUSIC_PATH:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 205
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/videooperate/service/ScanLocationService;->SD_MUSIC_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/videooperate/service/ScanLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "APPADD"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/micro/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 187
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 188
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0xa

    new-array v1, v9, [B

    .line 189
    .local v1, "buffer":[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v8, "outStream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 191
    .local v7, "len":I
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 192
    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v1    # "buffer":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "len":I
    .restart local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 195
    .local v0, "bs":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 196
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 197
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 198
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 199
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
