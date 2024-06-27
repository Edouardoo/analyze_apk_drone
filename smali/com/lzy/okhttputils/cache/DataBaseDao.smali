.class public abstract Lcom/lzy/okhttputils/cache/DataBaseDao;
.super Ljava/lang/Object;
.source "DataBaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 14
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 16
    return-void
.end method


# virtual methods
.method protected final closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 27
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 28
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 29
    :cond_1
    return-void
.end method

.method public final count()I
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->countColumn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final countColumn(Ljava/lang/String;)I
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    const/4 v6, 0x0

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(?) FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 40
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 41
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 42
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 45
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 46
    return v0
.end method

.method public final delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "result":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 59
    return v1
.end method

.method public final deleteAll()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    const/4 v1, 0x0

    .line 69
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okhttputils/cache/DataBaseDao;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 77
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0, v9}, Lcom/lzy/okhttputils/cache/DataBaseDao;->parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, v0, v9}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 81
    return-object v10
.end method

.method public final getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method protected final openReader()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected final openWriter()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/lzy/okhttputils/cache/DataBaseDao;, "Lcom/lzy/okhttputils/cache/DataBaseDao<TT;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method
