.class Lcom/hfufo/rxdrone/ManualCtrlActivity$15$2;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$15;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$15;

    .prologue
    .line 2411
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$15;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$15$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$15;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setValue(Landroid/graphics/Rect;)V

    .line 2415
    return-void
.end method
