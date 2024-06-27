.class public Lcom/videooperate/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static deviceUtils:Lcom/videooperate/utils/DeviceUtils;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/videooperate/utils/DeviceUtils;->deviceUtils:Lcom/videooperate/utils/DeviceUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/videooperate/utils/DeviceUtils;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/videooperate/utils/DeviceUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v1, Lcom/videooperate/utils/DeviceUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/videooperate/utils/DeviceUtils;->deviceUtils:Lcom/videooperate/utils/DeviceUtils;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/videooperate/utils/DeviceUtils;

    invoke-direct {v0, p0}, Lcom/videooperate/utils/DeviceUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/videooperate/utils/DeviceUtils;->deviceUtils:Lcom/videooperate/utils/DeviceUtils;

    .line 28
    :cond_0
    sget-object v0, Lcom/videooperate/utils/DeviceUtils;->deviceUtils:Lcom/videooperate/utils/DeviceUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public goBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/videooperate/utils/DeviceUtils;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public goOtherApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/videooperate/utils/DeviceUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 67
    :goto_0
    return v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/videooperate/utils/DeviceUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/videooperate/utils/DeviceUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAppsInstalled()Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "apps":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 34
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/videooperate/utils/DeviceUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    .end local v0    # "appName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 33
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "appName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
