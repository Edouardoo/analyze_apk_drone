.class Lcom/hfufo/rxdrone/ManualCtrlActivity$34;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/udp/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->takePhoto(Landroid/view/View;)V
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
        "Landroid/graphics/Bitmap;",
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
    .line 4792
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 4837
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4796
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    invoke-direct {v1, p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$34;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4831
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4832
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4792
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
