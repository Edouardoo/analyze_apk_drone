.class public final enum Lcom/fh/util/TimeFormater$DateType;
.super Ljava/lang/Enum;
.source "TimeFormater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/util/TimeFormater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fh/util/TimeFormater$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fh/util/TimeFormater$DateType;

.field public static final enum DAY:Lcom/fh/util/TimeFormater$DateType;

.field public static final enum HOUR:Lcom/fh/util/TimeFormater$DateType;

.field public static final enum MIN:Lcom/fh/util/TimeFormater$DateType;

.field public static final enum MONTH:Lcom/fh/util/TimeFormater$DateType;

.field public static final enum SEC:Lcom/fh/util/TimeFormater$DateType;

.field public static final enum TIME:Lcom/fh/util/TimeFormater$DateType;

.field public static final enum YEAR:Lcom/fh/util/TimeFormater$DateType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v3}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->YEAR:Lcom/fh/util/TimeFormater$DateType;

    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v4}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->MONTH:Lcom/fh/util/TimeFormater$DateType;

    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v5}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->DAY:Lcom/fh/util/TimeFormater$DateType;

    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "HOUR"

    invoke-direct {v0, v1, v6}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->HOUR:Lcom/fh/util/TimeFormater$DateType;

    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v7}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->MIN:Lcom/fh/util/TimeFormater$DateType;

    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "SEC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->SEC:Lcom/fh/util/TimeFormater$DateType;

    new-instance v0, Lcom/fh/util/TimeFormater$DateType;

    const-string v1, "TIME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fh/util/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->TIME:Lcom/fh/util/TimeFormater$DateType;

    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fh/util/TimeFormater$DateType;

    sget-object v1, Lcom/fh/util/TimeFormater$DateType;->YEAR:Lcom/fh/util/TimeFormater$DateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fh/util/TimeFormater$DateType;->MONTH:Lcom/fh/util/TimeFormater$DateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fh/util/TimeFormater$DateType;->DAY:Lcom/fh/util/TimeFormater$DateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fh/util/TimeFormater$DateType;->HOUR:Lcom/fh/util/TimeFormater$DateType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fh/util/TimeFormater$DateType;->MIN:Lcom/fh/util/TimeFormater$DateType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fh/util/TimeFormater$DateType;->SEC:Lcom/fh/util/TimeFormater$DateType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fh/util/TimeFormater$DateType;->TIME:Lcom/fh/util/TimeFormater$DateType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fh/util/TimeFormater$DateType;->$VALUES:[Lcom/fh/util/TimeFormater$DateType;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fh/util/TimeFormater$DateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/fh/util/TimeFormater$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fh/util/TimeFormater$DateType;

    return-object v0
.end method

.method public static values()[Lcom/fh/util/TimeFormater$DateType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/fh/util/TimeFormater$DateType;->$VALUES:[Lcom/fh/util/TimeFormater$DateType;

    invoke-virtual {v0}, [Lcom/fh/util/TimeFormater$DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fh/util/TimeFormater$DateType;

    return-object v0
.end method
