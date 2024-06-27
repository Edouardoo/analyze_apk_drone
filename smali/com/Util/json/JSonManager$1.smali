.class Lcom/Util/json/JSonManager$1;
.super Ljava/lang/Object;
.source "JSonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Util/json/JSonManager;->parseJSonData(Ljava/lang/String;Lcom/Util/json/listener/OnCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Util/json/JSonManager;

.field final synthetic val$listener:Lcom/Util/json/listener/OnCompletedListener;


# direct methods
.method constructor <init>(Lcom/Util/json/JSonManager;Lcom/Util/json/listener/OnCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/Util/json/JSonManager;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/Util/json/JSonManager$1;->this$0:Lcom/Util/json/JSonManager;

    iput-object p2, p0, Lcom/Util/json/JSonManager$1;->val$listener:Lcom/Util/json/listener/OnCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/Util/json/JSonManager$1;->this$0:Lcom/Util/json/JSonManager;

    iget-object v1, p0, Lcom/Util/json/JSonManager$1;->val$listener:Lcom/Util/json/listener/OnCompletedListener;

    invoke-static {v0, v1}, Lcom/Util/json/JSonManager;->access$000(Lcom/Util/json/JSonManager;Lcom/Util/json/listener/OnCompletedListener;)V

    .line 67
    return-void
.end method
