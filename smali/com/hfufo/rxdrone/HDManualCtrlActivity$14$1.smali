.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setValue(Landroid/graphics/Rect;)V

    .line 2021
    return-void
.end method
