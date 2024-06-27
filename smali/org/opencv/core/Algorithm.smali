.class public Lorg/opencv/core/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    return-void
.end method

.method private static native clear_0(J)V
.end method

.method private static native delete(J)V
.end method

.method private static native getDefaultName_0(J)Ljava/lang/String;
.end method

.method private static native save_0(JLjava/lang/String;)V
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Algorithm;->clear_0(J)V

    .line 42
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Algorithm;->delete(J)V

    .line 63
    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    iget-wide v2, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Algorithm;->getDefaultName_0(J)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    return-wide v0
.end method

.method public save(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/core/Algorithm;->save_0(JLjava/lang/String;)V

    .line 56
    return-void
.end method
