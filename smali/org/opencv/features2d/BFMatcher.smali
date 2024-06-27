.class public Lorg/opencv/features2d/BFMatcher;
.super Lorg/opencv/features2d/DescriptorMatcher;
.source "BFMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lorg/opencv/features2d/BFMatcher;->BFMatcher_1()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    .line 35
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "normType"    # I
    .param p2, "crossCheck"    # Z

    .prologue
    .line 24
    invoke-static {p1, p2}, Lorg/opencv/features2d/BFMatcher;->BFMatcher_0(IZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    .line 26
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    return-void
.end method

.method private static native BFMatcher_0(IZ)J
.end method

.method private static native BFMatcher_1()J
.end method

.method public static create()Lorg/opencv/features2d/BFMatcher;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lorg/opencv/features2d/BFMatcher;

    invoke-static {}, Lorg/opencv/features2d/BFMatcher;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/BFMatcher;-><init>(J)V

    .line 58
    .local v0, "retVal":Lorg/opencv/features2d/BFMatcher;
    return-object v0
.end method

.method public static create(IZ)Lorg/opencv/features2d/BFMatcher;
    .locals 4
    .param p0, "normType"    # I
    .param p1, "crossCheck"    # Z

    .prologue
    .line 47
    new-instance v0, Lorg/opencv/features2d/BFMatcher;

    invoke-static {p0, p1}, Lorg/opencv/features2d/BFMatcher;->create_0(IZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/BFMatcher;-><init>(J)V

    .line 49
    .local v0, "retVal":Lorg/opencv/features2d/BFMatcher;
    return-object v0
.end method

.method private static native create_0(IZ)J
.end method

.method private static native create_1()J
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
    .line 64
    iget-wide v0, p0, Lorg/opencv/features2d/BFMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/BFMatcher;->delete(J)V

    .line 65
    return-void
.end method
