.class Lcom/hfufo/rxdrone/PdfActivity$1;
.super Ljava/lang/Object;
.source "PdfActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/PdfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/PdfActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/PdfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/PdfActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/hfufo/rxdrone/PdfActivity$1;->this$0:Lcom/hfufo/rxdrone/PdfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hfufo/rxdrone/PdfActivity$1;->this$0:Lcom/hfufo/rxdrone/PdfActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/PdfActivity;->finish()V

    .line 72
    const/4 v0, 0x0

    return v0
.end method
