.class public Lcom/utility/WF_VCodec;
.super Ljava/lang/Object;
.source "WF_VCodec.java"


# static fields
.field public static final ENO_VC_BASE:I = -0xc8

.field public static final ENO_VC_DECODE_FAIL:I = -0xd1

.field public static final ENO_VC_ENCODE_DECODE_STARTED:I = -0xd0

.field public static final ENO_VC_ENCODE_FAIL:I = -0xd2

.field public static final ENO_VC_INVALID_PARAM:I = -0xcb

.field public static final ENO_VC_INVALID_PROPERTY_KEY:I = -0xcd

.field public static final ENO_VC_INVALID_PROPERTY_VALUE:I = -0xce

.field public static final ENO_VC_NOT_IMPLEMENT:I = -0xcc

.field public static final ENO_VC_NOT_INIT:I = -0xc9

.field public static final ENO_VC_OK:I = 0x0

.field public static final ENO_VC_UNKNOWN:I = -0xca

.field public static final ENO_VC_UNKNOWN_IN_DATA_TYPE:I = -0xcf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-nez v0, :cond_0

    .line 8
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    const-string v0, "WFVCodec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native WFVC_Create([I)I
.end method

.method public static native WFVC_Decode(I[BI[B[I[B[I[B[I[I[I)I
.end method

.method public static native WFVC_Destroy([I)V
.end method

.method public static native WFVC_Encode(I[BI[B[I)I
.end method

.method public static native WFVC_GetVer()I
.end method

.method public static native WFVC_Init()I
.end method

.method public static native WFVC_SetProperty(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native WFVC_Uninit()V
.end method
