.class public final enum Lio/microshow/rxffmpeg/EpEditor$PTS;
.super Ljava/lang/Enum;
.source "EpEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/microshow/rxffmpeg/EpEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PTS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/microshow/rxffmpeg/EpEditor$PTS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/microshow/rxffmpeg/EpEditor$PTS;

.field public static final enum ALL:Lio/microshow/rxffmpeg/EpEditor$PTS;

.field public static final enum AUDIO:Lio/microshow/rxffmpeg/EpEditor$PTS;

.field public static final enum VIDEO:Lio/microshow/rxffmpeg/EpEditor$PTS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lio/microshow/rxffmpeg/EpEditor$PTS;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lio/microshow/rxffmpeg/EpEditor$PTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$PTS;->VIDEO:Lio/microshow/rxffmpeg/EpEditor$PTS;

    new-instance v0, Lio/microshow/rxffmpeg/EpEditor$PTS;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v3}, Lio/microshow/rxffmpeg/EpEditor$PTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$PTS;->AUDIO:Lio/microshow/rxffmpeg/EpEditor$PTS;

    new-instance v0, Lio/microshow/rxffmpeg/EpEditor$PTS;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lio/microshow/rxffmpeg/EpEditor$PTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$PTS;->ALL:Lio/microshow/rxffmpeg/EpEditor$PTS;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lio/microshow/rxffmpeg/EpEditor$PTS;

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$PTS;->VIDEO:Lio/microshow/rxffmpeg/EpEditor$PTS;

    aput-object v1, v0, v2

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$PTS;->AUDIO:Lio/microshow/rxffmpeg/EpEditor$PTS;

    aput-object v1, v0, v3

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$PTS;->ALL:Lio/microshow/rxffmpeg/EpEditor$PTS;

    aput-object v1, v0, v4

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$PTS;->$VALUES:[Lio/microshow/rxffmpeg/EpEditor$PTS;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/microshow/rxffmpeg/EpEditor$PTS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lio/microshow/rxffmpeg/EpEditor$PTS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/microshow/rxffmpeg/EpEditor$PTS;

    return-object v0
.end method

.method public static values()[Lio/microshow/rxffmpeg/EpEditor$PTS;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$PTS;->$VALUES:[Lio/microshow/rxffmpeg/EpEditor$PTS;

    invoke-virtual {v0}, [Lio/microshow/rxffmpeg/EpEditor$PTS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/microshow/rxffmpeg/EpEditor$PTS;

    return-object v0
.end method
