.class Lcom/hfufo/rxdrone/ManualCtrlActivity$16;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 2540
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2546
    const/4 v0, 0x1

    return v0
.end method
