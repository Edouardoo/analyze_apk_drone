.class Lcom/hfufo/rxdrone/ManualCtrlActivity$25;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->time:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->time:I

    .line 3427
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timerunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3428
    return-void
.end method
