.class public Lcom/videooperate/bean/Song;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public album_id:Ljava/lang/String;

.field public duration:I

.field public fileName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public singer:Ljava/lang/String;

.field public size:J

.field public songName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/videooperate/bean/Song$1;

    invoke-direct {v0}, Lcom/videooperate/bean/Song$1;-><init>()V

    sput-object v0, Lcom/videooperate/bean/Song;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/videooperate/bean/Song;->duration:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/videooperate/bean/Song;->size:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/videooperate/bean/Song;->duration:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/videooperate/bean/Song;->size:J

    return-wide v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "album_id"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/videooperate/bean/Song;->duration:I

    .line 50
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0
    .param p1, "singer"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/videooperate/bean/Song;->size:J

    .line 58
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/videooperate/bean/Song;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-wide v0, p0, Lcom/videooperate/bean/Song;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-object v0, p0, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
