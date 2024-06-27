.class Lcom/hfufo/rxdrone/ManualCtrlActivity$29;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->chooseMode(Landroid/view/View;)V
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
    .line 4246
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$29;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$29;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v1, "R"

    iput-object v1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 4250
    return-void
.end method
