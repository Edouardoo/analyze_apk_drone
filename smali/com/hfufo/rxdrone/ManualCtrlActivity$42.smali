.class Lcom/hfufo/rxdrone/ManualCtrlActivity$42;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->initClassicalBtn()V
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
    .line 5020
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5023
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$14200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5024
    const/4 v0, 0x1

    .line 5025
    .local v0, "cmd":I
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1, v2, v0, p2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$14000(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/app/Activity;ILandroid/view/MotionEvent;)V

    .line 5026
    const/4 v1, 0x1

    return v1
.end method
