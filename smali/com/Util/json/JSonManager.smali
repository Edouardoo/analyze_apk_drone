.class public Lcom/Util/json/JSonManager;
.super Ljava/lang/Object;
.source "JSonManager.java"


# static fields
.field private static final TXT_CAMERA_TYPE:Ljava/lang/String; = "c"

.field private static final TXT_CREATE_TIME:Ljava/lang/String; = "t"

.field private static final TXT_DURATION:Ljava/lang/String; = "d"

.field private static final TXT_FILE_END_TIME:Ljava/lang/String; = "e"

.field private static final TXT_FILE_LIST:Ljava/lang/String; = "file_list"

.field private static final TXT_HEIGHT:Ljava/lang/String; = "h"

.field private static final TXT_PATH:Ljava/lang/String; = "f"

.field private static final TXT_RATE:Ljava/lang/String; = "p"

.field private static final TXT_SIZE:Ljava/lang/String; = "s"

.field private static final TXT_TYPE:Ljava/lang/String; = "y"

.field private static final TXT_WIDTH:Ljava/lang/String; = "w"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static instance:Lcom/Util/json/JSonManager;

.field private static mJSonData:Ljava/lang/String;

.field private static tag:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "JSonManager"

    sput-object v0, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/Util/json/JSonManager;->instance:Lcom/Util/json/JSonManager;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/Util/json/JSonManager;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/Util/json/JSonManager;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/Util/json/JSonManager;Lcom/Util/json/listener/OnCompletedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/Util/json/JSonManager;
    .param p1, "x1"    # Lcom/Util/json/listener/OnCompletedListener;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/Util/json/JSonManager;->parseJSon(Lcom/Util/json/listener/OnCompletedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/Util/json/JSonManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/Util/json/JSonManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    return-object v0
.end method

.method public static convertJson(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const-string v2, ""

    .line 340
    .local v2, "json":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 341
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 342
    const-string v2, "{\"file_list\": ["

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 344
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 345
    .local v1, "info":Lcom/hfufo/bean/FileInfo;
    if-eqz v1, :cond_0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\n\"y\" : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getFileEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 351
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 352
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "w"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 354
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 355
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 356
    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 363
    .end local v1    # "info":Lcom/hfufo/bean/FileInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n]}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .end local v0    # "i":I
    :cond_2
    :goto_1
    sput-object v2, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    .line 369
    sget-object v3, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    return-object v3

    .line 365
    :cond_3
    const-string v2, "{\"file_list\": []}"

    goto :goto_1
.end method

.method private dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    .locals 2
    .param p2, "state"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/Util/json/listener/OnCompletedListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "listener":Lcom/Util/json/listener/OnCompletedListener;, "Lcom/Util/json/listener/OnCompletedListener<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/Util/json/JSonManager$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/Util/json/JSonManager$2;-><init>(Lcom/Util/json/JSonManager;Ljava/lang/Boolean;Lcom/Util/json/listener/OnCompletedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/Util/json/JSonManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/Util/json/JSonManager;->instance:Lcom/Util/json/JSonManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/Util/json/JSonManager;

    invoke-direct {v0}, Lcom/Util/json/JSonManager;-><init>()V

    sput-object v0, Lcom/Util/json/JSonManager;->instance:Lcom/Util/json/JSonManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/Util/json/JSonManager;->instance:Lcom/Util/json/JSonManager;

    return-object v0
.end method

.method public static parseFileInfo(Ljava/lang/String;)Lcom/hfufo/bean/FileInfo;
    .locals 13
    .param p0, "jsonText"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 261
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "f"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 265
    const-string v10, "."

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "type":Ljava/lang/String;
    new-instance v3, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v3}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 268
    .local v3, "fileInfo":Lcom/hfufo/bean/FileInfo;
    const/4 v10, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    move v9, v10

    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 281
    sget-object v9, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    .line 330
    .end local v3    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 268
    .restart local v3    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :sswitch_0
    const-string v11, "jpeg"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v9, "JPEG"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    goto :goto_0

    :sswitch_2
    const-string v9, "jpg"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "JPG"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    goto :goto_0

    :sswitch_4
    const-string v9, "mov"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :sswitch_5
    const-string v9, "MOV"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "avi"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x6

    goto :goto_0

    .line 273
    :pswitch_0
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 284
    :goto_2
    const-string v9, "y"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 285
    const-string v9, "d"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setDuration(I)V

    .line 286
    const-string v9, "h"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setHeight(I)V

    .line 287
    const-string v9, "w"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setWidth(I)V

    .line 288
    const-string v9, "p"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setRate(I)V

    .line 289
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 290
    const-string v9, "f"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 291
    const-string v9, "t"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 292
    const-string v9, "e"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setFileEndTime(Ljava/lang/String;)V

    .line 293
    const-string v9, "s"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 294
    const-string v9, "c"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 295
    const-string v9, "c"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 298
    :cond_2
    invoke-virtual {v3}, Lcom/hfufo/bean/FileInfo;->isVideo()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "date":Ljava/util/Date;
    :try_start_1
    sget-object v9, Lcom/Util/json/JSonManager;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v10, "t"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 306
    :goto_3
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 307
    .local v6, "startTime":Ljava/util/Calendar;
    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 309
    invoke-virtual {v3, v6}, Lcom/hfufo/bean/FileInfo;->setStartTime(Ljava/util/Calendar;)V

    .line 315
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 316
    .local v2, "endTime":Ljava/util/Calendar;
    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 318
    const/16 v9, 0xd

    const/16 v10, 0xd

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3}, Lcom/hfufo/bean/FileInfo;->getDuration()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 319
    invoke-virtual {v3, v2}, Lcom/hfufo/bean/FileInfo;->setEndTime(Ljava/util/Calendar;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 326
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "endTime":Ljava/util/Calendar;
    .end local v3    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "startTime":Ljava/util/Calendar;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    move-object v3, v8

    .line 330
    goto/16 :goto_1

    .line 278
    .restart local v3    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :pswitch_1
    const/4 v9, 0x1

    :try_start_3
    invoke-virtual {v3, v9}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    goto/16 :goto_2

    .line 302
    .restart local v0    # "date":Ljava/util/Date;
    :catch_1
    move-exception v1

    .line 303
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 311
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v6    # "startTime":Ljava/util/Calendar;
    :cond_4
    sget-object v9, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v10, "Parse start time string fail!"

    invoke-static {v9, v10}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 321
    .restart local v2    # "endTime":Ljava/util/Calendar;
    :cond_5
    sget-object v9, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v10, "Parse end time string fail!"

    invoke-static {v9, v10}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x11fc1 -> :sswitch_3
        0x12af4 -> :sswitch_5
        0x17ad4 -> :sswitch_6
        0x19be1 -> :sswitch_2
        0x1a714 -> :sswitch_4
        0x22d868 -> :sswitch_1
        0x31e068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized parseJSon(Lcom/Util/json/listener/OnCompletedListener;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/Util/json/listener/OnCompletedListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "listener":Lcom/Util/json/listener/OnCompletedListener;, "Lcom/Util/json/listener/OnCompletedListener<Ljava/lang/Boolean;>;"
    monitor-enter p0

    :try_start_0
    sget-object v18, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 77
    new-instance v18, Ljava/lang/NullPointerException;

    const-string v19, "JSon data is null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 79
    :cond_0
    const/4 v13, 0x0

    .line 81
    .local v13, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    sget-object v18, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .local v14, "jsonObject":Lorg/json/JSONObject;
    move-object v13, v14

    .line 87
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v13, :cond_1

    .line 88
    :try_start_2
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The data object maybe not JSON:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 82
    :catch_0
    move-exception v5

    .line 83
    .local v5, "e":Lorg/json/JSONException;
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V

    .line 84
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 92
    .local v11, "iterator":Ljava/util/Iterator;
    const/4 v12, 0x0

    .line 93
    .local v12, "jsonArray":Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 94
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    const-string v19, "file_list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    if-eqz v18, :cond_2

    .line 96
    :try_start_3
    const-string v18, "file_list"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 104
    :cond_3
    :goto_1
    if-nez v12, :cond_4

    .line 105
    const/16 v18, 0x0

    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    :goto_2
    monitor-exit p0

    return-void

    .line 97
    :catch_1
    move-exception v5

    .line 98
    .restart local v5    # "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 109
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v10, 0x0

    .line 113
    .local v10, "infoObject":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v8, "fileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_b

    .line 119
    :try_start_6
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    .line 124
    :goto_4
    if-nez v10, :cond_5

    .line 117
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 120
    :catch_2
    move-exception v5

    .line 121
    .restart local v5    # "e":Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 127
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_5
    const-string v18, "f"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 129
    .local v15, "path":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 130
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 132
    .local v17, "type":Ljava/lang/String;
    new-instance v7, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v7}, Lcom/hfufo/bean/FileInfo;-><init>()V

    .line 133
    .local v7, "fileInfo":Lcom/hfufo/bean/FileInfo;
    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_6
    :goto_6
    packed-switch v18, :pswitch_data_0

    .line 143
    sget-object v18, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 133
    :sswitch_0
    const-string v19, "jpeg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v18, 0x0

    goto :goto_6

    :sswitch_1
    const-string v19, "jpg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v18, 0x1

    goto :goto_6

    :sswitch_2
    const-string v19, "mov"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v18, 0x2

    goto :goto_6

    :sswitch_3
    const-string v19, "avi"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v18, 0x3

    goto :goto_6

    .line 136
    :pswitch_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    .line 147
    :goto_7
    const-string v18, "y"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setType(I)V

    .line 148
    const-string v18, "d"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setDuration(I)V

    .line 149
    const-string v18, "h"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setHeight(I)V

    .line 150
    const-string v18, "w"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setWidth(I)V

    .line 151
    const-string v18, "p"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setRate(I)V

    .line 152
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 153
    const-string v18, "f"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 154
    const-string v18, "t"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 155
    const-string v18, "e"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setFileEndTime(Ljava/lang/String;)V

    .line 156
    const-string v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/hfufo/bean/FileInfo;->setSize(J)V

    .line 157
    const-string v18, "c"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 158
    const-string v18, "c"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setCameraType(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    :cond_7
    const/4 v4, 0x0

    .line 163
    .local v4, "date":Ljava/util/Date;
    :try_start_8
    sget-object v18, Lcom/Util/json/JSonManager;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v19, "t"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    .line 168
    :goto_8
    :try_start_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 169
    .local v16, "startTime":Ljava/util/Calendar;
    if-eqz v4, :cond_8

    .line 170
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setStartTime(Ljava/util/Calendar;)V

    .line 177
    :goto_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 178
    .local v6, "endTime":Ljava/util/Calendar;
    if-eqz v4, :cond_9

    .line 179
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    const/16 v18, 0xd

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual {v7}, Lcom/hfufo/bean/FileInfo;->getDuration()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v7, v6}, Lcom/hfufo/bean/FileInfo;->setEndTime(Ljava/util/Calendar;)V

    .line 185
    :goto_a
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 140
    .end local v4    # "date":Ljava/util/Date;
    .end local v6    # "endTime":Ljava/util/Calendar;
    .end local v16    # "startTime":Ljava/util/Calendar;
    :pswitch_1
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/hfufo/bean/FileInfo;->setVideo(Z)V

    goto/16 :goto_7

    .line 164
    .restart local v4    # "date":Ljava/util/Date;
    :catch_3
    move-exception v5

    .line 165
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_8

    .line 173
    .end local v5    # "e":Ljava/text/ParseException;
    .restart local v16    # "startTime":Ljava/util/Calendar;
    :cond_8
    sget-object v18, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v19, "Parse start time string fail!"

    invoke-static/range {v18 .. v19}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 183
    .restart local v6    # "endTime":Ljava/util/Calendar;
    :cond_9
    sget-object v18, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v19, "Parse end time string fail!"

    invoke-static/range {v18 .. v19}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 187
    .end local v4    # "date":Ljava/util/Date;
    .end local v6    # "endTime":Ljava/util/Calendar;
    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v16    # "startTime":Ljava/util/Calendar;
    .end local v17    # "type":Ljava/lang/String;
    :cond_a
    sget-object v18, Lcom/Util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v19, "Invalid path received from device"

    invoke-static/range {v18 .. v19}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 192
    .end local v15    # "path":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/Util/json/JSonManager;->setFileInfos(Ljava/util/List;)V

    .line 193
    invoke-static {v8}, Lcom/fh/hdutil/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 194
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x17ad4 -> :sswitch_3
        0x19be1 -> :sswitch_1
        0x1a714 -> :sswitch_2
        0x31e068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setFileInfos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    iget-object v1, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v1

    .line 199
    :try_start_0
    iput-object p1, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    sput-object v0, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    :cond_0
    return-void
.end method

.method public getInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v1, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPictureInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v3, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v3

    .line 240
    :try_start_0
    sget-object v2, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "JSon data is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 243
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->isVideo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getVideoInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v3, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v3

    .line 225
    :try_start_0
    sget-object v2, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "JSon data is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 228
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/Util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getVideosDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSonData(Ljava/lang/String;Lcom/Util/json/listener/OnCompletedListener;)V
    .locals 2
    .param p1, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/Util/json/listener/OnCompletedListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "listener":Lcom/Util/json/listener/OnCompletedListener;, "Lcom/Util/json/listener/OnCompletedListener<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    sput-object p1, Lcom/Util/json/JSonManager;->mJSonData:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/Util/json/JSonManager$1;

    invoke-direct {v1, p0, p2}, Lcom/Util/json/JSonManager$1;-><init>(Lcom/Util/json/JSonManager;Lcom/Util/json/listener/OnCompletedListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    sput-object v1, Lcom/Util/json/JSonManager;->instance:Lcom/Util/json/JSonManager;

    .line 378
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/Util/json/JSonManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/Util/json/JSonManager;->clearData()V

    .line 382
    return-void
.end method
