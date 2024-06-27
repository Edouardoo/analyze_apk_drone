.class public Lcom/jieli/lib/stream/tools/StreamPlayer$PlayState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/StreamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayState"
.end annotation


# static fields
.field public static final COMPLETION:I = 0x4

.field public static final PAUSE:I = 0x3

.field public static final PLAY:I = 0x2

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
