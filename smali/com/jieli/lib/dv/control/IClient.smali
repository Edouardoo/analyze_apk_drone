.class public interface abstract Lcom/jieli/lib/dv/control/IClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract create(Ljava/lang/String;I)V
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
.end method

.method public abstract registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
.end method

.method public abstract unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
.end method

.method public abstract unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
.end method
