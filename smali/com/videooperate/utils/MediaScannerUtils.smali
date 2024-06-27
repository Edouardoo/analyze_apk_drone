.class public Lcom/videooperate/utils/MediaScannerUtils;
.super Ljava/lang/Object;
.source "MediaScannerUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
.implements Lcom/fh/hdutil/IConstant;


# static fields
.field static mediaScannerUtils:Lcom/videooperate/utils/MediaScannerUtils;


# instance fields
.field context:Landroid/content/Context;

.field private filePaths:[Ljava/lang/String;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field private mimeTypes:[Ljava/lang/String;

.field private scanTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->scanTimes:I

    .line 43
    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lcom/videooperate/utils/MediaScannerUtils;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 47
    :cond_0
    return-void
.end method

.method private static getAlbumArt(I)Ljava/lang/String;
    .locals 10
    .param p0, "album_id"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 259
    if-gtz p0, :cond_0

    .line 272
    :goto_0
    return-object v3

    .line 262
    :cond_0
    const-string v8, "content://media/external/audio/albums"

    .line 263
    .local v8, "mUriAlbums":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album_art"

    aput-object v0, v2, v9

    .line 264
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 265
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 266
    .local v6, "album_art":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 268
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 270
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 271
    const/4 v7, 0x0

    move-object v3, v6

    .line 272
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/videooperate/utils/MediaScannerUtils;
    .locals 2
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 50
    const-class v1, Lcom/videooperate/utils/MediaScannerUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScannerUtils:Lcom/videooperate/utils/MediaScannerUtils;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/videooperate/utils/MediaScannerUtils;

    invoke-direct {v0, p0}, Lcom/videooperate/utils/MediaScannerUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScannerUtils:Lcom/videooperate/utils/MediaScannerUtils;

    .line 53
    :cond_0
    sget-object v0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScannerUtils:Lcom/videooperate/utils/MediaScannerUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMusicData(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/videooperate/bean/Song;>;"
    sget-object v0, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/videooperate/utils/PermissionUtil;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_music"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 140
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    new-instance v8, Lcom/videooperate/bean/Song;

    invoke-direct {v8}, Lcom/videooperate/bean/Song;-><init>()V

    .line 142
    .local v8, "song":Lcom/videooperate/bean/Song;
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    .line 143
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    .line 144
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    .line 145
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    .line 146
    const-string v0, "duration"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/videooperate/bean/Song;->duration:I

    .line 147
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/videooperate/bean/Song;->size:J

    .line 148
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/videooperate/utils/MediaScannerUtils;->getAlbumArt(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    .line 149
    iget-object v0, v8, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    iget-wide v0, v8, Lcom/videooperate/bean/Song;->size:J

    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, v8, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    const-string v1, ".MP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :cond_1
    iget-object v0, v8, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, v8, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "str":[Ljava/lang/String;
    array-length v0, v9

    if-le v0, v11, :cond_3

    .line 158
    aget-object v0, v9, v10

    iput-object v0, v8, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    .line 159
    aget-object v0, v9, v11

    iput-object v0, v8, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    .line 164
    .end local v9    # "str":[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    .restart local v9    # "str":[Ljava/lang/String;
    :cond_3
    array-length v0, v9

    if-lez v0, :cond_2

    .line 161
    aget-object v0, v9, v10

    iput-object v0, v8, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    goto :goto_1

    .line 169
    .end local v8    # "song":Lcom/videooperate/bean/Song;
    .end local v9    # "str":[Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_2
    return-object v7

    .line 174
    :cond_6
    const v0, 0x7f0800e3

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_2
.end method

.method public getSystemMusicData()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/videooperate/bean/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/videooperate/bean/Song;>;"
    iget-object v11, p0, Lcom/videooperate/utils/MediaScannerUtils;->context:Landroid/content/Context;

    sget-object v12, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/videooperate/utils/PermissionUtil;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 186
    sget-object v11, Lcom/videooperate/utils/MediaScannerUtils;->SD_MUSIC_PATH:Ljava/lang/String;

    invoke-static {v11}, Lcom/fh/hdutil/AppUtils;->queryLocalFileMusicList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, "filelist":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 255
    .end local v4    # "filelist":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 190
    .restart local v4    # "filelist":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 191
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 192
    .local v7, "mmr":Landroid/media/MediaMetadataRetriever;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v11}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "file":Ljava/io/File;
    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_3

    .line 190
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 199
    :cond_3
    :try_start_0
    iget-object v11, p0, Lcom/videooperate/utils/MediaScannerUtils;->context:Landroid/content/Context;

    iget-object v12, p0, Lcom/videooperate/utils/MediaScannerUtils;->context:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/Util/FileUtil;->getUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    new-instance v9, Lcom/videooperate/bean/Song;

    invoke-direct {v9}, Lcom/videooperate/bean/Song;-><init>()V

    .line 210
    .local v9, "song":Lcom/videooperate/bean/Song;
    const/16 v11, 0x9

    invoke-virtual {v7, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "duration":Ljava/lang/String;
    const-string v10, ""

    .line 221
    .local v10, "type":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v11}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    .line 223
    iget-object v11, v9, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    const-string v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 224
    iget-object v11, v9, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    const-string v12, ".mp3"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    .line 229
    :cond_4
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v11}, Lcom/hfufo/bean/FileInfo;->getSize()J

    move-result-wide v12

    iput-wide v12, v9, Lcom/videooperate/bean/Song;->size:J

    .line 230
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/videooperate/bean/Song;->singer:Ljava/lang/String;

    .line 231
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v11}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/videooperate/bean/Song;->duration:I

    .line 233
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/videooperate/bean/Song;->album_id:Ljava/lang/String;

    .line 234
    iget v11, v9, Lcom/videooperate/bean/Song;->duration:I

    const/16 v12, 0x1388

    if-le v11, v12, :cond_6

    iget-object v11, v9, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    const-string v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v9, Lcom/videooperate/bean/Song;->fileName:Ljava/lang/String;

    const-string v12, ".MP3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 246
    :cond_5
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_6
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_2

    .line 200
    .end local v0    # "duration":Ljava/lang/String;
    .end local v9    # "song":Lcom/videooperate/bean/Song;
    .end local v10    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/File;

    sget-object v11, Lcom/videooperate/utils/MediaScannerUtils;->SD_MUSIC_PATH:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, "file_":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 203
    invoke-static {v3}, Lcom/Util/FileUtil;->deleteFile(Ljava/io/File;)V

    goto/16 :goto_0

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "file_":Ljava/io/File;
    .end local v4    # "filelist":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .end local v5    # "i":I
    .end local v7    # "mmr":Landroid/media/MediaMetadataRetriever;
    .end local v8    # "path":Ljava/lang/String;
    :cond_7
    const v11, 0x7f0800e3

    invoke-static {v11}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0
.end method

.method public onMediaScannerConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/videooperate/utils/MediaScannerUtils;->filePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScanConn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/videooperate/utils/MediaScannerUtils;->filePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/videooperate/utils/MediaScannerUtils;->mimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iput-object v4, p0, Lcom/videooperate/utils/MediaScannerUtils;->filePaths:[Ljava/lang/String;

    .line 109
    iput-object v4, p0, Lcom/videooperate/utils/MediaScannerUtils;->mimeTypes:[Ljava/lang/String;

    .line 110
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    iget v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->scanTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->scanTimes:I

    .line 123
    iget v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->scanTimes:I

    iget-object v1, p0, Lcom/videooperate/utils/MediaScannerUtils;->filePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->scanTimes:I

    .line 127
    :cond_0
    return-void
.end method

.method public scanFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_1

    .line 67
    iget-object v2, p0, Lcom/videooperate/utils/MediaScannerUtils;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v4

    .line 70
    .local v0, "filePaths":[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 71
    .local v1, "mimeType":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/videooperate/utils/MediaScannerUtils;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scanFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->filePaths:[Ljava/lang/String;

    .line 96
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->mimeTypes:[Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 98
    return-void
.end method

.method public scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "filePaths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/videooperate/utils/MediaScannerUtils;->filePaths:[Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/videooperate/utils/MediaScannerUtils;->mimeTypes:[Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/videooperate/utils/MediaScannerUtils;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 86
    return-void
.end method
