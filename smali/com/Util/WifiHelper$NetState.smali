.class public final enum Lcom/Util/WifiHelper$NetState;
.super Ljava/lang/Enum;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/WifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/Util/WifiHelper$NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/Util/WifiHelper$NetState;

.field public static final enum NET_2G:Lcom/Util/WifiHelper$NetState;

.field public static final enum NET_3G:Lcom/Util/WifiHelper$NetState;

.field public static final enum NET_4G:Lcom/Util/WifiHelper$NetState;

.field public static final enum NET_NO:Lcom/Util/WifiHelper$NetState;

.field public static final enum NET_UNKNOWN:Lcom/Util/WifiHelper$NetState;

.field public static final enum NET_WIFI:Lcom/Util/WifiHelper$NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 666
    new-instance v0, Lcom/Util/WifiHelper$NetState;

    const-string v1, "NET_NO"

    invoke-direct {v0, v1, v3}, Lcom/Util/WifiHelper$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$NetState;->NET_NO:Lcom/Util/WifiHelper$NetState;

    new-instance v0, Lcom/Util/WifiHelper$NetState;

    const-string v1, "NET_2G"

    invoke-direct {v0, v1, v4}, Lcom/Util/WifiHelper$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$NetState;->NET_2G:Lcom/Util/WifiHelper$NetState;

    new-instance v0, Lcom/Util/WifiHelper$NetState;

    const-string v1, "NET_3G"

    invoke-direct {v0, v1, v5}, Lcom/Util/WifiHelper$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$NetState;->NET_3G:Lcom/Util/WifiHelper$NetState;

    new-instance v0, Lcom/Util/WifiHelper$NetState;

    const-string v1, "NET_4G"

    invoke-direct {v0, v1, v6}, Lcom/Util/WifiHelper$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$NetState;->NET_4G:Lcom/Util/WifiHelper$NetState;

    new-instance v0, Lcom/Util/WifiHelper$NetState;

    const-string v1, "NET_WIFI"

    invoke-direct {v0, v1, v7}, Lcom/Util/WifiHelper$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$NetState;->NET_WIFI:Lcom/Util/WifiHelper$NetState;

    new-instance v0, Lcom/Util/WifiHelper$NetState;

    const-string v1, "NET_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/Util/WifiHelper$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$NetState;->NET_UNKNOWN:Lcom/Util/WifiHelper$NetState;

    .line 665
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/Util/WifiHelper$NetState;

    sget-object v1, Lcom/Util/WifiHelper$NetState;->NET_NO:Lcom/Util/WifiHelper$NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/Util/WifiHelper$NetState;->NET_2G:Lcom/Util/WifiHelper$NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/Util/WifiHelper$NetState;->NET_3G:Lcom/Util/WifiHelper$NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/Util/WifiHelper$NetState;->NET_4G:Lcom/Util/WifiHelper$NetState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/Util/WifiHelper$NetState;->NET_WIFI:Lcom/Util/WifiHelper$NetState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_UNKNOWN:Lcom/Util/WifiHelper$NetState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/Util/WifiHelper$NetState;->$VALUES:[Lcom/Util/WifiHelper$NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/Util/WifiHelper$NetState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 665
    const-class v0, Lcom/Util/WifiHelper$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/Util/WifiHelper$NetState;

    return-object v0
.end method

.method public static values()[Lcom/Util/WifiHelper$NetState;
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/Util/WifiHelper$NetState;->$VALUES:[Lcom/Util/WifiHelper$NetState;

    invoke-virtual {v0}, [Lcom/Util/WifiHelper$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/Util/WifiHelper$NetState;

    return-object v0
.end method
