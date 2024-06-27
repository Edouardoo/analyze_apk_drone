.class public Lcom/lzy/okhttputils/model/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_HTTP_DATA:Ljava/lang/String; = "EEE, dd MMM y HH:mm:ss \'GMT\'"

.field public static final GMT_TIME_ZONE:Ljava/util/TimeZone;

.field public static final HEAD_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEAD_KEY_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEAD_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final HEAD_KEY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEAD_KEY_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEAD_KEY_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEAD_KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEAD_KEY_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEAD_KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEAD_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEAD_KEY_COOKIE2:Ljava/lang/String; = "Cookie2"

.field public static final HEAD_KEY_DATE:Ljava/lang/String; = "Date"

.field public static final HEAD_KEY_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEAD_KEY_E_TAG:Ljava/lang/String; = "ETag"

.field public static final HEAD_KEY_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final HEAD_KEY_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEAD_KEY_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEAD_KEY_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEAD_KEY_PRAGMA:Ljava/lang/String; = "Pragma"

.field public static final HEAD_KEY_RESPONSE_CODE:Ljava/lang/String; = "ResponseCode"

.field public static final HEAD_KEY_RESPONSE_MESSAGE:Ljava/lang/String; = "ResponseMessage"

.field public static final HEAD_KEY_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEAD_KEY_SET_COOKIE2:Ljava/lang/String; = "Set-Cookie2"

.field public static final HEAD_KEY_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEAD_VALUE_ACCEPT_ENCODING:Ljava/lang/String; = "gzip, deflate"

.field public static final HEAD_VALUE_CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field public static final HEAD_VALUE_CONNECTION_KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static acceptLanguage:Ljava/lang/String;

.field private static userAgent:Ljava/lang/String;


# instance fields
.field public headersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->init()V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static formatMillisToGMT(J)Ljava/lang/String;
    .locals 4
    .param p0, "milliseconds"    # J

    .prologue
    .line 249
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 250
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 251
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/lzy/okhttputils/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 252
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAcceptLanguage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    sget-object v4, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 165
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "country":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "acceptLanguageBuilder":Ljava/lang/StringBuilder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";q=0.8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 171
    sget-object v4, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 173
    .end local v0    # "acceptLanguageBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v4

    :cond_1
    sget-object v4, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "cacheControl"    # Ljava/lang/String;
    .param p1, "pragma"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p0, :cond_0

    .line 152
    .end local p0    # "cacheControl":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 151
    .restart local p0    # "cacheControl":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 152
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;)J
    .locals 4
    .param p0, "gmtTime"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 123
    :goto_0
    return-wide v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 123
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliseconds"    # J

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpiration(Ljava/lang/String;)J
    .locals 4
    .param p0, "expiresTime"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    invoke-static {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 136
    :goto_0
    return-wide v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 136
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getLastModified(Ljava/lang/String;)J
    .locals 4
    .param p0, "lastModified"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 145
    :goto_0
    return-wide v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 145
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 14

    .prologue
    .line 184
    sget-object v11, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 185
    const/4 v9, 0x0

    .line 187
    .local v9, "webUserAgent":Ljava/lang/String;
    :try_start_0
    const-string v11, "com.android.internal.R$string"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 188
    .local v7, "sysResCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "web_user_agent"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 189
    .local v10, "webUserAgentField":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 190
    .local v6, "resId":Ljava/lang/Integer;
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 194
    .end local v6    # "resId":Ljava/lang/Integer;
    .end local v7    # "sysResCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "webUserAgentField":Ljava/lang/reflect/Field;
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 195
    const-string v9, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/5.0 %sSafari/533.1"

    .line 198
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 199
    .local v4, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 202
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 203
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :goto_1
    const-string v11, "; "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 214
    const-string v11, "-"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .end local v1    # "country":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v11, "REL"

    sget-object v12, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 223
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 224
    .local v5, "model":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 225
    const-string v11, "; "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    .end local v5    # "model":Ljava/lang/String;
    :cond_2
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 230
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 231
    const-string v11, " Build/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_3
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    const-string v13, "Mobile "

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 235
    sget-object v11, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 237
    :goto_3
    return-object v11

    .line 206
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    :cond_4
    const-string v11, "1.0"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 219
    .restart local v3    # "language":Ljava/lang/String;
    :cond_5
    const-string v11, "en"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 237
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "webUserAgent":Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    goto :goto_3

    .line 191
    .restart local v9    # "webUserAgent":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    return-void
.end method

.method public static parseGMTToMillis(Ljava/lang/String;)J
    .locals 4
    .param p0, "gmtTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    .line 245
    :goto_0
    return-wide v2

    .line 242
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 243
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/lzy/okhttputils/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 244
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 245
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static setAcceptLanguage(Ljava/lang/String;)V
    .locals 0
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "agent"    # Ljava/lang/String;

    .prologue
    .line 177
    sput-object p0, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/lzy/okhttputils/model/HttpHeaders;)V
    .locals 2
    .param p1, "headers"    # Lcom/lzy/okhttputils/model/HttpHeaders;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 91
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpHeaders{headersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
