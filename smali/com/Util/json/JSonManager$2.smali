.class Lcom/Util/json/JSonManager$2;
.super Ljava/lang/Object;
.source "JSonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Util/json/JSonManager;->dispatchParseJSonState(Lcom/Util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Util/json/JSonManager;

.field final synthetic val$listener:Lcom/Util/json/listener/OnCompletedListener;

.field final synthetic val$state:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/Util/json/JSonManager;Ljava/lang/Boolean;Lcom/Util/json/listener/OnCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/Util/json/JSonManager;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/Util/json/JSonManager$2;->this$0:Lcom/Util/json/JSonManager;

    iput-object p2, p0, Lcom/Util/json/JSonManager$2;->val$state:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/Util/json/JSonManager$2;->val$listener:Lcom/Util/json/listener/OnCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/Util/json/JSonManager$2;->val$state:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/Util/json/JSonManager$2;->this$0:Lcom/Util/json/JSonManager;

    invoke-static {v0}, Lcom/Util/json/JSonManager;->access$100(Lcom/Util/json/JSonManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/Util/json/JSonManager$2;->val$listener:Lcom/Util/json/listener/OnCompletedListener;

    iget-object v1, p0, Lcom/Util/json/JSonManager$2;->val$state:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/Util/json/listener/OnCompletedListener;->onCompleted(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
