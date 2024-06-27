.class public final enum Lio/microshow/rxffmpeg/EpEditor$Format;
.super Ljava/lang/Enum;
.source "EpEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/microshow/rxffmpeg/EpEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/microshow/rxffmpeg/EpEditor$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/microshow/rxffmpeg/EpEditor$Format;

.field public static final enum MP3:Lio/microshow/rxffmpeg/EpEditor$Format;

.field public static final enum MP4:Lio/microshow/rxffmpeg/EpEditor$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lio/microshow/rxffmpeg/EpEditor$Format;

    const-string v1, "MP3"

    invoke-direct {v0, v1, v2}, Lio/microshow/rxffmpeg/EpEditor$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$Format;->MP3:Lio/microshow/rxffmpeg/EpEditor$Format;

    new-instance v0, Lio/microshow/rxffmpeg/EpEditor$Format;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v3}, Lio/microshow/rxffmpeg/EpEditor$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$Format;->MP4:Lio/microshow/rxffmpeg/EpEditor$Format;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lio/microshow/rxffmpeg/EpEditor$Format;

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$Format;->MP3:Lio/microshow/rxffmpeg/EpEditor$Format;

    aput-object v1, v0, v2

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$Format;->MP4:Lio/microshow/rxffmpeg/EpEditor$Format;

    aput-object v1, v0, v3

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$Format;->$VALUES:[Lio/microshow/rxffmpeg/EpEditor$Format;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/microshow/rxffmpeg/EpEditor$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lio/microshow/rxffmpeg/EpEditor$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/microshow/rxffmpeg/EpEditor$Format;

    return-object v0
.end method

.method public static values()[Lio/microshow/rxffmpeg/EpEditor$Format;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$Format;->$VALUES:[Lio/microshow/rxffmpeg/EpEditor$Format;

    invoke-virtual {v0}, [Lio/microshow/rxffmpeg/EpEditor$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/microshow/rxffmpeg/EpEditor$Format;

    return-object v0
.end method
