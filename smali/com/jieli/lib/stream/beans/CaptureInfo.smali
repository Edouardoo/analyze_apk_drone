.class public Lcom/jieli/lib/stream/beans/CaptureInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/CaptureInfo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaptureTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/CaptureInfo;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/CaptureInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptureTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/CaptureInfo;->b:Ljava/util/Calendar;

    .line 20
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/CaptureInfo;->a:Ljava/lang/String;

    .line 12
    return-void
.end method
