.class synthetic Lcom/videooperate/fragment/LocationMusicFragment$2;
.super Ljava/lang/Object;
.source "LocationMusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/fragment/LocationMusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$videooperate$bean$PlayCmd$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/videooperate/bean/PlayCmd$Type;->values()[Lcom/videooperate/bean/PlayCmd$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/videooperate/fragment/LocationMusicFragment$2;->$SwitchMap$com$videooperate$bean$PlayCmd$Type:[I

    :try_start_0
    sget-object v0, Lcom/videooperate/fragment/LocationMusicFragment$2;->$SwitchMap$com$videooperate$bean$PlayCmd$Type:[I

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->start_raw:Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v1}, Lcom/videooperate/bean/PlayCmd$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/videooperate/fragment/LocationMusicFragment$2;->$SwitchMap$com$videooperate$bean$PlayCmd$Type:[I

    sget-object v1, Lcom/videooperate/bean/PlayCmd$Type;->start:Lcom/videooperate/bean/PlayCmd$Type;

    invoke-virtual {v1}, Lcom/videooperate/bean/PlayCmd$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
