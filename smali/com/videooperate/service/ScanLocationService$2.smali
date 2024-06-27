.class Lcom/videooperate/service/ScanLocationService$2;
.super Ljava/lang/Object;
.source "ScanLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/service/ScanLocationService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/service/ScanLocationService;


# direct methods
.method constructor <init>(Lcom/videooperate/service/ScanLocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/service/ScanLocationService;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/videooperate/service/ScanLocationService$2;->this$0:Lcom/videooperate/service/ScanLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainApplication;->music_LocalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/videooperate/service/ScanLocationService$2;->this$0:Lcom/videooperate/service/ScanLocationService;

    invoke-static {v0}, Lcom/videooperate/service/ScanLocationService;->access$000(Lcom/videooperate/service/ScanLocationService;)V

    .line 72
    :cond_0
    return-void
.end method
