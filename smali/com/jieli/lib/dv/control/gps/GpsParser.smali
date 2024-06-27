.class public Lcom/jieli/lib/dv/control/gps/GpsParser;
.super Lcom/jieli/lib/dv/control/base/AbstractClient;
.source "SourceFile"


# instance fields
.field private a:Lcom/jieli/lib/dv/control/gps/OnGpsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/base/AbstractClient;-><init>()V

    .line 2
    sget-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 3
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeInit()Z

    return-void
.end method

.method private native nativeClose()Z
.end method

.method private native nativeCreate()Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeParse([B)Z
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->a:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    .line 2
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeClose()Z

    move-result v0

    return v0
.end method

.method public create()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeCreate()Z

    move-result v0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onParsed(DDD)V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->a:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/model/GpsInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/GpsInfo;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/model/GpsInfo;->setLongitude(D)V

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/jieli/lib/dv/control/model/GpsInfo;->setLatitude(D)V

    .line 5
    invoke-virtual {v0, p5, p6}, Lcom/jieli/lib/dv/control/model/GpsInfo;->setSpeed(D)V

    .line 6
    iget-object v1, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->a:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    invoke-interface {v1, v0}, Lcom/jieli/lib/dv/control/gps/OnGpsListener;->onGps(Lcom/jieli/lib/dv/control/model/GpsInfo;)V

    :cond_0
    return-void
.end method

.method public parse([B)Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeParse([B)Z

    move-result v0

    return v0
.end method

.method public setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->a:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    return-void
.end method
