.class public Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;
.super Ljava/lang/Object;
.source "ZHThinkjoyGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;,
        Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SendTask;
    }
.end annotation


# static fields
.field public static final IMAGE_FORMAT_NV21:I = 0x1

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cur_count:J

.field private cur_time:J

.field private gestureHand:J

.field private last_count:J

.field private last_time:J

.field private todayNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "gesture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->TAG:Ljava/lang/String;

    .line 40
    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->todayNum:J

    .line 41
    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_time:J

    .line 42
    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    .line 43
    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    .line 44
    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_time:J

    .line 54
    new-instance v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SendTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SendTask;-><init>(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$1;)V

    .line 55
    .local v0, "sendTask":Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SendTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_time:J

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeGestureCreate(Ljava/lang/ref/WeakReference;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    .line 58
    return-void
.end method

.method private RequestByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "jsonParams"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v8, 0x0

    .line 329
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 330
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 331
    .local v11, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v12, 0xc8

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 332
    const/16 v12, 0xc8

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 333
    const-string v12, "POST"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 334
    const-string v12, "Accept-Charset"

    const-string v13, "UTF-8"

    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 338
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 341
    move-object/from16 v3, p2

    .line 344
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 345
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 346
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 347
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 348
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 349
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 352
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 353
    .local v2, "code":I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_1

    .line 354
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 355
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 357
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "readerline":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 359
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 367
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "code":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "readerline":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v12

    .line 371
    const/4 v12, 0x0

    move-object v9, v8

    .end local v8    # "result":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    :goto_1
    return-object v12

    .line 362
    .end local v9    # "result":Ljava/lang/String;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "code":I
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "readerline":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "readerline":Ljava/lang/String;
    :goto_2
    move-object v9, v8

    .end local v8    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    move-object v12, v8

    .line 366
    goto :goto_1

    .line 364
    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_2
.end method

.method static synthetic access$200(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;)V
    .locals 0
    .param p0, "x0"    # Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->sendData()V

    return-void
.end method

.method static synthetic access$300(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;)V
    .locals 0
    .param p0, "x0"    # Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->saveCount()V

    return-void
.end method

.method private count()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 89
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_time:J

    .line 94
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_time:J

    iget-wide v4, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 95
    new-instance v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;

    invoke-direct {v0, p0, v9}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;-><init>(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$1;)V

    .line 96
    .local v0, "saveTask":Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;
    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    iget-wide v4, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    .line 98
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_time:J

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_time:J

    .line 99
    iput-wide v6, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    .line 112
    .end local v0    # "saveTask":Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_time:J

    iget-wide v4, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_time:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 104
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    iget-wide v4, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    .line 105
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_time:J

    iput-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_time:J

    .line 106
    iput-wide v6, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->cur_count:J

    .line 107
    new-instance v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;

    invoke-direct {v0, p0, v9}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;-><init>(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$1;)V

    .line 108
    .restart local v0    # "saveTask":Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;
    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mInstance:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    invoke-direct {v0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;-><init>()V

    sput-object v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mInstance:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    .line 63
    sput-object p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    .line 72
    :cond_0
    sget-object v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mInstance:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    return-object v0
.end method

.method private makeSendData(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 12
    .param p1, "jsonSDKcount"    # Lorg/json/JSONArray;

    .prologue
    const/4 v8, 0x0

    .line 152
    sget-object v9, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    if-nez v9, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v8

    .line 155
    :cond_1
    const/4 v1, 0x0

    .line 156
    .local v1, "business_id":Ljava/lang/String;
    const/4 v6, 0x0

    .line 157
    .local v6, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 158
    .local v2, "is":Ljava/io/InputStream;
    sget-object v9, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "android_id":Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "env.properties"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 161
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 162
    .local v7, "properties":Ljava/util/Properties;
    invoke-virtual {v7, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 163
    const-string v9, "t_business_id"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v9, "key"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 167
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    .line 174
    .end local v7    # "properties":Ljava/util/Properties;
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 177
    :try_start_1
    const-string v9, "msgKey"

    invoke-virtual {v3, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v9, "seq"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    const-string v9, "t_business_id"

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v9, "t_language"

    const-string v10, "zh"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v9, "t_local_time"

    const/16 v10, 0xc

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v9, "t_msg_id"

    const-string v10, "1234bc78287545e09ccc65528064804b9850"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v9, "t_package_length"

    const/16 v10, 0x64

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v9, "t_priority"

    const-string v10, "0"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v9, "t_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v9, "t_service_name"

    const-string v10, "OffLineModule"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v5, "jsonObjectParameter":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v4, "jsonObjectCheck":Lorg/json/JSONObject;
    const-string v9, "opType"

    const-string v10, "offLineGesture"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v9, "sdkCount"

    invoke-virtual {v4, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v9, "device_id"

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v9, "check"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v9, "t_service_parameter"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v9, "t_session_id"

    const-string v10, "b0ed7c34ad0a4edf868016da35f3a9c9"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v9, "t_source"

    const-string v10, "OFFLINE_SDK"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v9, "t_version_id"

    const-string v10, "V1.0"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 199
    .end local v4    # "jsonObjectCheck":Lorg/json/JSONObject;
    .end local v5    # "jsonObjectParameter":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 171
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method private native nativeGestureCreate(Ljava/lang/ref/WeakReference;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;",
            ">;)J"
        }
    .end annotation
.end method

.method private native nativeGestureDetect(JLandroid/graphics/Bitmap;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeGestureDetect2(J[BIIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[BIII",
            "Ljava/util/List",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeGestureInit(J)I
.end method

.method private native nativeGestureRelease(J)V
.end method

.method private native nativeGetConfig(J)[I
.end method

.method private native nativeSetConfig(J[I)V
.end method

.method private saveCount()V
    .locals 6

    .prologue
    .line 144
    sget-object v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    const-string v3, "sp_sdk_count"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sp_sdk_count"

    iget-wide v4, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void
.end method

.method private sendData()V
    .locals 28

    .prologue
    .line 208
    sget-object v21, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    if-nez v21, :cond_0

    .line 323
    :goto_0
    return-void

    .line 212
    :cond_0
    sget-object v21, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->mContext:Landroid/content/Context;

    const-string v24, "sp_sdk_count"

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 213
    .local v13, "sp":Landroid/content/SharedPreferences;
    const-string v21, "sp_sdk_count"

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 214
    .local v14, "sp_count":J
    const-string v21, "sp_day"

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 215
    .local v16, "sp_day":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    div-long v22, v24, v26

    .line 216
    .local v22, "today_num":J
    const-string v21, "sp_send_flag"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 219
    .local v18, "sp_is_send":Z
    const-string v10, "http://dev.zhthinkjoy.com:8082/platform-api/service"

    .line 221
    .local v10, "pathUrl":Ljava/lang/String;
    const/4 v12, 0x0

    .line 222
    .local v12, "sendData":Ljava/lang/String;
    const/16 v19, 0x0

    .line 223
    .local v19, "sp_older_data":Ljava/lang/String;
    cmp-long v21, v16, v22

    if-eqz v21, :cond_1

    const-wide/16 v24, 0x0

    cmp-long v21, v16, v24

    if-nez v21, :cond_4

    .line 225
    :cond_1
    if-nez v18, :cond_3

    .line 229
    const-string v21, "sp_older_data"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 230
    if-eqz v19, :cond_2

    .line 231
    const-string v21, "sp_older_data:"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    if-eqz v19, :cond_3

    .line 235
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 237
    .local v8, "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->makeSendData(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 245
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->last_count:J

    .line 292
    :goto_2
    if-eqz v12, :cond_7

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->RequestByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, "result":Ljava/lang/String;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 295
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v11, :cond_6

    .line 298
    const-string v21, "sp_send_flag"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v21, "sp_day"

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v21, "sp_older_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 249
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "result":Ljava/lang/String;
    :cond_4
    const-string v21, "sp_older_data"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 250
    if-nez v19, :cond_5

    .line 253
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 255
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 256
    .local v9, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/Date;

    const-wide/16 v24, 0x18

    mul-long v24, v24, v16

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 257
    .local v4, "date":Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy-MM-dd"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 258
    .local v7, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 259
    .local v20, "str_date":Ljava/lang/String;
    const-string v21, "date"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v21, "num"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 264
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v19

    .line 266
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->makeSendData(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto/16 :goto_2

    .line 271
    .end local v4    # "date":Ljava/util/Date;
    .end local v7    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v20    # "str_date":Ljava/lang/String;
    :cond_5
    const-string v21, "sp_older_data:"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_2
    new-instance v8, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/Date;

    const-wide/16 v24, 0x18

    mul-long v24, v24, v16

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 276
    .restart local v4    # "date":Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy-MM-dd"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v7    # "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 278
    .restart local v20    # "str_date":Ljava/lang/String;
    const-string v21, "date"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v21, "num"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 281
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 282
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v19

    .line 285
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->makeSendData(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    goto/16 :goto_2

    .line 286
    .end local v4    # "date":Ljava/util/Date;
    .end local v7    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v20    # "str_date":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 287
    .local v5, "e":Lorg/json/JSONException;
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 307
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_6
    const-string v21, "sp_send_flag"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v21, "sp_older_data"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v21, "sp_day"

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 316
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "result":Ljava/lang/String;
    :cond_7
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 317
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v21, "sp_sdk_count"

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v21, "sp_send_flag"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 319
    const-string v21, "sp_older_data"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    const-string v21, "sp_day"

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 267
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v21

    goto/16 :goto_2

    .line 238
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_2
    move-exception v21

    goto/16 :goto_1
.end method


# virtual methods
.method public gestureDetect(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "gestureInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;>;"
    iget-wide v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeGestureDetect(JLandroid/graphics/Bitmap;Ljava/util/List;)V

    .line 79
    invoke-direct {p0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->count()V

    .line 80
    return-void
.end method

.method public gestureDetect([BIIILjava/util/List;)V
    .locals 9
    .param p1, "imageArray"    # [B
    .param p2, "imageType"    # I
    .param p3, "height"    # I
    .param p4, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p5, "gestureInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;>;"
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeGestureDetect2(J[BIIILjava/util/List;)V

    .line 85
    invoke-direct {p0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->count()V

    .line 86
    return-void
.end method

.method public getConfig()Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;
    .locals 4

    .prologue
    .line 128
    new-instance v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;

    invoke-direct {v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;-><init>()V

    .line 129
    .local v1, "gestureConfig":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    invoke-direct {p0, v2, v3}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeGetConfig(J)[I

    move-result-object v0

    .line 130
    .local v0, "configs":[I
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;->Rotation:I

    .line 131
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;->ResultMode:I

    .line 132
    return-object v1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    invoke-direct {p0, v0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeGestureInit(J)I

    .line 115
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    invoke-direct {p0, v0, v1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeGestureRelease(J)V

    .line 119
    return-void
.end method

.method public setConfig(Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;)V
    .locals 4
    .param p1, "gestureConfig"    # Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;

    .prologue
    .line 122
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 123
    .local v0, "configs":[I
    const/4 v1, 0x0

    iget v2, p1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;->Rotation:I

    aput v2, v0, v1

    .line 124
    const/4 v1, 0x1

    iget v2, p1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureConfig;->ResultMode:I

    aput v2, v0, v1

    .line 125
    iget-wide v2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureHand:J

    invoke-direct {p0, v2, v3, v0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->nativeSetConfig(J[I)V

    .line 126
    return-void
.end method
