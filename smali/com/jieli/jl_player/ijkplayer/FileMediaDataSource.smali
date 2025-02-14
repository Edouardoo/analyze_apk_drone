.class public Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;
.super Ljava/lang/Object;
.source "FileMediaDataSource.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;

.field private mFileSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    .line 32
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFileSize:J

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFileSize:J

    .line 54
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    .line 56
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFileSize:J

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 5
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 40
    :cond_0
    if-nez p5, :cond_1

    .line 43
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/FileMediaDataSource;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p3, v0, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    goto :goto_0
.end method
