.class public Lcom/Util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Util/FileUtil$FileState;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x8000

.field public static final FAILED:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field private static final SEPARATOR:Ljava/lang/String;

.field private static final SIG_SET_PERMISSION:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SUCCESS:I = 0x0

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FILEUTIL"

.field private static exReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public static logFileName:Ljava/lang/String;

.field public static logFilePath:Ljava/lang/String;

.field private static storagePath:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/Util/FileUtil;->SEPARATOR:Ljava/lang/String;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/Util/FileUtil;->storagePath:Ljava/lang/String;

    .line 129
    const-string v0, "log.txt"

    sput-object v0, Lcom/Util/FileUtil;->logFileName:Ljava/lang/String;

    .line 130
    const-string v0, "Log"

    sput-object v0, Lcom/Util/FileUtil;->logFilePath:Ljava/lang/String;

    .line 1216
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/Util/FileUtil;->SIG_SET_PERMISSION:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/Util/FileUtil;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method public static ShareFile(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "imageIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 197
    .local v1, "uri":Landroid/net/Uri;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, p0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/Util/FileUtil;->getMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    const-string v2, "\u5206\u4eab"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void

    .line 205
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static assetExist(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 968
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 969
    const/4 v1, 0x1

    .line 973
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 978
    :goto_0
    return v1

    .line 970
    :catch_0
    move-exception v1

    .line 973
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 978
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v1

    .line 973
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 975
    :goto_2
    throw v1

    .line 974
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 922
    const/4 v2, 0x0

    .line 925
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 926
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 927
    .local v0, "buf":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 939
    .end local v0    # "buf":[B
    :goto_0
    return-object v0

    .line 930
    :catch_0
    move-exception v1

    .line 931
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/Util/FileUtil;->setLastException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 939
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 933
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 934
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 936
    :goto_2
    throw v3

    .line 935
    .restart local v0    # "buf":[B
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v0    # "buf":[B
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 881
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 882
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/Util/FileUtil;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 886
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 891
    :goto_0
    return v1

    .line 883
    :catch_0
    move-exception v1

    .line 886
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 891
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 885
    :catchall_0
    move-exception v1

    .line 886
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 888
    :goto_2
    throw v1

    .line 887
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 866
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/Util/FileUtil;->assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static assetToFileIfNotExist(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v2, v3}, Lcom/Util/FileUtil;->checkExistBySize(Ljava/io/File;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 899
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/Util/FileUtil;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 906
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 911
    :goto_0
    return v1

    .line 906
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v2

    goto :goto_0

    .line 903
    :catch_1
    move-exception v1

    .line 906
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 911
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 905
    :catchall_0
    move-exception v1

    .line 906
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 908
    :goto_2
    throw v1

    .line 907
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static assetToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 953
    invoke-static {p0, p1}, Lcom/Util/FileUtil;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 955
    .local v0, "data":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static bytesToFile(Ljava/io/File;[B)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 763
    array-length v0, p1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/Util/FileUtil;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result v0

    return v0
.end method

.method public static bytesToFile(Ljava/io/File;[BIIZ)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isAppend"    # Z

    .prologue
    const/4 v2, -0x1

    .line 732
    invoke-static {p0}, Lcom/Util/FileUtil;->checkParentPath(Ljava/io/File;)V

    .line 734
    if-nez p1, :cond_0

    .line 755
    :goto_0
    return v2

    .line 737
    :cond_0
    if-gtz p3, :cond_1

    .line 738
    array-length p3, p1

    .line 740
    :cond_1
    const/4 v0, 0x0

    .line 742
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 744
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 746
    const/4 v2, 0x0

    .line 750
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v3

    goto :goto_0

    .line 747
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 750
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 751
    :catch_2
    move-exception v3

    goto :goto_0

    .line 749
    :catchall_0
    move-exception v2

    .line 750
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 752
    :goto_3
    throw v2

    .line 751
    :catch_3
    move-exception v3

    goto :goto_3

    .line 749
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 747
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static bytesToFile(Ljava/io/File;[BZ)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "isAppend"    # Z

    .prologue
    .line 759
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/Util/FileUtil;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result v0

    return v0
.end method

.method public static bytesToFile(Ljava/lang/String;[BIIZ)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isAppend"    # Z

    .prologue
    .line 775
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/Util/FileUtil;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result v0

    return v0
.end method

.method public static checkExistBySize(Ljava/io/File;J)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "size"    # J

    .prologue
    .line 1205
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1206
    :cond_0
    const/4 v0, 0x0

    .line 1208
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkParentPath(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 679
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    invoke-static {v0}, Lcom/Util/FileUtil;->createDir(Ljava/io/File;)I

    .line 681
    :cond_0
    return-void
.end method

.method public static checkParentPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/Util/FileUtil;->checkParentPath(Ljava/io/File;)V

    .line 670
    return-void
.end method

.method public static conver_argb_to_i420([B[III)V
    .locals 20
    .param p0, "i420"    # [B
    .param p1, "argb"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 339
    mul-int v8, p2, p3

    .line 341
    .local v8, "frameSize":I
    const/16 v16, 0x0

    .line 342
    .local v16, "yIndex":I
    move v12, v8

    .line 343
    .local v12, "uIndex":I
    mul-int/lit8 v18, v8, 0x5

    div-int/lit8 v14, v18, 0x4

    .line 346
    .local v14, "vIndex":I
    const/4 v10, 0x0

    .line 347
    .local v10, "index":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_7

    .line 348
    const/4 v9, 0x0

    .local v9, "i":I
    move v15, v14

    .end local v14    # "vIndex":I
    .local v15, "vIndex":I
    move v13, v12

    .end local v12    # "uIndex":I
    .local v13, "uIndex":I
    move/from16 v17, v16

    .end local v16    # "yIndex":I
    .local v17, "yIndex":I
    :goto_1
    move/from16 v0, p2

    if-ge v9, v0, :cond_6

    .line 349
    aget v18, p1, v10

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    shr-int/lit8 v7, v18, 0x18

    .line 350
    .local v7, "a":I
    aget v18, p1, v10

    const/high16 v19, 0xff0000

    and-int v18, v18, v19

    shr-int/lit8 v3, v18, 0x10

    .line 351
    .local v3, "R":I
    aget v18, p1, v10

    const v19, 0xff00

    and-int v18, v18, v19

    shr-int/lit8 v2, v18, 0x8

    .line 352
    .local v2, "G":I
    aget v18, p1, v10

    move/from16 v0, v18

    and-int/lit16 v1, v0, 0xff

    .line 355
    .local v1, "B":I
    mul-int/lit8 v18, v3, 0x42

    mul-int/lit16 v0, v2, 0x81

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int/lit8 v19, v1, 0x19

    add-int v18, v18, v19

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x8

    add-int/lit8 v6, v18, 0x10

    .line 356
    .local v6, "Y":I
    mul-int/lit8 v18, v3, -0x26

    mul-int/lit8 v19, v2, 0x4a

    sub-int v18, v18, v19

    mul-int/lit8 v19, v1, 0x70

    add-int v18, v18, v19

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    add-int/lit16 v4, v0, 0x80

    .line 357
    .local v4, "U":I
    mul-int/lit8 v18, v3, 0x70

    mul-int/lit8 v19, v2, 0x5e

    sub-int v18, v18, v19

    mul-int/lit8 v19, v1, 0x12

    sub-int v18, v18, v19

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    add-int/lit16 v5, v0, 0x80

    .line 360
    .local v5, "V":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "yIndex":I
    .restart local v16    # "yIndex":I
    if-gez v6, :cond_3

    const/4 v6, 0x0

    .end local v6    # "Y":I
    :cond_0
    :goto_2
    int-to-byte v0, v6

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 361
    rem-int/lit8 v18, v11, 0x2

    if-nez v18, :cond_8

    rem-int/lit8 v18, v9, 0x2

    if-nez v18, :cond_8

    .line 362
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "uIndex":I
    .restart local v12    # "uIndex":I
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .end local v4    # "U":I
    :cond_1
    :goto_3
    int-to-byte v0, v4

    move/from16 v18, v0

    aput-byte v18, p0, v13

    .line 363
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "vIndex":I
    .restart local v14    # "vIndex":I
    if-gez v5, :cond_5

    const/4 v5, 0x0

    .end local v5    # "V":I
    :cond_2
    :goto_4
    int-to-byte v0, v5

    move/from16 v18, v0

    aput-byte v18, p0, v15

    .line 365
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 348
    add-int/lit8 v9, v9, 0x1

    move v15, v14

    .end local v14    # "vIndex":I
    .restart local v15    # "vIndex":I
    move v13, v12

    .end local v12    # "uIndex":I
    .restart local v13    # "uIndex":I
    move/from16 v17, v16

    .end local v16    # "yIndex":I
    .restart local v17    # "yIndex":I
    goto/16 :goto_1

    .line 360
    .end local v17    # "yIndex":I
    .restart local v4    # "U":I
    .restart local v5    # "V":I
    .restart local v6    # "Y":I
    .restart local v16    # "yIndex":I
    :cond_3
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v6, v0, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    .line 362
    .end local v6    # "Y":I
    .end local v13    # "uIndex":I
    .restart local v12    # "uIndex":I
    :cond_4
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v4, v0, :cond_1

    const/16 v4, 0xff

    goto :goto_3

    .line 363
    .end local v4    # "U":I
    .end local v15    # "vIndex":I
    .restart local v14    # "vIndex":I
    :cond_5
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v5, v0, :cond_2

    const/16 v5, 0xff

    goto :goto_4

    .line 347
    .end local v1    # "B":I
    .end local v2    # "G":I
    .end local v3    # "R":I
    .end local v5    # "V":I
    .end local v7    # "a":I
    .end local v12    # "uIndex":I
    .end local v14    # "vIndex":I
    .end local v16    # "yIndex":I
    .restart local v13    # "uIndex":I
    .restart local v15    # "vIndex":I
    .restart local v17    # "yIndex":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "vIndex":I
    .restart local v14    # "vIndex":I
    move v12, v13

    .end local v13    # "uIndex":I
    .restart local v12    # "uIndex":I
    move/from16 v16, v17

    .end local v17    # "yIndex":I
    .restart local v16    # "yIndex":I
    goto/16 :goto_0

    .line 368
    .end local v9    # "i":I
    :cond_7
    return-void

    .end local v12    # "uIndex":I
    .end local v14    # "vIndex":I
    .restart local v1    # "B":I
    .restart local v2    # "G":I
    .restart local v3    # "R":I
    .restart local v4    # "U":I
    .restart local v5    # "V":I
    .restart local v7    # "a":I
    .restart local v9    # "i":I
    .restart local v13    # "uIndex":I
    .restart local v15    # "vIndex":I
    :cond_8
    move v14, v15

    .end local v15    # "vIndex":I
    .restart local v14    # "vIndex":I
    move v12, v13

    .end local v13    # "uIndex":I
    .restart local v12    # "uIndex":I
    goto :goto_5
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "fromFile"    # Ljava/lang/String;
    .param p1, "toFile"    # Ljava/lang/String;

    .prologue
    .line 466
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    const/4 v4, -0x1

    .line 497
    :goto_0
    return v4

    .line 473
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 476
    .local v0, "currentFiles":[Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v3, "targetDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 479
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 482
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 483
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/Util/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    :cond_3
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 492
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/Util/FileUtil;->copySdcardFile(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 497
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v3, "/app/"

    .line 52
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 54
    invoke-static {}, Lcom/fh/util/StorageUtil;->getSdCardFreeBytes()J

    move-result-wide v0

    .line 55
    .local v0, "availableMemory":J
    const-wide/32 v8, 0x3200000

    cmp-long v7, v0, v8

    if-gtz v7, :cond_1

    .line 85
    .end local v0    # "availableMemory":J
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "availableMemory":J
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/Util/FileUtil;->storagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "recordDir":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    const-string v7, "FILEUTIL"

    const-string v8, "Record dir is null"

    invoke-static {v7, v8}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_3

    .line 68
    new-instance v7, Ljava/lang/IllegalAccessError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failure."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 74
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/Util/FileUtil;->storagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/Util/FileUtil;->readInputStream(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static copyFilesFassets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "fileNames":[Ljava/lang/String;
    array-length v9, v5

    if-lez v9, :cond_0

    .line 403
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 405
    array-length v9, v5

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v4, v5, v8

    .line 406
    .local v4, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/Util/FileUtil;->copyFilesFassets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 411
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 412
    .local v7, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 413
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 414
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 415
    .local v1, "byteCount":I
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 416
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 422
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v5    # "fileNames":[Ljava/lang/String;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 418
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteCount":I
    .restart local v5    # "fileNames":[Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 419
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 420
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static copySdcardFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "fromFile"    # Ljava/lang/String;
    .param p1, "toFile"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 506
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 507
    .local v3, "fosfrom":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 508
    .local v4, "fosto":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 510
    .local v1, "buffer":[B
    const/4 v5, -0x1

    .line 511
    .local v5, "len":I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 512
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 522
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "fosfrom":Ljava/io/FileInputStream;
    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    move v6, v7

    .line 523
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return v6

    .line 515
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fosfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 517
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 518
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 519
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static copyTo(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p0, "dstFile"    # Ljava/io/File;
    .param p1, "srcFile"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 843
    invoke-static {p1}, Lcom/Util/FileUtil;->fileState(Ljava/io/File;)Lcom/Util/FileUtil$FileState;

    move-result-object v3

    sget-object v4, Lcom/Util/FileUtil$FileState;->FState_File:Lcom/Util/FileUtil$FileState;

    if-eq v3, v4, :cond_0

    .line 859
    :goto_0
    return v2

    .line 846
    :cond_0
    const/4 v0, 0x0

    .line 848
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v1, v3}, Lcom/Util/FileUtil;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 854
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 855
    :catch_0
    move-exception v3

    goto :goto_0

    .line 851
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 854
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 855
    :catch_2
    move-exception v3

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v2

    .line 854
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 856
    :goto_3
    throw v2

    .line 855
    :catch_3
    move-exception v3

    goto :goto_3

    .line 853
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 851
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "dstPath"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 839
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/Util/FileUtil;->copyTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static coverSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .prologue
    const-wide/32 v4, 0x40000000

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x44800000    # 1024.0f

    const-wide/16 v6, 0x400

    .line 1030
    const-string v0, ""

    .line 1031
    .local v0, "s":Ljava/lang/String;
    cmp-long v1, p0, v6

    if-gez v1, :cond_0

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    :goto_0
    return-object v0

    .line 1033
    :cond_0
    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    .line 1034
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1fK"

    new-array v3, v3, [Ljava/lang/Object;

    long-to-float v4, p0

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1035
    :cond_1
    cmp-long v1, p0, v4

    if-gez v1, :cond_2

    .line 1036
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1fM"

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p0, v6

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1fG"

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p0, v6

    div-long/2addr v4, v6

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDir(Ljava/io/File;)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 620
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 623
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 626
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static createDir(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/Util/FileUtil;->createDir(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1243
    :try_start_0
    const-string v7, "ln -s %s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1244
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 1245
    .local v4, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1246
    .local v3, "ps":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1249
    .local v2, "in":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 1250
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->print(I)V

    goto :goto_0

    .line 1257
    .end local v0    # "c":I
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "ps":Ljava/lang/Process;
    .end local v4    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v5

    move v5, v6

    .line 1260
    :goto_1
    return v5

    .line 1253
    .restart local v0    # "c":I
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "ps":Ljava/lang/Process;
    .restart local v4    # "runtime":Ljava/lang/Runtime;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1254
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static deleteBlankPath(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    const/4 v1, 0x1

    .line 1183
    :goto_0
    return v1

    .line 1177
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1178
    const/4 v1, 0x2

    goto :goto_0

    .line 1180
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1181
    const/4 v1, 0x0

    goto :goto_0

    .line 1183
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1505
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1506
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1507
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 1521
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1510
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 1513
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1514
    aget-object v0, v1, v2

    .line 1515
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/Util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1517
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1518
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1519
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deleteFileWithPath(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 117
    .local v0, "checker":Ljava/lang/SecurityManager;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "FILEUTIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DirectoryManager deleteFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    const/4 v2, 0x1

    .line 124
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteVideoInAlbum(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "m_context"    # Landroid/content/Context;
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "isVideo"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 267
    if-eqz p2, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data like \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 273
    .end local v0    # "where":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data like \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0    # "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteVideoInAlbumDB(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 8
    .param p0, "m_context"    # Landroid/content/Context;
    .param p2, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "filePath":Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_data=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .restart local v1    # "filePath":Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_data=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 263
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static fileState(Ljava/io/File;)Lcom/Util/FileUtil$FileState;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 591
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lcom/Util/FileUtil$FileState;->FState_None:Lcom/Util/FileUtil$FileState;

    .line 600
    :goto_0
    return-object v0

    .line 594
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    sget-object v0, Lcom/Util/FileUtil$FileState;->FState_File:Lcom/Util/FileUtil$FileState;

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    sget-object v0, Lcom/Util/FileUtil$FileState;->FState_Dir:Lcom/Util/FileUtil$FileState;

    goto :goto_0

    .line 600
    :cond_2
    sget-object v0, Lcom/Util/FileUtil$FileState;->FState_Other:Lcom/Util/FileUtil$FileState;

    goto :goto_0
.end method

.method public static fileState(Ljava/lang/String;)Lcom/Util/FileUtil$FileState;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 587
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/Util/FileUtil;->fileState(Ljava/io/File;)Lcom/Util/FileUtil$FileState;

    move-result-object v0

    return-object v0
.end method

.method public static fileToBytes(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 791
    invoke-static {p0, v0, v0}, Lcom/Util/FileUtil;->fileToBytes(Ljava/io/File;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static fileToBytes(Ljava/io/File;II)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 808
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 828
    :goto_0
    return-object v2

    .line 811
    :cond_1
    const/4 v0, 0x0

    .line 813
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    if-nez p2, :cond_2

    .line 815
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 816
    :cond_2
    new-array v2, p2, [B

    .line 817
    .local v2, "outBuf":[B
    invoke-virtual {v1, v2, p1, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 823
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v3

    goto :goto_0

    .line 820
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "outBuf":[B
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 823
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object v2, v3

    .line 828
    goto :goto_0

    .line 822
    :catchall_0
    move-exception v3

    .line 823
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 825
    :goto_4
    throw v3

    .line 824
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    .line 822
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 820
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static fileToBytes(Ljava/lang/String;II)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 787
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/Util/FileUtil;->fileToBytes(Ljava/io/File;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 795
    invoke-static {p0}, Lcom/Util/FileUtil;->fileToBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 796
    .local v0, "data":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static freeFileLock(Ljava/nio/channels/FileLock;Ljava/io/File;)V
    .locals 3
    .param p0, "fl"    # Ljava/nio/channels/FileLock;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1108
    if-eqz p1, :cond_0

    .line 1109
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1111
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1119
    :cond_1
    :goto_0
    return-void

    .line 1115
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    .line 1116
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeFileLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SUC!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDirPathInPrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "write_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1419
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v2, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1422
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1423
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    .end local v0    # "bytes":[B
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :goto_0
    const-string v3, ""

    return-object v3

    .line 1426
    :catch_0
    move-exception v1

    .line 1427
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImageThumbnail(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "Imagepath"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, "testcr":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v1

    .line 298
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "whereClause":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 300
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 301
    .local v7, "_id":I
    const-string v11, ""

    .line 302
    .local v11, "imagePath":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :cond_0
    const/4 v9, 0x0

    .line 318
    :goto_0
    return-object v9

    .line 305
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 307
    .local v8, "_idColumn":I
    const-string v1, "_data"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 309
    .local v6, "_dataColumn":I
    :cond_2
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 310
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 311
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    .end local v6    # "_dataColumn":I
    .end local v8    # "_idColumn":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 315
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 316
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 317
    int-to-long v4, v7

    const/4 v1, 0x1

    invoke-static {p1, v4, v5, v1, v12}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 318
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getLastException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 1316
    sget-object v0, Lcom/Util/FileUtil;->exReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/Util/FileUtil;->exReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    .local v0, "cR":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "fileType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-static {p0, p2}, Lcom/fh/hdutil/AppUtils;->getVideoContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 390
    .end local v1    # "fileType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 379
    .restart local v1    # "fileType":Ljava/lang/String;
    :cond_1
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    invoke-static {p0, p2}, Lcom/fh/hdutil/AppUtils;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 382
    :cond_2
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    invoke-static {p0, p2}, Lcom/fh/hdutil/AppUtils;->getAudioContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 1127
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1128
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1129
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getROMLeft()J
    .locals 12

    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 1047
    .local v6, "data":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 1049
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v2, v8

    .line 1050
    .local v2, "blockCount":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 1052
    .local v0, "availCount":J
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ROM Total:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-long v10, v4, v2

    invoke-static {v10, v11}, Lcom/Util/FileUtil;->coverSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Left:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-long v10, v0, v4

    .line 1053
    invoke-static {v10, v11}, Lcom/Util/FileUtil;->coverSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1052
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    mul-long v8, v0, v4

    return-wide v8
.end method

.method public static getSDLeftSpace()J
    .locals 6

    .prologue
    .line 1019
    invoke-static {}, Lcom/Util/FileUtil;->isSDMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    const-wide/16 v2, 0x0

    .line 1024
    .local v0, "statfs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 1022
    .end local v0    # "statfs":Landroid/os/StatFs;
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1024
    .restart local v0    # "statfs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    .line 1025
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 1024
    goto :goto_0
.end method

.method public static getSDRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 3
    .param p0, "m_context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "uri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 183
    const-string v1, "com.hfufo.rxdrone.fileProvider"

    invoke-static {p0, v1, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private initAssetsFile(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1322
    const/4 v4, 0x0

    .line 1326
    .local v4, "needCopy":Z
    const-string v6, "libs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1328
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1332
    .local v5, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "armeabi"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1333
    .local v2, "fileNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v2, :cond_0

    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 1334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1335
    const/4 v4, 0x1

    .line 1336
    const-string v6, "ffso"

    const-string v7, "initAssetsFile222: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 1346
    const-string v6, "armeabi"

    invoke-static {p1, v6, v5}, Lcom/Util/FileUtil;->copyFilesFassets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_1
    return-void

    .line 1333
    .restart local v2    # "fileNames":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1341
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private initAssetsFile2(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1351
    const/4 v4, 0x0

    .line 1354
    .local v4, "needCopy":Z
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 1356
    .local v1, "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/armeabi/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1358
    .local v5, "path":Ljava/lang/String;
    const-string v6, "ffso"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "fileNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v2, :cond_0

    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 1363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1364
    const-string v6, "ffso"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAssetsFile2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    const/4 v4, 0x1

    .line 1374
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 1375
    const-string v6, "lib"

    invoke-static {p1, v6, v5}, Lcom/Util/FileUtil;->copyFilesFassets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :cond_1
    return-void

    .line 1362
    .restart local v2    # "fileNames":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1370
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "fileBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "Drone"

    invoke-static {p0, p1, p2, v0}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    return-void
.end method

.method public static insertImage(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToByte(I)[B
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 1408
    move v2, p0

    .line 1409
    .local v2, "temp":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 1410
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1411
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 1412
    shr-int/lit8 v2, v2, 0x8

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1414
    :cond_0
    return-object v0
.end method

.method public static isLoadSoFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 450
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 451
    .local v0, "currentFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .line 452
    .local v1, "hasJkffmpeg":Z
    if-nez v0, :cond_0

    .line 453
    const/4 v4, 0x0

    move v2, v1

    .line 460
    .end local v1    # "hasJkffmpeg":Z
    .local v2, "hasJkffmpeg":Z
    :goto_0
    return v4

    .line 455
    .end local v2    # "hasJkffmpeg":Z
    .restart local v1    # "hasJkffmpeg":Z
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 456
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ffmpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    const/4 v1, 0x1

    .line 455
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .end local v1    # "hasJkffmpeg":Z
    .restart local v2    # "hasJkffmpeg":Z
    move v4, v1

    .line 460
    goto :goto_0
.end method

.method public static isSDAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1005
    invoke-static {}, Lcom/Util/FileUtil;->isSDMounted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1012
    .local v0, "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 1008
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1009
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSDAvailable(I)Z
    .locals 8
    .param p0, "minRemainMB"    # I

    .prologue
    const-wide/16 v6, 0x400

    const/4 v0, 0x0

    .line 995
    invoke-static {}, Lcom/Util/FileUtil;->isSDAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/Util/FileUtil;->getSDLeftSpace()J

    move-result-wide v2

    int-to-long v4, p0

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSDMounted()Z
    .locals 2

    .prologue
    .line 985
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "sdState":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static listPath(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    .local v0, "allDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/SecurityManager;

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    .line 1153
    .local v1, "checker":Ljava/lang/SecurityManager;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v1, p0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1156
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 1157
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1158
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1162
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static loadLocal(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    const-string v3, "libs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 434
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 435
    .local v0, "currentFiles":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 436
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method public static loadSoFile(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    const-string v1, "libs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 443
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/Util/FileUtil;->isLoadSoFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    :cond_0
    return-void
.end method

.method public static notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "m_context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 227
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 228
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    new-instance v6, Lcom/Util/FileUtil$1;

    invoke-direct {v6, p2, p0}, Lcom/Util/FileUtil$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 245
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {p0, p1}, Lcom/Util/FileUtil;->getUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v2, "intent1":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    return-void

    .line 239
    .end local v2    # "intent1":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "relationDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static printLastException()V
    .locals 1

    .prologue
    .line 1306
    invoke-static {}, Lcom/Util/FileUtil;->getLastException()Ljava/lang/Exception;

    move-result-object v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1309
    :cond_0
    return-void
.end method

.method public static reNamePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static readInputStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .param p0, "storagePath"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 88
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 93
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 94
    .local v4, "lenght":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 95
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 101
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "lenght":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 106
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 97
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "lenght":I
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 98
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 103
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "lenght":I
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readSDFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    const-string v4, ""

    .line 1474
    .local v4, "res":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1478
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 1480
    .local v3, "length":I
    new-array v0, v3, [B

    .line 1481
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1485
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1486
    return-object v4
.end method

.method public static removeDir(Ljava/io/File;)I
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v2

    .line 650
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 651
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 652
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 653
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 654
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    invoke-static {v0}, Lcom/Util/FileUtil;->removeDir(Ljava/io/File;)I

    .line 653
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 657
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 662
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static removeDir(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 633
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/Util/FileUtil;->removeDir(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static saveByte([BIIILjava/io/FileOutputStream;)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "type"    # I
    .param p2, "leng"    # I
    .param p3, "number"    # I
    .param p4, "outputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 1380
    invoke-static {p1}, Lcom/Util/FileUtil;->intToByte(I)[B

    move-result-object v4

    .line 1381
    .local v4, "typeI":[B
    invoke-static {p3}, Lcom/Util/FileUtil;->intToByte(I)[B

    move-result-object v1

    .line 1382
    .local v1, "fnumber":[B
    invoke-static {p2}, Lcom/Util/FileUtil;->intToByte(I)[B

    move-result-object v3

    .line 1383
    .local v3, "length":[B
    move-object v2, p0

    .line 1384
    .local v2, "frame":[B
    if-nez p4, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1395
    :cond_0
    :try_start_0
    invoke-virtual {p4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1396
    invoke-virtual {p4, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1397
    invoke-virtual {p4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1398
    invoke-virtual {p4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1399
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_1
    const-string v5, "\u4fdd\u5b58byte"

    const-string v6, "saveByte: "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static scanFile(Landroid/media/MediaScannerConnection;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "mMediaScannerConnection"    # Landroid/media/MediaScannerConnection;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "isVideo"    # Z

    .prologue
    .line 283
    if-eqz p0, :cond_0

    .line 284
    if-eqz p2, :cond_1

    .line 286
    const-string v0, "video/*"

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string v0, "image/jpeg"

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setLastException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/Util/FileUtil;->exReference:Ljava/lang/ref/WeakReference;

    .line 1313
    return-void
.end method

.method public static setPermissions(Ljava/lang/String;I)I
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, -0x1

    .line 1213
    invoke-static {p0, p1, v0, v0}, Lcom/Util/FileUtil;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 1221
    :try_start_0
    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1222
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setPermissions"

    sget-object v3, Lcom/Util/FileUtil;->SIG_SET_PERMISSION:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1223
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1224
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1228
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 1225
    :catch_0
    move-exception v2

    .line 1228
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isAppend"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 696
    invoke-static {p0}, Lcom/Util/FileUtil;->checkParentPath(Ljava/io/File;)V

    .line 698
    const/4 v1, 0x0

    .line 700
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const v6, 0x8000

    :try_start_1
    new-array v0, v6, [B

    .line 702
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 704
    .local v3, "readSize":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 705
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 709
    .end local v0    # "buf":[B
    .end local v3    # "readSize":I
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 712
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move v4, v5

    .line 717
    :goto_3
    return v4

    .line 706
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "readSize":I
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 712
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v1, v2

    .line 708
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 711
    .end local v0    # "buf":[B
    .end local v3    # "readSize":I
    :catchall_0
    move-exception v4

    .line 712
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 714
    :goto_6
    throw v4

    .line 713
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "readSize":I
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v0    # "buf":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "readSize":I
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_6

    .line 711
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 709
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public static streamToFile(Ljava/lang/String;Ljava/io/InputStream;Z)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isAppend"    # Z

    .prologue
    .line 692
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/Util/FileUtil;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I

    move-result v0

    return v0
.end method

.method public static stringToFile(Ljava/io/File;Ljava/lang/String;)I
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 767
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/Util/FileUtil;->bytesToFile(Ljava/io/File;[B)I

    move-result v0

    return v0
.end method

.method public static tryFileLock(Ljava/io/File;)Ljava/nio/channels/FileLock;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1092
    :try_start_0
    invoke-static {p0}, Lcom/Util/FileUtil;->checkParentPath(Ljava/io/File;)V

    .line 1094
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1095
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 1096
    .local v1, "fl":Ljava/nio/channels/FileLock;
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1097
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryFileLock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SUC!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryFileLock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FAIL! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1081
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/Util/FileUtil;->tryFileLock(Ljava/io/File;)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public static writeSDFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "write_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1496
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1498
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1500
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1501
    return-void
.end method


# virtual methods
.method public getJpegT(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "phSize"    # I

    .prologue
    .line 323
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 326
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 327
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    .line 328
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 333
    :goto_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "b":Landroid/graphics/Bitmap;
    return-object v0

    .line 331
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public getLogFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/Util/FileUtil;->getLogUrl()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "logUrl":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/Util/FileUtil;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/Util/FileUtil;->logFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/Util/FileUtil;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "logPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "logPathFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/Util/FileUtil;->getLogPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/Util/FileUtil;->logFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/Util/FileUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 140
    sget-object v0, Lcom/fh/hdutil/IConstant;->LOG_PATH:Ljava/lang/String;

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readFileSdcardFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    const-string v4, ""

    .line 1453
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 1457
    .local v3, "length":I
    new-array v0, v3, [B

    .line 1458
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1462
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :goto_0
    return-object v4

    .line 1465
    :catch_0
    move-exception v1

    .line 1466
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "write_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v2, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1439
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1440
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    .end local v0    # "bytes":[B
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1443
    :catch_0
    move-exception v1

    .line 1444
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
