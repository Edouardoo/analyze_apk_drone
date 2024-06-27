.class public Lcom/videooperate/utils/MusicControlUtils;
.super Ljava/lang/Object;
.source "MusicControlUtils.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# static fields
.field static mInstance:Lcom/videooperate/utils/MusicControlUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/videooperate/utils/MusicControlUtils;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/videooperate/utils/MusicControlUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/videooperate/utils/MusicControlUtils;->mInstance:Lcom/videooperate/utils/MusicControlUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/videooperate/utils/MusicControlUtils;

    invoke-direct {v0}, Lcom/videooperate/utils/MusicControlUtils;-><init>()V

    sput-object v0, Lcom/videooperate/utils/MusicControlUtils;->mInstance:Lcom/videooperate/utils/MusicControlUtils;

    .line 27
    :cond_0
    sget-object v0, Lcom/videooperate/utils/MusicControlUtils;->mInstance:Lcom/videooperate/utils/MusicControlUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelSelectSwitchStatusMsg(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isOpen"    # Z

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.SWITCH_CANCEL_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public changeMusicList(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isSystem"    # Z

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.CHANGE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "SystemMusic"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public changeNotify(Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.SWITCH_CHANGE_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public cmd_init(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.MUSCIPLAY_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "CMD"

    sget-object v2, Lcom/videooperate/bean/PlayCmd$Type;->init:Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public cmd_start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/videooperate/service/MusicPlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CMD"

    sget-object v2, Lcom/videooperate/bean/PlayCmd$Type;->start:Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string v1, "DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method

.method public cmd_startRaw(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rawID"    # I

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.MUSCIPLAY_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "CMD"

    sget-object v2, Lcom/videooperate/bean/PlayCmd$Type;->start_raw:Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    const-string v1, "DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public cmd_stop(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/videooperate/service/MusicPlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CMD"

    sget-object v2, Lcom/videooperate/bean/PlayCmd$Type;->stop:Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method public refreshMusicList(Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.REFRESHDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public sedScanMsg(Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.SCAN_SUCCESS_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public sedSelectSwitchStatusMsg(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isOpen"    # Z

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.RxDrone.SWITCH_STATUS_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method
