.class Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;
.super Ljava/lang/Thread;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/service/hdservice/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadDeviceDesTxt"
.end annotation


# instance fields
.field private mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hfufo/service/hdservice/CommunicationService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService;)V
    .locals 1
    .param p1, "service"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 1126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1128
    return-void
.end method

.method static synthetic access$1600(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1132
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1135
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "connectIP":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1137
    const/16 v2, 0x1f90

    const-string v3, "mnt/spiflash/res/dev_desc.txt"

    invoke-static {v0, v2, v3}, Lcom/fh/hdutil/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    new-instance v2, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;

    invoke-direct {v2, p0}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt$1;-><init>(Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)V

    invoke-static {v1, v2}, Lcom/fh/hdutil/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    .line 1198
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
