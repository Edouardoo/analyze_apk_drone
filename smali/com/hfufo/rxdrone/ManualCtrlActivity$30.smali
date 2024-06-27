.class Lcom/hfufo/rxdrone/ManualCtrlActivity$30;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/udp/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->takeVideo(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jieli/lib/stream/udp/IActionListener",
        "<",
        "Lorg/opencv/core/Mat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 4429
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 4439
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4429
    check-cast p1, Lorg/opencv/core/Mat;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity$30;->onSuccess(Lorg/opencv/core/Mat;)V

    return-void
.end method

.method public onSuccess(Lorg/opencv/core/Mat;)V
    .locals 1
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4434
    return-void
.end method
