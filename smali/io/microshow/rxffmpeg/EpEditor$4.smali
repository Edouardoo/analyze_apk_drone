.class synthetic Lio/microshow/rxffmpeg/EpEditor$4;
.super Ljava/lang/Object;
.source "EpEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/microshow/rxffmpeg/EpEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$microshow$rxffmpeg$EpEditor$Format:[I

.field static final synthetic $SwitchMap$io$microshow$rxffmpeg$EpEditor$PTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 627
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor$PTS;->values()[Lio/microshow/rxffmpeg/EpEditor$PTS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$PTS:[I

    :try_start_0
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$PTS:[I

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$PTS;->VIDEO:Lio/microshow/rxffmpeg/EpEditor$PTS;

    invoke-virtual {v1}, Lio/microshow/rxffmpeg/EpEditor$PTS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$PTS:[I

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$PTS;->AUDIO:Lio/microshow/rxffmpeg/EpEditor$PTS;

    invoke-virtual {v1}, Lio/microshow/rxffmpeg/EpEditor$PTS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$PTS:[I

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$PTS;->ALL:Lio/microshow/rxffmpeg/EpEditor$PTS;

    invoke-virtual {v1}, Lio/microshow/rxffmpeg/EpEditor$PTS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    :goto_2
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor$Format;->values()[Lio/microshow/rxffmpeg/EpEditor$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$Format:[I

    :try_start_3
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$Format:[I

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$Format;->MP3:Lio/microshow/rxffmpeg/EpEditor$Format;

    invoke-virtual {v1}, Lio/microshow/rxffmpeg/EpEditor$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$Format:[I

    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$Format;->MP4:Lio/microshow/rxffmpeg/EpEditor$Format;

    invoke-virtual {v1}, Lio/microshow/rxffmpeg/EpEditor$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 627
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
