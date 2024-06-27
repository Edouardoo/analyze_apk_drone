.class public Lio/microshow/rxffmpeg/RxFFmpegProgress;
.super Ljava/lang/Object;
.source "RxFFmpegProgress.java"


# instance fields
.field public progress:I

.field public progressTime:J

.field public state:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lio/microshow/rxffmpeg/RxFFmpegProgress;-><init>(IIJ)V

    .line 28
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "progress"    # I
    .param p3, "progressTime"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lio/microshow/rxffmpeg/RxFFmpegProgress;->state:I

    .line 21
    iput p1, p0, Lio/microshow/rxffmpeg/RxFFmpegProgress;->state:I

    .line 22
    iput p2, p0, Lio/microshow/rxffmpeg/RxFFmpegProgress;->progress:I

    .line 23
    iput-wide p3, p0, Lio/microshow/rxffmpeg/RxFFmpegProgress;->progressTime:J

    .line 24
    return-void
.end method
