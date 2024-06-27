.class Lcom/jieli/jl_player/PlayerManager$2;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/jieli/jl_player/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_player/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/jl_player/PlayerManager;


# direct methods
.method constructor <init>(Lcom/jieli/jl_player/PlayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager$2;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
