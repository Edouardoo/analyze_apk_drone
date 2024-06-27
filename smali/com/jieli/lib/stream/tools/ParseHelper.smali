.class public Lcom/jieli/lib/stream/tools/ParseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/stream/tools/ParseHelper$a;,
        Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/jieli/lib/stream/tools/ParseHelper;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/MenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jieli/lib/stream/beans/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/CaptureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

.field private static l:Ljava/lang/StringBuilder;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static final o:Ljava/text/SimpleDateFormat;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/MenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/jieli/lib/stream/tools/ParseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->b:Lcom/jieli/lib/stream/tools/ParseHelper;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    .line 47
    sput-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->e:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->f:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->j:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->l:Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "FTPX"

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->m:Ljava/lang/String;

    .line 413
    const-string v0, "12345678"

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->n:Ljava/lang/String;

    .line 709
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->o:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->c:Ljava/util/List;

    .line 73
    const-string v0, "-404"

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/beans/DeviceVersionInfo;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/jieli/lib/stream/tools/ParseHelper;->k:Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/jieli/lib/stream/tools/ParseHelper;->e:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/MenuInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/MenuInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 270
    move v7, v0

    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 271
    invoke-virtual {p3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 276
    new-instance v9, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-direct {v9}, Lcom/jieli/lib/stream/beans/MenuInfo;-><init>()V

    .line 277
    invoke-virtual {v9, p2}, Lcom/jieli/lib/stream/beans/MenuInfo;->setMode(Ljava/lang/String;)V

    .line 279
    const-string v0, "text"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "text"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setText(Ljava/lang/String;)V

    .line 283
    :cond_0
    const-string v0, "menu_type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string v0, "menu_type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setMenuType(I)V

    .line 287
    :cond_1
    const-string v0, "cmd_num"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 288
    const-string v0, "cmd_num"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setCmdNumber(Ljava/lang/String;)V

    .line 295
    :goto_1
    const-string v0, "content"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v9}, Lcom/jieli/lib/stream/beans/MenuInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->g:Ljava/lang/String;

    .line 297
    const-string v0, "content"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 301
    :cond_2
    const-string v0, "id"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    const-string v0, "id"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setId(I)V

    .line 305
    :cond_3
    const-string v0, "android_img"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    const-string v0, "android_img"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setImage(Ljava/lang/String;)V

    .line 309
    :cond_4
    const-string v0, "url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    const-string v0, "url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setUrl(Ljava/lang/String;)V

    .line 313
    :cond_5
    const-string v0, "large_image_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    const-string v0, "large_image_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setLargeImageUrl(Ljava/lang/String;)V

    .line 317
    :cond_6
    const-string v0, "mid_image_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v10

    .line 320
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 322
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "http://%s:%d/"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0x1f90

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v0, Lcom/android/volley/toolbox/ImageRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mid_image_url"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jieli/lib/stream/tools/ParseHelper$4;

    invoke-direct {v2, p0, v9, v10}, Lcom/jieli/lib/stream/tools/ParseHelper$4;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/jieli/lib/stream/beans/MenuInfo;Lcom/android/volley/RequestQueue;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v6, Lcom/jieli/lib/stream/tools/ParseHelper$5;

    invoke-direct {v6, p0, v10}, Lcom/jieli/lib/stream/tools/ParseHelper$5;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 339
    invoke-virtual {v10, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 340
    const-string v0, "mid_image_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setMiddleImageUrl(Ljava/lang/String;)V

    .line 344
    :cond_7
    const-string v0, "small_image_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 345
    const-string v0, "small_image_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setSmallImageUrl(Ljava/lang/String;)V

    .line 347
    :cond_8
    invoke-interface {p4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 291
    :cond_9
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->g:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->setParentNum(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 352
    :cond_a
    return-object p4
.end method

.method private a(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/VideoInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/CaptureInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/VideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    .line 1034
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "changeVideoInfo ===============001"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    if-nez p1, :cond_1

    .line 1036
    const/4 p1, 0x0

    .line 1090
    :cond_0
    return-object p1

    .line 1038
    :cond_1
    if-eqz p2, :cond_0

    .line 1041
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoInfo ===============002 cInfo size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/CaptureInfo;

    .line 1043
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/CaptureInfo;->getCaptureTime()Ljava/util/Calendar;

    move-result-object v1

    .line 1044
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1045
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1047
    if-eqz v1, :cond_2

    .line 1050
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1051
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, p3

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 1052
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1053
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 1054
    sget-object v4, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeVideoInfo ===============captureTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeVideoInfo ===============leftTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeVideoInfo ===============rightTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/VideoInfo;

    .line 1058
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-gtz v5, :cond_9

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-ltz v5, :cond_9

    .line 1059
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getIsCapture()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1060
    sget-object v4, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v5, "video info set is capture flag!"

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jieli/lib/stream/beans/VideoInfo;->setIsCapture(Z)V

    .line 1063
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v4

    if-gtz v4, :cond_3

    .line 1064
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    .line 1066
    :cond_3
    invoke-virtual {v0, v2}, Lcom/jieli/lib/stream/beans/VideoInfo;->setLeftCaptureTime(Ljava/util/Calendar;)V

    .line 1067
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1068
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 1070
    :cond_4
    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setRightCaptureTime(Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 1073
    :cond_5
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getLeftCaptureTime()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getLeftCaptureTime()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1074
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-gtz v5, :cond_6

    .line 1075
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    .line 1077
    :cond_6
    invoke-virtual {v0, v2}, Lcom/jieli/lib/stream/beans/VideoInfo;->setLeftCaptureTime(Ljava/util/Calendar;)V

    .line 1079
    :cond_7
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getRightCaptureTime()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getRightCaptureTime()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1080
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-ltz v5, :cond_8

    .line 1081
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 1083
    :cond_8
    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setRightCaptureTime(Ljava/util/Calendar;)V

    :cond_9
    move-object v0, v1

    move-object v1, v0

    .line 1087
    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 233
    :try_start_0
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->e:Ljava/lang/String;

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "parseDescriptionText: dataString is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 248
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    const-string v3, "state_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 261
    sget-object v4, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 239
    :catch_1
    move-exception v0

    .line 240
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/ParseHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/ParseHelper;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 654
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "parseVideoInfoText: dataString is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 658
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 665
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 666
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "file_list"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 669
    :try_start_1
    const-string v2, "file_list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 671
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 672
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 673
    new-instance v5, Lcom/jieli/lib/stream/beans/CaptureInfo;

    invoke-direct {v5}, Lcom/jieli/lib/stream/beans/CaptureInfo;-><init>()V

    .line 674
    const-string v2, "p"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 675
    const-string v2, "p"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jieli/lib/stream/beans/CaptureInfo;->setFilePath(Ljava/lang/String;)V

    .line 677
    :cond_3
    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_4

    .line 680
    :try_start_3
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->o:Ljava/text/SimpleDateFormat;

    const-string v6, "t"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v2, v0

    .line 684
    :goto_2
    :try_start_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 685
    if-eqz v2, :cond_6

    .line 686
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 690
    :goto_3
    invoke-virtual {v5, v0}, Lcom/jieli/lib/stream/beans/CaptureInfo;->setCaptureTime(Ljava/util/Calendar;)V

    .line 692
    :cond_4
    invoke-virtual {v5}, Lcom/jieli/lib/stream/beans/CaptureInfo;->getCaptureTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 693
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 671
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 681
    :catch_1
    move-exception v0

    .line 682
    :try_start_5
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 688
    goto :goto_3

    .line 696
    :catch_2
    move-exception v0

    .line 697
    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 706
    :cond_7
    :goto_4
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->j:Ljava/util/List;

    invoke-direct {p0, v0, v1, p2}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    goto/16 :goto_0

    .line 699
    :catch_3
    move-exception v0

    .line 700
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/jieli/lib/stream/tools/ParseHelper;->b(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 908
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 920
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 911
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    move v2, v1

    .line 912
    :goto_1
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 913
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 914
    aget-object v3, p0, v2

    .line 915
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v2

    .line 916
    add-int/lit8 v4, v2, 0x1

    aput-object v3, p0, v4

    .line 912
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 911
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/jieli/lib/stream/tools/ParseHelper;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    move v3, v0

    .line 718
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 719
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 720
    new-instance v6, Lcom/jieli/lib/stream/beans/VideoInfo;

    invoke-direct {v6}, Lcom/jieli/lib/stream/beans/VideoInfo;-><init>()V

    .line 721
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setIsCapture(Z)V

    .line 730
    const-string v1, "f"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    const-string v1, "f"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/lib/stream/tools/ParseHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setFileName(Ljava/lang/String;)V

    .line 733
    :cond_0
    const-string v1, "f"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    const-string v1, "f"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setFilePath(Ljava/lang/String;)V

    .line 736
    :cond_1
    const-string v1, "t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    const-string v1, "t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setCreateDate(Ljava/lang/String;)V

    .line 739
    :cond_2
    const-string v1, "d"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    const-string v1, "d"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 743
    :cond_3
    const/4 v2, 0x0

    .line 745
    :try_start_1
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->o:Ljava/text/SimpleDateFormat;

    const-string v7, "t"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 750
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 751
    if-eqz v1, :cond_8

    .line 752
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 753
    invoke-virtual {v6, v2}, Lcom/jieli/lib/stream/beans/VideoInfo;->setStartTime(Ljava/util/Calendar;)V

    .line 759
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 760
    if-eqz v1, :cond_b

    .line 761
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 762
    const/16 v1, 0xd

    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6}, Lcom/jieli/lib/stream/beans/VideoInfo;->getDuration()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 763
    invoke-virtual {v6, v2}, Lcom/jieli/lib/stream/beans/VideoInfo;->setEndTime(Ljava/util/Calendar;)V

    .line 773
    :goto_3
    const-string v1, "y"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 774
    const-string v1, "y"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setType(I)V

    .line 775
    const-string v1, "y"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 776
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setIsLocked(Z)V

    .line 781
    :cond_4
    :goto_4
    const-string v1, "r"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 782
    const-string v1, "r"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setRate(I)V

    .line 784
    :cond_5
    const-string v1, "t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 785
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 786
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    const-string v2, "t"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_6
    const-string v1, "t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 790
    :cond_7
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoInfo string = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/jieli/lib/stream/beans/VideoInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    move-object v1, v2

    goto/16 :goto_1

    .line 755
    :cond_8
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v7, "Parse start time string fail!"

    invoke-static {v2, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 792
    :catch_1
    move-exception v1

    .line 793
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 796
    :cond_9
    invoke-static {v4}, Lcom/jieli/lib/stream/tools/ParseHelper;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 797
    if-eqz v2, :cond_e

    move v1, v0

    .line 798
    :goto_5
    array-length v0, v2

    if-ge v1, v0, :cond_e

    .line 799
    aget-object v0, v2, v1

    .line 800
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 798
    :cond_a
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 765
    :cond_b
    :try_start_3
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v2, "Parse end time string fail!"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 777
    :cond_c
    const-string v1, "y"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_4

    .line 778
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/stream/beans/VideoInfo;->setIsLocked(Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 803
    :cond_d
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 804
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/VideoInfo;

    .line 805
    if-eqz v0, :cond_a

    .line 806
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 808
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 815
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->l:Ljava/lang/StringBuilder;

    .line 816
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 817
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_12

    .line 818
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/VideoInfo;

    .line 819
    if-nez v0, :cond_10

    .line 817
    :cond_f
    :goto_8
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 820
    :cond_10
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 822
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 823
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 825
    :cond_11
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 830
    :cond_12
    return-object v2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 867
    .line 868
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-object v0

    .line 871
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1009
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "parseAndroidVersions Parameter is empty!"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v0, 0x0

    .line 1030
    :goto_0
    return-object v0

    .line 1013
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1016
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    const-string v0, "]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1019
    :cond_2
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1020
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1023
    :cond_3
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-static {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1027
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1028
    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->j:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->b:Lcom/jieli/lib/stream/tools/ParseHelper;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lcom/jieli/lib/stream/tools/ParseHelper;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->b:Lcom/jieli/lib/stream/tools/ParseHelper;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/jieli/lib/stream/tools/ParseHelper;

    invoke-direct {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;-><init>()V

    sput-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->b:Lcom/jieli/lib/stream/tools/ParseHelper;

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->b:Lcom/jieli/lib/stream/tools/ParseHelper;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseDeviceVersionText(Ljava/lang/String;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 970
    new-instance v1, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    invoke-direct {v1}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;-><init>()V

    .line 971
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v2, "parseVideoInfoText: dataString is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-object v0

    .line 978
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 980
    const-string v3, "product_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 981
    const-string v3, "product_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setProductType(Ljava/lang/String;)V

    .line 983
    :cond_1
    const-string v3, "match_app_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 984
    const-string v3, "match_app_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 985
    invoke-static {v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 986
    if-eqz v3, :cond_2

    .line 987
    invoke-virtual {v1, v3}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setAppTypes([Ljava/lang/String;)V

    .line 990
    :cond_2
    const-string v3, "firmware_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 991
    const-string v3, "firmware_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setFirmwareVersion(Ljava/lang/String;)V

    .line 993
    :cond_3
    const-string v3, "match_android_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 994
    const-string v3, "match_android_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/ParseHelper;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 996
    if-eqz v2, :cond_4

    .line 997
    invoke-virtual {v1, v2}, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->setAndroidVersions([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    .line 1005
    goto :goto_0

    .line 1000
    :catch_0
    move-exception v1

    .line 1001
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1002
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String transform json failed! JSONException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCaptureInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/CaptureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->j:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceVersionInfo()Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->k:Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    return-object v0
.end method

.method public getDeviceVersionMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuData(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/MenuInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v2, "Mode is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    .line 104
    if-nez v2, :cond_1

    .line 105
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v2, "List is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "-404"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper;->c:Ljava/util/List;

    goto :goto_0
.end method

.method public getMenuData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/MenuInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v2, "Mode is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const-string v1, "-404"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v2, "parentNumber is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 138
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getParentNum()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-404"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 145
    goto :goto_0
.end method

.method public getMenuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jieli/lib/stream/beans/MenuInfo;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "===getImageName: mode is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 174
    :goto_0
    return-object v0

    .line 161
    :cond_0
    sget-object v3, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    .line 162
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 166
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getParentNum()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getId()I

    move-result v6

    .line 169
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-404"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v6, v4, :cond_1

    .line 170
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jieli/lib/stream/beans/MenuInfo;->setSelected(Z)V

    .line 171
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    goto :goto_0

    .line 165
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 174
    goto :goto_0
.end method

.method public getSelectVideoIndexInTxt(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 888
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    move v1, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 889
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/VideoInfo;

    .line 890
    if-eqz v0, :cond_2

    .line 891
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 893
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 894
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getSortedVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortedVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jieli/lib/stream/beans/VideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->i:Ljava/util/List;

    return-object v0
.end method

.method public requestCaptureText(Landroid/content/Context;ILcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 603
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "requestCaptureText: get device ip fail!"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    if-eqz p3, :cond_0

    .line 607
    invoke-interface {p3, v6}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://%s:%d/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/16 v6, 0x1f90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DCIMA/CAPTURE.TXT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==========request url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/jieli/lib/stream/tools/ParseHelper$8;

    invoke-direct {v3, p0, v1, p3, p2}, Lcom/jieli/lib/stream/tools/ParseHelper$8;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;I)V

    new-instance v4, Lcom/jieli/lib/stream/tools/ParseHelper$9;

    invoke-direct {v4, p0, v1, p3}, Lcom/jieli/lib/stream/tools/ParseHelper$9;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 644
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public requestDescriptionText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/CommandHub;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    if-eqz p3, :cond_0

    .line 191
    invoke-interface {p3, v6}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 193
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "Get device ip fail"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://%s:%d/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/16 v6, 0x1f90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/jieli/lib/stream/tools/ParseHelper$1;

    invoke-direct {v3, p0, v0, p3, p1}, Lcom/jieli/lib/stream/tools/ParseHelper$1;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;Landroid/content/Context;)V

    new-instance v4, Lcom/jieli/lib/stream/tools/ParseHelper$3;

    invoke-direct {v4, p0, v0, p3}, Lcom/jieli/lib/stream/tools/ParseHelper$3;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 227
    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public requestDeviceVersionText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 929
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "requestDeviceVersionText: get device ip fail."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    if-eqz p3, :cond_0

    .line 933
    invoke-interface {p3, v6}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://%s:%d/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/16 v6, 0x1f90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======== request deviceVersion url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/jieli/lib/stream/tools/ParseHelper$10;

    invoke-direct {v3, p0, v1, p3}, Lcom/jieli/lib/stream/tools/ParseHelper$10;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    new-instance v4, Lcom/jieli/lib/stream/tools/ParseHelper$2;

    invoke-direct {v4, p0, v1, p3}, Lcom/jieli/lib/stream/tools/ParseHelper$2;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 966
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public requestVideoInfoText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 361
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    if-eqz p3, :cond_0

    .line 364
    invoke-interface {p3, v6}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 366
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "requestVideoInfoText: get device ip fail!"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://%s:%d/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/16 v6, 0x1f90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======== request url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/jieli/lib/stream/tools/ParseHelper$6;

    invoke-direct {v3, p0, v1, p3, p2}, Lcom/jieli/lib/stream/tools/ParseHelper$6;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;Ljava/lang/String;)V

    new-instance v4, Lcom/jieli/lib/stream/tools/ParseHelper$7;

    invoke-direct {v4, p0, v1, p3}, Lcom/jieli/lib/stream/tools/ParseHelper$7;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 406
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public setFtpAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    sput-object p1, Lcom/jieli/lib/stream/tools/ParseHelper;->m:Ljava/lang/String;

    .line 416
    sput-object p2, Lcom/jieli/lib/stream/tools/ParseHelper;->n:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1099
    const-string v0, "-404"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "updateContent: cmdNumber is -404"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    sget-object v2, Lcom/jieli/lib/stream/tools/ParseHelper;->d:Ljava/util/List;

    .line 1105
    const/4 v1, 0x0

    .line 1109
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    .line 1117
    const-string v5, "-404"

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getParentNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getParentNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1118
    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getId()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 1120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->setSelected(Z)V

    :goto_2
    move-object v1, v0

    .line 1125
    goto :goto_1

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    sget-object v1, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1122
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/jieli/lib/stream/beans/MenuInfo;->setSelected(Z)V

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 1127
    :cond_4
    if-nez v1, :cond_5

    .line 1128
    sget-object v0, Lcom/jieli/lib/stream/tools/ParseHelper;->a:Ljava/lang/String;

    const-string v1, "MenuInfo temp:null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/beans/MenuInfo;

    .line 1134
    const-string v3, "-404"

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/jieli/lib/stream/beans/MenuInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1136
    invoke-virtual {v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1137
    invoke-virtual {v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->getStateBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1138
    invoke-virtual {v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->getStateBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->setStateBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1141
    :cond_7
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->setStateImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1144
    :cond_8
    invoke-virtual {v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/beans/MenuInfo;->setStateImage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
