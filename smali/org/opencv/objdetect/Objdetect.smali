.class public Lorg/opencv/objdetect/Objdetect;
.super Ljava/lang/Object;
.source "Objdetect.java"


# static fields
.field public static final CASCADE_DO_CANNY_PRUNING:I = 0x1

.field public static final CASCADE_DO_ROUGH_SEARCH:I = 0x8

.field public static final CASCADE_FIND_BIGGEST_OBJECT:I = 0x4

.field public static final CASCADE_SCALE_IMAGE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static groupRectangles(Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;I)V
    .locals 6
    .param p0, "rectList"    # Lorg/opencv/core/MatOfRect;
    .param p1, "weights"    # Lorg/opencv/core/MatOfInt;
    .param p2, "groupThreshold"    # I

    .prologue
    .line 37
    move-object v0, p0

    .line 38
    .local v0, "rectList_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 39
    .local v1, "weights_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/objdetect/Objdetect;->groupRectangles_1(JJI)V

    .line 41
    return-void
.end method

.method public static groupRectangles(Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;ID)V
    .locals 9
    .param p0, "rectList"    # Lorg/opencv/core/MatOfRect;
    .param p1, "weights"    # Lorg/opencv/core/MatOfInt;
    .param p2, "groupThreshold"    # I
    .param p3, "eps"    # D

    .prologue
    .line 27
    move-object v7, p0

    .line 28
    .local v7, "rectList_mat":Lorg/opencv/core/Mat;
    move-object v8, p1

    .line 29
    .local v8, "weights_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v7, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/objdetect/Objdetect;->groupRectangles_0(JJID)V

    .line 31
    return-void
.end method

.method private static native groupRectangles_0(JJID)V
.end method

.method private static native groupRectangles_1(JJI)V
.end method
