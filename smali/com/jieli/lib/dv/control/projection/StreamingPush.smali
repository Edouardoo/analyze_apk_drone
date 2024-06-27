.class public final Lcom/jieli/lib/dv/control/projection/StreamingPush;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/dv/control/projection/IPushStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;
    }
.end annotation


# instance fields
.field private a:Lcom/jieli/lib/dv/control/projection/IPushStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->UDP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/projection/StreamingPush;-><init>(Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;)V

    return-void
.end method

.method public constructor <init>(Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;)V
    .locals 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->UDP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    if-ne p1, v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    .line 6
    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    invoke-interface {v0}, Lcom/jieli/lib/dv/control/projection/IPushStream;->close()V

    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    invoke-interface {v0, p1}, Lcom/jieli/lib/dv/control/projection/IPushStream;->create(Ljava/lang/String;)V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    invoke-interface {v0, p1, p2}, Lcom/jieli/lib/dv/control/projection/IPushStream;->create(Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination IP is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(I[B)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    invoke-interface {v0, p1, p2}, Lcom/jieli/lib/dv/control/projection/IPushStream;->send(I[B)Z

    move-result v0

    return v0
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/StreamingPush;->a:Lcom/jieli/lib/dv/control/projection/IPushStream;

    invoke-interface {v0, p1}, Lcom/jieli/lib/dv/control/projection/IPushStream;->setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V

    return-void
.end method
