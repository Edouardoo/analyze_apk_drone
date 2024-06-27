.class public Lcom/jieli/lib/stream/tools/VideoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/stream/util/ICommon;


# static fields
.field private static volatile c:Lcom/jieli/lib/stream/tools/VideoManager;


# instance fields
.field final a:Ljava/text/SimpleDateFormat;

.field private final b:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/jieli/lib/stream/beans/VideoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/jieli/lib/stream/tools/VideoManager;->c:Lcom/jieli/lib/stream/tools/VideoManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Lcom/jieli/lib/stream/tools/VideoManager;->d:J

    .line 31
    iput-wide v2, p0, Lcom/jieli/lib/stream/tools/VideoManager;->e:J

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->a:Ljava/text/SimpleDateFormat;

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->f:J

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->g:Lcom/jieli/lib/stream/beans/VideoInfo;

    return-void
.end method

.method private a(JJ)J
    .locals 9

    .prologue
    .line 147
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start time >= end time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;->getSortedVideos()Ljava/util/List;

    move-result-object v2

    .line 153
    const-wide/16 v0, 0x0

    .line 154
    if-eqz v2, :cond_6

    .line 156
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/VideoInfo;

    .line 159
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-gtz v1, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p3, v6

    if-ltz v1, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-ltz v1, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-gtz v1, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p3, v6

    if-lez v1, :cond_2

    .line 172
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 175
    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, p3, v6

    if-gtz v1, :cond_4

    .line 180
    sub-long v2, p3, p1

    .line 204
    :cond_3
    :goto_1
    return-wide v2

    .line 186
    :cond_4
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, v6, p1

    if-lez v1, :cond_5

    .line 187
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, v6, p3

    if-gtz v1, :cond_5

    .line 188
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getDuration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 190
    goto/16 :goto_0

    .line 194
    :cond_5
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, v6, p1

    if-lez v1, :cond_7

    .line 195
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, v6, p3

    if-ltz v1, :cond_7

    .line 197
    add-long/2addr v2, p3

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_6
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find out thumbnail at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    goto :goto_1

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method

.method public static getInstance()Lcom/jieli/lib/stream/tools/VideoManager;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/jieli/lib/stream/tools/VideoManager;->c:Lcom/jieli/lib/stream/tools/VideoManager;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/jieli/lib/stream/tools/VideoManager;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/jieli/lib/stream/tools/VideoManager;->c:Lcom/jieli/lib/stream/tools/VideoManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/jieli/lib/stream/tools/VideoManager;

    invoke-direct {v0}, Lcom/jieli/lib/stream/tools/VideoManager;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/VideoManager;->c:Lcom/jieli/lib/stream/tools/VideoManager;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/jieli/lib/stream/tools/VideoManager;->c:Lcom/jieli/lib/stream/tools/VideoManager;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getEndTime()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->e:J

    return-wide v0
.end method

.method public declared-synchronized getSelectedPosition(J)Lcom/jieli/lib/stream/beans/VideoInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 121
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "milliseconds <= 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 143
    :goto_0
    monitor-exit p0

    return-object v0

    .line 126
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;->getSortedVideos()Ljava/util/List;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/VideoInfo;

    .line 131
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-ltz v3, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gtz v3, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 134
    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setTimeOffset(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find out milliseconds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/lib/stream/tools/VideoManager;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    .line 143
    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find out thumbnail at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected getTotalTime()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->d:J

    return-wide v0
.end method

.method public tryToDownload(JJ)Z
    .locals 9

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument exception. start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/stream/tools/VideoManager;->getSelectedPosition(J)Lcom/jieli/lib/stream/beans/VideoInfo;

    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    const-string v1, "Start VideoInfo not found."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_2
    iput-wide p3, p0, Lcom/jieli/lib/stream/tools/VideoManager;->e:J

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jieli/lib/stream/tools/VideoManager;->a(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jieli/lib/stream/tools/VideoManager;->d:J

    .line 53
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/VideoManager;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/VideoManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total time error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/VideoManager;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/stream/tools/ParseHelper;->getSelectVideoIndexInTxt(Ljava/lang/String;)I

    move-result v1

    .line 60
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 61
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "0043"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 62
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getTimeOffset()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string v6, "1"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 61
    invoke-virtual {v2, v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 63
    :cond_5
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 64
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "0066"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 65
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getTimeOffset()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string v6, "1"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 64
    invoke-virtual {v2, v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method
