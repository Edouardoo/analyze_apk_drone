.class public final enum Lcom/Util/WifiHelper$WifiCipherType;
.super Ljava/lang/Enum;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/WifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/Util/WifiHelper$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/Util/WifiHelper$WifiCipherType;

.field public static final enum IEEE8021XEAP:Lcom/Util/WifiHelper$WifiCipherType;

.field public static final enum NONE:Lcom/Util/WifiHelper$WifiCipherType;

.field public static final enum WEP:Lcom/Util/WifiHelper$WifiCipherType;

.field public static final enum WPA:Lcom/Util/WifiHelper$WifiCipherType;

.field public static final enum WPA2:Lcom/Util/WifiHelper$WifiCipherType;

.field public static final enum WPAWPA2:Lcom/Util/WifiHelper$WifiCipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    new-instance v0, Lcom/Util/WifiHelper$WifiCipherType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/Util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->NONE:Lcom/Util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/Util/WifiHelper$WifiCipherType;

    const-string v1, "IEEE8021XEAP"

    invoke-direct {v0, v1, v4}, Lcom/Util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->IEEE8021XEAP:Lcom/Util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/Util/WifiHelper$WifiCipherType;

    const-string v1, "WEP"

    invoke-direct {v0, v1, v5}, Lcom/Util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->WEP:Lcom/Util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/Util/WifiHelper$WifiCipherType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v6}, Lcom/Util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->WPA:Lcom/Util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/Util/WifiHelper$WifiCipherType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v7}, Lcom/Util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->WPA2:Lcom/Util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/Util/WifiHelper$WifiCipherType;

    const-string v1, "WPAWPA2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/Util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->WPAWPA2:Lcom/Util/WifiHelper$WifiCipherType;

    .line 463
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/Util/WifiHelper$WifiCipherType;

    sget-object v1, Lcom/Util/WifiHelper$WifiCipherType;->NONE:Lcom/Util/WifiHelper$WifiCipherType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/Util/WifiHelper$WifiCipherType;->IEEE8021XEAP:Lcom/Util/WifiHelper$WifiCipherType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/Util/WifiHelper$WifiCipherType;->WEP:Lcom/Util/WifiHelper$WifiCipherType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/Util/WifiHelper$WifiCipherType;->WPA:Lcom/Util/WifiHelper$WifiCipherType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/Util/WifiHelper$WifiCipherType;->WPA2:Lcom/Util/WifiHelper$WifiCipherType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/Util/WifiHelper$WifiCipherType;->WPAWPA2:Lcom/Util/WifiHelper$WifiCipherType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/Util/WifiHelper$WifiCipherType;->$VALUES:[Lcom/Util/WifiHelper$WifiCipherType;

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
    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/Util/WifiHelper$WifiCipherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    const-class v0, Lcom/Util/WifiHelper$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/Util/WifiHelper$WifiCipherType;

    return-object v0
.end method

.method public static values()[Lcom/Util/WifiHelper$WifiCipherType;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/Util/WifiHelper$WifiCipherType;->$VALUES:[Lcom/Util/WifiHelper$WifiCipherType;

    invoke-virtual {v0}, [Lcom/Util/WifiHelper$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/Util/WifiHelper$WifiCipherType;

    return-object v0
.end method
