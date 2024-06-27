.class Lcom/hfufo/rxdrone/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
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
    .line 224
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$1;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$1;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->TryToAppAccess()V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
