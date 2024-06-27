.class Lcom/hfufo/rxdrone/MainActivity$13$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity$13;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/MainActivity$13;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/MainActivity$13;

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$13$4;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$13$4;->this$1:Lcom/hfufo/rxdrone/MainActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/MainActivity$13;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2200(Lcom/hfufo/rxdrone/MainActivity;)V

    .line 2169
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->showToastLong(I)V

    .line 2170
    return-void
.end method
