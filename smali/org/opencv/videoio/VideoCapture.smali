.class public Lorg/opencv/videoio/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_3()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_2(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    .line 57
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_1(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_0(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    .line 29
    return-void
.end method

.method private static native VideoCapture_0(Ljava/lang/String;I)J
.end method

.method private static native VideoCapture_1(Ljava/lang/String;)J
.end method

.method private static native VideoCapture_2(I)J
.end method

.method private static native VideoCapture_3()J
.end method

.method private static native delete(J)V
.end method

.method private static native get_0(JI)D
.end method

.method private static native grab_0(J)Z
.end method

.method private static native isOpened_0(J)Z
.end method

.method private static native open_0(JLjava/lang/String;I)Z
.end method

.method private static native open_1(JLjava/lang/String;)Z
.end method

.method private static native open_2(JII)Z
.end method

.method private static native open_3(JI)Z
.end method

.method private static native read_0(JJ)Z
.end method

.method private static native release_0(J)V
.end method

.method private static native retrieve_0(JJI)Z
.end method

.method private static native retrieve_1(JJ)Z
.end method

.method private static native set_0(JID)Z
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
    .line 240
    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoCapture;->delete(J)V

    .line 241
    return-void
.end method

.method public get(I)D
    .locals 4
    .param p1, "propId"    # I

    .prologue
    .line 218
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/videoio/VideoCapture;->get_0(JI)D

    move-result-wide v0

    .line 220
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-wide v0
.end method

.method public grab()Z
    .locals 4

    .prologue
    .line 83
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/videoio/VideoCapture;->grab_0(J)Z

    move-result v0

    .line 85
    .local v0, "retVal":Z
    return v0
.end method

.method public isOpened()Z
    .locals 4

    .prologue
    .line 97
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/videoio/VideoCapture;->isOpened_0(J)Z

    move-result v0

    .line 99
    .local v0, "retVal":Z
    return v0
.end method

.method public open(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/videoio/VideoCapture;->open_3(JI)Z

    move-result v0

    .line 155
    .local v0, "retVal":Z
    return v0
.end method

.method public open(II)Z
    .locals 4
    .param p1, "cameraNum"    # I
    .param p2, "apiPreference"    # I

    .prologue
    .line 139
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/videoio/VideoCapture;->open_2(JII)Z

    move-result v0

    .line 141
    .local v0, "retVal":Z
    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/videoio/VideoCapture;->open_1(JLjava/lang/String;)Z

    move-result v0

    .line 127
    .local v0, "retVal":Z
    return v0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I

    .prologue
    .line 111
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/videoio/VideoCapture;->open_0(JLjava/lang/String;I)Z

    move-result v0

    .line 113
    .local v0, "retVal":Z
    return v0
.end method

.method public read(Lorg/opencv/core/Mat;)Z
    .locals 6
    .param p1, "image"    # Lorg/opencv/core/Mat;

    .prologue
    .line 167
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/videoio/VideoCapture;->read_0(JJ)Z

    move-result v0

    .line 169
    .local v0, "retVal":Z
    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoCapture;->release_0(J)V

    .line 234
    return-void
.end method

.method public retrieve(Lorg/opencv/core/Mat;)Z
    .locals 6
    .param p1, "image"    # Lorg/opencv/core/Mat;

    .prologue
    .line 190
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/videoio/VideoCapture;->retrieve_1(JJ)Z

    move-result v0

    .line 192
    .local v0, "retVal":Z
    return v0
.end method

.method public retrieve(Lorg/opencv/core/Mat;I)Z
    .locals 6
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "flag"    # I

    .prologue
    .line 181
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/videoio/VideoCapture;->retrieve_0(JJI)Z

    move-result v0

    .line 183
    .local v0, "retVal":Z
    return v0
.end method

.method public set(ID)Z
    .locals 4
    .param p1, "propId"    # I
    .param p2, "value"    # D

    .prologue
    .line 204
    iget-wide v2, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v2, v3, p1, p2, p3}, Lorg/opencv/videoio/VideoCapture;->set_0(JID)Z

    move-result v0

    .line 206
    .local v0, "retVal":Z
    return v0
.end method
