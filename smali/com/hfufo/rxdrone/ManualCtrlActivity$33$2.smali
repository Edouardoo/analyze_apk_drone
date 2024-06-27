.class Lcom/hfufo/rxdrone/ManualCtrlActivity$33$2;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$33;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$33;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$33;

    .prologue
    .line 4642
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$33$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4645
    const-string v0, "\u5408\u6210\u5931\u8d25"

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4646
    return-void
.end method
