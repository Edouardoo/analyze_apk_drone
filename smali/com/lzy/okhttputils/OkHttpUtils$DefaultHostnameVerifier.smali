.class public Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttputils/OkHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/OkHttpUtils;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttputils/OkHttpUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okhttputils/OkHttpUtils;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;->this$0:Lcom/lzy/okhttputils/OkHttpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method
