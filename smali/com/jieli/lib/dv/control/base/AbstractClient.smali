.class public abstract Lcom/jieli/lib/dv/control/base/AbstractClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mIsLibLoaded:Z

.field public static final sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/base/AbstractClient$a;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient$a;-><init>()V

    sput-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V
    .locals 2

    .prologue
    .line 1
    const-class v1, Lcom/jieli/lib/dv/control/base/AbstractClient;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->mIsLibLoaded:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    :cond_0
    const-string v0, "jl_player"

    .line 13
    invoke-interface {p0, v0}, Lcom/jieli/lib/dv/control/player/JlLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->mIsLibLoaded:Z

    .line 16
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract close()Z
.end method

.method protected abstract create()Z
.end method
