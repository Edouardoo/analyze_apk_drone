.class public final enum Lcom/lzy/okhttputils/cache/CacheManager;
.super Ljava/lang/Enum;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lzy/okhttputils/cache/CacheManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okhttputils/cache/CacheManager;

.field public static final enum INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;


# instance fields
.field private cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttputils/cache/CacheDao",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/lzy/okhttputils/cache/CacheManager;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okhttputils/cache/CacheManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lzy/okhttputils/cache/CacheManager;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lzy/okhttputils/cache/CacheManager;->$VALUES:[Lcom/lzy/okhttputils/cache/CacheManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 16
    new-instance v0, Lcom/lzy/okhttputils/cache/CacheDao;

    invoke-direct {v0}, Lcom/lzy/okhttputils/cache/CacheDao;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/lzy/okhttputils/cache/CacheManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/cache/CacheManager;

    return-object v0
.end method

.method public static values()[Lcom/lzy/okhttputils/cache/CacheManager;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/lzy/okhttputils/cache/CacheManager;->$VALUES:[Lcom/lzy/okhttputils/cache/CacheManager;

    invoke-virtual {v0}, [Lcom/lzy/okhttputils/cache/CacheManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okhttputils/cache/CacheManager;

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheDao;->deleteAll()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/cache/CacheDao;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheDao;->getAll()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/cache/CacheDao;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Lcom/lzy/okhttputils/cache/CacheEntity;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "entity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->cacheDao:Lcom/lzy/okhttputils/cache/CacheDao;

    invoke-virtual {v0, p2}, Lcom/lzy/okhttputils/cache/CacheDao;->replace(Lcom/lzy/okhttputils/cache/CacheEntity;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
