.class public final enum Lcom/Util/FileUtil$FileState;
.super Ljava/lang/Enum;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/Util/FileUtil$FileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/Util/FileUtil$FileState;

.field public static final enum FState_Dir:Lcom/Util/FileUtil$FileState;

.field public static final enum FState_File:Lcom/Util/FileUtil$FileState;

.field public static final enum FState_None:Lcom/Util/FileUtil$FileState;

.field public static final enum FState_Other:Lcom/Util/FileUtil$FileState;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 561
    new-instance v0, Lcom/Util/FileUtil$FileState;

    const-string v1, "FState_Dir"

    const-string v2, "I am director!"

    invoke-direct {v0, v1, v3, v2}, Lcom/Util/FileUtil$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/Util/FileUtil$FileState;->FState_Dir:Lcom/Util/FileUtil$FileState;

    .line 562
    new-instance v0, Lcom/Util/FileUtil$FileState;

    const-string v1, "FState_File"

    const-string v2, "I am file!"

    invoke-direct {v0, v1, v4, v2}, Lcom/Util/FileUtil$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/Util/FileUtil$FileState;->FState_File:Lcom/Util/FileUtil$FileState;

    .line 563
    new-instance v0, Lcom/Util/FileUtil$FileState;

    const-string v1, "FState_None"

    const-string v2, "I am a ghost!"

    invoke-direct {v0, v1, v5, v2}, Lcom/Util/FileUtil$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/Util/FileUtil$FileState;->FState_None:Lcom/Util/FileUtil$FileState;

    .line 564
    new-instance v0, Lcom/Util/FileUtil$FileState;

    const-string v1, "FState_Other"

    const-string v2, "I am not human!"

    invoke-direct {v0, v1, v6, v2}, Lcom/Util/FileUtil$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/Util/FileUtil$FileState;->FState_Other:Lcom/Util/FileUtil$FileState;

    .line 560
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/Util/FileUtil$FileState;

    sget-object v1, Lcom/Util/FileUtil$FileState;->FState_Dir:Lcom/Util/FileUtil$FileState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/Util/FileUtil$FileState;->FState_File:Lcom/Util/FileUtil$FileState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/Util/FileUtil$FileState;->FState_None:Lcom/Util/FileUtil$FileState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/Util/FileUtil$FileState;->FState_Other:Lcom/Util/FileUtil$FileState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/Util/FileUtil$FileState;->$VALUES:[Lcom/Util/FileUtil$FileState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 569
    iput-object p3, p0, Lcom/Util/FileUtil$FileState;->tag:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/Util/FileUtil$FileState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 560
    const-class v0, Lcom/Util/FileUtil$FileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/Util/FileUtil$FileState;

    return-object v0
.end method

.method public static values()[Lcom/Util/FileUtil$FileState;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/Util/FileUtil$FileState;->$VALUES:[Lcom/Util/FileUtil$FileState;

    invoke-virtual {v0}, [Lcom/Util/FileUtil$FileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/Util/FileUtil$FileState;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/Util/FileUtil$FileState;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/Util/FileUtil$FileState;->tag:Ljava/lang/String;

    return-object v0
.end method
