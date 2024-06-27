.class public Lio/microshow/rxffmpeg/EpDraw;
.super Ljava/lang/Object;
.source "EpDraw.java"


# instance fields
.field private isAnimation:Z

.field private picFilter:Ljava/lang/String;

.field private picHeight:F

.field private picPath:Ljava/lang/String;

.field private picWidth:F

.field private picX:I

.field private picY:I

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFFZ)V
    .locals 1
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "picX"    # I
    .param p3, "picY"    # I
    .param p4, "picWidth"    # F
    .param p5, "picHeight"    # F
    .param p6, "isAnimation"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpDraw;->time:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpDraw;->picPath:Ljava/lang/String;

    .line 23
    iput p2, p0, Lio/microshow/rxffmpeg/EpDraw;->picX:I

    .line 24
    iput p3, p0, Lio/microshow/rxffmpeg/EpDraw;->picY:I

    .line 25
    iput p4, p0, Lio/microshow/rxffmpeg/EpDraw;->picWidth:F

    .line 26
    iput p5, p0, Lio/microshow/rxffmpeg/EpDraw;->picHeight:F

    .line 27
    iput-boolean p6, p0, Lio/microshow/rxffmpeg/EpDraw;->isAnimation:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFZII)V
    .locals 2
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "picX"    # I
    .param p3, "picY"    # I
    .param p4, "picWidth"    # F
    .param p5, "picHeight"    # F
    .param p6, "isAnimation"    # Z
    .param p7, "start"    # I
    .param p8, "end"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpDraw;->time:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpDraw;->picPath:Ljava/lang/String;

    .line 32
    iput p2, p0, Lio/microshow/rxffmpeg/EpDraw;->picX:I

    .line 33
    iput p3, p0, Lio/microshow/rxffmpeg/EpDraw;->picY:I

    .line 34
    iput p4, p0, Lio/microshow/rxffmpeg/EpDraw;->picWidth:F

    .line 35
    iput p5, p0, Lio/microshow/rxffmpeg/EpDraw;->picHeight:F

    .line 36
    iput-boolean p6, p0, Lio/microshow/rxffmpeg/EpDraw;->isAnimation:Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":enable=between(t\\,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpDraw;->time:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getPicFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpDraw;->picFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/microshow/rxffmpeg/EpDraw;->picFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPicHeight()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lio/microshow/rxffmpeg/EpDraw;->picHeight:F

    return v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpDraw;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicWidth()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/microshow/rxffmpeg/EpDraw;->picWidth:F

    return v0
.end method

.method public getPicX()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lio/microshow/rxffmpeg/EpDraw;->picX:I

    return v0
.end method

.method public getPicY()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lio/microshow/rxffmpeg/EpDraw;->picY:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpDraw;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lio/microshow/rxffmpeg/EpDraw;->isAnimation:Z

    return v0
.end method

.method public setPicFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "picFilter"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpDraw;->picFilter:Ljava/lang/String;

    .line 74
    return-void
.end method
