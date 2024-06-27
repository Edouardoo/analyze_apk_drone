.class public final enum Lio/microshow/rxffmpeg/EpText$Color;
.super Ljava/lang/Enum;
.source "EpText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/microshow/rxffmpeg/EpText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/microshow/rxffmpeg/EpText$Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Black:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Blue:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Cyan:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum DarkBlue:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Green:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Orange:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Red:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum SkyBlue:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum White:Lio/microshow/rxffmpeg/EpText$Color;

.field public static final enum Yellow:Lio/microshow/rxffmpeg/EpText$Color;


# instance fields
.field private color:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Red"

    const-string v2, "Red"

    invoke-direct {v0, v1, v4, v2}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Red:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Blue"

    const-string v2, "Blue"

    invoke-direct {v0, v1, v5, v2}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Blue:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Yellow"

    const-string v2, "Yellow"

    invoke-direct {v0, v1, v6, v2}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Yellow:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Black"

    const-string v2, "Black"

    invoke-direct {v0, v1, v7, v2}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Black:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "DarkBlue"

    const-string v2, "DarkBlue"

    invoke-direct {v0, v1, v8, v2}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->DarkBlue:Lio/microshow/rxffmpeg/EpText$Color;

    .line 48
    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Green"

    const/4 v2, 0x5

    const-string v3, "Green"

    invoke-direct {v0, v1, v2, v3}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Green:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "SkyBlue"

    const/4 v2, 0x6

    const-string v3, "SkyBlue"

    invoke-direct {v0, v1, v2, v3}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->SkyBlue:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Orange"

    const/4 v2, 0x7

    const-string v3, "Orange"

    invoke-direct {v0, v1, v2, v3}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Orange:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "White"

    const/16 v2, 0x8

    const-string v3, "White"

    invoke-direct {v0, v1, v2, v3}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->White:Lio/microshow/rxffmpeg/EpText$Color;

    new-instance v0, Lio/microshow/rxffmpeg/EpText$Color;

    const-string v1, "Cyan"

    const/16 v2, 0x9

    const-string v3, "Cyan"

    invoke-direct {v0, v1, v2, v3}, Lio/microshow/rxffmpeg/EpText$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->Cyan:Lio/microshow/rxffmpeg/EpText$Color;

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Lio/microshow/rxffmpeg/EpText$Color;

    sget-object v1, Lio/microshow/rxffmpeg/EpText$Color;->Red:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v1, v0, v4

    sget-object v1, Lio/microshow/rxffmpeg/EpText$Color;->Blue:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v1, v0, v5

    sget-object v1, Lio/microshow/rxffmpeg/EpText$Color;->Yellow:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v1, v0, v6

    sget-object v1, Lio/microshow/rxffmpeg/EpText$Color;->Black:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v1, v0, v7

    sget-object v1, Lio/microshow/rxffmpeg/EpText$Color;->DarkBlue:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/microshow/rxffmpeg/EpText$Color;->Green:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/microshow/rxffmpeg/EpText$Color;->SkyBlue:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/microshow/rxffmpeg/EpText$Color;->Orange:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/microshow/rxffmpeg/EpText$Color;->White:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/microshow/rxffmpeg/EpText$Color;->Cyan:Lio/microshow/rxffmpeg/EpText$Color;

    aput-object v2, v0, v1

    sput-object v0, Lio/microshow/rxffmpeg/EpText$Color;->$VALUES:[Lio/microshow/rxffmpeg/EpText$Color;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lio/microshow/rxffmpeg/EpText$Color;->color:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/microshow/rxffmpeg/EpText$Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lio/microshow/rxffmpeg/EpText$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/microshow/rxffmpeg/EpText$Color;

    return-object v0
.end method

.method public static values()[Lio/microshow/rxffmpeg/EpText$Color;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lio/microshow/rxffmpeg/EpText$Color;->$VALUES:[Lio/microshow/rxffmpeg/EpText$Color;

    invoke-virtual {v0}, [Lio/microshow/rxffmpeg/EpText$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/microshow/rxffmpeg/EpText$Color;

    return-object v0
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpText$Color;->color:Ljava/lang/String;

    return-object v0
.end method
