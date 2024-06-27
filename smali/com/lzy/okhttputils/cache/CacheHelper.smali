.class Lcom/lzy/okhttputils/cache/CacheHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheHelper.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DB_CACHE_NAME:Ljava/lang/String; = "okhttputils_cache.db"

.field public static final DB_CACHE_VERSION:I = 0x2

.field public static final HEAD:Ljava/lang/String; = "head"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LOCAL_EXPIRE:Ljava/lang/String; = "localExpire"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

.field private static final SQL_CREATE_UNIQUE_INDEX:Ljava/lang/String; = "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE cache_table"

.field private static final SQL_DELETE_UNIQUE_INDEX:Ljava/lang/String; = "DROP INDEX cache_unique_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "cache_table"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "okhttputils_cache.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 40
    :try_start_0
    const-string v0, "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okhttputils/cache/CacheHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 51
    if-eq p3, p2, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 54
    :try_start_0
    const-string v0, "DROP INDEX cache_unique_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "DROP TABLE cache_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 63
    :cond_0
    return-void

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
