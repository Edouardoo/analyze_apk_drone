.class public abstract Lcom/jieli/lib/dv/control/player/AbsRecording;
.super Lcom/jieli/lib/dv/control/player/IStreamClient;
.source "SourceFile"


# static fields
.field public static final REC_STATE_COMPLETION:I = 0x2

.field public static final REC_STATE_END:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REC_STATE_START:I = 0x1

.field public static final REC_STATE_STOP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/IStreamClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected close()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected create(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method create(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected onStateChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
