.class public Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
.super Ljava/lang/Object;
.source "HttpParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttputils/model/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentType:Lokhttp3/MediaType;

.field public file:Ljava/io/File;

.field public fileName:Ljava/lang/String;

.field public fileSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "contentType"    # Lokhttp3/MediaType;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    .line 149
    iput-object p2, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->contentType:Lokhttp3/MediaType;

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileSize:J

    .line 152
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileWrapper{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->contentType:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
