.class public final enum Lcom/videooperate/bean/PlayCmd$Type;
.super Ljava/lang/Enum;
.source "PlayCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/bean/PlayCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/videooperate/bean/PlayCmd$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum init:Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum pause:Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum release:Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum replay:Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum start:Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum start_raw:Lcom/videooperate/bean/PlayCmd$Type;

.field public static final enum stop:Lcom/videooperate/bean/PlayCmd$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "init"

    invoke-direct {v0, v1, v3}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->init:Lcom/videooperate/bean/PlayCmd$Type;

    .line 15
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "start_raw"

    invoke-direct {v0, v1, v4}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->start_raw:Lcom/videooperate/bean/PlayCmd$Type;

    .line 16
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "start"

    invoke-direct {v0, v1, v5}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->start:Lcom/videooperate/bean/PlayCmd$Type;

    .line 17
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "replay"

    invoke-direct {v0, v1, v6}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->replay:Lcom/videooperate/bean/PlayCmd$Type;

    .line 18
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "pause"

    invoke-direct {v0, v1, v7}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->pause:Lcom/videooperate/bean/PlayCmd$Type;

    .line 19
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "stop"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->stop:Lcom/videooperate/bean/PlayCmd$Type;

    .line 20
    new-instance v0, Lcom/videooperate/bean/PlayCmd$Type;

    const-string v1, "release"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/videooperate/bean/PlayCmd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->release:Lcom/videooperate/bean/PlayCmd$Type;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/videooperate/bean/PlayCmd$Type;

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->init:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->start_raw:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->start:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->replay:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->pause:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/videooperate/bean/PlayCmd$Type;->stop:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/videooperate/bean/PlayCmd$Type;->release:Lcom/videooperate/bean/PlayCmd$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/videooperate/bean/PlayCmd$Type;->$VALUES:[Lcom/videooperate/bean/PlayCmd$Type;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/videooperate/bean/PlayCmd$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/videooperate/bean/PlayCmd$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/PlayCmd$Type;

    return-object v0
.end method

.method public static values()[Lcom/videooperate/bean/PlayCmd$Type;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/videooperate/bean/PlayCmd$Type;->$VALUES:[Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v0}, [Lcom/videooperate/bean/PlayCmd$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/videooperate/bean/PlayCmd$Type;

    return-object v0
.end method
