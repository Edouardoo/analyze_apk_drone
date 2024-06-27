.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$34$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;

    .prologue
    .line 5016
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5019
    const v0, 0x7f0800a7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 5020
    return-void
.end method
