.class public Lcom/fh/lib/PlayInfo;
.super Ljava/lang/Object;
.source "PlayInfo.java"


# static fields
.field public static frameCacheNum:I

.field public static pbChan:I

.field public static pbRecFilePath:Ljava/lang/String;

.field public static pbRecType:I

.field public static pbStartTime:J

.field public static pbStopTime:J

.field public static playType:I

.field public static transMode:I

.field public static udpPort:I

.field public static userID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "recFileName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object p1, Lcom/fh/lib/PlayInfo;->pbRecFilePath:Ljava/lang/String;

    .line 22
    return-void
.end method
