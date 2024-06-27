.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->onVideo(II[BJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

.field final synthetic val$arr:[B


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    .prologue
    .line 4212
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    iput-object p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;->val$arr:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$2;->val$arr:[B

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;[B)V

    .line 4216
    return-void
.end method
