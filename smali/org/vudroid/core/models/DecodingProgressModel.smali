.class public Lorg/vudroid/core/models/DecodingProgressModel;
.super Lorg/vudroid/core/events/EventDispatcher;
.source "DecodingProgressModel.java"


# instance fields
.field private currentlyDecoding:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/vudroid/core/events/EventDispatcher;-><init>()V

    return-void
.end method

.method private dispatchChanged()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lorg/vudroid/core/events/DecodingProgressListener$DecodingProgressEvent;

    iget v1, p0, Lorg/vudroid/core/models/DecodingProgressModel;->currentlyDecoding:I

    invoke-direct {v0, v1}, Lorg/vudroid/core/events/DecodingProgressListener$DecodingProgressEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/models/DecodingProgressModel;->dispatch(Lorg/vudroid/core/events/Event;)V

    .line 19
    return-void
.end method


# virtual methods
.method public decrease()V
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/vudroid/core/models/DecodingProgressModel;->currentlyDecoding:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/vudroid/core/models/DecodingProgressModel;->currentlyDecoding:I

    .line 24
    invoke-direct {p0}, Lorg/vudroid/core/models/DecodingProgressModel;->dispatchChanged()V

    .line 25
    return-void
.end method

.method public increase()V
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lorg/vudroid/core/models/DecodingProgressModel;->currentlyDecoding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/vudroid/core/models/DecodingProgressModel;->currentlyDecoding:I

    .line 13
    invoke-direct {p0}, Lorg/vudroid/core/models/DecodingProgressModel;->dispatchChanged()V

    .line 14
    return-void
.end method
