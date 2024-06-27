.class public Lcom/videooperate/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateUtil"

.field public static final dateFormater1:Ljava/text/SimpleDateFormat;

.field public static final dateFormater2:Ljava/text/SimpleDateFormat;

.field public static final dateFormater3:Ljava/text/SimpleDateFormat;

.field public static final dateFormater4:Ljava/text/SimpleDateFormat;

.field public static final dateFormater5:Ljava/text/SimpleDateFormat;

.field public static final dateFormater6:Ljava/text/SimpleDateFormat;

.field public static final sSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->dateFormater1:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->dateFormater2:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->dateFormater3:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->dateFormater4:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->dateFormater5:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/videooperate/utils/DateUtil;->dateFormater6:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getTime(I)Ljava/lang/String;
    .locals 8
    .param p0, "finishTime"    # I

    .prologue
    const/16 v7, 0xa

    .line 45
    div-int/lit16 v4, p0, 0x3e8

    .line 46
    .local v4, "totalTime":I
    const/4 v0, 0x0

    .local v0, "hour":I
    const/4 v1, 0x0

    .local v1, "minute":I
    const/4 v3, 0x0

    .line 48
    .local v3, "second":I
    const/16 v5, 0xe10

    if-gt v5, v4, :cond_0

    .line 49
    div-int/lit16 v0, v4, 0xe10

    .line 50
    mul-int/lit16 v5, v0, 0xe10

    sub-int/2addr v4, v5

    .line 52
    :cond_0
    const/16 v5, 0x3c

    if-gt v5, v4, :cond_1

    .line 53
    div-int/lit8 v1, v4, 0x3c

    .line 54
    mul-int/lit8 v5, v1, 0x3c

    sub-int/2addr v4, v5

    .line 56
    :cond_1
    if-ltz v4, :cond_2

    .line 57
    move v3, v4

    .line 59
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v0, :cond_3

    .line 61
    if-ge v0, v7, :cond_4

    .line 62
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    :goto_0
    if-ge v1, v7, :cond_5

    .line 68
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    if-ge v3, v7, :cond_6

    .line 73
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 64
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 75
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
