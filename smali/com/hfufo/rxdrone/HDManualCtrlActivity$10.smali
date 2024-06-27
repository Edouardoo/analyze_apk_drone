.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$10;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
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
    .line 1086
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$10;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$10;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1090
    const/4 v0, 0x1

    return v0
.end method
