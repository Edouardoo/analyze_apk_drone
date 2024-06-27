.class public Lio/microshow/rxffmpeg/EpVideo;
.super Ljava/lang/Object;
.source "EpVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/microshow/rxffmpeg/EpVideo$Crop;
    }
.end annotation


# instance fields
.field private clipDuration:F

.field private clipStart:F

.field private epPics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/microshow/rxffmpeg/EpDraw;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Ljava/lang/StringBuilder;

.field private isClip:Z

.field private mCrop:Lio/microshow/rxffmpeg/EpVideo$Crop;

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/microshow/rxffmpeg/EpVideo;->isClip:Z

    .line 30
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpVideo;->videoPath:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->epPics:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private getFilter()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 40
    :goto_0
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addDraw(Lio/microshow/rxffmpeg/EpDraw;)Lio/microshow/rxffmpeg/EpVideo;
    .locals 1
    .param p1, "epDraw"    # Lio/microshow/rxffmpeg/EpDraw;

    .prologue
    .line 251
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->epPics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    return-object p0
.end method

.method public addFilter(Ljava/lang/String;)Lio/microshow/rxffmpeg/EpVideo;
    .locals 1
    .param p1, "ofi"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0}, Lio/microshow/rxffmpeg/EpVideo;->getFilter()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 240
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    return-object p0
.end method

.method public addText(IIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/microshow/rxffmpeg/EpVideo;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # F
    .param p4, "color"    # Ljava/lang/String;
    .param p5, "ttf"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lio/microshow/rxffmpeg/EpVideo;->getFilter()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 187
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawtext=fontfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":fontsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":fontcolor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":text=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    return-object p0
.end method

.method public addText(Lio/microshow/rxffmpeg/EpText;)Lio/microshow/rxffmpeg/EpVideo;
    .locals 2
    .param p1, "epText"    # Lio/microshow/rxffmpeg/EpText;

    .prologue
    .line 197
    invoke-direct {p0}, Lio/microshow/rxffmpeg/EpVideo;->getFilter()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 198
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpText;->getTextFitler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    return-object p0
.end method

.method public addTime(IIFLjava/lang/String;Ljava/lang/String;I)Lio/microshow/rxffmpeg/EpVideo;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # F
    .param p4, "color"    # Ljava/lang/String;
    .param p5, "ttf"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 214
    .local v2, "time":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0}, Lio/microshow/rxffmpeg/EpVideo;->getFilter()Ljava/lang/StringBuilder;

    move-result-object v4

    iput-object v4, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ""

    .line 217
    .local v1, "ts":Ljava/lang/String;
    packed-switch p6, :pswitch_data_0

    .line 228
    :goto_0
    iget-object v4, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawtext=fontfile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":fontsize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":fontcolor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":text=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    return-object p0

    .line 219
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%{pts\\:localtime\\:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\:%H\\\\\\:%M\\\\\\:%S}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%{pts\\:localtime\\:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    goto/16 :goto_0

    .line 225
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%{pts\\:localtime\\:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\:%Y\\\\\u5e74%m\\\\\u6708%d\\\\\u65e5\n%H\\\\\\\u65f6%M\\\\\\\u5206%S\u79d2}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clip(FF)Lio/microshow/rxffmpeg/EpVideo;
    .locals 1
    .param p1, "start"    # F
    .param p2, "duration"    # F

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/microshow/rxffmpeg/EpVideo;->isClip:Z

    .line 103
    iput p1, p0, Lio/microshow/rxffmpeg/EpVideo;->clipStart:F

    .line 104
    iput p2, p0, Lio/microshow/rxffmpeg/EpVideo;->clipDuration:F

    .line 105
    return-object p0
.end method

.method public crop(FFFF)Lio/microshow/rxffmpeg/EpVideo;
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 159
    invoke-direct {p0}, Lio/microshow/rxffmpeg/EpVideo;->getFilter()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 160
    new-instance v0, Lio/microshow/rxffmpeg/EpVideo$Crop;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/microshow/rxffmpeg/EpVideo$Crop;-><init>(Lio/microshow/rxffmpeg/EpVideo;FFFF)V

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->mCrop:Lio/microshow/rxffmpeg/EpVideo$Crop;

    .line 161
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    return-object p0
.end method

.method public getClipDuration()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lio/microshow/rxffmpeg/EpVideo;->clipDuration:F

    return v0
.end method

.method public getClipStart()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lio/microshow/rxffmpeg/EpVideo;->clipStart:F

    return v0
.end method

.method public getCrop()Lio/microshow/rxffmpeg/EpVideo$Crop;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->mCrop:Lio/microshow/rxffmpeg/EpVideo$Crop;

    return-object v0
.end method

.method public getEpDraws()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lio/microshow/rxffmpeg/EpDraw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->epPics:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilters()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getVideoClip()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lio/microshow/rxffmpeg/EpVideo;->isClip:Z

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public resetFilter()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    return-void
.end method

.method public rotation(IZ)Lio/microshow/rxffmpeg/EpVideo;
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "isFlip"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Lio/microshow/rxffmpeg/EpVideo;->getFilter()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    .line 118
    if-eqz p2, :cond_0

    .line 119
    sparse-switch p1, :sswitch_data_0

    .line 146
    :goto_0
    return-object p0

    .line 121
    :sswitch_0
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "hflip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "transpose=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :sswitch_2
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "vflip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :sswitch_3
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "transpose=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 136
    :sswitch_4
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "transpose=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :sswitch_5
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "vflip,hflip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :sswitch_6
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpVideo;->filter:Ljava/lang/StringBuilder;

    const-string v1, "transpose=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 134
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_4
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_6
    .end sparse-switch
.end method
