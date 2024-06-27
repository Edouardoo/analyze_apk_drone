.class Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;
.super Ljava/lang/Thread;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoInfoTxtAndCaptureTxt"
.end annotation


# instance fields
.field private captureSize:I

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private videoInfoTxtName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 450
    iput-object p2, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->videoInfoTxtName:Ljava/lang/String;

    .line 451
    iput p3, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->captureSize:I

    .line 452
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 453
    return-void
.end method

.method static synthetic access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    .prologue
    .line 444
    iget v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->captureSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;
    .param p1, "x1"    # I

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->getCaptureTxt(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->videoInfoTxtName:Ljava/lang/String;

    return-object v0
.end method

.method private getCaptureTxt(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 456
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 458
    :cond_0
    if-ltz p1, :cond_1

    .line 459
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v3, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;

    invoke-direct {v3, p0, p1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;-><init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;I)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->requestCaptureText(Landroid/content/Context;ILcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    goto :goto_0

    .line 485
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dvflying_responding_video_desc_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "videoFileName":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->videoInfoTxtName:Ljava/lang/String;

    new-instance v3, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    invoke-direct {v3, p0}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;-><init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->requestVideoInfoText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    goto :goto_0
.end method
