.class public Lcom/fh/util/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createDate:Ljava/lang/String;

.field private dateMes:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private height:J

.field private isAVI:Z

.field private isDirectory:Z

.field private isSelected:Z

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private totalTime:J

.field private width:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v2, p0, Lcom/fh/util/FileInfo;->isAVI:Z

    .line 18
    iput-wide v0, p0, Lcom/fh/util/FileInfo;->totalTime:J

    .line 19
    iput-wide v0, p0, Lcom/fh/util/FileInfo;->width:J

    .line 20
    iput-wide v0, p0, Lcom/fh/util/FileInfo;->height:J

    .line 21
    iput-boolean v2, p0, Lcom/fh/util/FileInfo;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fh/util/FileInfo;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDateMes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fh/util/FileInfo;->dateMes:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fh/util/FileInfo;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/fh/util/FileInfo;->height:J

    return-wide v0
.end method

.method public getIsAVI()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/fh/util/FileInfo;->isAVI:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fh/util/FileInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/fh/util/FileInfo;->mSize:J

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/fh/util/FileInfo;->totalTime:J

    return-wide v0
.end method

.method public getWidth()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/fh/util/FileInfo;->width:J

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/fh/util/FileInfo;->isDirectory:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/fh/util/FileInfo;->isSelected:Z

    return v0
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "createDate"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fh/util/FileInfo;->createDate:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDateMes(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fh/util/FileInfo;->dateMes:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setDirectory(Z)V
    .locals 0
    .param p1, "isDirectory"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/fh/util/FileInfo;->isDirectory:Z

    .line 45
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fh/util/FileInfo;->filename:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setHeight(J)V
    .locals 1
    .param p1, "heig"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/fh/util/FileInfo;->height:J

    .line 81
    return-void
.end method

.method public setIsAVI(Z)V
    .locals 0
    .param p1, "bl"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/fh/util/FileInfo;->isAVI:Z

    .line 57
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fh/util/FileInfo;->mPath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/fh/util/FileInfo;->isSelected:Z

    .line 109
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "mSize"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/fh/util/FileInfo;->mSize:J

    .line 37
    return-void
.end method

.method public setTotalTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/fh/util/FileInfo;->totalTime:J

    .line 65
    return-void
.end method

.method public setWidth(J)V
    .locals 1
    .param p1, "wid"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/fh/util/FileInfo;->width:J

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"isDirectory\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fh/util/FileInfo;->isDirectory:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n\"mSize\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/fh/util/FileInfo;->mSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n\"isAVI\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fh/util/FileInfo;->isAVI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n\"totalTime\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/fh/util/FileInfo;->totalTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n\"width\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/fh/util/FileInfo;->width:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n\"height\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/fh/util/FileInfo;->height:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n\"isSelected\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fh/util/FileInfo;->isSelected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/fh/util/FileInfo;->filename:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"filename\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fh/util/FileInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/fh/util/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"mPath\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fh/util/FileInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/fh/util/FileInfo;->createDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"createDate\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fh/util/FileInfo;->createDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/fh/util/FileInfo;->dateMes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"dateMes\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fh/util/FileInfo;->dateMes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_3
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_4

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    return-object v1
.end method
