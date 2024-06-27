.class Lcom/videooperate/service/ScanLocationService$1;
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
    .line 53
    iput-object p1, p0, Lcom/videooperate/service/ScanLocationService$1;->this$0:Lcom/videooperate/service/ScanLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/videooperate/service/ScanLocationService$1;->this$0:Lcom/videooperate/service/ScanLocationService;

    invoke-virtual {v0}, Lcom/videooperate/service/ScanLocationService;->getData()V

    .line 59
    return-void
.end method
