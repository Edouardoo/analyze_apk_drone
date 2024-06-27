.class public Lcom/jieli/lib/dv/control/model/PictureInfo;
.super Lcom/jieli/lib/dv/control/model/MediaInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private g:J

.field private h:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/model/MediaInfo;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->h:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->g:J

    return-wide v0
.end method

.method public isLast()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->h:Z

    return v0
.end method

.method public setLast(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->h:Z

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->g:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
