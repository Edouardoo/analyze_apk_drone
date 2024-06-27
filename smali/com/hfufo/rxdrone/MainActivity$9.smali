.class Lcom/hfufo/rxdrone/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/GpsDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->showNormalDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$9;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_dialog_listener(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 1942
    if-eqz p1, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$9;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->udateDevice()V

    .line 1947
    :goto_0
    return-void

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$9;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/MainActivity;->access$2002(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    goto :goto_0
.end method
