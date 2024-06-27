.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initClassicalBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 7547
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7550
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7551
    const/4 v0, 0x5

    .line 7552
    .local v0, "cmd":I
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1, v2, v0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/app/Activity;ILandroid/view/MotionEvent;)V

    .line 7553
    const/4 v1, 0x1

    return v1
.end method
