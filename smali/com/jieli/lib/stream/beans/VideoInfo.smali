.class public Lcom/jieli/lib/stream/beans/VideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:Ljava/util/Calendar;

.field private k:Ljava/util/Calendar;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->a:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->b:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->c:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->d:I

    .line 25
    iput-boolean v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->e:Z

    .line 26
    iput v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->f:I

    .line 27
    iput-boolean v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->g:Z

    .line 29
    iput v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->i:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->l:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->d:I

    return v0
.end method

.method public getEndTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->k:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCapture()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->g:Z

    return v0
.end method

.method public getIsLocked()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->e:Z

    return v0
.end method

.method public getLeftCaptureTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->l:Ljava/util/List;

    return-object v0
.end method

.method protected getRate()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->h:I

    return v0
.end method

.method public getRightCaptureTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->m:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->j:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->i:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->f:I

    return v0
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->d:I

    .line 77
    return-void
.end method

.method public setEndTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->k:Ljava/util/Calendar;

    .line 49
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setIsCapture(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->g:Z

    .line 117
    return-void
.end method

.method public setIsLocked(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->e:Z

    .line 85
    return-void
.end method

.method public setLeftCaptureTime(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method

.method public setRate(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->h:I

    .line 105
    return-void
.end method

.method public setRightCaptureTime(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    return-void
.end method

.method public setStartTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->j:Ljava/util/Calendar;

    .line 41
    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->i:I

    .line 113
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->f:I

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    const-string v0, ""

    .line 145
    iget-object v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"name\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"path\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"create date\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"duration\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"isLocked\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"type\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"frame rate\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"is capture\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jieli/lib/stream/beans/VideoInfo;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method
