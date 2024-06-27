.class public Lcom/wifi/WF_NetAPI;
.super Ljava/lang/Object;
.source "WF_NetAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wifi/WF_NetAPI$IMsg;,
        Lcom/wifi/WF_NetAPI$IStream;
    }
.end annotation


# instance fields
.field private m_listIMsg:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/wifi/WF_NetAPI$IMsg;",
            ">;"
        }
    .end annotation
.end field

.field private m_listIStream:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/wifi/WF_NetAPI$IStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-nez v0, :cond_0

    .line 15
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const-string v0, "WFNetAPI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    .line 92
    return-void
.end method


# virtual methods
.method public native WFNET_Close(I)I
.end method

.method public native WFNET_Create([II)I
.end method

.method public native WFNET_Destroy([I)V
.end method

.method public native WFNET_GetVer()I
.end method

.method public native WFNET_Init()I
.end method

.method public native WFNET_MsgCreate([ILjava/lang/String;II)I
.end method

.method public native WFNET_MsgDestroy([I)I
.end method

.method public native WFNET_MsgSend(II[BI)I
.end method

.method public native WFNET_MsgSend2(II[BI)I
.end method

.method public native WFNET_MsgSetCallback(II)I
.end method

.method public native WFNET_MsgSetCallback2(II)I
.end method

.method public native WFNET_Open(ILjava/lang/String;)I
.end method

.method public native WFNET_Search(II)I
.end method

.method public native WFNET_SetProperty(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native WFNET_Uninit()V
.end method

.method WF_CallbackMsg(I[BII)V
    .locals 5
    .param p1, "nCmdType"    # I
    .param p2, "pData"    # [B
    .param p3, "nDataLen"    # I
    .param p4, "nUserData"    # I

    .prologue
    .line 80
    iget-object v4, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    monitor-enter v4

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "curIMsg":Lcom/wifi/WF_NetAPI$IMsg;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wifi/WF_NetAPI$IMsg;

    move-object v1, v0

    .line 84
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/wifi/WF_NetAPI$IMsg;->OnCallbackMsg(I[BII)I

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit v4

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method WF_CallbackStream([BII)V
    .locals 5
    .param p1, "pData"    # [B
    .param p2, "nDataLen"    # I
    .param p3, "nUserData"    # I

    .prologue
    .line 70
    iget-object v4, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    monitor-enter v4

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "curIStream":Lcom/wifi/WF_NetAPI$IStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wifi/WF_NetAPI$IStream;

    move-object v1, v0

    .line 74
    invoke-interface {v1, p1, p2, p3}, Lcom/wifi/WF_NetAPI$IStream;->OnCallbackStream([BII)I

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    monitor-exit v4

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public regAPIListener(Lcom/wifi/WF_NetAPI$IStream;)V
    .locals 2
    .param p1, "istream"    # Lcom/wifi/WF_NetAPI$IStream;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    monitor-enter v1

    .line 32
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 33
    :cond_0
    monitor-exit v1

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public regAPIMsgListener(Lcom/wifi/WF_NetAPI$IMsg;)V
    .locals 2
    .param p1, "imsg"    # Lcom/wifi/WF_NetAPI$IMsg;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    monitor-enter v1

    .line 51
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 52
    :cond_0
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregAPIListener(Lcom/wifi/WF_NetAPI$IStream;)V
    .locals 3
    .param p1, "istream"    # Lcom/wifi/WF_NetAPI$IStream;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    monitor-enter v2

    .line 38
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIStream:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 46
    .end local v0    # "i":I
    :cond_0
    monitor-exit v2

    .line 47
    return-void

    .line 39
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregAPIMsgListener(Lcom/wifi/WF_NetAPI$IMsg;)V
    .locals 3
    .param p1, "imsg"    # Lcom/wifi/WF_NetAPI$IMsg;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    monitor-enter v2

    .line 57
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/wifi/WF_NetAPI;->m_listIMsg:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 65
    .end local v0    # "i":I
    :cond_0
    monitor-exit v2

    .line 66
    return-void

    .line 58
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
