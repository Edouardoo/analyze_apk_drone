.class public Lcom/Util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static ENTER:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static SPACE:Ljava/lang/String;

.field private static V:Ljava/lang/String;

.field private static dateFormat:Ljava/text/DateFormat;

.field private static fileUtil:Lcom/Util/FileUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "VERBOSE\uff1a"

    sput-object v0, Lcom/Util/LogUtil;->V:Ljava/lang/String;

    .line 16
    const-string v0, "DEBUG\uff1a"

    sput-object v0, Lcom/Util/LogUtil;->D:Ljava/lang/String;

    .line 17
    const-string v0, "INFO\uff1a"

    sput-object v0, Lcom/Util/LogUtil;->I:Ljava/lang/String;

    .line 18
    const-string v0, "ERROR\uff1a"

    sput-object v0, Lcom/Util/LogUtil;->E:Ljava/lang/String;

    .line 19
    const-string v0, "\n"

    sput-object v0, Lcom/Util/LogUtil;->ENTER:Ljava/lang/String;

    .line 20
    const-string v0, "\t"

    sput-object v0, Lcom/Util/LogUtil;->SPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/Util/FileUtil;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v2, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    monitor-enter v2

    .line 58
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/Util/LogUtil;->getCurTimeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->D:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->ENTER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "systemOut":Ljava/lang/String;
    invoke-static {v0}, Lcom/Util/LogUtil;->startWriteThread(Ljava/lang/String;)V

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 60
    .end local v0    # "systemOut":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v2, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    monitor-enter v2

    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/Util/LogUtil;->getCurTimeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->ENTER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "systemOut":Ljava/lang/String;
    invoke-static {v0}, Lcom/Util/LogUtil;->startWriteThread(Ljava/lang/String;)V

    .line 74
    monitor-exit v2

    .line 75
    return-void

    .line 74
    .end local v0    # "systemOut":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getCurTimeStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/Util/LogUtil;->SPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/Util/LogUtil;->dateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v2, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    monitor-enter v2

    .line 65
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/Util/LogUtil;->getCurTimeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->ENTER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "systemOut":Ljava/lang/String;
    invoke-static {v0}, Lcom/Util/LogUtil;->startWriteThread(Ljava/lang/String;)V

    .line 67
    monitor-exit v2

    .line 68
    return-void

    .line 67
    .end local v0    # "systemOut":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registUtil(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Lcom/Util/FileUtil;

    invoke-direct {v0, p0}, Lcom/Util/FileUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/Util/LogUtil;->dateFormat:Ljava/text/DateFormat;

    .line 25
    return-void
.end method

.method private static declared-synchronized startWriteThread(Ljava/lang/String;)V
    .locals 3
    .param p0, "systemOut"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v1, Lcom/Util/LogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/Util/LogUtil$1;

    invoke-direct {v2, p0}, Lcom/Util/LogUtil$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregistUtil()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    .line 29
    sput-object v0, Lcom/Util/LogUtil;->dateFormat:Ljava/text/DateFormat;

    .line 30
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v2, Lcom/Util/LogUtil;->fileUtil:Lcom/Util/FileUtil;

    monitor-enter v2

    .line 51
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/Util/LogUtil;->getCurTimeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->V:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/Util/LogUtil;->ENTER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "systemOut":Ljava/lang/String;
    invoke-static {v0}, Lcom/Util/LogUtil;->startWriteThread(Ljava/lang/String;)V

    .line 53
    monitor-exit v2

    .line 54
    return-void

    .line 53
    .end local v0    # "systemOut":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
