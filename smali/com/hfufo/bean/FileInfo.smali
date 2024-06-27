.class public Lcom/hfufo/bean/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cameraType:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private duration:I

.field private endTime:Ljava/util/Calendar;

.field private fileEndTime:Ljava/lang/String;

.field private height:I

.field public isLastSelected:Z

.field public isSelected:Z

.field private isVideo:Z

.field private name:Ljava/lang/String;

.field private offset:I

.field private path:Ljava/lang/String;

.field private rate:I

.field private size:J

.field private source:I

.field private startTime:Ljava/util/Calendar;

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/hfufo/bean/FileInfo$1;

    invoke-direct {v0}, Lcom/hfufo/bean/FileInfo$1;-><init>()V

    sput-object v0, Lcom/hfufo/bean/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    .line 206
    iput-boolean v1, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    .line 203
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    .line 206
    iput-boolean v2, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hfufo/bean/FileInfo;->size:J

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isVideo:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->duration:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->width:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->height:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->source:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->rate:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->type:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hfufo/bean/FileInfo;->offset:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    .line 272
    return-void

    :cond_0
    move v0, v2

    .line 259
    goto :goto_0

    :cond_1
    move v0, v2

    .line 265
    goto :goto_1

    :cond_2
    move v1, v2

    .line 271
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;IZI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isVideo"    # Z
    .param p4, "size"    # J
    .param p6, "createTime"    # Ljava/lang/String;
    .param p7, "source"    # I
    .param p8, "isSelected"    # Z
    .param p9, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    .line 206
    iput-boolean v1, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    .line 244
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    .line 246
    iput-boolean p3, p0, Lcom/hfufo/bean/FileInfo;->isVideo:Z

    .line 247
    iput-wide p4, p0, Lcom/hfufo/bean/FileInfo;->size:J

    .line 248
    iput-object p6, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 249
    iput p7, p0, Lcom/hfufo/bean/FileInfo;->source:I

    .line 250
    iput-boolean p8, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 251
    iput p9, p0, Lcom/hfufo/bean/FileInfo;->type:I

    .line 252
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, "o":Lcom/hfufo/bean/FileInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    move-object v2, v0

    .line 186
    iget-object v3, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/hfufo/bean/FileInfo;->setStartTime(Ljava/util/Calendar;)V

    .line 187
    iget-object v3, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/hfufo/bean/FileInfo;->setEndTime(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-object v2

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->duration:I

    return v0
.end method

.method public getEndTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFileEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->offset:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->rate:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/hfufo/bean/FileInfo;->size:J

    return-wide v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->source:I

    return v0
.end method

.method public getStartTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->width:I

    return v0
.end method

.method public isLastSelected()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isVideo:Z

    return v0
.end method

.method public setCameraType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraType"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->duration:I

    .line 37
    return-void
.end method

.method public setEndTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Calendar;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    .line 133
    return-void
.end method

.method public setFileEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileEndTime"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->height:I

    .line 53
    return-void
.end method

.method public setIsLastSelected(Z)V
    .locals 0
    .param p1, "lastSelected"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    .line 214
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->offset:I

    .line 149
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->rate:I

    .line 141
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    .line 101
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/hfufo/bean/FileInfo;->size:J

    .line 85
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->source:I

    .line 109
    return-void
.end method

.method public setStartTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Calendar;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    .line 125
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->type:I

    .line 117
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .param p1, "video"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/hfufo/bean/FileInfo;->isVideo:Z

    .line 93
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/hfufo/bean/FileInfo;->width:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", createTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", file end time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/hfufo/bean/FileInfo;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isVideo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/hfufo/bean/FileInfo;->isVideo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", width:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->rate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->source:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isSelected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/hfufo/bean/FileInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cameraType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", startTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", endTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    .line 177
    invoke-virtual {v1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0

    :cond_1
    move-object v0, v1

    .line 176
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->createTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-wide v4, p0, Lcom/hfufo/bean/FileInfo;->size:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isVideo:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->rate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isSelected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 235
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/hfufo/bean/FileInfo;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->cameraType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->startTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 239
    iget-object v0, p0, Lcom/hfufo/bean/FileInfo;->endTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 240
    iget-boolean v0, p0, Lcom/hfufo/bean/FileInfo;->isLastSelected:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 241
    return-void

    :cond_0
    move v0, v2

    .line 228
    goto :goto_0

    :cond_1
    move v0, v2

    .line 234
    goto :goto_1

    :cond_2
    move v1, v2

    .line 240
    goto :goto_2
.end method
