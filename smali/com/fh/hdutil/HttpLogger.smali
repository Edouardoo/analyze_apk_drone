.class public Lcom/fh/hdutil/HttpLogger;
.super Ljava/lang/Object;
.source "HttpLogger.java"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# static fields
.field private static isLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLog(Z)V
    .locals 0
    .param p0, "log"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/fh/hdutil/HttpLogger;->isLog:Z

    .line 18
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lcom/fh/hdutil/HttpLogger;->isLog:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "okHttp"

    invoke-static {v0, p1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method
