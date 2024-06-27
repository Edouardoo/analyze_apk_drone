.class public Lorg/opencv/objdetect/BaseCascadeClassifier;
.super Lorg/opencv/core/Algorithm;
.source "BaseCascadeClassifier.java"


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


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/opencv/objdetect/BaseCascadeClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/BaseCascadeClassifier;->delete(J)V

    .line 19
    return-void
.end method
