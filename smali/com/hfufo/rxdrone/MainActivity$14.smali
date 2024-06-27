.class Lcom/hfufo/rxdrone/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->sendControlCmd()V
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
    .line 2226
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$14;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 2230
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2226
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/MainActivity$14;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
