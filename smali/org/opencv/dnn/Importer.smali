.class public Lorg/opencv/dnn/Importer;
.super Lorg/opencv/core/Algorithm;
.source "Importer.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native populateNet_0(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    iget-wide v0, p0, Lorg/opencv/dnn/Importer;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Importer;->delete(J)V

    .line 33
    return-void
.end method

.method public populateNet(Lorg/opencv/dnn/Net;)V
    .locals 4
    .param p1, "net"    # Lorg/opencv/dnn/Net;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/opencv/dnn/Importer;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/dnn/Importer;->populateNet_0(JJ)V

    .line 26
    return-void
.end method
