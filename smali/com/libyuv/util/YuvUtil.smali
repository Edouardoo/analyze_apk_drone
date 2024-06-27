.class public Lcom/libyuv/util/YuvUtil;
.super Ljava/lang/Object;
.source "YuvUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "yuvutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ARGBToNV12([B[BIII)V
.end method

.method public static native RGB24ToyuvI420([B[BIII)V
.end method

.method public static native compressYUV([BII[BIIIIZ)V
.end method

.method public static native cropYUV([BII[BIIII)V
.end method

.method public static native scaleYUV([BII[BIII)V
.end method

.method public static native yuvI420ToARGB([B[BIII)V
.end method

.method public static native yuvI420ToNV12([B[BII)V
.end method

.method public static native yuvI420ToNV21([B[BII)V
.end method

.method public static native yuvI420ToRGB24([B[BIII)V
.end method
