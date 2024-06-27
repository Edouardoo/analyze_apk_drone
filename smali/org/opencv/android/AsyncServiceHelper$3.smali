.class Lorg/opencv/android/AsyncServiceHelper$3;
.super Ljava/lang/Object;
.source "AsyncServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/AsyncServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/AsyncServiceHelper;


# direct methods
.method constructor <init>(Lorg/opencv/android/AsyncServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/opencv/android/AsyncServiceHelper;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    .line 160
    const-string v9, "OpenCVManager/Helper"

    const-string v10, "Service connection created"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-static {p2}, Lorg/opencv/engine/OpenCVEngineInterface$Stub;->asInterface(Landroid/os/IBinder;)Lorg/opencv/engine/OpenCVEngineInterface;

    move-result-object v10

    iput-object v10, v9, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    .line 162
    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    if-nez v9, :cond_0

    .line 164
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "OpenCV Manager Service connection fails. May be service was not installed?"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-static {v8, v9}, Lorg/opencv/android/AsyncServiceHelper;->InstallService(Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)V

    .line 332
    :goto_0
    return-void

    .line 169
    :cond_0
    sput-boolean v8, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    .line 172
    :try_start_0
    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    invoke-interface {v9}, Lorg/opencv/engine/OpenCVEngineInterface;->getEngineVersion()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 174
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Init finished with status 4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Unbind from service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 177
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Calling using callback"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Init finished with status 255"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Unbind from service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 328
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Calling using callback"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/16 v9, 0xff

    invoke-interface {v8, v9}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    goto :goto_0

    .line 182
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v9, "OpenCVManager/Helper"

    const-string v10, "Trying to get library path"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    iget-object v10, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v10, v10, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v9, v10}, Lorg/opencv/engine/OpenCVEngineInterface;->getLibPathByVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 186
    :cond_2
    sget-boolean v8, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    if-nez v8, :cond_3

    .line 188
    new-instance v0, Lorg/opencv/android/AsyncServiceHelper$3$1;

    invoke-direct {v0, p0}, Lorg/opencv/android/AsyncServiceHelper$3$1;-><init>(Lorg/opencv/android/AsyncServiceHelper$3;)V

    .line 235
    .local v0, "InstallQuery":Lorg/opencv/android/InstallCallbackInterface;
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Lorg/opencv/android/LoaderCallbackInterface;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "InstallQuery":Lorg/opencv/android/InstallCallbackInterface;
    :cond_3
    new-instance v1, Lorg/opencv/android/AsyncServiceHelper$3$2;

    invoke-direct {v1, p0}, Lorg/opencv/android/AsyncServiceHelper$3$2;-><init>(Lorg/opencv/android/AsyncServiceHelper$3;)V

    .line 288
    .local v1, "WaitQuery":Lorg/opencv/android/InstallCallbackInterface;
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v9, 0x1

    invoke-interface {v8, v9, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V

    goto/16 :goto_0

    .line 294
    .end local v1    # "WaitQuery":Lorg/opencv/android/InstallCallbackInterface;
    :cond_4
    const-string v9, "OpenCVManager/Helper"

    const-string v10, "Trying to get library list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v9, 0x0

    sput-boolean v9, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    .line 296
    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    iget-object v10, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v10, v10, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v9, v10}, Lorg/opencv/engine/OpenCVEngineInterface;->getLibraryList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "libs":Ljava/lang/String;
    const-string v9, "OpenCVManager/Helper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Library list: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v9, "OpenCVManager/Helper"

    const-string v10, "First attempt to load libs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-static {v9, v5, v4}, Lorg/opencv/android/AsyncServiceHelper;->access$000(Lorg/opencv/android/AsyncServiceHelper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 302
    const-string v9, "OpenCVManager/Helper"

    const-string v10, "First attempt to load libs is OK"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "eol":Ljava/lang/String;
    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v7, v9, v8

    .line 305
    .local v7, "str":Ljava/lang/String;
    const-string v11, "OpenCVManager/Helper"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 307
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .line 315
    .end local v3    # "eol":Ljava/lang/String;
    .local v6, "status":I
    :goto_2
    const-string v8, "OpenCVManager/Helper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init finished with status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Unbind from service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v9, v9, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 318
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "Calling using callback"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v8, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v8, v8, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v8, v6}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    goto/16 :goto_0

    .line 311
    .end local v6    # "status":I
    :cond_6
    const-string v8, "OpenCVManager/Helper"

    const-string v9, "First attempt to load libs fails"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    const/16 v6, 0xff

    .restart local v6    # "status":I
    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    .line 337
    return-void
.end method
